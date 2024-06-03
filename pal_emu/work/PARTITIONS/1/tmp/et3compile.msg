00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' on 05/21/2024 16:19:01
00 DATABASE | Parms: '-client'
00 ET3LIB   |                                    
00 ET3LIB   |                              ET3 LIBRARY
00 ET3LIB   |                            RELEASE 6.0.2.6
00 ET3LIB   |                           VXE, VEngineering
00 ET3LIB   | (c) 1995-2020 Cadence Design Systems, Inc. All rights reserved worldwide.
00 ET3LIB   |            See files in <rootdir>/share/vxe/install/Copyrights
00 ET3LIB   |                                    
00 ET3LIB   | ET3lib created on Aug  3 2023 at 22:13:09.
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' (Elapsed time 0.00s (0.00u+0.00s), Memory used 1307 Mb) on 05/21/2024 16:19:01
00 DATABASE | Calling 'ldproto' on 05/21/2024 16:19:01
00 DATABASE | Parms: 'qt2dadb -modular -rename xcva_top'
00 DATABASE | Reading file './dbFiles/qt2dadb.ffproto' created on Tue May 21 16:18:56 2024
00 DATABASE | 
00 DATABASE | Proto size = 2586092
Info: 543424 ffDB nets have been restored
Info: 530300 ffDB boxes have been restored
00 DATABASE | Return from 'ldproto' (Elapsed time 0.27s (0.20u+0.06s), Memory used 1631 Mb) on 05/21/2024 16:19:01
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' on 05/21/2024 16:19:01
00 DATABASE | Parms: '-client xcva_top -seed 266172613 -reserve_epc 63 -compilerEffort 991010 -visionMode FV -num_cycles_per_capture_frame 32'
00 ET3CONFG | Default SA Protocol - Classic
00 ET3CONFG | DBI's P5 limit (90% utilization): 33177, DBIs in CTL: 72 (max index: 72), DBO's P5 limit (90% utilization) 88473, DBO in CTL: 147 (max index: 147)
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
00 ET3CONFG | ***** MB/XB wire table initialization took 0.000624 seconds.
00 ET3CONFG | ***** Found 0000000  MBO->MBI  possible links in this configuration.
00 ET3CONFG | ***** HIGHEST board found in emulation configuration is 0
00 ET3CONFG | load_module_version()          = 30
00 ET3CONFG | num_cycles_per_capture_frame   = 32
00 ET3CONFG | das_protocol()                 = 5
00 ET3CONFG | COMPILED ON 05/21/2024 AT 16:19:01
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
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' on 05/21/2024 16:19:01
00 DATABASE | Parms: ''
00 OMLIB    |                                    
00 OMLIB    |                           VXE, VEngineering
00 OMLIB    |             Copyright(C) 1995-2021, Cadence Design Systems
00 OMLIB    |                          All rights reserved
00 OMLIB    |                            RELEASE 6.0.2.6
00 OMLIB    |                                    
00 OMLIB    | omlib created on Aug  3 2023 at 22:05:33
00 OMLIB    | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/omlib' (Elapsed time 0.01s (0.00u+0.00s), Memory used 1631 Mb) on 05/21/2024 16:19:01
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
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3confg' (Elapsed time 0.29s (0.02u+0.00s), Memory used 1631 Mb) on 05/21/2024 16:19:01
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' on 05/21/2024 16:19:01
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
00 ET6CTL   | ---> (BOARD 00) breakpoint box ET6_XBOB_141 created for ep 141 step 0 net 496747 (QTLA%break)
00 ET6CTL   | Handling DAS CARD related sections...
00 ET6CTL   | Found ECM_DONE interrupt signal xc_top._ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_
00 ET6CTL   | Generated ECM_READY signal _ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_DELAYED_ONE_CYCLE_
00 ET6CTL   | Generated DBI_APPLY_Q signal DBI_APPLY_ONE_CYCLE_DELAYED
00 ET6CTL   | Found slow mode control signals and inserted appropriate control on DBI_APPLY
00 ET6CTL   | Found DBI_APPLY sink signal xc_top._ET3_COMPILER_RESERVED_NAME_DBI_APPLY_
00 ET6CTL   | Found 73 DBI signals: 2 direct, 71 regular, 0 F/R/D
00 ET6CTL   | Found 146 DBO signals: 0 direct, 146 regular
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
00 ET6CTL   | 	DBI utilization: 73/36864 (0.0%)
00 ET6CTL   | 	DBO utilization: 146/98304 (0.0%)
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6ctl' (Elapsed time 0.05s (0.03u+0.01s), Memory used 1631 Mb) on 05/21/2024 16:19:01
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' on 05/21/2024 16:19:01
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
00 ET5NLOPT | Found 168452 keep nets and set 0 box group.
00 ET5NLOPT | Tied 12459 undefined inputs to GROUND.
00 ET5NLOPT | Palladium Z1 configuration detected.
00 ET5NLOPT | ----------------------------------------------
00 ET5NLOPT | "ALU optimizer" started...
00 ET5NLOPT | File "xcva_top.aluRules" not found, use default options.
00 ET5NLOPT | Done FW logic levelization on 530684 boxes, max logic level = 228, in 0.076 seconds
00 ET5NLOPT | 
00 ET5NLOPT | Removed 33284 redundant boxes
00 ET5NLOPT | Removed 72 complex redundant boxes
00 ET5NLOPT | Simplified 0 mux-of-muxes with common selector
00 ET5NLOPT | Swapped 3572 sets of selectors and inputs of mux-of-muxes
00 ET5NLOPT | Maximum mux transformations = 9223372036854775807, boxes size = 530684
00 ET5NLOPT | Muxes simplified 0, transformation 14189 (215 with mismatched level)
00 ET5NLOPT | Muxes broken 148, tranformed = 14189, muxes swapped = 3572
00 ET5NLOPT | Mux optimization reduced logical levels from 228 to 226
00 ET5NLOPT | Done FW logic levelization on 483139 boxes, max logic level = 226, in 0.065 seconds
00 ET5NLOPT | 
00 ET5NLOPT | Using level dependency vector for propagation order
00 ET5NLOPT | CBL option is 2
00 ET5NLOPT | Running DADB command "call et5cbl -O2"
00 ET5NLOPT | 
00 ET5NLOPT | Transformed 0 (0 selfloop) do not touch boxes into DELAY boxes
00 ET5NLOPT | Saved memloop bits for 0 memory ports
00 ET5NLOPT | marked 0 nets as transitional logic and set as keepnet before CBL
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5cbl' on 05/21/2024 16:19:02
00 DATABASE | Parms: '-O2'
00 ET5CBL   | 
00 ET5CBL   |                        CBL Netlist Optimizer
00 ET5CBL   |                          RELEASE 6.0.2.6
00 ET5CBL   | 
00 ET5CBL   |                           VXE, VEngineering
00 ET5CBL   |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET5CBL   |                          All rights reserved
00 ET5CBL   | 
00 ET5CBL   | ---- ET5CBL: Parameters: -O2                          ---- (Time: 0.00 s   Mem: 2135.34 MB)
00 ET5CBL   | ==== ET5CBL: compiled: Aug  3 2023 (22:05:58)
00 ET5CBL   | ==== ET5CBL: run     : May 21 2024 (16:19:02) on host hsv-sc49
00 ET5CBL   | ==== ET5CBL: optimization level: 2
00 ET5CBL   | ---- ET5CBL: Cleaning up database                     ---- (Time: 0.01 s   Mem: 2135.34 MB)
00 ET5CBL   | WARNING! Connected 10207 logic gate inputs to LOW with net attribute GROUND
00 ET5CBL   | WARNING! Connected 16466 logic gate inputs to HIGH with net attribute POWER.
00 ET5CBL   | Found 0 boxes with non-zero box flags
00 ET5CBL   | Saved 0 net properties
00 ET5CBL   | ---- ET5CBL: Partitioning database into 4 parts       ---- (Time: 0.06 s   Mem: 2135.34 MB)
00 ET5CBL   | Initializing XMETIS engine.
00 ET5CBL   | XMETIS created on Aug  3 2023 at 22:05:50
00 ET5CBL   | METIS is Copyright 1997, Regents of the University of Minnesota
00 ET5CBL   | XMETIS is Copyright 2016, Cadence Design Systems
00 ET5CBL   | creating metis_seed_key
00 ET5CBL   | Size of idx = 4
00 ET5CBL   | 
00 ET5CBL   | >> partitioned 482979 vertices in 4 parts with seed 94583 and result edge cuts = 13365
00 ET5CBL   | >>    part 0: vertices = 120633
00 ET5CBL   | >>    part 1: vertices = 117848
00 ET5CBL   | >>    part 2: vertices = 123349
00 ET5CBL   | >>    part 3: vertices = 121149
00 ET5CBL   | ---- ET5CBL: Maximum 4 threads to run concurrently    ---- (Time: 0.70 s   Mem: 2180.33 MB)
00 ET5CBL   | Created 9283 PI/PO groups on cross-partition signals
00 ET5CBL   | ---- ET5CBL: Converting database to netlists          ---- (Time: 0.84 s   Mem: 2180.33 MB)
00 ET5CBL   | Found box keyword BOX_LEVELS, size = 4 bytes
00 ET5CBL   | Altogether found 1 box keywords
00 ET5CBL   | >> Probes stored: 16602 IO, 67368 FF probes.
00 ET5CBL   | >> Number of boxes with non-zero box_flags = 0
00 ET5CBL   | >> Number of nonzero box keywords saved = 460721
00 ET5CBL   | ---- ET5CBL: Clearing database                        ---- (Time: 1.43 s   Mem: 2264.52 MB)
00          | 
00          | ==========================================================================================================
00          | ---- ET5CBL: Thread 0: Started                        ---- (Time: 1.68 s   Mem: 2264.52 MB)
00          | >>     #Gates=202355  (#Lut=87074  #PadR=2444  #PadW=2858  #MemR=15  #MemW=52  #Pin=27233  #Loop=3428  #FD01=29914  #Force=49335)  #Garb=1
00          | ---- ET5CBL: Thread 0: Adding name listener           ---- (Time: 1.75 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 0: Checking iterator consistency  ---- (Time: 1.78 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 0: Expanding LUTs into ANDs       ---- (Time: 1.97 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 0: Removing redundant logic       ---- (Time: 4.08 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 0: Rewriting DAG-aware netlist    ---- (Time: 4.44 s   Mem: 2264.52 MB)
00          | >>     Minimizing:
00          | >>     Reduction in #ANDs:  9.40 %
00          | >>     Core shrink time  : 3.72 s
00          | >>     Globally redundant: 0
00          | ---- ET5CBL: Thread 0: Technology mapping             ---- (Time: 8.34 s   Mem: 2328.52 MB)
00          | >> ========================================
00          | >> ==         TECHNOLOGY MAPPING         ==
00          | >> ========================================
00          | >>
00          | >> Netlist stats.: #Gates=282250  (#And=166969  #PadR=2444  #PadW=2858  #MemR=15  #MemW=52  #Pin=27233  #Loop=3428  #FD01=29914  #Force=49335)  #Garb=1
00          | >> Initialization: 0.12 s
00          | >>
00          | >>     Iter  |  2-Luts   3-Luts   4-Luts   |    Total     Wires   Delay
00          | >>     ------+-----------------------------+---------------------------
00          | >>        0  |    5359    22564    32684   |    60607    209146      80    (Time: 0.58 s)
00          | >>        1  |    7067    23631    24780   |    55478    184147      96    (Time: 0.26 s)
00          | >>        2  |    6500    23104    25333   |    54937    183644      96    (Time: 0.24 s)
00          | >>
00          | >> Instantiating LUTs.
00          | >> Eliminating negations.
00          | >>   -- added 146 LUTs
00          | >> Packing 4-MUXes.
00          | >>   -- 36 rewrites, saving 36 gates (= 0.02 % reduction)
00          | >> Netlist stats.: #Gates=170328  (#Lut=55047  #PadR=2444  #PadW=2858  #MemR=15  #MemW=52  #Pin=27233  #Loop=3428  #FD01=29914  #Force=49335)  #Garb=1
00          | >> Techmap CPU Time: 1.69 s
00          | ---- ET5CBL: Thread 0: Eliminating forcible gates     ---- (Time: 10.03 s   Mem: 2520.52 MB)
00          |   -- Forcible logic not leading to duplication : 14548
00          |   -- Forcible flops not leading to duplication : 25212
00          |   -- Forcible gates leading to duplication     : 260
00          |   -- Forcible buffers inserted after non-logic : 4585 (superfluous: 3485)
00          |   -- Forcible buffers inserted after constants : 4730
00          |   -- Forcible buffers stacked due to keep-nets : 3216
00          | ---- ET5CBL: Thread 0: Recreating final database      ---- (Time: 10.14 s   Mem: 2520.52 MB)
00          | >> Names preserved through simplification: 100139 / 121930  (= 82.1 %)
00          | >> Probes restored: 5071 IO, 17525 FF probes.
00          | >> Boxes with non-zero flags restored = 0
00          | >> Restoring box keyword BOX_LEVELS
00          | >> Box keyword BOX_LEVELS has 85272 non-zero values restored
00          | >> Removed 1048 superflous buffers added for forcible boxes
00          | >> IO boxes found: 5302, keepnet info fixed: 229
00          | >>     #Gates=130568  (#Lut=64622  #PadR=2444  #PadW=2858  #MemR=15  #MemW=52  #Pin=27233  #Loop=3428  #FD01=29914)  #Garb=49336
00          | ---- ET5CBL: Thread 0: Disposing netlist              ---- (Time: 10.49 s   Mem: 2424.49 MB)
00          | 
00          | ==========================================================================================================
00          | ---- ET5CBL: Thread 1: Started                        ---- (Time: 1.68 s   Mem: 2264.52 MB)
00          | >>     #Gates=204591  (#Lut=85976  #PadR=3733  #PadW=1592  #MemR=15  #MemW=39  #Pin=30070  #Loop=3116  #FD01=28688  #Force=51360)  #Garb=1
00          | ---- ET5CBL: Thread 1: Adding name listener           ---- (Time: 1.73 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 1: Checking iterator consistency  ---- (Time: 1.76 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 1: Expanding LUTs into ANDs       ---- (Time: 1.90 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 1: Removing redundant logic       ---- (Time: 4.06 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 1: Rewriting DAG-aware netlist    ---- (Time: 4.36 s   Mem: 2264.52 MB)
00          | >>     Minimizing:
00          | >>     Reduction in #ANDs:  6.05 %
00          | >>     Core shrink time  : 3.42 s
00          | >>     Globally redundant: 0
00          | ---- ET5CBL: Thread 1: Technology mapping             ---- (Time: 8.02 s   Mem: 2328.52 MB)
00          | >> ========================================
00          | >> ==         TECHNOLOGY MAPPING         ==
00          | >> ========================================
00          | >>
00          | >> Netlist stats.: #Gates=304150  (#And=185535  #PadR=3733  #PadW=1592  #MemR=15  #MemW=39  #Pin=30070  #Loop=3116  #FD01=28688  #Force=51360)  #Garb=1
00          | >> Initialization: 0.14 s
00          | >>
00          | >>     Iter  |  2-Luts   3-Luts   4-Luts   |    Total     Wires   Delay
00          | >>     ------+-----------------------------+---------------------------
00          | >>        0  |    4425    20503    35764   |    60692    213415      32    (Time: 0.56 s)
00          | >>        1  |    3519    24016    28994   |    56529    195062      37    (Time: 0.24 s)
00          | >>        2  |    2964    23544    29552   |    56060    194768      36    (Time: 0.25 s)
00          | >>
00          | >> Instantiating LUTs.
00          | >> Eliminating negations.
00          | >>   -- added 23 LUTs
00          | >> Packing 4-MUXes.
00          | >>   -- 10 rewrites, saving 10 gates (= 0.01 % reduction)
00          | >> Netlist stats.: #Gates=174688  (#Lut=56073  #PadR=3733  #PadW=1592  #MemR=15  #MemW=39  #Pin=30070  #Loop=3116  #FD01=28688  #Force=51360)  #Garb=1
00          | >> Techmap CPU Time: 1.67 s
00          | ---- ET5CBL: Thread 1: Eliminating forcible gates     ---- (Time: 9.70 s   Mem: 2520.52 MB)
00          |   -- Forcible logic not leading to duplication : 16929
00          |   -- Forcible flops not leading to duplication : 22357
00          |   -- Forcible gates leading to duplication     : 0
00          |   -- Forcible buffers inserted after non-logic : 12074 (superfluous: 4032)
00          |   -- Forcible buffers inserted after constants : 0
00          |   -- Forcible buffers stacked due to keep-nets : 6710
00          | ---- ET5CBL: Thread 1: Recreating final database      ---- (Time: 10.49 s   Mem: 2424.49 MB)
00          | >> Names preserved through simplification: 98343 / 118993  (= 82.6 %)
00          | >> Probes restored: 2929 IO, 18825 FF probes.
00          | >> Boxes with non-zero flags restored = 0
00          | >> Restoring box keyword BOX_LEVELS
00          | >> Box keyword BOX_LEVELS has 88742 non-zero values restored
00          | >> Removed 1130 superflous buffers added for forcible boxes
00          | >> IO boxes found: 10627, keepnet info fixed: 605
00          | >>     #Gates=135402  (#Lut=68147  #PadR=3733  #PadW=1592  #MemR=15  #MemW=39  #Pin=30070  #Loop=3116  #FD01=28688)  #Garb=51361
00          | ---- ET5CBL: Thread 1: Disposing netlist              ---- (Time: 10.85 s   Mem: 2360.49 MB)
00          | 
00          | ==========================================================================================================
00          | ---- ET5CBL: Thread 2: Started                        ---- (Time: 1.68 s   Mem: 2264.52 MB)
00          | >>     #Gates=191990  (#Lut=97486  #PadR=2770  #PadW=3032  #MemR=29  #MemW=67  #Pin=26125  #Loop=2823  #FD01=23002  #Force=36654)  #Garb=1
00          | ---- ET5CBL: Thread 2: Adding name listener           ---- (Time: 1.75 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 2: Checking iterator consistency  ---- (Time: 1.78 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 2: Expanding LUTs into ANDs       ---- (Time: 1.97 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 2: Removing redundant logic       ---- (Time: 4.61 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 2: Rewriting DAG-aware netlist    ---- (Time: 5.18 s   Mem: 2264.52 MB)
00          | >>     Minimizing:
00          | >>     Reduction in #ANDs:  7.69 %
00          | >>     Core shrink time  : 5.15 s
00          | >>     Globally redundant: 0
00          | ---- ET5CBL: Thread 2: Technology mapping             ---- (Time: 10.59 s   Mem: 2360.49 MB)
00          | >> ========================================
00          | >> ==         TECHNOLOGY MAPPING         ==
00          | >> ========================================
00          | >>
00          | >> Netlist stats.: #Gates=319142  (#And=224638  #PadR=2770  #PadW=3032  #MemR=29  #MemW=67  #Pin=26125  #Loop=2823  #FD01=23002  #Force=36654)  #Garb=1
00          | >> Initialization: 0.15 s
00          | >>
00          | >>     Iter  |  2-Luts   3-Luts   4-Luts   |    Total     Wires   Delay
00          | >>     ------+-----------------------------+---------------------------
00          | >>        0  |    6642    19062    51793   |    77497    277642      51    (Time: 0.30 s)
00          | >>        1  |    5764    22531    41720   |    70015    246001      61    (Time: 0.09 s)
00          | >>        2  |    5049    22208    42089   |    69346    245078      61    (Time: 0.09 s)
00          | >>
00          | >> Instantiating LUTs.
00          | >> Eliminating negations.
00          | >>   -- added 106 LUTs
00          | >> Packing 4-MUXes.
00          | >>   -- 0 rewrites, saving 0 gates (= 0.00 % reduction)
00          | >> Netlist stats.: #Gates=163956  (#Lut=69452  #PadR=2770  #PadW=3032  #MemR=29  #MemW=67  #Pin=26125  #Loop=2823  #FD01=23002  #Force=36654)  #Garb=1
00          | >> Techmap CPU Time: 0.76 s
00          | ---- ET5CBL: Thread 2: Eliminating forcible gates     ---- (Time: 11.35 s   Mem: 2360.49 MB)
00          |   -- Forcible logic not leading to duplication : 24740
00          |   -- Forcible flops not leading to duplication : 9696
00          |   -- Forcible gates leading to duplication     : 2
00          |   -- Forcible buffers inserted after non-logic : 2216 (superfluous: 1659)
00          |   -- Forcible buffers inserted after constants : 0
00          |   -- Forcible buffers stacked due to keep-nets : 159
00          | ---- ET5CBL: Thread 2: Recreating final database      ---- (Time: 11.38 s   Mem: 2360.49 MB)
00          | >> Names preserved through simplification: 94203 / 122386  (= 77.0 %)
00          | >> Probes restored: 3075 IO, 16460 FF probes.
00          | >> Boxes with non-zero flags restored = 0
00          | >> Restoring box keyword BOX_LEVELS
00          | >> Box keyword BOX_LEVELS has 90306 non-zero values restored
00          | >> Removed 1317 superflous buffers added for forcible boxes
00          | >> IO boxes found: 16429, keepnet info fixed: 477
00          | >>     #Gates=129520  (#Lut=71670  #PadR=2770  #PadW=3032  #MemR=29  #MemW=67  #Pin=26125  #Loop=2823  #FD01=23002)  #Garb=36655
00          | ---- ET5CBL: Thread 2: Disposing netlist              ---- (Time: 11.51 s   Mem: 2360.49 MB)
00          | 
00          | ==========================================================================================================
00          | ---- ET5CBL: Thread 3: Started                        ---- (Time: 1.68 s   Mem: 2264.52 MB)
00          | >>     #Gates=173656  (#Lut=98158  #PadR=1998  #PadW=1970  #MemR=21  #MemW=23  #Pin=22843  #Loop=3660  #FD01=19313  #Force=25668)  #Garb=1
00          | ---- ET5CBL: Thread 3: Adding name listener           ---- (Time: 1.73 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 3: Checking iterator consistency  ---- (Time: 1.75 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 3: Expanding LUTs into ANDs       ---- (Time: 1.89 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 3: Removing redundant logic       ---- (Time: 3.94 s   Mem: 2264.52 MB)
00          | ---- ET5CBL: Thread 3: Rewriting DAG-aware netlist    ---- (Time: 4.25 s   Mem: 2264.52 MB)
00          | >>     Minimizing:
00          | >>     Reduction in #ANDs:  6.70 %
00          | >>     Core shrink time  : 4.55 s
00          | >>     Globally redundant: 0
00          | ---- ET5CBL: Thread 3: Technology mapping             ---- (Time: 9.01 s   Mem: 2456.52 MB)
00          | >> ========================================
00          | >> ==         TECHNOLOGY MAPPING         ==
00          | >> ========================================
00          | >>
00          | >> Netlist stats.: #Gates=264549  (#And=189051  #PadR=1998  #PadW=1970  #MemR=21  #MemW=23  #Pin=22843  #Loop=3660  #FD01=19313  #Force=25668)  #Garb=1
00          | >> Initialization: 0.14 s
00          | >>
00          | >>     Iter  |  2-Luts   3-Luts   4-Luts   |    Total     Wires   Delay
00          | >>     ------+-----------------------------+---------------------------
00          | >>        0  |    6422    17971    41621   |    66014    233241      58    (Time: 0.84 s)
00          | >>        1  |    3712    21805    33766   |    59283    207903      69    (Time: 0.20 s)
00          | >>        2  |    3163    19528    36132   |    58823    209438      64    (Time: 0.19 s)
00          | >>
00          | >> Instantiating LUTs.
00          | >> Eliminating negations.
00          | >>   -- added 32 LUTs
00          | >> Packing 4-MUXes.
00          | >>   -- 0 rewrites, saving 0 gates (= 0.00 % reduction)
00          | >> Netlist stats.: #Gates=134353  (#Lut=58855  #PadR=1998  #PadW=1970  #MemR=21  #MemW=23  #Pin=22843  #Loop=3660  #FD01=19313  #Force=25668)  #Garb=1
00          | >> Techmap CPU Time: 1.71 s
00          | ---- ET5CBL: Thread 3: Eliminating forcible gates     ---- (Time: 10.72 s   Mem: 2360.49 MB)
00          |   -- Forcible logic not leading to duplication : 15432
00          |   -- Forcible flops not leading to duplication : 8807
00          |   -- Forcible gates leading to duplication     : 0
00          |   -- Forcible buffers inserted after non-logic : 1429 (superfluous: 1114)
00          |   -- Forcible buffers inserted after constants : 0
00          |   -- Forcible buffers stacked due to keep-nets : 57
00          | ---- ET5CBL: Thread 3: Recreating final database      ---- (Time: 11.51 s   Mem: 2360.49 MB)
00          | >> Names preserved through simplification: 89300 / 126070  (= 70.8 %)
00          | >> Probes restored: 5527 IO, 14558 FF probes.
00          | >> Boxes with non-zero flags restored = 0
00          | >> Restoring box keyword BOX_LEVELS
00          | >> Box keyword BOX_LEVELS has 79386 non-zero values restored
00          | >> Removed 799 superflous buffers added for forcible boxes
00          | >> IO boxes found: 20397, keepnet info fixed: 315
00          | >>     #Gates=110114  (#Lut=60284  #PadR=1998  #PadW=1970  #MemR=21  #MemW=23  #Pin=22843  #Loop=3660  #FD01=19313)  #Garb=25669
00          | ---- ET5CBL: Thread 3: Disposing netlist              ---- (Time: 11.62 s   Mem: 2360.49 MB)
00 ET5CBL   | ==========================================================================================================
00 ET5CBL   | 
00 ET5CBL   | ---- ET5CBL: Joined 4 optimization threads            ---- (Time: 11.63 s   Mem: 2296.49 MB)
00 ET5CBL   | ---- ET5CBL: Merging DADB database                    ---- (Time: 11.63 s   Mem: 2296.49 MB)
00 ET5CBL   | Merged 9283 groups of PI/POs
00 ET5CBL   | Restored 0 net properties
00 ET5CBL   | ---- ET5CBL: CBL Done                                 ---- (Time: 11.72 s   Mem: 2296.49 MB)
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5cbl' (Elapsed time 5.14s (11.73u+0.39s), Memory used 2584 Mb) on 05/21/2024 16:19:07
00 ET5NLOPT | Transformed 0 (0 selfloop) special DELAY boxes back to do not touch logic boxes
00 ET5NLOPT | Restored memloop bits for 0 memory ports
00 ET5NLOPT | unmarked 0 nets as transitional logic and set as keepnet before CBL
00 ET5NLOPT | setting multipath mode OFF
00 ET5NLOPT | levelized boxes = 373252, size = 131072, mask = 0x1ffff
00 ET5NLOPT | propagated 373252 boxes, consumed 0 seconds
00 ET5NLOPT | deleted boxes = 6684, merged_logic = (0, 0, 27, 8, 3, 0, 0), merged_loop = 0, merged_flop = 25 (LB 0), pushed constant flop = 40
00 ET5NLOPT | round 1 area gain: 1.7%
00 ET5NLOPT | Done FW logic levelization on 366568 boxes, max logic level = 99, in 0.060 seconds
00 ET5NLOPT | 
00 ET5NLOPT | setting sinks_limit to 1
00 ET5NLOPT | levelized boxes = 366568, size = 131072, mask = 0x1ffff
00 ET5NLOPT | propagated 366568 boxes, consumed 0 seconds
00 ET5NLOPT | deleted boxes = 17, merged_logic = (0, 0, 0, 0, 0, 0, 0), merged_loop = 0, merged_flop = 1 (LB 0), pushed constant flop = 40
00 ET5NLOPT | round 2 area gain: 0.0%
00 ET5NLOPT | Done FW logic levelization on 366551 boxes, max logic level = 99, in 0.080 seconds
00 ET5NLOPT | 
00 ET5NLOPT | setting sinks_limit to 1
00 ET5NLOPT | Connected constants to the input pin of 47 flops with input tied.
00 ET5NLOPT | Connected the sync-in pins of 99 memories.
00 ET5NLOPT | Compressing proto
00 ET5NLOPT | Retimed 249 keynodes, 668 gates, created 337 muxes and 552 dupflops
00 ET5NLOPT | Done FW logic levelization on 367491 boxes, max logic level = 99, in 0.064 seconds
00 ET5NLOPT | 
00 ET5NLOPT | Removed 1 complex redundant boxes
00 ET5NLOPT | Inserted 0 buffers on force nets
00 ET5NLOPT | 
00 ET5NLOPT | Stage                     Begin       Prelim          CBL      Round 1      Round 2        Final
00 ET5NLOPT | ------------------------------------------------------------------------------------------------
00 ET5NLOPT | Tie-downs                    61 ->        61 ->         1 ->     10036 ->     10036 ->     10079
00 ET5NLOPT | Tie-ups                       0 ->         0 ->         1 ->        60 ->        52 ->        59
00 ET5NLOPT | Buffers                   23297 ->     21664 ->     19376 ->     15275 ->     15274 ->     15274
00 ET5NLOPT | Inverters                  4236 ->      4193 ->       307 ->       630 ->       630 ->       630
00 ET5NLOPT | 2-input gates            155080 ->    134874 ->     17676 ->     17689 ->     17685 ->     17686
00 ET5NLOPT | 3-input gates            198473 ->    144491 ->    101273 ->     94377 ->     94379 ->     94716
00 ET5NLOPT | 4-input gates             48065 ->     76436 ->    133198 ->    132805 ->    132800 ->    132800
00 ET5NLOPT | Flip-flops               100969 ->    100917 ->    100917 ->     95193 ->     95192 ->     71266
00 ET5NLOPT | Primary outputs               1 ->         1 ->         1 ->         1 ->         1 ->         1
00 ET5NLOPT | Cross-partition XBOB         22 ->        22 ->        22 ->        22 ->        22 ->        22
00 ET5NLOPT | DAS inputs DBIB              73 ->        73 ->        73 ->        73 ->        73 ->        73
00 ET5NLOPT | DAS outputs DBOB            146 ->       146 ->       146 ->       146 ->       146 ->       146
00 ET5NLOPT | Memory reads                 80 ->        80 ->        80 ->        80 ->        80 ->        80
00 ET5NLOPT | Memory writes               181 ->       181 ->       181 ->       181 ->       181 ->       181
00 ET5NLOPT | All box types            530684 ->    483139 ->    373252 ->    366568 ->    366551 ->    343013 (= 35.4% Reduction)
00 ET5NLOPT | Self-looping logic        13027 ->     13027 ->     13027 ->     12948 ->     12948 ->     12888
00 ET5NLOPT | Logic levels                229 ->       227 ->       101 ->       100 ->       100 ->       100 (= 56.3% Reduction)
00 ET5NLOPT | Sinks count             1318205 ->   1227881 ->   1125697 ->   1084131 ->   1084106 ->   1086367 (= 17.6% Reduction)
00 ET5NLOPT | ------------------------------------------------------------------------------------------------
00 ET5NLOPT | CPU time (sec)             0.00 ->      0.71 ->     13.12 ->     13.62 ->     14.14 ->     14.88
00 ET5NLOPT | Estimated size           575812 ->    528267 ->    418380 ->    411696 ->    411679 ->    388141 (= 32.6% Reduction)
00 ET5NLOPT | Available configuration                                                                 1 domain
00 ET5NLOPT | Estimated instruction usage                                                                25.07%
00 ET5NLOPT | ------------------------------------------------------------------------------------------------
00 ET5NLOPT | 
00 ET5NLOPT | This design contains 343013 ET primitives (boxes).
00 ET5NLOPT | Assuming instruction usage 80%, the design requires at least 1 domain.
00 ET5NLOPT | 
00 ET5NLOPT | Elapsed: init  0.00, ALU  0.00, CBL  5.00, SCBL  0.00, core  2.00
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5nlopt' (Elapsed time 7.01s (14.74u+0.50s), Memory used 2584 Mb) on 05/21/2024 16:19:09
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3critpath' on 05/21/2024 16:19:09
00 DATABASE | Parms: ''
00 ET3CRIT* |                                    
00 ET3CRIT* |                        ET CRITICAL PATH FINDER
00 ET3CRIT* |                            RELEASE 6.0.2.6
00 ET3CRIT* |                           VXE, VEngineering
00 ET3CRIT* |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET3CRIT* |                          All rights reserved
00 ET3CRIT* |                                    
00 ET3CRIT* | ET3critpath created on Aug  3 2023 at 22:05:33.
00 ET3CRIT* | 100(     1): ET00000000000003CF->_AAAA[25950]
00 ET3CRIT* |  99(     2): ET00000000000044F3->_AAAA[25949]
00 ET3CRIT* |  98(     3): ET0000000000005746->
00 ET3CRIT* |  97(     6): ET00000000000003FC->_AAAA[25758]$inv5675
00 ET3CRIT* |  96(    11): ET000000000000A53C->_AAAA[25697]$inv5674
00 ET3CRIT* |  95(    17): ET0000000000000300->_AAAA[28509]
00 ET3CRIT* |  94(    28): ET000000000000000F->_AAAA[25663]
00 ET3CRIT* |  93(    39): ET000000000000000F->_AAAA[25661]
00 ET3CRIT* |  92(    42): ET000000000000000F->_AAAA[25659]
00 ET3CRIT* |  91(    45): ET000000000000000F->_AAAA[25657]
00 ET3CRIT* |  90(    48): ET000000000000000F->_AAAA[25655]
00 ET3CRIT* |  89(    58): ET000000000000000F->_AAAA[25653]
00 ET3CRIT* |  88(    59): ET000000000000000F->_AAAA[25651]
00 ET3CRIT* |  87(    58): ET000000000000000F->_AAAA[25649]
00 ET3CRIT* |  86(    59): ET000000000000000F->_AAAA[25647]
00 ET3CRIT* |  85(    61): ET000000000000000F->_AAAA[25645]
00 ET3CRIT* |  84(   112): ET000000000000000F->_AAAA[25643]
00 ET3CRIT* |  83(   192): ET000000000000000F->_AAAA[25641]
00 ET3CRIT* |  82(   116): ET000000000000000F->_AAAA[25639]
00 ET3CRIT* |  81(   133): ET000000000000000F->_AAAA[25637]
00 ET3CRIT* |  80(   222): ET000000000000000F->_AAAA[25635]
00 ET3CRIT* |  79(   177): ET000000000000000F->_AAAA[25633]
00 ET3CRIT* |  78(   172): ET000000000000000F->_AAAA[25631]
00 ET3CRIT* |  77(   166): ET000000000000000F->_AAAA[25629]
00 ET3CRIT* |  76(   286): ET000000000000000F->_AAAA[25627]
00 ET3CRIT* |  75(   369): ET000000000000000F->_AAAA[25625]
00 ET3CRIT* |  74(   328): ET000000000000000F->_AAAA[25623]
00 ET3CRIT* |  73(   562): ET000000000000000F->_AAAA[25621]
00 ET3CRIT* |  72(   273): ET000000000000000F->_AAAA[25619]
00 ET3CRIT* |  71(   993): ET000000000000000F->_AAAA[25617]
00 ET3CRIT* |  70(   242): ET000000000000000F->_AAAA[25615]
00 ET3CRIT* |  69(  1411): ET000000000000000F->_AAAA[25613]
00 ET3CRIT* |  68(   853): ET000000000000000F->_AAAA[25611]
00 ET3CRIT* |  67(  1958): ET000000000000000F->_AAAA[25609]
00 ET3CRIT* |  66(  1478): ET000000000000000F->_AAAA[25607]
00 ET3CRIT* |  65(  1391): ET000000000000330F->_AAAA[25575]
00 ET3CRIT* |  64(  2183): ET0000000000000FF0->_AAAA[25513]
00 ET3CRIT* |  63(  2646): ET0000000000000C3F->_AAAA[25482]
00 ET3CRIT* |  62(  2813): ET0000000000000C3F->_AAAA[25450]
00 ET3CRIT* |  61(  2562): ET0000000000000FF0->_AAAA[25356]
00 ET3CRIT* |  60(  4261): ET00000000000003CF->_AAAA[25324]
00 ET3CRIT* |  59(  3144): ET000000000000660F->_AAAA[25292]
00 ET3CRIT* |  58(  3029): ET0000000000009C36->_AAAA[25229]
00 ET3CRIT* |  57(  3235): ET000000000000FE00->_AAAA[26094]
00 ET3CRIT* |  56(  3134): ET0000000000000001->_AAAA[24854]
00 ET3CRIT* |  55(  4517): ET0000000000000009->
00 ET3CRIT* |  54(  3623): ET0000000000000009->_AAAA[24846]
00 ET3CRIT* |  53(  4820): ET0000000000000041->
00 ET3CRIT* |  52(  3202): ET00000000000000C3->_AAAA[24826]
00 ET3CRIT* |  51(  8937): ET0000000000008421->
00 ET3CRIT* |  50( 16631): ET0000000000001B00->_AAAB[57591]
00 ET3CRIT* |  49(  7363): ET0000000000000100->_ADYSc
00 ET3CRIT* |  48(   919): ET0000000000003000->_ADMgD
00 ET3CRIT* |  47(   448): ET00000000000000FF->tb_top.kme_tb_dut.my_clk
00 ET3CRIT* |  46(   879): ET00000000000000FF->my_clks.ixcg_0._zy_simnet_clk_0_w$
00 ET3CRIT* |  45(   650): ET0000000000000FF0->my_clks.ixcg_0.clk
00 ET3CRIT* |  44(   635): ET000000000000000F->
00 ET3CRIT* |  43(  1478): ET0000000000006000->_ADHnI
00 ET3CRIT* |  42(   527): ET0000000000000FF0->xc_top.eClkR
00 ET3CRIT* |  41(   617): ET0000000000005333->xc_top.simTimeEnable@QTshadow
00 ET3CRIT* |  40(   602): ET00000000000000C0->_AAAE[43147]
00 ET3CRIT* |  39(   653): ET0000000000001000->_AAAE[43082]
00 ET3CRIT* |  38(  1877): ET0000000000007FFF->xc_top.xpHold@QTshadow
00 ET3CRIT* |  37(  3177): ET000000000000000F->xc_top.holdEcmC@QTshadow
00 ET3CRIT* |  36(  1691): ET000000000000FF3F->_AAAE[41775]
00 ET3CRIT* |  35(  1436): ET00000000000000F0->_AAAE[41776]$inv4542
00 ET3CRIT* |  34(  2583): ET0000000000008000->_AAAE[6295]$inv4541
00 ET3CRIT* |  33(  2355): ET0000000000000031->_AAAE[6296]
00 ET3CRIT* |  32(  2183): ET00000000000000F1->
00 ET3CRIT* |  31(  4150): ET000000000000000D->_AAAE[5664]$inv11168
00 ET3CRIT* |  30(  2288): ET000000000000F351->_AAAE[5642]$inv11165
00 ET3CRIT* |  29(  2264): ET0000000000000013->_AAAE[5640]
00 ET3CRIT* |  28(  3474): ET0000000000000007->_AAAE[5639]
00 ET3CRIT* |  27(  3574): ET00000000000000D7->_AAAE[6258]
00 ET3CRIT* |  26(  7607): ET000000000000030F->_AAAE[6252]
00 ET3CRIT* |  25(  3706): ET0000000000002A3F->_AAAE[6251]
00 ET3CRIT* |  24(  2768): ET000000000000F00F->_AAAE[6301]$inv11160
00 ET3CRIT* |  23(  3291): ET0000000000000001->_AAAE[5837]
00 ET3CRIT* |  22(  5097): ET0000000000000001->_AAAE[6245]
00 ET3CRIT* |  21(  5731): ET0000000000000001->_AAAE[6239]
00 ET3CRIT* |  20(  3058): ET0000000000000001->_AAAE[6233]
00 ET3CRIT* |  19(  2619): ET0000000000000001->_AAAE[6227]
00 ET3CRIT* |  18(  3924): ET0000000000000001->_AAAE[6221]
00 ET3CRIT* |  17(  5190): ET0000000000000001->_AAAE[6215]
00 ET3CRIT* |  16(  7598): ET0000000000000001->_AAAE[6209]
00 ET3CRIT* |  15( 22381): ET0000000000000001->_AAAE[6203]
00 ET3CRIT* |  14(  3167): ET0000000000000001->_AAAE[6197]
00 ET3CRIT* |  13(  2230): ET0000000000000001->_AAAE[6191]
00 ET3CRIT* |  12(  1076): ET0000000000000001->_AAAE[6185]
00 ET3CRIT* |  11(  2335): ET0000000000000001->_AAAE[6179]
00 ET3CRIT* |  10(  3084): ET0000000000000001->_AAAE[6173]
00 ET3CRIT* |   9(  2828): ET0000000000000001->_AAAE[6167]
00 ET3CRIT* |   8(  1427): ET0000000000000001->_AAAE[6161]
00 ET3CRIT* |   7(  2363): ET0000000000000001->_AAAE[6155]
00 ET3CRIT* |   6(  2101): ET0000000000000001->_AAAE[6149]
00 ET3CRIT* |   5(  3032): ET0000000000000001->_AAAE[6143]
00 ET3CRIT* |   4(  3936): ET0000000000000001->_AAAE[6137]
00 ET3CRIT* |   3( 12060): ET0000000000000001->_AAAE[6131]
00 ET3CRIT* |   2( 22181): ET00000000000000FF->IXC_GFIFO.HOLDTOP.ecmTsP[3]@QTshadow
00 ET3CRIT* |   1(106023): FD01->_ADekl
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3critpath' (Elapsed time 0.09s (0.09u+0.01s), Memory used 2584 Mb) on 05/21/2024 16:19:09
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5mpart' on 05/21/2024 16:19:09
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
00 ET5MPART | Slicing special GFIFO memory (64-bit wide) into 64-bt wide: ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5MPART | Slicing special GFIFO memory (64-bit wide) into 64-bt wide: ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo
00 ET5MPART | Slicing special GFIFO memory (64-bit wide) into 64-bt wide: ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo
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
00 ET5MPART | INTRAM needed    =  20 (if no EXTRAM is available)
00 ET5MPART | INTRAM available =  48
00 ET5MPART | EXTRAM needed    =   0
00 ET5MPART | EXTRAM available =   1
00 ET5MPART | Utilization factor = 100
00 ET5MPART | INTRAM available (adjusted) = 48
00 ET5MPART | There is enough INTRAM.
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | Found 330 memory ports.
00 ET5MPART | Found 108 memory instances.
00 ET5MPART | 
00 ET5MPART | List of 'DO_NOT_TOUCH' memory instances:
00 ET5MPART | ----------------------------------------
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.DUMMY.ctrl
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.HOLDTOP.ctrl
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ctl
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ofifo
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ack
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ctl
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo
00 ET5MPART | ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0._zyevMem
00 ET5MPART | ET5_V1_H1.ixc_time._zzcmds
00 ET5MPART | ET5_V1_H1.ixc_time._zzmiopis
00 ET5MPART | ET5_V1_H1.ixc_time._zzmiopos
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5MPART | ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5MPART | ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5MPART | ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo
00 ET5MPART | ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo
00 ET5MPART | ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo
00 ET5MPART | ET5_V2_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo
00 ET5MPART | ET5_V3_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo
00 ET5MPART | ET5_V4_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo
00 ET5MPART | ----------------------------------------
10 ET5MPART | Design contains 47 'DO_NOT_TOUCH' memory instances
00 ET5MPART | ------------------------
00 ET5MPART | Without compaction the design would require 19.419 Mbytes of emulator memory.
00 ET5MPART | After full compaction it will require at least 19.121 Mbytes of emulator memory,
00 ET5MPART | so it will require at least 1 domain or at least 1 EXTRAM.
00 ET5MPART | This is a preliminary estimation; the final numbers may be different.
00 ET5MPART | ------------------------
00 ET5MPART | Design contains 108 memory instances.
00 ET5MPART | Design capacity (before memTransform): 387249
00 ET5MPART | HW capacity: 1548288
00 ET5MPART | Instruction usage: 25.0
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
00 ET5MPART | New design capacity: 387242
00 ET5MPART | HW capacity: 1548288
00 ET5MPART | New instruction usage: 25.0
00 ET5MPART | 
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | Memory compaction relaxation:
00 ET5MPART | Avail: INTRAM: 48, EXTRAM: 1
00 ET5MPART | 
00 ET5MPART | IntDepth: 131072, ExtDepth: 1073741824 
00 ET5MPART | Needed INTRAM: 20, EXTRAM: 0 
00 ET5MPART | Evaluation of current memory requirements: INTRAM: 20 (1 domains), EXTRAM (1): 1
00 ET5MPART | Enough INTRAM - no need for compaction at all
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut._zygsfis_get_config_data_fifo
00 ET5MPART |  (w: 72, a: 5, p: 4) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut._zygsfis_ib_service_data_fifo
00 ET5MPART |  (w: 136, a: 5, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut._zygsfis_ob_service_data_fifo
00 ET5MPART |  (w: 136, a: 5, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip0_key_tlv_rsm .u_cr_tlvp2_rsm.u_cr_fifo_wrap2_tob.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |  (w: 83, a: 8, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip0_key_tlv_rsm .u_cr_tlvp2_rsm.u_cr_fifo_wrap2_uobf.\reg_fifo.u_nx_fifo .\depth_n.r_data 
00 ET5MPART |  (w: 106, a: 4, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm.bypass_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 132, a: 4, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 611, a: 2, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm_tag_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 96, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdf.gcm_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 128, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdf.hash_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 256, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdfstream_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 263, a: 2, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .tlv_sb_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 64, a: 4, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop_fifo .ram_fifo.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |  (w: 71, a: 11, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm.bypass_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 132, a: 4, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 611, a: 2, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm_tag_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 96, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdf.gcm_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 128, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdf.hash_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 256, a: 2, p: 2) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdfstream_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 263, a: 2, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .tlv_sb_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 64, a: 4, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop_fifo .ram_fifo.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |  (w: 71, a: 11, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.ckv_pipeline .guid_stitcher.aux_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 83, a: 5, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.drng .drng.rnd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |  (w: 128, a: 3, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.txc_axi_intf .u_cr_fifo_wrap2.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |  (w: 83, a: 8, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_ram.\g.mem 
00 ET5MPART |  (w: 64, a: 15, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_ram.\g.mem 
00 ET5MPART |  (w: 38, a: 14, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 3) not compacted 
00 ET5MPART | Mem: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_ram.\g.mem 
00 ET5MPART |  (w: 96, a: 9, p: 3) not compacted 
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
00 ET5MPART | Mem: ET5_V1_H1.QTLA%SDL.top.stwave_tstamp_ram_shadow
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
00 ET5MPART | INTRAM needed    =  20 (if no EXTRAM is available)
00 ET5MPART | INTRAM available =  48
00 ET5MPART | EXTRAM needed    =   0
00 ET5MPART | EXTRAM available =   1
00 ET5MPART | 
00 ET5MPART | Created / deleted memory ports during transformations: 1 / 2
00 ET5MPART | Total "memory weight" change: -14
00 ET5MPART | Created logic boxes during transformations: 0
00 ET5MPART | Created FD01 boxes during transformations: 0
00 ET5MPART | Design capacity: 387242
00 ET5MPART | HW capacity: 1548288
00 ET5MPART | Instruction usage: 25.0
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
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ififo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ififo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10463 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10463 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10464 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10464 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10465 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10465 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ififo@QT36801 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ififo@QT36801 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10463@QT36802 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10463@QT36802 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10464@QT36803 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10464@QT36803 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10465@QT36804 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10465@QT36804 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10466 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10466 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10459 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10459 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10460 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10460 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10461 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10461 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo@QT36805 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo@QT36805 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10459@QT36806 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10459@QT36806 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10460@QT36807 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10460@QT36807 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10461@QT36808 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.I.U10461@QT36808 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ctl dw=64, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ctl targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ctl@QT36809 dw=64, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ctl@QT36809 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ofifo dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ofifo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6035 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6035 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6036 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6036 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6037 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6037 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6038 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6038 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6039 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6039 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6040 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6040 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6041 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6041 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6042 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6042 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ofifo@QT36810 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ofifo@QT36810 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6035@QT36811 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6035@QT36811 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6036@QT36812 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6036@QT36812 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6037@QT36813 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6037@QT36813 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6038@QT36814 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6038@QT36814 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6039@QT36815 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6039@QT36815 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6040@QT36816 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6040@QT36816 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6041@QT36817 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6041@QT36817 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6042@QT36818 dw=64, aw=17
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.I.O.U6042@QT36818 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ack dw=64, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ack targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ctl dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ctl targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9489 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9489 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9490 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9490 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9491 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9491 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ctl@QT36819 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ctl@QT36819 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9489@QT36820 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9489@QT36820 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9490@QT36821 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9490@QT36821 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9491@QT36822 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9491@QT36822 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9486 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9486 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9487 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9487 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo@QT36823 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo@QT36823 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9486@QT36824 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9486@QT36824 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9487@QT36825 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.O.O.U9487@QT36825 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0._zyevMem dw=64, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0._zyevMem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0.U13 dw=64, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0.U13 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzcmds dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzcmds targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1306 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1306 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1306@QT36828 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1306@QT36828 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzmiopis dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzmiopis targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1304 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1304 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzmiopos dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzmiopos targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1301 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1301 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1302 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1302 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzmiopos@QT36829 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time._zzmiopos@QT36829 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1301@QT36830 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1301@QT36830 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1302@QT36831 dw=64, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.ixc_time.U1302@QT36831 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem@QT36849 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem@QT36849 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem@QT36851 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem@QT36851 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0._zymem dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U2 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U2 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U3 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U3 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U4 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U4 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0._zymem@QT36853 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0._zymem@QT36853 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U2@QT36854 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U2@QT36854 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U3@QT36855 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U3@QT36855 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U4@QT36856 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0.U4@QT36856 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem@QT36857 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem@QT36857 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0._zymem dw=512, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0.U2 dw=512, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0.U2 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0._zymem@QT37884 dw=512, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0._zymem@QT37884 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0.U2@QT37885 dw=512, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0.U2@QT37885 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1._zymem dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1.U8 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1.U8 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1.U9 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1.U9 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem@QT37886 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem@QT37886 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0._zymem dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U2 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U2 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U3 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U3 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U4 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U4 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0._zymem@QT37887 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0._zymem@QT37887 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U2@QT37888 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U2@QT37888 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U3@QT37889 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U3@QT37889 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U4@QT37890 dw=512, aw=2
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0.U4@QT37890 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem@QT37891 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem@QT37891 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0._zzixc_ctxrd_0._zymem@QT37892 dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0._zzixc_ctxrd_0._zymem@QT37892 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem@QT37893 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem@QT37893 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1._zzixc_ctxrd_0._zymem@QT37895 dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1._zzixc_ctxrd_0._zymem@QT37895 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem@QT37896 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem@QT37896 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2._zzixc_ctxrd_0._zymem@QT37898 dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2._zzixc_ctxrd_0._zymem@QT37898 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem@QT37899 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem@QT37899 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3._zzixc_ctxrd_0._zymem@QT37901 dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3._zzixc_ctxrd_0._zymem@QT37901 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem@QT37902 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem@QT37902 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0._zzixc_ctxrd_0._zymem@QT37904 dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0._zzixc_ctxrd_0._zymem@QT37904 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem@QT37905 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem@QT37905 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1._zzixc_ctxrd_0._zymem@QT37907 dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1._zzixc_ctxrd_0._zymem@QT37907 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem@QT37908 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem@QT37908 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2._zzixc_ctxrd_0._zymem@QT37910 dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2._zzixc_ctxrd_0._zymem@QT37910 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem@QT37911 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem@QT37911 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3._zzixc_ctxrd_0._zymem dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3._zzixc_ctxrd_0._zymem was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3._zzixc_ctxrd_0._zymem@QT37913 dw=128, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3._zzixc_ctxrd_0._zymem@QT37913 was reformatted
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem@QT37914 dw=32, aw=1
00 ET5MPART | Fast Memory: ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem@QT37914 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ififo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ififo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10463 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10463 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10464 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10464 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10465 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10465 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ififo@QT36801 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ififo@QT36801 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10463@QT36802 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10463@QT36802 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10464@QT36803 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10464@QT36803 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10465@QT36804 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10465@QT36804 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10466 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10466 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ififo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ififo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10463 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10463 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10464 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10464 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10465 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10465 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ififo@QT36801 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ififo@QT36801 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10463@QT36802 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10463@QT36802 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10464@QT36803 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10464@QT36803 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10465@QT36804 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10465@QT36804 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10466 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10466 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ififo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ififo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10463 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10463 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10464 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10464 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10465 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10465 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ififo@QT36801 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ififo@QT36801 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10463@QT36802 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10463@QT36802 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10464@QT36803 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10464@QT36803 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10465@QT36804 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10465@QT36804 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10466 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10466 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10459 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10459 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10460 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10460 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10461 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10461 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo@QT36805 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo@QT36805 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10459@QT36806 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10459@QT36806 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10460@QT36807 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10460@QT36807 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10461@QT36808 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.I.I.U10461@QT36808 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10459 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10459 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10460 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10460 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10461 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10461 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo@QT36805 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo@QT36805 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10459@QT36806 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10459@QT36806 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10460@QT36807 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10460@QT36807 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10461@QT36808 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.I.I.U10461@QT36808 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10459 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10459 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10460 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10460 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10461 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10461 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo@QT36805 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo@QT36805 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10459@QT36806 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10459@QT36806 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10460@QT36807 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10460@QT36807 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10461@QT36808 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.I.I.U10461@QT36808 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.U9486 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.U9486 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.U9487 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.U9487 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo@QT36823 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo@QT36823 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.U9486@QT36824 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.U9486@QT36824 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.U9487@QT36825 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V2_H1.IXC_GFIFO.O.O.U9487@QT36825 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.U9486 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.U9486 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.U9487 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.U9487 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo@QT36823 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo@QT36823 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.U9486@QT36824 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.U9486@QT36824 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.U9487@QT36825 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V3_H1.IXC_GFIFO.O.O.U9487@QT36825 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.U9486 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.U9486 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.U9487 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.U9487 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo@QT36823 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo@QT36823 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.U9486@QT36824 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.U9486@QT36824 targeted into INTRAM
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.U9487@QT36825 dw=64, aw=15
00 ET5MPART | Fast Memory: ET5_V4_H1.IXC_GFIFO.O.O.U9487@QT36825 targeted into INTRAM
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | inst : 0
00 ET5MPART | inst : 0
00 ET5MPART | total number of instances to extram : 0
00 ET5MPART | instances per extram: 0
00 ET5MPART | instances per bank: 0
00 ET5MPART | Evaluation (depth):max: 64 avg:0
00 ET5MPART | Depth driven spacing delay: 64
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | inst : 0
00 ET5MPART | inst : 0
00 ET5MPART | total number of instances to extram : 0
00 ET5MPART | instances per extram: 0
00 ET5MPART | instances per bank: 0
00 ET5MPART | Evaluation (port):max: 64 avg:0
00 ET5MPART | Port driven spacing delay: 64
00 ET5MPART | EDRAM_MAX value: 0
00 ET5MPART | Depth driven algorithm selected for targeting
00 ET5MPART | Physical DDR have 8192 Mbytes.
00 ET5MPART | Logical memory with ASM mode on DDR requires 0 Mbytes.
00 ET5MPART | Enough memory for Assembly Mode on EXTRAM
00 ET5MPART | Number of valid option entries for module mpart = 0
00 ET5MPART | ========================================================
00 ET5MPART | Addr  Data  Port  Writ  Read  Targ  Name
00 ET5MPART | --------------------------------------------------------
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    32     2     2     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |    1    64     2     2     0   INT  ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ctl
00 ET5MPART |    1    64     1     0     1   INT  ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ack
00 ET5MPART |    1    64     2     2     0   INT  ET5_V1_H1.IXC_GFIFO.OSF1.OMB_0._zyevMem
00 ET5MPART |    2    64     8     8     0   INT  ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ctl
00 ET5MPART |    2    64     3     3     0   INT  ET5_V1_H1.ixc_time._zzcmds
00 ET5MPART |    2    64     2     0     2   INT  ET5_V1_H1.ixc_time._zzmiopis
00 ET5MPART |    2    64     6     6     0   INT  ET5_V1_H1.ixc_time._zzmiopos
00 ET5MPART |    2    64     4     4     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     4     4     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     4     4     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     4     4     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     4     4     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     4     4     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     4     4     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    64     4     4     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3._zzixc_ctxrd_0._zymem
00 ET5MPART |    2    96     2     1     1   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm_tag_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2    96     2     1     1   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm_tag_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   128     2     1     1   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdf.gcm_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   128     2     1     1   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdf.gcm_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   256     2     1     1   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdf.hash_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   256     2     1     1   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdf.hash_key_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   263     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .kdfstream_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   263     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .kdfstream_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   611     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    2   611     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    3   128     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.drng .drng.rnd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    4    64     8     4     4   INT  ET5_V1_H1.IXC_GFIFO.DUMMY.ctrl
00 ET5MPART |    4    64     8     4     4   INT  ET5_V1_H1.IXC_GFIFO.HOLDTOP.ctrl
00 ET5MPART |    4    64     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .tlv_sb_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    4    64     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .tlv_sb_data_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    4    64    32    32     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxrd_0._zymem
00 ET5MPART |    4   106     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip0_key_tlv_rsm .u_cr_tlvp2_rsm.u_cr_fifo_wrap2_uobf.\reg_fifo.u_nx_fifo .\depth_n.r_data 
00 ET5MPART |    4   132     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop .gcm.bypass_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    4   132     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop .gcm.bypass_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    5    64    64    64     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT._zzixc_ctxrd_0._zymem
00 ET5MPART |    5    64    24     0    24   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL._zzixc_ctxwr_1._zymem
00 ET5MPART |    5    64    64    64     0   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT._zzixc_ctxrd_0._zymem
00 ET5MPART |    5    72     4     2     2   INT  ET5_V1_H1.tb_top.kme_tb_dut._zygsfis_get_config_data_fifo
00 ET5MPART |    5    83     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.ckv_pipeline .guid_stitcher.aux_cmd_fifo.std_fifo.\depth_n.r_data 
00 ET5MPART |    5   136     3     2     1   INT  ET5_V1_H1.tb_top.kme_tb_dut._zygsfis_ib_service_data_fifo
00 ET5MPART |    5   136     3     2     1   INT  ET5_V1_H1.tb_top.kme_tb_dut._zygsfis_ob_service_data_fifo
00 ET5MPART |    6    80     1     0     1   INT  ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.cnt1.cnt_cmpval_OPT.Merger1
00 ET5MPART |    8    83     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip0_key_tlv_rsm .u_cr_tlvp2_rsm.u_cr_fifo_wrap2_tob.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |    8    83     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.txc_axi_intf .u_cr_fifo_wrap2.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |    9    96     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_ram.\g.mem 
00 ET5MPART |    9    96     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_ram.\g.mem 
00 ET5MPART |    9    96     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_ram.\g.mem 
00 ET5MPART |    9    96     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_ram.\g.mem 
00 ET5MPART |    9    96     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_ram.\g.mem 
00 ET5MPART |    9    96     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_ram.\g.mem 
00 ET5MPART |    9    96     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_ram.\g.mem 
00 ET5MPART |    9    96     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_ram.\g.mem 
00 ET5MPART |   11    71     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop_fifo .ram_fifo.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |   11    71     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop_fifo .ram_fifo.\ram_fifo.u_nx_fifo_ram_1r1w .ram.\_1r1wramDxWb.mem 
00 ET5MPART |   14    16     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.tsm_display_ram
00 ET5MPART |   14    38     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_ram.\g.mem 
00 ET5MPART |   14   168     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.tsm_0.tracer.trace_ram_OPT
00 ET5MPART |   14   256     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.display.global_display_ram
00 ET5MPART |   14  2048     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.display.args_display_ram
00 ET5MPART |   15    64     9     2     7   INT  ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5MPART |   15    64     8     8     0   INT  ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo
00 ET5MPART |   15    64     6     6     0   INT  ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo
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
00 ET5MPART |   15    64     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.stwave_tstamp_ram_shadow
00 ET5MPART |   15    64     3     1     2   INT  ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_ram.\g.mem 
00 ET5MPART |   15    64     9     2     7   INT  ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5MPART |   15    64     8     8     0   INT  ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo
00 ET5MPART |   15    64     6     6     0   INT  ET5_V2_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo
00 ET5MPART |   15    64     9     2     7   INT  ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5MPART |   15    64     8     8     0   INT  ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo
00 ET5MPART |   15    64     6     6     0   INT  ET5_V3_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo
00 ET5MPART |   15    64     9     2     7   INT  ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ififo
00 ET5MPART |   15    64     8     8     0   INT  ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo
00 ET5MPART |   15    64     6     6     0   INT  ET5_V4_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo
00 ET5MPART |   16    64     4     2     2   INT  ET5_V1_H1.QTLA%SDL.top.run_stop_ctl._sdlcmds
00 ET5MPART |   16   104     1     0     1   INT  ET5_V1_H1.QTLA%SDL.top.tsm_0.main_instr.tsm_lut_OPT
00 ET5MPART |   16   512     1     1     0   INT  ET5_V1_H1.QTLA%SDL.top.run_stop_ctl.debug_trace.debug_ram
00 ET5MPART |   17    64    18    18     0   INT  ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ofifo
00 ET5MPART | ========================================================
00 ET5MPART | Targeted 107 memory instances to INTRAM, 0 to EXTRAM.
00 ET5MPART | Intram utilization rate 40.46 percents
00 ET5MPART | Extram utilization rate 0.00 percents
00 ET5MPART | intram doms: 1
00 ET5MPART | extram doms: 0
00 ET5MPART | min doms: 1
00 ET5MPART | memory ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ififo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V1_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ctl is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V1_H1.IXC_GFIFO.I.O.ixc_gfm_ofifo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ack is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ctl is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V1_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ififo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ififo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ififo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V2_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V3_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V4_H1.IXC_GFIFO.I.I.ixc_gfm_ofifo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V2_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V3_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo is GFIFO and cant be horizontally sliced
00 ET5MPART | memory ET5_V4_H1.IXC_GFIFO.O.O.ixc_gfm_ofifo is GFIFO and cant be horizontally sliced
00 ET5MPART | No TCAM slices - no need for deeper horizontal slicing
00 ET5MPART | =====================================
00 ET5MPART | "memTransform" finished.
00 ET5MPART | 
00 ET5MPART | MEMORY TRANSFORMATIONS FINISHED
00 ET5MPART | Instruction usage: 25.1
00 ET5MPART | 
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.ckv_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.kim_indirect_access.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_COUNT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_CTRL.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_SA_SNAPSHOT.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART | setting FAST memory mode 32-bit: addr bits 1 data bits 32, ET5_V1_H1.tb_top.kme_tb_dut.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_cntrl._zzixc_ctxrd_0._zymem
00 ET5MPART |  
00 ET5MPART | ----------------------------------------------------------------------------------------------
00 ET5MPART |     User design memories statistics
00 ET5MPART | ----------------------------------------------------------------------------------------------
00 ET5MPART |     1 memories of  1 bits deep with   1 ports: total accesses     1 using       0.0000 MBytes.
00 ET5MPART |    15 memories of  1 bits deep with   2 ports: total accesses    30 using       0.0001 MBytes.
00 ET5MPART |    17 memories of  2 bits deep with   2 ports: total accesses    34 using       0.0005 MBytes.
00 ET5MPART |    31 memories of  2 bits deep with   3 ports: total accesses    93 using       0.0009 MBytes.
00 ET5MPART |     8 memories of  2 bits deep with   4 ports: total accesses    32 using       0.0002 MBytes.
00 ET5MPART |     1 memories of  2 bits deep with   6 ports: total accesses     6 using       0.0000 MBytes.
00 ET5MPART |     1 memories of  2 bits deep with   8 ports: total accesses     8 using       0.0000 MBytes.
00 ET5MPART |     2 memories of  3 bits deep with   3 ports: total accesses     6 using       0.0001 MBytes.
00 ET5MPART |    10 memories of  4 bits deep with   3 ports: total accesses    30 using       0.0011 MBytes.
00 ET5MPART |     2 memories of  4 bits deep with   8 ports: total accesses    16 using       0.0002 MBytes.
00 ET5MPART |     1 memories of  4 bits deep with  32 ports: total accesses    32 using       0.0001 MBytes.
00 ET5MPART |     8 memories of  5 bits deep with   3 ports: total accesses    24 using       0.0016 MBytes.
00 ET5MPART |     2 memories of  5 bits deep with   4 ports: total accesses     8 using       0.0004 MBytes.
00 ET5MPART |     1 memories of  5 bits deep with  24 ports: total accesses    24 using       0.0002 MBytes.
00 ET5MPART |     2 memories of  5 bits deep with  64 ports: total accesses   128 using       0.0005 MBytes.
00 ET5MPART |     2 memories of  6 bits deep with   1 ports: total accesses     2 using       0.0007 MBytes.
00 ET5MPART |     4 memories of  8 bits deep with   3 ports: total accesses    12 using       0.0059 MBytes.
00 ET5MPART |    16 memories of  9 bits deep with   3 ports: total accesses    48 using       0.0469 MBytes.
00 ET5MPART |     4 memories of 11 bits deep with   3 ports: total accesses    12 using       0.0469 MBytes.
00 ET5MPART |    40 memories of 14 bits deep with   1 ports: total accesses    40 using       4.9375 MBytes.
00 ET5MPART |     1 memories of 14 bits deep with   3 ports: total accesses     3 using       0.1250 MBytes.
00 ET5MPART |    18 memories of 15 bits deep with   1 ports: total accesses    18 using       4.5000 MBytes.
00 ET5MPART |     1 memories of 15 bits deep with   3 ports: total accesses     3 using       0.2500 MBytes.
00 ET5MPART |     4 memories of 15 bits deep with   6 ports: total accesses    24 using       1.0000 MBytes.
00 ET5MPART |     4 memories of 15 bits deep with   8 ports: total accesses    32 using       1.0000 MBytes.
00 ET5MPART |     4 memories of 15 bits deep with   9 ports: total accesses    36 using       1.0000 MBytes.
00 ET5MPART |    10 memories of 16 bits deep with   1 ports: total accesses    10 using       5.0000 MBytes.
00 ET5MPART |     1 memories of 16 bits deep with   4 ports: total accesses     4 using       0.5000 MBytes.
00 ET5MPART |     1 memories of 17 bits deep with  18 ports: total accesses    18 using       1.0000 MBytes.
00 ET5MPART | ----------------------------------------------------------------------------------------------
00 ET5MPART |   212 memories altogether      with            total accesses   734 using      19.4190 MBytes.
00 ET5MPART | ----------------------------------------------------------------------------------------------
00 ET5MPART |  
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5mpart' (Elapsed time 0.38s (0.35u+0.01s), Memory used 2584 Mb) on 05/21/2024 16:19:09
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/etupart' on 05/21/2024 16:19:09
00 DATABASE | Parms: '-s 266172613'
00 ETUPART  |                                    
00 ETUPART  |                    Palladium Universal Partitioner
00 ETUPART  |                            RELEASE 6.0.2.6
00 ETUPART  |                           VXE, VEngineering
00 ETUPART  |             Copyright(C) 1995-2021, Cadence Design Systems
00 ETUPART  |                          All rights reserved
00 ETUPART  |                                    
00 ETUPART  | etupart created on Aug  3 2023 at 22:05:56.
00 ETUPART  |                                    
00 ETUPART  | weighted fanout = 2.859188
00 ETUPART  | Number of valid option entries for module etupart = 0
00 ETUPART  | Read option seed with value 266172613
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
00 ETUPART  | Compilation Seed = 266172613
00 ETUPART  | Verbose level    = 1
00 ETUPART  | Maximum threads  = 16
00 ETUPART  | Found sliced memories
00 ETUPART  | found 0 MDC inputs and 22 MDC outputs
00 ETUPART  | Increased weights for 0 self-looping logic gates
00 ETUPART  | Total weights = 389245
00 ETUPART  | Architecture APOLLO-12
00 ETUPART  | System has a total on 1 online asics
00 ETUPART  | 
00 ETUPART  | Legends: (o) online domain, (-) offline domain
00 ETUPART  | 
00 ETUPART  | Board  0 at Rack 0, Drawer  0:   o   -   -   -   -   -   -   -   
00 ETUPART  | 
00 ETUPART  | Total of    48.0000 megabytes of memory capacity on  48 online embedded DRAMs.
00 ETUPART  | Total of  8192.0000 megabytes of memory capacity on   1 online external DRAMs on MEMORY CARDs.
00 ETUPART  | Total user memory space required =    19.0937 MBytes
00 ETUPART  | Total physical memory available  =  8240.0000 MBytes
00 ETUPART  | Memory utilization rate          =     0.23%
00 ETUPART  | 
00 ETUPART  | Breakpoint handling
00 ETUPART  | Box-based levelization consumed 0.00 seconds
00 ETUPART  | Levelized 367963 boxes forward, max_level = 142, total boxes 367963
00 ETUPART  | CPU time: levelize  0.12, memgroup  0.00, box init  0.01
00 ETUPART  | Number of memories to use REGULAR access mode: 175
00 ETUPART  | Number of memories to use EDRAM_32 access mode: 37
00 ETUPART  | 2938 boxes in xc_top.eClkR cone
00 ETUPART  | 2938 boxes in xc_top.eClkR clique
00 ETUPART  | form DBIO clique head box ET6_DBIB_0_0_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_0_0, size 64
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_1_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_2_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_5_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_6_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_7_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_0_1_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_0_0, size 64
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
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_13_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_14_0, size 64
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_15_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_16_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_17_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_18_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_3_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBIB_1_4_0, size 1
00 ETUPART  | form DBIO clique head box ET6_DBOB_1_19_0, size 1
00 ETUPART  | Found mergeflops 24477, clustered 24081, missed 12
00 ETUPART  | tree cliques size 2 has count 9115
00 ETUPART  | tree cliques size 3 has count 2054
00 ETUPART  | tree cliques size 4 has count 1315
00 ETUPART  | tree cliques size 5 has count 240
00 ETUPART  | tree cliques size 6 has count 248
00 ETUPART  | tree cliques size 7 has count 135
00 ETUPART  | tree cliques size 8 has count 39
00 ETUPART  | tree cliques size 9 has count 244
00 ETUPART  | tree cliques size 10 has count 19
00 ETUPART  | tree cliques size 11 has count 64
00 ETUPART  | tree cliques size 12 has count 69
00 ETUPART  | tree cliques size 13 has count 16
00 ETUPART  | tree cliques size 14 has count 30
00 ETUPART  | tree cliques size 15 has count 13
00 ETUPART  | tree cliques size 16 has count 12
00 ETUPART  | tree cliques size 17 has count 29
00 ETUPART  | tree cliques size 18 has count 5
00 ETUPART  | tree cliques size 19 has count 14
00 ETUPART  | tree cliques size 20 has count 2
00 ETUPART  | tree cliques size 21 has count 2
00 ETUPART  | tree cliques size 22 has count 10
00 ETUPART  | tree cliques size 23 has count 2
00 ETUPART  | tree cliques size 25 has count 16
00 ETUPART  | tree cliques size 27 has count 11
00 ETUPART  | tree cliques size 28 has count 21
00 ETUPART  | tree cliques size 29 has count 17
00 ETUPART  | tree cliques size 30 has count 11
00 ETUPART  | tree cliques size 31 has count 23
00 ETUPART  | tree cliques size 32 has count 149
00 ETUPART  | cpm/cake  0.00, mem  0.03, manpart  0.00, alu  0.00, pio  0.01, dio  0.01, lb  0.00, td  0.12, tree  0.03, sgl  0.06
00 ETUPART  | CPM capture cliques       0
00 ETUPART  | CAKE cliques              0
00 ETUPART  | Memory cliques          212
00 ETUPART  | ALU cliques               0
00 ETUPART  | PIO cliques              23
00 ETUPART  | SA IO cliques            30
00 ETUPART  | Selfloop cliques          0
00 ETUPART  | Loopbreaker cliques       0
00 ETUPART  | FMux cliques              0
00 ETUPART  | Bus cliques               0
00 ETUPART  | Hie name cliques          0
00 ETUPART  | TD cliques            68502
00 ETUPART  | Tree cliques          13925
00 ETUPART  | Single box cliques   133644
00 ETUPART  | Up-down cliques           0
00 ETUPART  | Total cliques        216336
00 ETUPART  | CPU: opt&cfg  0.01, CSHR  0.00, boxinit  0.03, nodeinit  0.41
00 ETUPART  | Default partitioning engine is METIS
00 ETUPART  | Partitioning engine used at hierarchy System is CHP
00 ETUPART  | fanout limits = (75, 75)
00 ETUPART  | set_info: sram_bytes: 0, int_bytes: 1048576, ext_bytes: 8589934592
00 ETUPART  | hie Rack, idx 0 INTRAM 50331648, EXTRAM 8589934592 
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at System hierarchy
00 ETUPART  | ===========================================
00 ETUPART  |  num_engines = 1, num nodes = 1
00 ETUPART  | Partitioning at System consumed   0.01 real seconds and   0.01 CPU seconds
00 ETUPART  | 
00 ETUPART  | set_info: sram_bytes: 0, int_bytes: 1048576, ext_bytes: 8589934592
00 ETUPART  | hie BrdCluster, idx 0 INTRAM 50331648, EXTRAM 8589934592 
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at Rack hierarchy
00 ETUPART  | ===========================================
00 ETUPART  |  num_engines = 1, num nodes = 1
00 ETUPART  | Partitioning at Rack consumed   0.01 real seconds and   0.01 CPU seconds
00 ETUPART  | 
00 ETUPART  | set_info: sram_bytes: 0, int_bytes: 1048576, ext_bytes: 8589934592
00 ETUPART  | hie Board, idx 0 INTRAM 50331648, EXTRAM 8589934592 
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at BrdCluster hierarchy
00 ETUPART  | ===========================================
00 ETUPART  |  num_engines = 1, num nodes = 1
00 ETUPART  | Partitioning at BrdCluster consumed   0.01 real seconds and   0.01 CPU seconds
00 ETUPART  | 
00 ETUPART  | switching from physical index 0 to logical index 0 at Board
00 ETUPART  | set_info: sram_bytes: 0, int_bytes: 1048576, ext_bytes: 8589934592
00 ETUPART  | hie Asic, idx 0 INTRAM 50331648, EXTRAM 8589934592 
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at Board hierarchy
00 ETUPART  | ===========================================
00 ETUPART  |  num_engines = 1, num nodes = 1
00 ETUPART  | Partitioning at Board consumed   0.01 real seconds and   0.01 CPU seconds
00 ETUPART  | 
00 ETUPART  | Breaking xc_top.eClkR clique at Asic hierarchy
00 ETUPART  | 
00 ETUPART  | num cons = 212, cons sz = 424
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
00 ETUPART  | sml_cap_assigned = 20362264, avail sml cap = 50331648
00 ETUPART  | Calling XMetis: Vertices 219274, Edges 1089634, Total weight 389245, Num. constraints 212, metis balance = 1.03, limfanout = 75
00 ETUPART  |    Total external connections = 22 on 22 vertices, extConn factor = 15
00 ETUPART  | IO box 30821 set to partition 0 phy unit 0: ET6_XBOB_141
00 ETUPART  | Thread 0 partition result:
00 ETUPART  |  part  vertex   weight extconn tlane   type count   usage hard  soft  full  (limit hard  soft  full)
00 ETUPART  |   0:    32803    62984       3     0 INTRAM    51      6825616   138     1  (   8388608   146     1) 
00 ETUPART  |   1:    35029    66820       5     0 INTRAM    31      1331944   142     0  (   8388608   146     1) 
00 ETUPART  |   2:    35201    63892       4     0 INTRAM    36      1993720   125     0  (   8388608   146     1) 
00 ETUPART  |   3:    40591    65014       5     0 INTRAM    33      2427240    80     0  (   8388608   146     1) 
00 ETUPART  |   4:    38543    66829       0     0 INTRAM    33      3032000   129     0  (   8388608   146     1) 
00 ETUPART  |   5:    37107    63706       5     0 INTRAM    28      4751744   120     0  (   8388608   146     1) 
00 ETUPART  | 
00 ETUPART  |   Cutsize matrix
00 ETUPART  | f\t:       0      1      2      3      4      5    ext
00 ETUPART  |   0:       0   1002   1115    882    564    511      0
00 ETUPART  |   1:    1331      0    778    783    429    791      0
00 ETUPART  |   2:    1367    746      0    824    529    523      0
00 ETUPART  |   3:     868    658    500      0   1984   2413      0
00 ETUPART  |   4:     350    820    457    989      0   1292      0
00 ETUPART  |   5:     621    632    318    679   2912      0      0
00 ETUPART  | ext:       0      0      0      0      0      0
00 ETUPART  | wire util = 5%
00 ETUPART  | 
00 ETUPART  | trial 0 thread 0, edgecut 34676, balance  1.03, util pct 5, current best util pct 1000000
00 ETUPART  | Best partition trial 0, seed 266172613: edgecut 34676, wire util pct 5, good enough N
00 ETUPART  | Balancing Asic node idx 0, num parts 6, vertices 219274
00 ETUPART  | Using target percentage 25.72% (ds_usage 25.53%, max ds_usage 26.30%)
00 ETUPART  | part 0 target ds 65332, target is 6418
00 ETUPART  | part 1 target ds 65332, target is 6418
00 ETUPART  | part 2 target ds 65332, target is 6418
00 ETUPART  | part 3 target ds 65332, target is 6418
00 ETUPART  | part 4 target ds 65332, target is 6418
00 ETUPART  | part 5 target ds 65332, target is 6418
00 ETUPART  | -- before balancing -------------------------------------------------------------------------------
00 ETUPART  |  0 >  62984:4537  66820:3858  63892:3168  65014:4157  66829:6418  63706:5530 
00 ETUPART  | ---------------------------------------------------------------------------------------------------
00 ETUPART  | Total (389245:27668), ave ( 64874:4611), max ( 66829:6418), target ( 65332:6418)
00 ETUPART  | -- after balancing  -------------------------------------------------------------------------------
00 ETUPART  |  0 >  64126:5670  65332:3133  65332:4723  65332:4613  65314:5901  63809:5671 
00 ETUPART  | ---------------------------------------------------------------------------------------------------
00 ETUPART  | Total (389245:29711), ave ( 64874:4951), max ( 65332:5901)
00 ETUPART  |   Balanced:    vertices 219274, moved  582, ave DS 64874, ave IS 4951
00 ETUPART  | --------------------------------------------------------------------
00 ETUPART  | Total vertices 219274, excess 582, unmoved 0, moved 582
00 ETUPART  | ====================================================================
00 ETUPART  | CPU time: map 0.19, partition 1.09, move&dup 0.00, balance 0.02, swap 0.00, total 1.29
00 ETUPART  | Partitioning at Asic consumed   1.32 real seconds and   1.31 CPU seconds
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
00 ETUPART  | Slicing memory 366578 horizontally: id  10, type DRAM fxd, mode 0, ab 16, db 64, full 0, bp 0, ports 1, mid 76, vid 1, hid 1, group 0, fast 0, strobes 0, size    0.50MB
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
00 ETUPART  | IO box 30821 set to partition 2 phy unit 2: ET6_XBOB_141
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
00 ETUPART  | Partitioning at P512 consumed   0.93 real seconds and   3.92 CPU seconds
00 ETUPART  | 
00 ETUPART  | ===========================================
00 ETUPART  | Partitioning at P64 hierarchy
00 ETUPART  | ===========================================
00 ETUPART  |  num_engines = 4, num nodes = 48
00 ETUPART  | IO box 30821 set to partition 1 phy unit 17: ET6_XBOB_141
00 ETUPART  | Partitioning at P64 consumed   0.42 real seconds and   1.29 CPU seconds
00 ETUPART  | 
00 ETUPART  | 
00 ETUPART  | Message  2                     GET_BOX_EP processed:    72, cpu 0.0002, real 0.0002
00 ETUPART  | Message  3                     SET_BOX_EP processed:   735, cpu 0.0007, real 0.0012
00 ETUPART  | Message  7                    GET_MEM_LOC processed:   735, cpu 0.0006, real 0.0011
00 ETUPART  | Message  8                    SET_MEM_LOC processed:   735, cpu 0.0194, real 0.0200
00 ETUPART  | Message 12               MEMUTIL_SET_MODE processed:   212, cpu 0.0002, real 0.0004
00 ETUPART  | Message 13              MEMUTIL_RM_UNUSED processed:   212, cpu 0.0007, real 0.0008
00 ETUPART  | Message 14              MEMUTIL_GET_PORTS processed:   214, cpu 0.0002, real 0.0003
00 ETUPART  | Message 15          MEMUTIL_GET_PORT_DATA processed:     2, cpu 0.0000, real 0.0000
00 ETUPART  | Message 17                 SLICE_MEMORY_H processed:     1, cpu 0.0003, real 0.0003
00 ETUPART  | Message 23                     GET_MC_EPS processed:  8583, cpu 0.0170, real 0.0229
00 ETUPART  | Message 24                     GET_MI_EPS processed:  3254, cpu 0.0038, real 0.0060
00 ETUPART  | Message 25                   GET_MEM_DATA processed:     2, cpu 0.0000, real 0.0000
00 ETUPART  | Message 26                  GET_FIRST_SRC processed:     2, cpu 0.0000, real 0.0000
00 ETUPART  | Message 27                EST_UMC_STROBES processed:     2, cpu 0.0000, real 0.0000
00 ETUPART  |                                     Total processed: 14761, cpu 0.0430, real 0.0532
00 ETUPART  | 
00 ETUPART  | xc_top.eClkR is in chip 0
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5cpr' on 05/21/2024 16:19:12
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
00 ET5CPR   | num boxes 367231, max ep size 1207, last asic 8, num_asic 1, max asicsize 413163
00 ET5CPR   | total m_weight 413153, ave m_weight per asic 413153, ave m_weight per cluster 1075, ave m_weight per ep 134
00 ET5CPR   | max_lep size = 1207, max asic size = 413163, hop hierachy at 4
00 ET5CPR   | num boxes 367231, max cls size loada 1098, last asic 8, num_asic 1, max asic size loada 365960
00 ET5CPR   | total wgt loada 365960, ave wgt per asic 365960, ave wgt per cluster 953, ave wgt per ep 119
00 ET5CPR   | cls limit loada = 1208, asic limit loada = 57181, hop hierachy at 4
00 ET5CPR   | num_racks = 1, num brds = 1
00 ET5CPR   | reducing hop at 4 hierarchy
00 ET5CPR   | Reducing hop at epc level.
00 ET5CPR   | max round = 100
00 ET5CPR   | CPR round  1, maxlvl 186, path head  87523 lvl 171, tail  80135, len  74, m_is_marked   0, moved 34, NC 0 
00 ET5CPR   | CPR round  2, maxlvl 170, path head  24792 lvl 163, tail  76789, len  83, m_is_marked   0, moved 18, NC 0 
00 ET5CPR   | CPR round  3, maxlvl 165, path head 367235 lvl 162, tail  80135, len  87, m_is_marked   0, moved 24, NC 0 
00 ET5CPR   | CPR round  4, maxlvl 160, path head  30820 lvl 150, tail 279250, len  78, m_is_marked   0, moved 35, NC 0 
00 ET5CPR   | CPR round  5, maxlvl 154, path head  87523 lvl 149, tail  76789, len  78, m_is_marked   0, moved 30, NC 0 
00 ET5CPR   | CPR round  6, maxlvl 144, path head 284768 lvl 137, tail  80135, len  85, m_is_marked   0, moved  5, NC 0 
00 ET5CPR   | CPR round  7, maxlvl 141, path head 367235 lvl 140, tail  80135, len  84, m_is_marked   0, moved  4, NC 0 
00 ET5CPR   | CPR round  8, maxlvl 140, path head 367235 lvl 139, tail  80135, len  86, m_is_marked   0, moved  2, NC 0 
00 ET5CPR   | CPR round  9, maxlvl 139, path head  30818 lvl 139, tail  76789, len  83, m_is_marked   0, moved 13, NC 0 
00 ET5CPR   | CPR round 10, maxlvl 139, path head  30818 lvl 138, tail  80135, len  63, m_is_marked   0, moved  7, NC 1 
00 ET5CPR   | CPR round 11, maxlvl 138, path head 367235 lvl 138, tail  78307, len  94, m_is_marked   0, moved  9, NC 0 
00 ET5CPR   | CPR round 12, maxlvl 138, path head 367235 lvl 137, tail  78307, len  94, m_is_marked   0, moved  1, NC 1 
00 ET5CPR   | CPR round 13, maxlvl 137, path head 367235 lvl 136, tail  78307, len  93, m_is_marked   0, moved  3, NC 0 
00 ET5CPR   | CPR round 14, maxlvl 136, path head 367235 lvl 135, tail  78307, len  95, m_is_marked   0, moved  1, NC 0 
00 ET5CPR   | CPR round 15, maxlvl 135, path head 367235 lvl 135, tail  78307, len  94, m_is_marked   0, moved  1, NC 0 
00 ET5CPR   | CPR round 16, maxlvl 135, path head 367235 lvl 135, tail  78307, len  91, m_is_marked   0, moved  1, NC 1 
00 ET5CPR   | CPR round 17, maxlvl 135, path head 367235 lvl 134, tail  78307, len  91, m_is_marked   0, moved  1, NC 2 
00 ET5CPR   | CPR round 18, maxlvl 135, path head  30818 lvl 135, tail  76789, len  84, m_is_marked   0, moved 10, NC 3 
00 ET5CPR   | CPR round 19, maxlvl 134, path head 367235 lvl 133, tail  76789, len  67, m_is_marked   0, moved 13, NC 0 
00 ET5CPR   | CPR round 20, maxlvl 134, path head 367235 lvl 134, tail  76789, len  69, m_is_marked   0, moved  9, NC 1 
00 ET5CPR   | CPR round 21, maxlvl 134, path head  30818 lvl 134, tail  80135, len  61, m_is_marked   0, moved  5, NC 2 
00 ET5CPR   | CPR round 22, maxlvl 134, path head  30818 lvl 132, tail  80135, len  61, m_is_marked   0, moved  4, NC 3 
00 ET5CPR   | CPR round 23, maxlvl 133, path head 367235 lvl 133, tail  78307, len  96, m_is_marked   0, moved  0, NC 0 
00 ET5CPR   | Round 24 path is empty.
00 ET5CPR   | Total relocated = 210
00 ET5CPR   | max cls size loada 1098, max asic size loada 365960
00 ET5CPR   | total wgt loada 365960, ave wgt per asic 365960, ave wgt per cluster 953
00 ET5CPR   | Maximum number of hops in all paths = 133
00 ET5CPR   |                                    
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et5cpr' (Elapsed time 0.72s (0.70u+0.01s), Memory used 2584 Mb) on 05/21/2024 16:19:13
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/etupart' (Elapsed time 4.02s (7.65u+0.17s), Memory used 2584 Mb) on 05/21/2024 16:19:13
00 DATABASE | Calling 'svproto' on 05/21/2024 16:19:13
00 DATABASE | Parms: 'qt_modular -remove_CMIO -optimize'
00 DATABASE | Return from 'svproto' (Elapsed time 0.20s (0.14u+0.03s), Memory used 2584 Mb) on 05/21/2024 16:19:13
00 DATABASE | Compiler Statistics:
00 DATABASE | ENVRN |  MAX_LOGICAL_HOP | 133        | 
00 DATABASE | ENVRN |  ModuleCurrent   | 8          | None
00 DATABASE | ENVRN |  MAX_LOGICAL_LEVEL | 142        | 
00 DATABASE | ENVRN |  ModuleLast      | 4          | None
00 DATABASE | CONFG |  NumASICs        | 1          | 
00 DATABASE | CONFG |  EmType          | 4          | ET6
00 DATABASE | CONFG |  ModuleStatus    | 1          | Passed
00 DATABASE | CONFG |  NumDomains      | 1          | 
00 DATABASE | CONFG |  SAProtocol      | 5          | 
00 DATABASE | NLOPT |  InitialGateCount | 530684     | 
00 DATABASE | NLOPT |  FinalGateCount  | 343013     | 
00 DATABASE | NLOPT |  UtilRate        | 26         | Percents
00 DATABASE | NLOPT |  NumDBO          | 146        | 
00 DATABASE | NLOPT |  NumPI           | 0          | 
00 DATABASE | NLOPT |  NumDBI          | 73         | 
00 DATABASE | NLOPT |  ModuleStatus    | 1          | Passed
00 DATABASE | NLOPT |  NumPO           | 1          | 
00 DATABASE | MPART |  totalDdrPorts   | 0          | 
00 DATABASE | MPART |  INTRAMutil      | 41         | percents
00 DATABASE | MPART |  totalXINTports  | 0          | 
00 DATABASE | MPART |  totalBINTports  | 0          | 
00 DATABASE | MPART |  ModuleStatus    | 1          | Passed
00 DATABASE | MPART |  totalInstrNum   | 389245     | 
00 DATABASE | MPART |  totalDDRports   | 0          | 
00 DATABASE | MPART |  totalBintPorts  | 734        | 
00 DATABASE | MPART |  minDomainsForMemories | 1          | 
00 DATABASE | MPART |  totalLPDDRports | 0          | 
00 DATABASE | MPART |  totalSINTports  | 0          | 
00 DATABASE | PARTR |  MemEmulator     | 8240       | MBytes
00 DATABASE | PARTR |  ModuleStatus    | 1          | Passed
00 DATABASE | PARTR |  MemUser         | 19         | MBytes
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
