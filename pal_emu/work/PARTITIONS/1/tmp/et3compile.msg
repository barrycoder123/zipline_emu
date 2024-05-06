00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' on 05/02/2024 13:45:10
00 DATABASE | Parms: '-client'
00 ET3LIB   |                                    
00 ET3LIB   |                              ET3 LIBRARY
00 ET3LIB   |                            RELEASE 6.0.2.6
00 ET3LIB   |                           VXE, VEngineering
00 ET3LIB   | (c) 1995-2020 Cadence Design Systems, Inc. All rights reserved worldwide.
00 ET3LIB   |            See files in <rootdir>/share/vxe/install/Copyrights
00 ET3LIB   |                                    
00 ET3LIB   | ET3lib created on Aug  3 2023 at 22:13:09.
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 1307 Mb) on 05/02/2024 13:45:10
00 DATABASE | Calling 'ldproto' on 05/02/2024 13:45:10
00 DATABASE | Parms: 'qt2dadb -modular -rename xcva_top'
00 DATABASE | Reading file './dbFiles/qt2dadb.ffproto' created on Thu May  2 13:45:06 2024
00 DATABASE | 
00 DATABASE | Proto size = 1191166
Info: 241296 ffDB nets have been restored
Info: 233211 ffDB boxes have been restored
00 DATABASE | Return from 'ldproto' (Elapsed time 0.13s (0.08u+0.02s), Memory used 1429 Mb) on 05/02/2024 13:45:10
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' on 05/02/2024 13:45:10
00 DATABASE | Parms: '-client xcva_top -seed 271448396 -reserve_epc 63 -compilerEffort 991010 -visionMode FV -num_cycles_per_capture_frame 32'
00 ET3CONFG | Default SA Protocol - Classic
00 ET3CONFG | DBI's P5 limit (90% utilization): 33177, DBIs in CTL: 249 (max index: 249), DBO's P5 limit (90% utilization) 88473, DBO in CTL: 322 (max index: 322)
00 ET3CONFG | THIS IS /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/bin/64bit/xeCompile RUNNING.
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
00 ET3CONFG | ***** MB/XB wire table initialization took 0.001857 seconds.
00 ET3CONFG | ***** Found 0000000  MBO->MBI  possible links in this configuration.
00 ET3CONFG | ***** HIGHEST board found in emulation configuration is 0
00 ET3CONFG | load_module_version()          = 30
00 ET3CONFG | num_cycles_per_capture_frame   = 32
00 ET3CONFG | das_protocol()                 = 5
00 ET3CONFG | COMPILED ON 05/02/2024 AT 13:45:10
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
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' on 05/02/2024 13:45:10
00 DATABASE | Parms: ''
00 OMLIB    |                                    
00 OMLIB    |                           VXE, VEngineering
00 OMLIB    |             Copyright(C) 1995-2021, Cadence Design Systems
00 OMLIB    |                          All rights reserved
00 OMLIB    |                            RELEASE 6.0.2.6
00 OMLIB    |                                    
00 OMLIB    | omlib created on Aug  3 2023 at 22:05:33
00 OMLIB    | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 1429 Mb) on 05/02/2024 13:45:10
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' (Elapsed time 0.05s (0.02u+0.01s), Memory used 1431 Mb) on 05/02/2024 13:45:10
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' on 05/02/2024 13:45:10
00 DATABASE | Parms: ''
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
00 ET6CTL   | PARALLEL PHASE 1 COMPILATION
Parsing I/O source partition file (Pass 2) ... Done.
00 ET6CTL   | Current partition: 1
00 ET6CTL   | Active partition with 1 domains.
00 ET6CTL   | Reading "./dbFiles/xcva_top.ctl"
00 ET6CTL   | 
00 ET6CTL   | Reading "./dbFiles/xcva_top.ctl"
00 ET6CTL   | 
00 ET6CTL   | Handling Target IO related sections...
00 ET6CTL   | ---> (BOARD 00) breakpoint box ET6_XBOB_141 created for ep 141 step 0 net 162928 (QTLA%break)
00 ET6CTL   | Handling DAS CARD related sections...
00 ET6CTL   | Found ECM_DONE interrupt signal xc_top._ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_
00 ET6CTL   | Generated ECM_READY signal _ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_DELAYED_ONE_CYCLE_
00 ET6CTL   | Generated DBI_APPLY_Q signal DBI_APPLY_ONE_CYCLE_DELAYED
00 ET6CTL   | Found slow mode control signals and inserted appropriate control on DBI_APPLY
00 ET6CTL   | Found DBI_APPLY sink signal xc_top._ET3_COMPILER_RESERVED_NAME_DBI_APPLY_
00 ET6CTL   | Found 250 DBI signals: 2 direct, 248 regular, 0 F/R/D
00 ET6CTL   | Found 321 DBO signals: 0 direct, 321 regular
00 ET6CTL   | compilerOption nullTargetPullValue is detected. Virtual pull control logic will be instrumented
00 ET6CTL   | 
00 ET6CTL   | Handling ADC sync group section...
00 ET6CTL   | Handling TIE_SOURCELESS section...
00 ET6CTL   | Creating cross-module I/O...
00 ET6CTL   | Created 0 cross-module XBIB and 22 cross-module XBOB
00 ET6CTL   | 
00 ET6CTL   | Verify that all nets have only one source...
00 ET6CTL   | Handling ADC I/O pause...
00 ET6CTL   | Signal _ET3_COMPILER_RESERVED_NAME_ATG_IO_PAUSE_ is detected
00 ET6CTL   | Validating output sync group dependencies...
00 ET6CTL   | See file xcva_top.ctl_file_info for additional informational messages during processing of xcva_top.ctl
00 ET6CTL   | Partition utilization:
00 ET6CTL   | 	DBI utilization: 250/36864 (0.0%)
00 ET6CTL   | 	DBO utilization: 321/98304 (0.0%)
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' (Elapsed time 0.05s (0.02u+0.00s), Memory used 1440 Mb) on 05/02/2024 13:45:10
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' on 05/02/2024 13:45:10
00 DATABASE | Parms: '-retiming ON'
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
00 ET5NLOPT | Max instruction usage      = 200%
00 ET5NLOPT | Max clken nets per chip    = 2147483647
00 ET5NLOPT | Min flops per clken net    = 0
00 ET5NLOPT | Number of valid option entries for module alumap = 0
00 ET5NLOPT | TCAM slices: 0
00 ET5NLOPT | TCAM utilization:  0.00 %
00 ET5NLOPT | Found 80248 keep nets and set 0 box group.
00 ET5NLOPT | Tied 4524 undefined inputs to GROUND.
00 ET5NLOPT | Palladium Z1 configuration detected.
00 ET5NLOPT | ----------------------------------------------
00 ET5NLOPT | "ALU optimizer" started...
00 ET5NLOPT | File "xcva_top.aluRules" not found, use default options.
00 ET5NLOPT | Done FW logic levelization on 234123 boxes, max logic level = 151, in 0.027 seconds
00 ET5NLOPT | 
00 ET5NLOPT | Removed 8493 redundant boxes
00 ET5NLOPT | Removed 72 complex redundant boxes
00 ET5NLOPT | Simplified 0 mux-of-muxes with common selector
00 ET5NLOPT | Swapped 1723 sets of selectors and inputs of mux-of-muxes
00 ET5NLOPT | Maximum mux transformations = 9223372036854775807, boxes size = 234123
00 ET5NLOPT | Muxes simplified 0, transformation 5070 (107 with mismatched level)
00 ET5NLOPT | Muxes broken 64, tranformed = 5070, muxes swapped = 1723
00 ET5NLOPT | Mux optimization reduced logical levels from 151 to 137
00 ET5NLOPT | Done FW logic levelization on 220488 boxes, max logic level = 137, in 0.024 seconds
00 ET5NLOPT | 
00 ET5NLOPT | Using level dependency vector for propagation order
00 ET5NLOPT | CBL option is 2
00 ET5NLOPT | Running DADB command "call et5cbl -O2"
00 ET5NLOPT | 
00 ET5NLOPT | Transformed 0 (0 selfloop) do not touch boxes into DELAY boxes
00 ET5NLOPT | Saved memloop bits for 0 memory ports
00 ET5NLOPT | marked 0 nets as transitional logic and set as keepnet before CBL
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5cbl' on 05/02/2024 13:45:10
00 DATABASE | Parms: '-O2'
00 ET5CBL   | 
00 ET5CBL   |                        CBL Netlist Optimizer
00 ET5CBL   |                          RELEASE 6.0.2.6
00 ET5CBL   | 
00 ET5CBL   |                           VXE, VEngineering
00 ET5CBL   |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET5CBL   |                          All rights reserved
00 ET5CBL   | 
00 ET5CBL   | ---- ET5CBL: Parameters: -O2                          ---- (Time: 0.00 s   Mem: 1537.88 MB)
00 ET5CBL   | ==== ET5CBL: compiled: Aug  3 2023 (22:05:58)
00 ET5CBL   | ==== ET5CBL: run     : May  2 2024 (13:45:10) on host hsv-sc49
00 ET5CBL   | ==== ET5CBL: optimization level: 2
00 ET5CBL   | ---- ET5CBL: Cleaning up database                     ---- (Time: 0.00 s   Mem: 1537.88 MB)
00 ET5CBL   | WARNING! Connected 8923 logic gate inputs to LOW with net attribute GROUND
00 ET5CBL   | WARNING! Connected 1689 logic gate inputs to HIGH with net attribute POWER.
00 ET5CBL   | Found 0 boxes with non-zero box flags
00 ET5CBL   | Saved 0 net properties
00 ET5CBL   | ---- ET5CBL: Partitioning database into 4 parts       ---- (Time: 0.02 s   Mem: 1537.88 MB)
00 ET5CBL   | Initializing XMETIS engine.
00 ET5CBL   | XMETIS created on Aug  3 2023 at 22:05:50
00 ET5CBL   | METIS is Copyright 1997, Regents of the University of Minnesota
00 ET5CBL   | XMETIS is Copyright 2016, Cadence Design Systems
00 ET5CBL   | creating metis_seed_key
00 ET5CBL   | Size of idx = 4
00 ET5CBL   | 
00 ET5CBL   | >> partitioned 220435 vertices in 4 parts with seed 94583 and result edge cuts = 4593
00 ET5CBL   | >>    part 0: vertices = 57014
00 ET5CBL   | >>    part 1: vertices = 54571
00 ET5CBL   | >>    part 2: vertices = 53844
00 ET5CBL   | >>    part 3: vertices = 55006
00 ET5CBL   | ---- ET5CBL: Maximum 4 threads to run concurrently    ---- (Time: 0.33 s   Mem: 1560.13 MB)
00 ET5CBL   | Created 3554 PI/PO groups on cross-partition signals
00 ET5CBL   | ---- ET5CBL: Converting database to netlists          ---- (Time: 0.38 s   Mem: 1560.13 MB)
00 ET5CBL   | Found box keyword BOX_LEVELS, size = 4 bytes
00 ET5CBL   | Altogether found 1 box keywords
00 ET5CBL   | >> Probes stored: 10218 IO, 39664 FF probes.
00 ET5CBL   | >> Number of boxes with non-zero box_flags = 0
00 ET5CBL   | >> Number of nonzero box keywords saved = 206233
00 ET5CBL   | ---- ET5CBL: Clearing database                        ---- (Time: 0.65 s   Mem: 1597.27 MB)
00          | 
00          | ==========================================================================================================
00          | ---- ET5CBL: Thread 0: Started                        ---- (Time: 0.73 s   Mem: 1597.27 MB)
00          | >>     #Gates=88691  (#Lut=35160  #PadR=1154  #PadW=1204  #MemR=12  #MemW=37  #Pin=11389  #Loop=8724  #FD01=12892  #Force=18117)  #Garb=1
00          | ---- ET5CBL: Thread 0: Adding name listener           ---- (Time: 0.75 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 0: Checking iterator consistency  ---- (Time: 0.78 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 0: Expanding LUTs into ANDs       ---- (Time: 0.82 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 0: Removing redundant logic       ---- (Time: 1.58 s   Mem: 1628.93 MB)
00          | ---- ET5CBL: Thread 0: Rewriting DAG-aware netlist    ---- (Time: 1.68 s   Mem: 1628.93 MB)
00          | >>     Minimizing:
00          | >>     Reduction in #ANDs:  5.90 %
00          | >>     Core shrink time  : 1.47 s
00          | >>     Globally redundant: 0
00          | ---- ET5CBL: Thread 0: Technology mapping             ---- (Time: 3.21 s   Mem: 1628.93 MB)
00          | >> ========================================
00          | >> ==         TECHNOLOGY MAPPING         ==
00          | >> ========================================
00          | >>
00          | >> Netlist stats.: #Gates=122689  (#And=69158  #PadR=1154  #PadW=1204  #MemR=12  #MemW=37  #Pin=11389  #Loop=8724  #FD01=12892  #Force=18117)  #Garb=1
00          | >> Initialization: 0.04 s
00          | >>
00          | >>     Iter  |  2-Luts   3-Luts   4-Luts   |    Total     Wires   Delay
00          | >>     ------+-----------------------------+---------------------------
00          | >>        0  |    2164     8339    14753   |    25256     88357      47    (Time: 0.15 s)
00          | >>        1  |    2529     9122    10807   |    22458     75652      56    (Time: 0.02 s)
00          | >>        2  |    2276     8887    11011   |    22174     75257      56    (Time: 0.02 s)
00          | >>
00          | >> Instantiating LUTs.
00          | >> Eliminating negations.
00          | >>   -- added 107 LUTs
00          | >> Packing 4-MUXes.
00          | >>   -- 0 rewrites, saving 0 gates (= 0.00 % reduction)
00          | >> Netlist stats.: #Gates=75812  (#Lut=22281  #PadR=1154  #PadW=1204  #MemR=12  #MemW=37  #Pin=11389  #Loop=8724  #FD01=12892  #Force=18117)  #Garb=1
00          | >> Techmap CPU Time: 0.25 s
00          | ---- ET5CBL: Thread 0: Eliminating forcible gates     ---- (Time: 3.46 s   Mem: 1628.93 MB)
00          |   -- Forcible logic not leading to duplication : 2390
00          |   -- Forcible flops not leading to duplication : 13660
00          |   -- Forcible gates leading to duplication     : 6
00          |   -- Forcible buffers inserted after non-logic : 2061 (superfluous: 1784)
00          |   -- Forcible buffers inserted after constants : 0
00          |   -- Forcible buffers stacked due to keep-nets : 284
00          | ---- ET5CBL: Thread 0: Recreating final database      ---- (Time: 3.48 s   Mem: 1628.93 MB)
00          | >> Names preserved through simplification: 44463 / 56165  (= 79.2 %)
00          | >> Probes restored: 1889 IO, 11507 FF probes.
00          | >> Boxes with non-zero flags restored = 0
00          | >> Restoring box keyword BOX_LEVELS
00          | >> Box keyword BOX_LEVELS has 42629 non-zero values restored
00          | >> Removed 453 superflous buffers added for forcible boxes
00          | >> IO boxes found: 2358, keepnet info fixed: 146
00          | >>     #Gates=59762  (#Lut=24348  #PadR=1154  #PadW=1204  #MemR=12  #MemW=37  #Pin=11389  #Loop=8724  #FD01=12892)  #Garb=18118
00          | ---- ET5CBL: Thread 0: Disposing netlist              ---- (Time: 3.51 s   Mem: 1628.93 MB)
00          | 
00          | ==========================================================================================================
00          | ---- ET5CBL: Thread 1: Started                        ---- (Time: 0.73 s   Mem: 1597.27 MB)
00          | >>     #Gates=93087  (#Lut=31568  #PadR=1402  #PadW=945  #MemR=14  #MemW=29  #Pin=13617  #Loop=6510  #FD01=16088  #Force=22912)  #Garb=1
00          | ---- ET5CBL: Thread 1: Adding name listener           ---- (Time: 0.75 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 1: Checking iterator consistency  ---- (Time: 0.76 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 1: Expanding LUTs into ANDs       ---- (Time: 0.81 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 1: Removing redundant logic       ---- (Time: 1.34 s   Mem: 1613.10 MB)
00          | ---- ET5CBL: Thread 1: Rewriting DAG-aware netlist    ---- (Time: 1.43 s   Mem: 1628.93 MB)
00          | >>     Minimizing:
00          | >>     Reduction in #ANDs:  6.57 %
00          | >>     Core shrink time  : 1.48 s
00          | >>     Globally redundant: 0
00          | ---- ET5CBL: Thread 1: Technology mapping             ---- (Time: 2.98 s   Mem: 1628.93 MB)
00          | >> ========================================
00          | >> ==         TECHNOLOGY MAPPING         ==
00          | >> ========================================
00          | >>
00          | >> Netlist stats.: #Gates=113219  (#And=51700  #PadR=1402  #PadW=945  #MemR=14  #MemW=29  #Pin=13617  #Loop=6510  #FD01=16088  #Force=22912)  #Garb=1
00          | >> Initialization: 0.04 s
00          | >>
00          | >>     Iter  |  2-Luts   3-Luts   4-Luts   |    Total     Wires   Delay
00          | >>     ------+-----------------------------+---------------------------
00          | >>        0  |    2433     7946     8095   |    18474     61084      43    (Time: 0.14 s)
00          | >>        1  |    2921     8311     6047   |    17279     54963      51    (Time: 0.04 s)
00          | >>        2  |    2600     8155     6241   |    16996     54629      51    (Time: 0.04 s)
00          | >>
00          | >> Instantiating LUTs.
00          | >> Eliminating negations.
00          | >>   -- added 45 LUTs
00          | >> Packing 4-MUXes.
00          | >>   -- 0 rewrites, saving 0 gates (= 0.00 % reduction)
00          | >> Netlist stats.: #Gates=78560  (#Lut=17041  #PadR=1402  #PadW=945  #MemR=14  #MemW=29  #Pin=13617  #Loop=6510  #FD01=16088  #Force=22912)  #Garb=1
00          | >> Techmap CPU Time: 0.32 s
00          | ---- ET5CBL: Thread 1: Eliminating forcible gates     ---- (Time: 3.30 s   Mem: 1628.93 MB)
00          |   -- Forcible logic not leading to duplication : 2390
00          |   -- Forcible flops not leading to duplication : 14774
00          |   -- Forcible gates leading to duplication     : 68
00          |   -- Forcible buffers inserted after non-logic : 5675 (superfluous: 5206)
00          |   -- Forcible buffers inserted after constants : 5
00          |   -- Forcible buffers stacked due to keep-nets : 434
00          | ---- ET5CBL: Thread 1: Recreating final database      ---- (Time: 3.51 s   Mem: 1628.93 MB)
00          | >> Names preserved through simplification: 45644 / 56157  (= 81.3 %)
00          | >> Probes restored: 3144 IO, 8395 FF probes.
00          | >> Boxes with non-zero flags restored = 0
00          | >> Restoring box keyword BOX_LEVELS
00          | >> Box keyword BOX_LEVELS has 38120 non-zero values restored
00          | >> Removed 508 superflous buffers added for forcible boxes
00          | >> IO boxes found: 4705, keepnet info fixed: 317
00          | >>     #Gates=61396  (#Lut=22789  #PadR=1402  #PadW=945  #MemR=14  #MemW=29  #Pin=13617  #Loop=6510  #FD01=16088)  #Garb=22913
00          | ---- ET5CBL: Thread 1: Disposing netlist              ---- (Time: 3.55 s   Mem: 1621.02 MB)
00          | 
00          | ==========================================================================================================
00          | ---- ET5CBL: Thread 2: Started                        ---- (Time: 0.73 s   Mem: 1597.27 MB)
00          | >>     #Gates=87629  (#Lut=35481  #PadR=983  #PadW=313  #MemR=6  #MemW=15  #Pin=11474  #Loop=4619  #FD01=13727  #Force=21009)  #Garb=1
00          | ---- ET5CBL: Thread 2: Adding name listener           ---- (Time: 0.75 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 2: Checking iterator consistency  ---- (Time: 0.76 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 2: Expanding LUTs into ANDs       ---- (Time: 0.80 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 2: Removing redundant logic       ---- (Time: 1.40 s   Mem: 1628.93 MB)
00          | ---- ET5CBL: Thread 2: Rewriting DAG-aware netlist    ---- (Time: 1.48 s   Mem: 1628.93 MB)
00          | >>     Minimizing:
00          | >>     Reduction in #ANDs:  6.56 %
00          | >>     Core shrink time  : 0.88 s
00          | >>     Globally redundant: 0
00          | ---- ET5CBL: Thread 2: Technology mapping             ---- (Time: 2.42 s   Mem: 1628.93 MB)
00          | >> ========================================
00          | >> ==         TECHNOLOGY MAPPING         ==
00          | >> ========================================
00          | >>
00          | >> Netlist stats.: #Gates=105855  (#And=53707  #PadR=983  #PadW=313  #MemR=6  #MemW=15  #Pin=11474  #Loop=4619  #FD01=13727  #Force=21009)  #Garb=1
00          | >> Initialization: 0.04 s
00          | >>
00          | >>     Iter  |  2-Luts   3-Luts   4-Luts   |    Total     Wires   Delay
00          | >>     ------+-----------------------------+---------------------------
00          | >>        0  |     911     8078     8703   |    17692     60868      33    (Time: 0.14 s)
00          | >>        1  |     712     8400     7857   |    16969     58052      37    (Time: 0.05 s)
00          | >>        2  |     583     6419     9909   |    16911     60059      37    (Time: 0.04 s)
00          | >>
00          | >> Instantiating LUTs.
00          | >> Eliminating negations.
00          | >>   -- added 8 LUTs
00          | >> Packing 4-MUXes.
00          | >>   -- 0 rewrites, saving 0 gates (= 0.00 % reduction)
00          | >> Netlist stats.: #Gates=69067  (#Lut=16919  #PadR=983  #PadW=313  #MemR=6  #MemW=15  #Pin=11474  #Loop=4619  #FD01=13727  #Force=21009)  #Garb=1
00          | >> Techmap CPU Time: 0.35 s
00          | ---- ET5CBL: Thread 2: Eliminating forcible gates     ---- (Time: 2.77 s   Mem: 1628.93 MB)
00          |   -- Forcible logic not leading to duplication : 2144
00          |   -- Forcible flops not leading to duplication : 11685
00          |   -- Forcible gates leading to duplication     : 0
00          |   -- Forcible buffers inserted after non-logic : 4094 (superfluous: 686)
00          |   -- Forcible buffers inserted after constants : 3086
00          |   -- Forcible buffers stacked due to keep-nets : 3414
00          | ---- ET5CBL: Thread 2: Recreating final database      ---- (Time: 3.55 s   Mem: 1621.02 MB)
00          | >> Names preserved through simplification: 42743 / 54129  (= 79.0 %)
00          | >> Probes restored: 1759 IO, 7311 FF probes.
00          | >> Boxes with non-zero flags restored = 0
00          | >> Restoring box keyword BOX_LEVELS
00          | >> Box keyword BOX_LEVELS has 38100 non-zero values restored
00          | >> Removed 484 superflous buffers added for forcible boxes
00          | >> IO boxes found: 6001, keepnet info fixed: 99
00          | >>     #Gates=55238  (#Lut=24099  #PadR=983  #PadW=313  #MemR=6  #MemW=15  #Pin=11474  #Loop=4619  #FD01=13727)  #Garb=21010
00          | ---- ET5CBL: Thread 2: Disposing netlist              ---- (Time: 3.61 s   Mem: 1613.10 MB)
00          | 
00          | ==========================================================================================================
00          | ---- ET5CBL: Thread 3: Started                        ---- (Time: 0.73 s   Mem: 1597.27 MB)
00          | >>     #Gates=84203  (#Lut=32910  #PadR=807  #PadW=1436  #MemR=18  #MemW=16  #Pin=13179  #Loop=10839  #FD01=11231  #Force=13765)  #Garb=1
00          | ---- ET5CBL: Thread 3: Adding name listener           ---- (Time: 0.75 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 3: Checking iterator consistency  ---- (Time: 0.76 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 3: Expanding LUTs into ANDs       ---- (Time: 0.81 s   Mem: 1597.27 MB)
00          | ---- ET5CBL: Thread 3: Removing redundant logic       ---- (Time: 1.47 s   Mem: 1628.93 MB)
00          | ---- ET5CBL: Thread 3: Rewriting DAG-aware netlist    ---- (Time: 1.55 s   Mem: 1628.93 MB)
00          | >>     Minimizing:
00          | >>     Reduction in #ANDs:  6.80 %
00          | >>     Core shrink time  : 1.42 s
00          | >>     Globally redundant: 0
00          | ---- ET5CBL: Thread 3: Technology mapping             ---- (Time: 3.02 s   Mem: 1628.93 MB)
00          | >> ========================================
00          | >> ==         TECHNOLOGY MAPPING         ==
00          | >> ========================================
00          | >>
00          | >> Netlist stats.: #Gates=110945  (#And=59652  #PadR=807  #PadW=1436  #MemR=18  #MemW=16  #Pin=13179  #Loop=10839  #FD01=11231  #Force=13765)  #Garb=1
00          | >> Initialization: 0.03 s
00          | >>
00          | >>     Iter  |  2-Luts   3-Luts   4-Luts   |    Total     Wires   Delay
00          | >>     ------+-----------------------------+---------------------------
00          | >>        0  |    2620     5786    13233   |    21639     75530      46    (Time: 0.16 s)
00          | >>        1  |    2447     7205    10276   |    19928     67613      55    (Time: 0.06 s)
00          | >>        2  |    2225     6893    10566   |    19684     67393      47    (Time: 0.05 s)
00          | >>
00          | >> Instantiating LUTs.
00          | >> Eliminating negations.
00          | >>   -- added 30 LUTs
00          | >> Packing 4-MUXes.
00          | >>   -- 0 rewrites, saving 0 gates (= 0.00 % reduction)
00          | >> Netlist stats.: #Gates=71007  (#Lut=19714  #PadR=807  #PadW=1436  #MemR=18  #MemW=16  #Pin=13179  #Loop=10839  #FD01=11231  #Force=13765)  #Garb=1
00          | >> Techmap CPU Time: 0.35 s
00          | ---- ET5CBL: Thread 3: Eliminating forcible gates     ---- (Time: 3.37 s   Mem: 1628.93 MB)
00          |   -- Forcible logic not leading to duplication : 748
00          |   -- Forcible flops not leading to duplication : 12468
00          |   -- Forcible gates leading to duplication     : 1
00          |   -- Forcible buffers inserted after non-logic : 548 (superfluous: 430)
00          |   -- Forcible buffers inserted after constants : 0
00          |   -- Forcible buffers stacked due to keep-nets : 9
00          | ---- ET5CBL: Thread 3: Recreating final database      ---- (Time: 3.61 s   Mem: 1613.10 MB)
00          | >> Names preserved through simplification: 44642 / 58309  (= 76.6 %)
00          | >> Probes restored: 3426 IO, 12451 FF probes.
00          | >> Boxes with non-zero flags restored = 0
00          | >> Restoring box keyword BOX_LEVELS
00          | >> Box keyword BOX_LEVELS has 40931 non-zero values restored
00          | >> Removed 288 superflous buffers added for forcible boxes
00          | >> IO boxes found: 8244, keepnet info fixed: 118
00          | >>     #Gates=57791  (#Lut=20263  #PadR=807  #PadW=1436  #MemR=18  #MemW=16  #Pin=13179  #Loop=10839  #FD01=11231)  #Garb=13766
00          | ---- ET5CBL: Thread 3: Disposing netlist              ---- (Time: 3.65 s   Mem: 1605.19 MB)
00 ET5CBL   | ==========================================================================================================
00 ET5CBL   | 
00 ET5CBL   | ---- ET5CBL: Joined 4 optimization threads            ---- (Time: 3.65 s   Mem: 1597.27 MB)
00 ET5CBL   | ---- ET5CBL: Merging DADB database                    ---- (Time: 3.65 s   Mem: 1597.27 MB)
00 ET5CBL   | Merged 3554 groups of PI/POs
00 ET5CBL   | Restored 0 net properties
00 ET5CBL   | ---- ET5CBL: CBL Done                                 ---- (Time: 3.68 s   Mem: 1597.27 MB)
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5cbl' (Elapsed time 1.81s (3.69u+0.12s), Memory used 1628 Mb) on 05/02/2024 13:45:12
00 ET5NLOPT | Transformed 0 (0 selfloop) special DELAY boxes back to do not touch logic boxes
00 ET5NLOPT | Restored memloop bits for 0 memory ports
00 ET5NLOPT | unmarked 0 nets as transitional logic and set as keepnet before CBL
00 ET5NLOPT | setting multipath mode OFF
00 ET5NLOPT | levelized boxes = 174459, size = 65536, mask = 0xffff
00 ET5NLOPT | propagated GND D-to-Q at FD01 box297
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53134
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53135
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53136
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53151
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53152
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53153
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53155
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53156
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53157
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53159
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53160
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53162
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53163
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53164
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53165
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96411
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96412
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96413
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96414
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96415
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96417
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96418
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96419
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96420
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96421
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96422
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96423
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96424
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96425
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96426
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101467
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101468
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101469
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101470
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101471
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101472
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101473
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101474
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101475
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101480
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101481
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101482
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101483
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101498
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101499
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101500
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101501
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101502
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101503
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101504
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101505
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101506
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101507
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101508
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101509
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101510
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101511
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101512
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101513
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101514
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101515
00 ET5NLOPT | propagated GND D-to-Q at FD01 box144443
00 ET5NLOPT | propagated GND D-to-Q at FD01 box144444
00 ET5NLOPT | propagated GND D-to-Q at FD01 box144445
00 ET5NLOPT | propagated 174459 boxes, consumed 0 seconds
00 ET5NLOPT | deleted boxes = 649, merged_logic = (0, 0, 4, 0, 0, 0, 0), merged_loop = 0, merged_flop = 25 (LB 0), pushed constant flop = 105
00 ET5NLOPT | round 1 area gain: 0.3%
00 ET5NLOPT | Done FW logic levelization on 173810 boxes, max logic level = 56, in 0.021 seconds
00 ET5NLOPT | 
00 ET5NLOPT | setting sinks_limit to 1
00 ET5NLOPT | levelized boxes = 173810, size = 65536, mask = 0xffff
00 ET5NLOPT | propagated GND D-to-Q at FD01 box297
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53134
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53135
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53136
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53151
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53152
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53153
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53155
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53156
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53157
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53159
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53160
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53162
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53163
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53164
00 ET5NLOPT | propagated GND D-to-Q at FD01 box53165
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96411
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96412
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96413
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96414
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96415
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96417
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96418
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96419
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96420
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96421
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96422
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96423
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96424
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96425
00 ET5NLOPT | propagated GND D-to-Q at FD01 box96426
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101467
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101468
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101469
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101470
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101471
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101472
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101473
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101474
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101475
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101480
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101481
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101482
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101483
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101498
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101499
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101500
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101501
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101502
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101503
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101504
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101505
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101506
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101507
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101508
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101509
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101510
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101511
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101512
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101513
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101514
00 ET5NLOPT | propagated GND D-to-Q at FD01 box101515
00 ET5NLOPT | propagated GND D-to-Q at FD01 box144443
00 ET5NLOPT | propagated GND D-to-Q at FD01 box144444
00 ET5NLOPT | propagated GND D-to-Q at FD01 box144445
00 ET5NLOPT | propagated 173810 boxes, consumed 0 seconds
00 ET5NLOPT | deleted boxes = 15, merged_logic = (0, 0, 0, 0, 0, 0, 0), merged_loop = 0, merged_flop = 1 (LB 0), pushed constant flop = 170
00 ET5NLOPT | round 2 area gain: 0.0%
00 ET5NLOPT | Done FW logic levelization on 173795 boxes, max logic level = 56, in 0.020 seconds
00 ET5NLOPT | 
00 ET5NLOPT | setting sinks_limit to 1
00 ET5NLOPT | Connected constants to the input pin of 144 flops with input tied.
00 ET5NLOPT | Connected the sync-in pins of 92 memories.
00 ET5NLOPT | Compressing proto
00 ET5NLOPT | Retimed 82 keynodes, 242 gates, created 109 muxes and 162 dupflops
00 ET5NLOPT | Done FW logic levelization on 174214 boxes, max logic level = 56, in 0.013 seconds
00 ET5NLOPT | 
00 ET5NLOPT | Removed 1 complex redundant boxes
00 ET5NLOPT | Inserted 0 buffers on force nets
00 ET5NLOPT | 
00 ET5NLOPT | Stage                     Begin       Prelim          CBL      Round 1      Round 2        Final
00 ET5NLOPT | ------------------------------------------------------------------------------------------------
00 ET5NLOPT | Tie-downs                    60 ->        60 ->         1 ->      8804 ->      8804 ->      8934
00 ET5NLOPT | Tie-ups                       0 ->         0 ->         1 ->        22 ->        14 ->        31
00 ET5NLOPT | Buffers                   16504 ->     14941 ->     13131 ->      4320 ->      4319 ->      4319
00 ET5NLOPT | Inverters                   759 ->       736 ->       190 ->       173 ->       173 ->       173
00 ET5NLOPT | 2-input gates             67598 ->     62418 ->      7684 ->      7729 ->      7727 ->      7728
00 ET5NLOPT | 3-input gates             73132 ->     56180 ->     39820 ->     39343 ->     39343 ->     39452
00 ET5NLOPT | 4-input gates             21341 ->     31474 ->     58953 ->     58863 ->     58860 ->     58860
00 ET5NLOPT | Flip-flops                53988 ->     53938 ->     53938 ->     53815 ->     53814 ->     28368
00 ET5NLOPT | Primary outputs               1 ->         1 ->         1 ->         1 ->         1 ->         1
00 ET5NLOPT | Cross-partition XBOB         22 ->        22 ->        22 ->        22 ->        22 ->        22
00 ET5NLOPT | DAS inputs DBIB             250 ->       250 ->       250 ->       250 ->       250 ->       250
00 ET5NLOPT | DAS outputs DBOB            321 ->       321 ->       321 ->       321 ->       321 ->       321
00 ET5NLOPT | Memory reads                 50 ->        50 ->        50 ->        50 ->        50 ->        50
00 ET5NLOPT | Memory writes                97 ->        97 ->        97 ->        97 ->        97 ->        97
00 ET5NLOPT | All box types            234123 ->    220488 ->    174459 ->    173810 ->    173795 ->    148606 (= 36.5% Reduction)
00 ET5NLOPT | Self-looping logic        30692 ->     30692 ->     30692 ->     30692 ->     30692 ->     30622
00 ET5NLOPT | Logic levels                152 ->       138 ->        58 ->        57 ->        57 ->        57 (= 62.5% Reduction)
00 ET5NLOPT | Sinks count              566459 ->    544109 ->    509757 ->    495505 ->    495486 ->    496373 (= 12.4% Reduction)
00 ET5NLOPT | ------------------------------------------------------------------------------------------------
00 ET5NLOPT | CPU time (sec)             0.00 ->      0.22 ->      4.14 ->      4.30 ->      4.43 ->      4.64
00 ET5NLOPT | Estimated size           260177 ->    246542 ->    200513 ->    199864 ->    199849 ->    174660 (= 32.9% Reduction)
00 ET5NLOPT | Available configuration                                                                 1 domain
00 ET5NLOPT | Estimated instruction usage                                                                11.28%
00 ET5NLOPT | ------------------------------------------------------------------------------------------------
00 ET5NLOPT | 
00 ET5NLOPT | This design contains 148606 ET primitives (boxes).
00 ET5NLOPT | Assuming instruction usage 80%, the design requires at least 1 domain.
00 ET5NLOPT | 
00 ET5NLOPT | Elapsed: init  0.00, ALU  0.00, CBL  2.00, SCBL  0.00, core  0.00
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' (Elapsed time 2.45s (4.54u+0.20s), Memory used 1807 Mb) on 05/02/2024 13:45:12
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3critpath' on 05/02/2024 13:45:12
00 DATABASE | Parms: ''
00 ET3CRIT* |                                    
00 ET3CRIT* |                        ET CRITICAL PATH FINDER
00 ET3CRIT* |                            RELEASE 6.0.2.6
00 ET3CRIT* |                           VXE, VEngineering
00 ET3CRIT* |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET3CRIT* |                          All rights reserved
00 ET3CRIT* |                                    
00 ET3CRIT* | ET3critpath created on Aug  3 2023 at 22:05:33.
00 ET3CRIT* | 56(    2): ET00000000000003CF->qt_init_emul_cycle_r[62]
00 ET3CRIT* | 55(    6): ET0000000000000FF0->qt_init_emul_cycle_w[62]
00 ET3CRIT* | 54(    9): ET0000000000000042->_ABTou
00 ET3CRIT* | 53(   12): ET0000000000000042->_ABToq
00 ET3CRIT* | 52(   19): ET0000000000000080->_ABTon
00 ET3CRIT* | 51(   30): ET0000000000000080->_ABToi
00 ET3CRIT* | 50(   88): ET0000000000000056->_ABToe
00 ET3CRIT* | 49(   12): ET0000000000000056->_ABToc
00 ET3CRIT* | 48(   13): ET0000000000000056->_ABToZ
00 ET3CRIT* | 47(   17): ET0000000000000056->_ABToY
00 ET3CRIT* | 46(   26): ET0000000000000056->_ABToW
00 ET3CRIT* | 45(   43): ET0000000000000056->_ABToV
00 ET3CRIT* | 44(   47): ET0000000000000056->_ABToT
00 ET3CRIT* | 43(   49): ET0000000000000056->_ABToS
00 ET3CRIT* | 42(   49): ET0000000000000056->_ABToQ
00 ET3CRIT* | 41(   58): ET0000000000000056->_ABToP
00 ET3CRIT* | 40(  193): ET0000000000000056->_ABToN
00 ET3CRIT* | 39(   60): ET0000000000000056->_ABToM
00 ET3CRIT* | 38(  138): ET0000000000000056->_ABToJ
00 ET3CRIT* | 37(  147): ET0000000000000042->_ABToH
00 ET3CRIT* | 36(   94): ET0000000000000056->_ABToE
00 ET3CRIT* | 35(   88): ET0000000000000042->_ABToD
00 ET3CRIT* | 34(  155): ET0000000000000056->_ABToA
00 ET3CRIT* | 33(  136): ET0000000000000042->_ABTny
00 ET3CRIT* | 32(  134): ET0000000000000056->_ABTnv
00 ET3CRIT* | 31(  158): ET0000000000000042->_ABTns
00 ET3CRIT* | 30(  184): ET0000000000000056->_ABTnp
00 ET3CRIT* | 29(  232): ET0000000000000042->_ABTno
00 ET3CRIT* | 28(  184): ET0000000000000056->_ABTnl
00 ET3CRIT* | 27(  246): ET0000000000000042->_ABTnj
00 ET3CRIT* | 26(  274): ET0000000000000056->_ABTng
00 ET3CRIT* | 25(  341): ET0000000000000042->_ABTnf
00 ET3CRIT* | 24(  673): ET0000000000000056->_ABTna
00 ET3CRIT* | 23(  420): ET0000000000000042->_ABTnZ
00 ET3CRIT* | 22(  421): ET0000000000000056->_ABTnW
00 ET3CRIT* | 21( 1808): ET0000000000000042->_ABTnU
00 ET3CRIT* | 20(  880): ET0000000000000056->_ABTnR
00 ET3CRIT* | 19( 1552): ET0000000000000042->_ABTnQ
00 ET3CRIT* | 18( 1733): ET0000000000000056->_ABTpA
00 ET3CRIT* | 17( 1533): ET0000000000000042->_ABToz
00 ET3CRIT* | 16( 2769): ET0000000000000056->_ABTor
00 ET3CRIT* | 15( 2620): ET0000000000000042->_ABTob
00 ET3CRIT* | 14( 4259): ET0000000000000056->_ABTnu
00 ET3CRIT* | 13( 4715): ET0000000000000056->_ABTnd
00 ET3CRIT* | 12( 4755): ET0000000000000056->_ABTnN
00 ET3CRIT* | 11( 4182): ET0000000000000056->_ABTnK
00 ET3CRIT* | 10( 4831): ET00000000000000F3->_ABTYO
00 ET3CRIT* |  9( 3043): ET0000000000008AAA->_ABTYT
00 ET3CRIT* |  8( 5156): ET0000000000000F00->_ABTXV
00 ET3CRIT* |  7( 5081): ET0000000000007775->_ABTZr
00 ET3CRIT* |  6( 4763): ET0000000000000001->_ABTzf$inv3107
00 ET3CRIT* |  5( 3656): ET0000000000000001->
00 ET3CRIT* |  4( 7503): ET0000000000008421->
00 ET3CRIT* |  3(17871): ET000000000000000F->_ABTFc
00 ET3CRIT* |  2(23234): ET000000000000F00F->_ABUXp
00 ET3CRIT* |  1(63190): FD01->_CVA_UA_CYCLE_COUNTER_RESET_READ_
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3critpath' (Elapsed time 0.03s (0.02u+0.00s), Memory used 1807 Mb) on 05/02/2024 13:45:12
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5mpart' on 05/02/2024 13:45:12
00 DATABASE | Parms: '-memTransform'
00 ET5MPART |  
00 ET5MPART |                                    
00 ET5MPART |                         ET5 MEMORY PARTITIONER
00 ET5MPART |                            RELEASE 6.0.2.6
00 ET5MPART |                           VXE, VEngineering
00 ET5MPART |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET5MPART |                          All rights reserved
00 ET5MPART |                                    
00 ET5MPART | et5mpart created on Aug  3 2023 at 22:05:51.
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | Detected architecture type ET6
00 ET5MPART | Palladium Z1 configuration detected...
00 ET5MPART | Gfifo list parsing ...
00 ET5MPART | gfifo create_groups() finished sucessfully
00 ET5MPART | done
00 ET5MPART | Gfifo slices properties propagation ...
00 ET5MPART | done
00 ET5MPART | ENGLICENSE is absent.
00 ET5MPART | Palladium Z1 configuration detected.
00 ET5MPART | "memTransform" started...
00 ET5MPART | ==========Memory statistics==========
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | Found file 'xcva_top.mempreset'.
00 ET5MPART | Found user option DISABLE_SHALLOW_MEM_TRANSFORMATIONS. Will honor it.
00 ET5MPART | Found 1 EXTRAM.
00 ET5MPART | Each INTRAM has capacity of 128 K words (64-bit words)
00 ET5MPART | Each EXTRAM has capacity of 1024 M words (64-bit words)
00 ET5MPART | ------------------------
00 ET5MPART | INTRAM needed    =  16 (if no EXTRAM is available)
00 ET5MPART | INTRAM available =  48
00 ET5MPART | EXTRAM needed    =   0
00 ET5MPART | EXTRAM available =   1
00 ET5MPART | Utilization factor = 100
00 ET5MPART | INTRAM available (adjusted) = 48
00 ET5MPART | There is enough INTRAM.
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | Found 147 memory ports.
00 ET5MPART | Found 92 memory instances.
00 ET5MPART | 
00 ET5MPART | List of 'DO_NOT_TOUCH' memory instances:
00 ET5MPART | ----------------------------------------
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.DUMMY.ctrl
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.HOLDTOP.ctrl
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0._zyevMem
00 ET5MPART | ET5_V1_H1.ixc_time._zzcmds
00 ET5MPART | ET5_V1_H1.ixc_time._zzmiopis
00 ET5MPART | ET5_V1_H1.ixc_time._zzmiopos
00 ET5MPART | ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_0._zyh2smem
00 ET5MPART | ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_0._zys2hmem
00 ET5MPART | ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_1._zyh2smem
00 ET5MPART | ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_1._zys2hmem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ----------------------------------------
10 ET5MPART | Design contains 35 'DO_NOT_TOUCH' memory instances
00 ET5MPART | ------------------------
00 ET5MPART | Without compaction the design would require 15.168 Mbytes of emulator memory.
00 ET5MPART | After full compaction it will require at least 14.870 Mbytes of emulator memory,
00 ET5MPART | so it will require at least 1 domain or at least 1 EXTRAM.
00 ET5MPART | This is a preliminary estimation; the final numbers may be different.
00 ET5MPART | ------------------------
00 ET5MPART | Design contains 92 memory instances.
00 ET5MPART | Design capacity (before memTransform): 173630
00 ET5MPART | HW capacity: 1548288
00 ET5MPART | Instruction usage: 11.2
00 ET5MPART | 
00 ET5MPART | Platform is Palladium Z1.
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | 
00 ET5MPART | 2 memory instances can be merged (Group 0: aw=6, numR=1, numW=0):
00 ET5MPART | dw=40	QTLA%SDL.top.tsm_0.main_instr.cnt1.cnt_cmpval_OPT
00 ET5MPART | dw=40	QTLA%SDL.top.tsm_0.main_instr.cnt2.cnt_cmpval_OPT
00 ET5MPART | In total, 2 memory instances are candidates for at least 1 merger.
00 ET5MPART | Memory merging started.
00 ET5MPART |  
00 ET5MPART | dw=40	QTLA%SDL.top.tsm_0.main_instr.cnt1.cnt_cmpval_OPT
00 ET5MPART | dw=40	QTLA%SDL.top.tsm_0.main_instr.cnt2.cnt_cmpval_OPT
00 ET5MPART | Bit-merging with mutual WE signals 2 memory instances (Group 1: aw=6, numR=1, numW=0):
00 ET5MPART | 
00 ET5MPART | In total, 2 memory instances were merged into 1 merger.
00 ET5MPART | New design capacity: 173623
00 ET5MPART | HW capacity: 1548288
00 ET5MPART | New instruction usage: 11.2
00 ET5MPART | 
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | Memory compaction relaxation:
00 ET5MPART | Avail: INTRAM: 48, EXTRAM: 1
00 ET5MPART | 
00 ET5MPART | IntDepth: 131072, ExtDepth: 1073741824 
00 ET5MPART | Needed INTRAM: 16, EXTRAM: 0 
00 ET5MPART | Evaluation of current memory requirements: INTRAM: 16 (1 domains), EXTRAM (1): 1
00 ET5MPART | Enough INTRAM - no need for compaction at all
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip0_key_tlv_rsm .u_cr_tlvp2_rsm.u_cr_fifo_wrap2_tob.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |  (w: 83, a: 8, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip0_key_tlv_rsm .u_cr_tlvp2_rsm.u_cr_fifo_wrap2_uobf.\reg_fifo.u_nx_fifo .\depth_n.r_data 
00 ET5MPART |  (w: 106, a: 4, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm.bypass_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 132, a: 4, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 611, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm_tag_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 96, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdf.gcm_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 128, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdf.hash_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 256, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdfstream_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 263, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .tlv_sb_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 64, a: 4, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop_fifo .ram_fifo.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |  (w: 71, a: 11, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm.bypass_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 132, a: 4, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 611, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm_tag_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 96, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdf.gcm_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 128, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdf.hash_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 256, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdfstream_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 263, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .tlv_sb_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 64, a: 4, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop_fifo .ram_fifo.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |  (w: 71, a: 11, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.ckv_pipeline .guid_stitcher.aux_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 83, a: 5, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.drng .drng.rnd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 128, a: 3, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.txc_axi_intf .u_cr_fifo_wrap2.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |  (w: 83, a: 8, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_ram.\g.mem 
00 ET5MPART |  (w: 64, a: 15, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_ram.\g.mem 
00 ET5MPART |  (w: 38, a: 14, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.run_stop_ctl._sdlcmds
00 ET5MPART |  (w: 64, a: 16, p: 4) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.tsm_lut_OPT
00 ET5MPART |  (w: 104, a: 16, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.tsm_0.tracer.trace_ram_OPT
00 ET5MPART |  (w: 168, a: 14, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.run_stop_ctl.debug_trace.debug_ram
00 ET5MPART |  (w: 512, a: 16, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.tsm_display_ram
00 ET5MPART |  (w: 16, a: 14, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.display.global_display_ram
00 ET5MPART |  (w: 256, a: 14, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.display.args_display_ram
00 ET5MPART |  (w: 2048, a: 14, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_tstamp_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_0_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_1_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_2_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_3_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_4_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_5_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_6_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_7_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_8_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_9_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_10_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_11_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_12_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_13_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_14_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_15_ram
00 ET5MPART |  (w: 64, a: 15, p: 1) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.cnt1.cnt_cmpval_OPT.Merger1
00 ET5MPART |  (w: 80, a: 6, p: 1) not compacted 
00 ET5MPART | End of memory compaction relaxation
00 ET5MPART | A memory ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.cnt1.cnt_cmpval_OPT.Merger1, previously merged can't be split now
00 ET5MPART | 
00 ET5MPART | ========New memory statistics after "memTransform"========
00 ET5MPART | INTRAM needed    =  16 (if no EXTRAM is available)
00 ET5MPART | INTRAM available =  48
00 ET5MPART | EXTRAM needed    =   0
00 ET5MPART | EXTRAM available =   1
00 ET5MPART | 
00 ET5MPART | Created / deleted memory ports during transformations: 1 / 2
00 ET5MPART | Total "memory weight" change: -14
00 ET5MPART | Created logic boxes during transformations: 0
00 ET5MPART | Created FD01 boxes during transformations: 0
00 ET5MPART | Design capacity: 173623
00 ET5MPART | HW capacity: 1548288
00 ET5MPART | Instruction usage: 11.2
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | Comp Options: 
00 ET5MPART | INTRAM util_factor: 0.000000
00 ET5MPART | Shallow memories treshold: 0
00 ET5MPART | MemTarget setting: 0
00 ET5MPART | Reformatting setting: 0
00 ET5MPART | Merge memories ports tredhold: 0
00 ET5MPART | Reformatting enabled
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.DUMMY.ctrl dw=256, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.DUMMY.ctrl was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.DUMMY.U989 dw=256, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.DUMMY.U989 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.HOLDTOP.ctrl dw=256, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.HOLDTOP.ctrl was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.HOLDTOP.U2006 dw=256, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.HOLDTOP.U2006 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0._zyevMem dw=64, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0._zyevMem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0.U13 dw=64, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0.U13 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzcmds dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzcmds targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U807 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U807 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzmiopis dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzmiopis targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U809 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U809 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzmiopos dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzmiopos targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U811 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U811 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U812 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U812 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_0._zyh2smem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_0._zyh2smem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_0._zys2hmem dw=256, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_0._zys2hmem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_1._zyh2smem dw=64, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_1._zyh2smem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_1._zys2hmem dw=64, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_1._zys2hmem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_1.U95 dw=64, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_1.U95 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0._zymem dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U2 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U2 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U3 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U3 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U4 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U4 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0._zymem dw=512, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0.U2 dw=512, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0.U2 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1._zymem dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1.U8 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1.U8 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1.U9 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1.U9 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0._zymem dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U2 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U2 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U3 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U3 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U4 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U4 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | inst : 0
00 ET5MPART | inst : 0
00 ET5MPART | total number of instances to extram : 0
00 ET5MPART | instances per extram: 0
00 ET5MPART | instances per bank: 0
00 ET5MPART | Evaluation (depth):max: 32 avg:0
00 ET5MPART | Depth driven spacing delay: 32
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | inst : 0
00 ET5MPART | inst : 0
00 ET5MPART | total number of instances to extram : 0
00 ET5MPART | instances per extram: 0
00 ET5MPART | instances per bank: 0
00 ET5MPART | Evaluation (port):max: 32 avg:0
00 ET5MPART | Port driven spacing delay: 32
00 ET5MPART | EDRAM_MAX value: 0
00 ET5MPART | Depth driven algorithm selected for targeting
00 ET5MPART | Physical DDR have 8192 Mbytes.
00 ET5MPART | Logical memory with ASM mode on DDR requires 0 Mbytes.
00 ET5MPART | Enough memory for Assembly Mode on EXTRAM
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | ========================================================
00 ET5MPART | Addr  Data  Port  Writ  Read  Targ  Name
00 ET5MPART | --------------------------------------------------------
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_0._zyh2smem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     1     1     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    64     2     2     0   INT  ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0._zyevMem
00 ET5MPART |    1    64     1     1     0   INT  ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_1._zyh2smem
00 ET5MPART |    1    64     2     0     2   INT  ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_1._zys2hmem
00 ET5MPART |    2    64     2     2     0   INT  ET5_V1_H1.ixc_time._zzcmds
00 ET5MPART |    2    64     2     0     2   INT  ET5_V1_H1.ixc_time._zzmiopis
00 ET5MPART |    2    64     3     3     0   INT  ET5_V1_H1.ixc_time._zzmiopos
00 ET5MPART |    2    64     2     2     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     2     2     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     2     2     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     2     2     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     2     2     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     2     2     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     2     2     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     2     2     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    96     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm_tag_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2    96     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm_tag_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   128     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdf.gcm_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   128     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdf.gcm_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   256     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdf.hash_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   256     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdf.hash_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   263     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdfstream_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   263     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdfstream_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   611     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   611     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    3    64     4     0     4   INT  ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_0._zys2hmem
00 ET5MPART |    3   128     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.drng .drng.rnd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    4    64     8     4     4   INT  ET5_V1_H1.IXC_GFIFO.DUMMY.ctrl
00 ET5MPART |    4    64     8     4     4   INT  ET5_V1_H1.IXC_GFIFO.HOLDTOP.ctrl
00 ET5MPART |    4    64     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .tlv_sb_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    4    64     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .tlv_sb_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    4    64    16    16     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0._zymem
00 ET5MPART |    4   106     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip0_key_tlv_rsm .u_cr_tlvp2_rsm.u_cr_fifo_wrap2_uobf.\reg_fifo.u_nx_fifo .\depth_n.r_data 
00 ET5MPART |    4   132     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm.bypass_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    4   132     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm.bypass_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    5    64    32    32     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0._zymem
00 ET5MPART |    5    64    24     0    24   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1._zymem
00 ET5MPART |    5    64    32    32     0   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0._zymem
00 ET5MPART |    5    83     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.ckv_pipeline .guid_stitcher.aux_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    6    80     1     0     1   INT  ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.cnt1.cnt_cmpval_OPT.Merger1
00 ET5MPART |    8    83     3     1     2   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip0_key_tlv_rsm .u_cr_tlvp2_rsm.u_cr_fifo_wrap2_tob.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |    8    83     3     1     2   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.txc_axi_intf .u_cr_fifo_wrap2.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |    9    96     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_ram.\g.mem 
00 ET5MPART |    9    96     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_ram.\g.mem 
00 ET5MPART |    9    96     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_ram.\g.mem 
00 ET5MPART |    9    96     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_ram.\g.mem 
00 ET5MPART |    9    96     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_ram.\g.mem 
00 ET5MPART |    9    96     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_ram.\g.mem 
00 ET5MPART |    9    96     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_ram.\g.mem 
00 ET5MPART |    9    96     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_ram.\g.mem 
00 ET5MPART |   11    71     3     1     2   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop_fifo .ram_fifo.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |   11    71     3     1     2   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop_fifo .ram_fifo.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |   14    16     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.tsm_display_ram
00 ET5MPART |   14    38     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_ram.\g.mem 
00 ET5MPART |   14   168     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.tsm_0.tracer.trace_ram_OPT
00 ET5MPART |   14   256     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.display.global_display_ram
00 ET5MPART |   14  2048     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.display.args_display_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_0_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_10_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_11_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_12_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_13_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_14_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_15_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_1_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_2_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_3_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_4_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_5_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_6_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_7_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_8_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_9_ram
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_tstamp_ram
00 ET5MPART |   15    64     2     1     1   INT  ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_ram.\g.mem 
00 ET5MPART |   16    64     4     2     2   INT  ET5_V1_H1.QTLA%SDL.top.run_stop_ctl._sdlcmds
00 ET5MPART |   16   104     1     0     1   INT  ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.tsm_lut_OPT
00 ET5MPART |   16   512     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.run_stop_ctl.debug_trace.debug_ram
00 ET5MPART | ========================================================
00 ET5MPART | Targeted 91 memory instances to INTRAM, 0 to EXTRAM.
00 ET5MPART | Intram utilization rate 31.60 percents
00 ET5MPART | Extram utilization rate 0.00 percents
00 ET5MPART | intram doms: 1
00 ET5MPART | extram doms: 0
00 ET5MPART | min doms: 1
00 ET5MPART | No TCAM slices - no need for deeper horizontal slicing
00 ET5MPART | =====================================
00 ET5MPART | "memTransform" finished.
00 ET5MPART | 
00 ET5MPART | MEMORY TRANSFORMATIONS FINISHED
00 ET5MPART | Instruction usage: 11.3
00 ET5MPART | 
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.apb_xactor._zzixc_tfport_0_0._zyh2smem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |  
00 ET5MPART | ----------------------------------------------------------------------------------------------
00 ET5MPART |     User design memories statistics
00 ET5MPART | ----------------------------------------------------------------------------------------------
00 ET5MPART |    15 memories of  1 bits deep with   1 ports: total accesses    15 using       0.0001 MBytes.
00 ET5MPART |     2 memories of  1 bits deep with   2 ports: total accesses     4 using       0.0000 MBytes.
00 ET5MPART |    56 memories of  2 bits deep with   2 ports: total accesses   112 using       0.0016 MBytes.
00 ET5MPART |     1 memories of  2 bits deep with   3 ports: total accesses     3 using       0.0000 MBytes.
00 ET5MPART |     2 memories of  3 bits deep with   2 ports: total accesses     4 using       0.0001 MBytes.
00 ET5MPART |     1 memories of  3 bits deep with   4 ports: total accesses     4 using       0.0001 MBytes.
00 ET5MPART |    10 memories of  4 bits deep with   2 ports: total accesses    20 using       0.0011 MBytes.
00 ET5MPART |     2 memories of  4 bits deep with   8 ports: total accesses    16 using       0.0002 MBytes.
00 ET5MPART |     1 memories of  4 bits deep with  16 ports: total accesses    16 using       0.0001 MBytes.
00 ET5MPART |     2 memories of  5 bits deep with   2 ports: total accesses     4 using       0.0004 MBytes.
00 ET5MPART |     1 memories of  5 bits deep with  24 ports: total accesses    24 using       0.0002 MBytes.
00 ET5MPART |     2 memories of  5 bits deep with  32 ports: total accesses    64 using       0.0005 MBytes.
00 ET5MPART |     2 memories of  6 bits deep with   1 ports: total accesses     2 using       0.0007 MBytes.
00 ET5MPART |     4 memories of  8 bits deep with   3 ports: total accesses    12 using       0.0059 MBytes.
00 ET5MPART |    16 memories of  9 bits deep with   2 ports: total accesses    32 using       0.0469 MBytes.
00 ET5MPART |     4 memories of 11 bits deep with   3 ports: total accesses    12 using       0.0469 MBytes.
00 ET5MPART |    40 memories of 14 bits deep with   1 ports: total accesses    40 using       4.9375 MBytes.
00 ET5MPART |     1 memories of 14 bits deep with   2 ports: total accesses     2 using       0.1250 MBytes.
00 ET5MPART |    17 memories of 15 bits deep with   1 ports: total accesses    17 using       4.2500 MBytes.
00 ET5MPART |     1 memories of 15 bits deep with   2 ports: total accesses     2 using       0.2500 MBytes.
00 ET5MPART |    10 memories of 16 bits deep with   1 ports: total accesses    10 using       5.0000 MBytes.
00 ET5MPART |     1 memories of 16 bits deep with   4 ports: total accesses     4 using       0.5000 MBytes.
00 ET5MPART | ----------------------------------------------------------------------------------------------
00 ET5MPART |   191 memories altogether      with            total accesses   419 using      15.1674 MBytes.
00 ET5MPART | ----------------------------------------------------------------------------------------------
00 ET5MPART |  
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5mpart' (Elapsed time 0.13s (0.09u+0.00s), Memory used 1807 Mb) on 05/02/2024 13:45:12
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/etupart' on 05/02/2024 13:45:12
00 DATABASE | Parms: '-s 271448396'
00 ETUPART  |                                    
00 ETUPART  |                    Palladium Universal Partitioner
00 ETUPART  |                            RELEASE 6.0.2.6
00 ETUPART  |                           VXE, VEngineering
00 ETUPART  |             Copyright(C) 1995-2021, Cadence Design Systems
00 ETUPART  |                          All rights reserved
00 ETUPART  |                                    
00 ETUPART  | etupart created on Aug  3 2023 at 22:05:56.
00 ETUPART  |                                    
00 ETUPART  | weighted fanout = 2.728163
00 ETUPART  | Number of valid option entries for module etupart = 0
00 ETUPART  | Read option seed with value 271448396
00 ETUPART  | Using default 'traceDepth' value 4096
00 ETUPART  | Apollo config: board has 8 GB EXTRAM
00 ETUPART  | total asic online = 1
00 ETUPART  | Board clique init str = 1, factor  1.40
00 ETUPART  | init strength = 1
00 ETUPART  | init strength = 1
00 ETUPART  | Initializing XMETIS engine.
00 ETUPART  | XMETIS created on Aug  3 2023 at 22:05:50
00 ETUPART  | METIS is Copyright 1997, Regents of the University of Minnesota
00 ETUPART  | XMETIS is Copyright 2016, Cadence Design Systems
00 ETUPART  | creating metis_seed_key
00 ETUPART  | Size of idx = 4
00 ETUPART  | 
00 ETUPART  | Host             = hsv-sc49
00 ETUPART  | Number of CPUs   = 96
00 ETUPART  | Physical memory  = 1031430 MB
00 ETUPART  | Compilation Seed = 271448396
00 ETUPART  | Verbose level    = 1
00 ETUPART  | Maximum threads  = 16
00 ETUPART  | Found sliced memories
00 ETUPART  | found 0 MDC inputs and 22 MDC outputs
00 ETUPART  | Increased weights for 0 self-looping logic gates
00 ETUPART  | Total weights = 175174
00 ETUPART  | Architecture APOLLO-12
00 ETUPART  | System has a total on 1 online asics
00 ETUPART  | 
00 ETUPART  | Legends: (o) online domain, (-) offline domain
00 ETUPART  | 
00 ETUPART  | Board  0 at Rack 0, Drawer  0:   o   -   -   -   -   -   -   -   
00 ETUPART  | 
00 ETUPART  | Total of    48.0000 megabytes of memory capacity on  48 online embedded DRAMs.
00 ETUPART  | Total of  8192.0000 megabytes of memory capacity on   1 online external DRAMs on MEMORY CARDs.
00 ETUPART  | Total user memory space required =    14.8424 MBytes
00 ETUPART  | Total physical memory available  =  8240.0000 MBytes
00 ETUPART  | Memory utilization rate          =     0.18%
00 ETUPART  | 
00 ETUPART  | Breakpoint handling
00 ETUPART  | Box-based levelization consumed 0.00 seconds
00 ETUPART  | Levelized 174485 boxes forward, max_level = 65, total boxes 174485
00 ETUPART  | CPU time: levelize  0.02, memgroup  0.00, box init  0.00
00 ETUPART  | Number of memories to use REGULAR access mode: 156
00 ETUPART  | Number of memories to use EDRAM_32 access mode: 35
00 ETUPART  | 6212 boxes in xc_top.eClkR cone
00 ETUPART  | 6212 boxes in xc_top.eClkR clique
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_1_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_2_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_3_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_5_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_7_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_8_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_9_0, size 32
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_10_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_11_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_24_0, size 16
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_25_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_26_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_27_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_28_0, size 32
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_29_0, size 2
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_1_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_2_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_3_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_4_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_5_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_6_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_7_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_8_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_9_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_10_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_11_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_12_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_13_0, size 20
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_14_0, size 32
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_15_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_16_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_17_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_24_0, size 32
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_25_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_26_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_27_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_28_0, size 2
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_29_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_30_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_32_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_33_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_34_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_35_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_0_0_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_0_0, size 64
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_6_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_17_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_18_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_19_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_20_0, size 8
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_21_0, size 8
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_22_0, size 64
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_23_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_0_1_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_0_0, size 64
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_18_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_19_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_20_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_21_0, size 8
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_22_0, size 8
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_23_0, size 64
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_31_0, size 64
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_4_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_12_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_13_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_14_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_15_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_16_0, size 1
00 ETUPART  | Found mergeflops 25607, clustered 25235, missed 110
00 ETUPART  | tree cliques size 2 has count 2728
00 ETUPART  | tree cliques size 3 has count 475
00 ETUPART  | tree cliques size 4 has count 97
00 ETUPART  | tree cliques size 5 has count 59
00 ETUPART  | tree cliques size 6 has count 31
00 ETUPART  | tree cliques size 7 has count 13
00 ETUPART  | tree cliques size 8 has count 7
00 ETUPART  | tree cliques size 9 has count 15
00 ETUPART  | tree cliques size 10 has count 5
00 ETUPART  | tree cliques size 11 has count 1
00 ETUPART  | tree cliques size 12 has count 10
00 ETUPART  | tree cliques size 13 has count 6
00 ETUPART  | tree cliques size 14 has count 3
00 ETUPART  | tree cliques size 15 has count 1
00 ETUPART  | tree cliques size 16 has count 2
00 ETUPART  | tree cliques size 17 has count 5
00 ETUPART  | tree cliques size 18 has count 1
00 ETUPART  | tree cliques size 19 has count 4
00 ETUPART  | tree cliques size 28 has count 2
00 ETUPART  | tree cliques size 32 has count 4
00 ETUPART  | cpm/cake  0.00, mem  0.01, manpart  0.00, alu  0.00, pio  0.00, dio  0.00, lb  0.00, td  0.03, tree  0.00, sgl  0.02
00 ETUPART  | CPM capture cliques       0
00 ETUPART  | CAKE cliques              0
00 ETUPART  | Memory cliques          191
00 ETUPART  | ALU cliques               0
00 ETUPART  | PIO cliques              23
00 ETUPART  | SA IO cliques            68
00 ETUPART  | Selfloop cliques          0
00 ETUPART  | Loopbreaker cliques       0
00 ETUPART  | FMux cliques              0
00 ETUPART  | Bus cliques               0
00 ETUPART  | Hie name cliques          0
00 ETUPART  | TD cliques            33784
00 ETUPART  | Tree cliques           3469
00 ETUPART  | Single box cliques    64215
00 ETUPART  | Up-down cliques           0
00 ETUPART  | Total cliques        101750
00 ETUPART  | CPU: opt&cfg  0.00, CSHR  0.00, boxinit  0.01, nodeinit  0.09
00 ETUPART  | Default partitioning engine is METIS
00 ETUPART  | Partitioning engine used at hierarchy System is CHP
00 ETUPART  | fanout limits = (75, 75)
00 ETUPART  | set_info: sram_bytes: 0, int_bytes: 1048576, ext_bytes: 8589934592
00 ETUPART  | hie Rack, idx 0 INTRAM 50331648, EXTRAM 8589934592 
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at System hierarchy
00 ETUPART  | ===========================================
00 ETUPART  |  num_engines = 1, num nodes = 1
00 ETUPART  | Partitioning at System consumed   0.00 real seconds and   0.00 CPU seconds
00 ETUPART  | 
00 ETUPART  | set_info: sram_bytes: 0, int_bytes: 1048576, ext_bytes: 8589934592
00 ETUPART  | hie BrdCluster, idx 0 INTRAM 50331648, EXTRAM 8589934592 
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at Rack hierarchy
00 ETUPART  | ===========================================
00 ETUPART  |  num_engines = 1, num nodes = 1
00 ETUPART  | Partitioning at Rack consumed   0.00 real seconds and   0.00 CPU seconds
00 ETUPART  | 
00 ETUPART  | set_info: sram_bytes: 0, int_bytes: 1048576, ext_bytes: 8589934592
00 ETUPART  | hie Board, idx 0 INTRAM 50331648, EXTRAM 8589934592 
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at BrdCluster hierarchy
00 ETUPART  | ===========================================
00 ETUPART  |  num_engines = 1, num nodes = 1
00 ETUPART  | Partitioning at BrdCluster consumed   0.00 real seconds and   0.00 CPU seconds
00 ETUPART  | 
00 ETUPART  | switching from physical index 0 to logical index 0 at Board
00 ETUPART  | set_info: sram_bytes: 0, int_bytes: 1048576, ext_bytes: 8589934592
00 ETUPART  | hie Asic, idx 0 INTRAM 50331648, EXTRAM 8589934592 
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at Board hierarchy
00 ETUPART  | ===========================================
00 ETUPART  |  num_engines = 1, num nodes = 1
00 ETUPART  | Partitioning at Board consumed   0.00 real seconds and   0.00 CPU seconds
00 ETUPART  | 
00 ETUPART  | Breaking xc_top.eClkR clique at Asic hierarchy
00 ETUPART  | 
00 ETUPART  | num cons = 191, cons sz = 382
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at Asic hierarchy
00 ETUPART  | ===========================================
00 ETUPART  | Using 100% internal memories at hierarchy Asic
00 ETUPART  |  num_engines = 1, num nodes = 1
00 ETUPART  | --------------------------------------------------
00 ETUPART  | Partitioning Asic, index 0, parts 6
00 ETUPART  | --------------------------------------------------
00 ETUPART  |   Part idx  0: 17%, cap   254016 total mem    8.00MB, (INTRAM    8.00MB, EXTRAM    0.00MB), ALU   8, TLANE   0
00 ETUPART  |   Part idx  1: 17%, cap   254016 total mem    8.00MB, (INTRAM    8.00MB, EXTRAM    0.00MB), ALU   8, TLANE   0
00 ETUPART  |   Part idx  2: 17%, cap   254016 total mem    8.00MB, (INTRAM    8.00MB, EXTRAM    0.00MB), ALU   8, TLANE   0
00 ETUPART  |   Part idx  3: 17%, cap   254016 total mem    8.00MB, (INTRAM    8.00MB, EXTRAM    0.00MB), ALU   8, TLANE   0
00 ETUPART  |   Part idx  4: 17%, cap   254016 total mem    8.00MB, (INTRAM    8.00MB, EXTRAM    0.00MB), ALU   8, TLANE   0
00 ETUPART  |   Part idx  5: 17%, cap   254016 total mem    8.00MB, (INTRAM    8.00MB, EXTRAM    0.00MB), ALU   8, TLANE   0
00 ETUPART  | Fitting memories in AP at node Asic idx 0
00 ETUPART  | part 0: INTRAM 8388608, EXTRAM 0
00 ETUPART  | part 1: INTRAM 8388608, EXTRAM 0
00 ETUPART  | part 2: INTRAM 8388608, EXTRAM 0
00 ETUPART  | part 3: INTRAM 8388608, EXTRAM 0
00 ETUPART  | part 4: INTRAM 8388608, EXTRAM 0
00 ETUPART  | part 5: INTRAM 8388608, EXTRAM 0
00 ETUPART  | intram cap 1048576, total intram_cap (1.00) = 50331648
00 ETUPART  | Converted 0 constraints into 0 new vertices
00 ETUPART  | sml_cap_assigned = 15904192, avail sml cap = 50331648
00 ETUPART  | Calling XMetis: Vertices 107962, Edges 436780, Total weight 175174, Num. constraints 191, metis balance = 1.03, limfanout = 75
00 ETUPART  |    Total external connections = 22 on 22 vertices, extConn factor = 15
00 ETUPART  | IO box 68198 set to partition 0 phy unit 0: ET6_XBOB_141
00 ETUPART  | Thread 0 partition result:
00 ETUPART  |  part  vertex   weight extconn tlane   type count   usage hard  soft  full  (limit hard  soft  full)
00 ETUPART  |   0:    15762    28346       0     0 INTRAM    49      6423920    82     0  (   8388608    83     0) 
00 ETUPART  |   1:    17239    28345       1     0 INTRAM    37      4588360    81     0  (   8388608    83     0) 
00 ETUPART  |   2:    19493    30003      13     0 INTRAM    27      3015952    74     0  (   8388608    83     0) 
00 ETUPART  |   3:    17516    30073       4     0 INTRAM    23      1068024    79     0  (   8388608    83     0) 
00 ETUPART  |   4:    21055    30062       1     0 INTRAM    20        18768    36     0  (   8388608    83     0) 
00 ETUPART  |   5:    16897    28345       3     0 INTRAM    35       789168    67     0  (   8388608    83     0) 
00 ETUPART  | 
00 ETUPART  |   Cutsize matrix
00 ETUPART  | f\t:       0      1      2      3      4      5    ext
00 ETUPART  |   0:       0    157    334    136     40    390      0
00 ETUPART  |   1:     391      0   1158     68    260    326      0
00 ETUPART  |   2:     536   1449      0     71     54    178      0
00 ETUPART  |   3:     269    170    187      0    185     73      0
00 ETUPART  |   4:     221    258     98    325      0    560      0
00 ETUPART  |   5:     459    454    325    197    505      0      0
00 ETUPART  | ext:       0      0      0      0      0      0
00 ETUPART  | wire util = 2%
00 ETUPART  | 
00 ETUPART  | trial 0 thread 0, edgecut 11972, balance  1.03, util pct 2, current best util pct 1000000
00 ETUPART  | Best partition trial 0, seed 271448396: edgecut 11972, wire util pct 2, good enough N
00 ETUPART  | Balancing Asic node idx 0, num parts 6, vertices 107962
00 ETUPART  | Using target percentage 11.57% (ds_usage 11.49%, max ds_usage 11.83%)
00 ETUPART  | part 0 target ds 29389, target is 2458
00 ETUPART  | part 1 target ds 29389, target is 2458
00 ETUPART  | part 2 target ds 29389, target is 2458
00 ETUPART  | part 3 target ds 29389, target is 2458
00 ETUPART  | part 4 target ds 29389, target is 2458
00 ETUPART  | part 5 target ds 29389, target is 2458
00 ETUPART  | -- before balancing -------------------------------------------------------------------------------
00 ETUPART  |  0 >  28346:1876  28345:2488  30003:2102  30073:797   30062:1044  28345:1527 
00 ETUPART  | ---------------------------------------------------------------------------------------------------
00 ETUPART  | Total (175174:9834), ave ( 29195:1639), max ( 30073:2488), target ( 29389:2458)
00 ETUPART  | -- after balancing  -------------------------------------------------------------------------------
00 ETUPART  |  0 >  28712:2580  28435:2580  29389:1825  29481:675   29975:1013  29182:2580 
00 ETUPART  | ---------------------------------------------------------------------------------------------------
00 ETUPART  | Total (175174:11253), ave ( 29195:1875), max ( 29975:2580)
00 ETUPART  | *** Restored to original partition due to bad result. ***
00 ETUPART  | --------------------------------------------------------------------
00 ETUPART  | Total vertices 107962, excess 1609, unmoved 585, moved 1024
00 ETUPART  | ====================================================================
00 ETUPART  | CPU time: map 0.07, partition 0.41, move&dup 0.00, balance 0.01, swap 0.00, total 0.49
00 ETUPART  | Partitioning at Asic consumed   0.50 real seconds and   0.50 CPU seconds
00 ETUPART  | 
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at P512 hierarchy
00 ETUPART  | ===========================================
00 ETUPART  |  num_engines = 6, num nodes = 6
00 ETUPART  | Fitting memories in AP at node P512 idx 0
00 ETUPART  | part 0: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 1: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 2: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 3: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 4: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 5: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 6: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 7: INTRAM 1048576, EXTRAM 0
00 ETUPART  | intram cap 1048576, total intram_cap (1.00) = 8388608
00 ETUPART  | IO box 68198 set to partition 2 phy unit 2: ET6_XBOB_141
00 ETUPART  | Fitting memories in AP at node P512 idx 1
00 ETUPART  | part 0: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 1: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 2: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 3: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 4: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 5: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 6: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 7: INTRAM 1048576, EXTRAM 0
00 ETUPART  | intram cap 1048576, total intram_cap (1) = 8388608
00 ETUPART  | Fitting memories in AP at node P512 idx 2
00 ETUPART  | part 0: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 1: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 2: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 3: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 4: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 5: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 6: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 7: INTRAM 1048576, EXTRAM 0
00 ETUPART  | intram cap 1048576, total intram_cap (1) = 8388608
00 ETUPART  | Fitting memories in AP at node P512 idx 3
00 ETUPART  | part 0: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 1: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 2: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 3: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 4: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 5: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 6: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 7: INTRAM 1048576, EXTRAM 0
00 ETUPART  | intram cap 1048576, total intram_cap (1) = 8388608
00 ETUPART  | Fitting memories in AP at node P512 idx 4
00 ETUPART  | part 0: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 1: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 2: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 3: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 4: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 5: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 6: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 7: INTRAM 1048576, EXTRAM 0
00 ETUPART  | intram cap 1048576, total intram_cap (1) = 8388608
00 ETUPART  | Fitting memories in AP at node P512 idx 5
00 ETUPART  | part 0: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 1: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 2: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 3: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 4: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 5: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 6: INTRAM 1048576, EXTRAM 0
00 ETUPART  | part 7: INTRAM 1048576, EXTRAM 0
00 ETUPART  | intram cap 1048576, total intram_cap (1) = 8388608
00 ETUPART  | Partitioning at P512 consumed   0.38 real seconds and   1.36 CPU seconds
00 ETUPART  | 
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at P64 hierarchy
00 ETUPART  | ===========================================
00 ETUPART  |  num_engines = 4, num nodes = 48
00 ETUPART  | IO box 68198 set to partition 1 phy unit 17: ET6_XBOB_141
00 ETUPART  | Partitioning at P64 consumed   0.19 real seconds and   0.57 CPU seconds
00 ETUPART  | 
00 ETUPART  | 
00 ETUPART  | Message  2                     GET_BOX_EP processed:    72, cpu 0.0001, real 0.0002
00 ETUPART  | Message  3                     SET_BOX_EP processed:   419, cpu 0.0004, real 0.0007
00 ETUPART  | Message  7                    GET_MEM_LOC processed:   419, cpu 0.0004, real 0.0007
00 ETUPART  | Message  8                    SET_MEM_LOC processed:   419, cpu 0.0086, real 0.0087
00 ETUPART  | Message 12               MEMUTIL_SET_MODE processed:   191, cpu 0.0001, real 0.0003
00 ETUPART  | Message 13              MEMUTIL_RM_UNUSED processed:   191, cpu 0.0003, real 0.0004
00 ETUPART  | Message 14              MEMUTIL_GET_PORTS processed:   191, cpu 0.0002, real 0.0003
00 ETUPART  | Message 23                     GET_MC_EPS processed:  4612, cpu 0.0092, real 0.0124
00 ETUPART  | Message 24                     GET_MI_EPS processed:  1948, cpu 0.0022, real 0.0035
00 ETUPART  |                                     Total processed:  8462, cpu 0.0215, real 0.0272
00 ETUPART  | 
00 ETUPART  | xc_top.eClkR is in chip 0
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5cpr' on 05/02/2024 13:45:14
00 DATABASE | Parms: ''
00 ET5CPR   |                                    
00 ET5CPR   |                Cadence Palladium Critical Path Reducer
00 ET5CPR   |                            RELEASE 6.0.2.6
00 ET5CPR   |                                    
00 ET5CPR   |                           VXE, VEngineering
00 ET5CPR   |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET5CPR   |                          All rights reserved
00 ET5CPR   |                                    
00 ET5CPR   | et5cpr created on Aug  3 2023 at 22:05:33.
00 ET5CPR   |                                    
00 ET5CPR   | Number of valid option entries for module et5cpr = 0
00 ET5CPR   | Running CPR duplication criteria -  1 
00 ET5CPR   | Duplication is allowed
00 ET5CPR   | num boxes 174066, max ep size 841, last asic 8, num_asic 1, max asicsize 221619
00 ET5CPR   | total m_weight 221609, ave m_weight per asic 221609, ave m_weight per cluster 577, ave m_weight per ep 72
00 ET5CPR   | max_lep size = 841, max asic size = 221619, hop hierachy at 4
00 ET5CPR   | num boxes 174066, max cls size loada 508, last asic 8, num_asic 1, max asic size loada 162613
00 ET5CPR   | total wgt loada 162613, ave wgt per asic 162613, ave wgt per cluster 423, ave wgt per ep 52
00 ET5CPR   | cls limit loada = 559, asic limit loada = 25408, hop hierachy at 4
00 ET5CPR   | num_racks = 1, num brds = 1
00 ET5CPR   | reducing hop at 4 hierarchy
00 ET5CPR   | Reducing hop at epc level.
00 ET5CPR   | max round = 100
00 ET5CPR   | CPR round  1, maxlvl 125, path head  86446 lvl 121, tail 155290, len  37, m_is_marked   0, moved 20, NC 0 
00 ET5CPR   | CPR round  2, maxlvl 122, path head 174073 lvl 122, tail 164746, len  51, m_is_marked   0, moved 25, NC 0 
00 ET5CPR   | CPR round  3, maxlvl 118, path head  47434 lvl 104, tail 164749, len  43, m_is_marked   0, moved 14, NC 0 
00 ET5CPR   | CPR round  4, maxlvl 102, path head 174073 lvl 101, tail 164746, len  47, m_is_marked   0, moved  6, NC 0 
00 ET5CPR   | CPR round  5, maxlvl 100, path head 174073 lvl 100, tail 164746, len  47, m_is_marked   0, moved  3, NC 0 
00 ET5CPR   | CPR round  6, maxlvl 100, path head 174073 lvl 100, tail 155290, len  48, m_is_marked   0, moved  2, NC 1 
00 ET5CPR   | Round 7 path is empty.
00 ET5CPR   | after restore, max level = 100
00 ET5CPR   | Total relocated = 62
00 ET5CPR   | max cls size loada 508, max asic size loada 162613
00 ET5CPR   | total wgt loada 162613, ave wgt per asic 162613, ave wgt per cluster 423
00 ET5CPR   | Maximum number of hops in all paths = 100
00 ET5CPR   |                                    
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5cpr' (Elapsed time 0.17s (0.15u+0.00s), Memory used 1823 Mb) on 05/02/2024 13:45:14
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/etupart' (Elapsed time 1.45s (2.68u+0.06s), Memory used 1823 Mb) on 05/02/2024 13:45:14
00 DATABASE | Calling 'svproto' on 05/02/2024 13:45:14
00 DATABASE | Parms: 'qt_modular -remove_CMIO -optimize'
00 DATABASE | Return from 'svproto' (Elapsed time 0.09s (0.07u+0.01s), Memory used 1823 Mb) on 05/02/2024 13:45:14
00 DATABASE | Compiler Statistics:
00 DATABASE | ENVRN |  MAX_LOGICAL_HOP | 100        | 
00 DATABASE | ENVRN |  ModuleCurrent   | 8          | None
00 DATABASE | ENVRN |  MAX_LOGICAL_LEVEL | 65         | 
00 DATABASE | ENVRN |  ModuleLast      | 4          | None
00 DATABASE | CONFG |  NumASICs        | 1          | 
00 DATABASE | CONFG |  EmType          | 4          | ET6
00 DATABASE | CONFG |  ModuleStatus    | 1          | Passed
00 DATABASE | CONFG |  NumDomains      | 1          | 
00 DATABASE | CONFG |  SAProtocol      | 5          | 
00 DATABASE | NLOPT |  InitialGateCount | 234123     | 
00 DATABASE | NLOPT |  FinalGateCount  | 148606     | 
00 DATABASE | NLOPT |  UtilRate        | 12         | Percents
00 DATABASE | NLOPT |  NumDBO          | 321        | 
00 DATABASE | NLOPT |  NumPI           | 0          | 
00 DATABASE | NLOPT |  NumDBI          | 250        | 
00 DATABASE | NLOPT |  ModuleStatus    | 1          | Passed
00 DATABASE | NLOPT |  NumPO           | 1          | 
00 DATABASE | MPART |  totalDdrPorts   | 0          | 
00 DATABASE | MPART |  INTRAMutil      | 32         | percents
00 DATABASE | MPART |  totalXINTports  | 0          | 
00 DATABASE | MPART |  totalBINTports  | 0          | 
00 DATABASE | MPART |  ModuleStatus    | 1          | Passed
00 DATABASE | MPART |  totalInstrNum   | 175174     | 
00 DATABASE | MPART |  totalDDRports   | 0          | 
00 DATABASE | MPART |  totalBintPorts  | 419        | 
00 DATABASE | MPART |  minDomainsForMemories | 1          | 
00 DATABASE | MPART |  totalLPDDRports | 0          | 
00 DATABASE | MPART |  totalSINTports  | 0          | 
00 DATABASE | PARTR |  MemEmulator     | 8240       | MBytes
00 DATABASE | PARTR |  ModuleStatus    | 1          | Passed
00 DATABASE | PARTR |  MemUser         | 15         | MBytes
00 DATABASE | PARTR |  BufferTree      | 512        | Max sinks
00 DATABASE | OTHER |  ModuleStatus    | 1          | Passed
00 DATABASE | Compile finished without errors, last module called was None
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
