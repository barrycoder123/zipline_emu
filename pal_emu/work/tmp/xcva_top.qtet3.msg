00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' on 04/17/2024 13:07:37
00 DATABASE | Parms: '-client'
00 ET3LIB   |                                    
00 ET3LIB   |                              ET3 LIBRARY
00 ET3LIB   |                            RELEASE 6.0.2.6
00 ET3LIB   |                           VXE, VEngineering
00 ET3LIB   | (c) 1995-2020 Cadence Design Systems, Inc. All rights reserved worldwide.
00 ET3LIB   |            See files in <rootdir>/share/vxe/install/Copyrights
00 ET3LIB   |                                    
00 ET3LIB   | ET3lib created on Aug  3 2023 at 22:13:09.
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et3lib' (Elapsed time 0.02s (0.00u+0.00s), Memory used 2039 Mb) on 04/17/2024 13:07:37
00 DATABASE | Calling 'ldproto' on 04/17/2024 13:07:37
00 DATABASE | Parms: 'xcva_top -ffdb'
00 DATABASE | Reading file './dbFiles/xcva_top.ffproto' created on Wed Apr 17 13:07:15 2024
00 DATABASE | 
00 DATABASE | Proto size = 1604795
Info: 182512 ffDB nets have been restored
Info: 30302 critical net names have been restored: elapsed time 0 sec
Info: : restored short PDB: elapsed time 0 sec
Info: 174463 ffDB boxes have been restored
00 DATABASE | Return from 'ldproto' (Elapsed time 0.13s (0.14u+0.10s), Memory used 2340 Mb) on 04/17/2024 13:07:37
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/etnbcs' on 04/17/2024 13:07:37
00 DATABASE | Parms: '-client -hostname hsv-scd107 -skip_defaults -skip_et3mach -hostdir ./tmp'
00 ETNBCS   |                                    
00 ETNBCS   |                  ET NETWORK BASED CONTROL SYSTEM API
00 ETNBCS   |                            RELEASE 6.0.2.6
00 ETNBCS   |                           VXE, VEngineering
00 ETNBCS   |             Copyright(C) 1995-2021, Cadence Design Systems
00 ETNBCS   |                          All rights reserved
00 ETNBCS   |                                    
00 ETNBCS   |               etnbcs created on Aug  3 2023 at 22:14:09.
00 ETNBCS   |                                    
00 ETNBCS   |            Running on Linux Release '4.18.0-305.el8.x86_64'
00 ETNBCS   |                                    
00 ETNBCS   | configmgr ip address from -hostname: '158.140.43.81'
00 ETNBCS   | Host Directory set to ./tmp
00 ETNBCS   | disable_umc_gp           is 0
00 ETNBCS   | disable_dcc_gp           is 0
00 ETNBCS   | RUN_IUS_GP               is 0
00 ETNBCS   | bar2_gp                  is 1
00 ETNBCS   | skip_initval_csws_found  is 0
00 ETNBCS   | skip_initval_csws_gp     is 0
00 ETNBCS   | skip_initval_icsws_gp    is 0
00 ETNBCS   | skip_initval_ocsws_gp    is 0
00 ETNBCS   | ddr_freq_g               is 2133
00 ETNBCS   | nbcs::ella_init_mode_g     is 2
00 ETNBCS   | nbcs::use_bcp_threads_g    is 0
00 ETNBCS   |  
00 ETNBCS   | ET3MACH work directory set to /et3mach
00 ETNBCS   | Physical Configuration set to 
00 ETNBCS   | environment variable  "ET_GET_DDR_CONFS_FROM_SCD" is not set
00 ETNBCS   | environment variable  "ET6_DDR_TRAIN_FILE" is not set
00 ETNBCS   | No mode (IUS/PDM/BAR2) specified.  Defaulting to BAR2 mode.
00 ETNBCS   | ccw_payload_gp set to 1073741824
00 ETNBCS   | IB Support library is "/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/libibsupport_real.so"
00 ETNBCS   | calling dlopen("/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/libibsupport_real.so", RTLD_LAZY | RTLD_NOW | RTLD_GLOBAL)
00 ETNBCS   | Success from dlopen().  dl_handle_g is 0x147a104e4000
00 ETNBCS   | calling dlsym(dl_handle_g, "IB_Memory")
00 ETNBCS   | Success from dlsym().  IB_Memory is 0x147a0f83bede
00 ETNBCS   | Host 158.140.43.81 found on network interface management
00 ETNBCS   | Initializing the Channel.
00 ETNBCS   | lower_limit 8194 upper_limit 13000
00 ETNBCS   | 8194
00 ETNBCS   | 
00 ETNBCS   | ASM     NodeID is 00010008
00 ETNBCS   | SCD   0 NodeID is 0001000B
00 ETNBCS   | SCD   1 NodeID is 0001000A
00 ETNBCS   | CCD   0 NodeID is FFFFFFFF
00 ETNBCS   | BRD   0 NodeID is FFFFFFFF
00 ETNBCS   | BRD   1 NodeID is FFFFFFFF
00 ETNBCS   | BRD   2 NodeID is FFFFFFFF
00 ETNBCS   | BRD   3 NodeID is FFFFFFFF
00 ETNBCS   | BRD   4 NodeID is FFFFFFFF
00 ETNBCS   | BRD   5 NodeID is FFFFFFFF
00 ETNBCS   | CCD   1 NodeID is FFFFFFFF
00 ETNBCS   | BRD   6 NodeID is FFFFFFFF
00 ETNBCS   | BRD   7 NodeID is FFFFFFFF
00 ETNBCS   | BRD   8 NodeID is FFFFFFFF
00 ETNBCS   | BRD   9 NodeID is FFFFFFFF
00 ETNBCS   | BRD  10 NodeID is FFFFFFFF
00 ETNBCS   | BRD  11 NodeID is FFFFFFFF
00 ETNBCS   | CCD   2 NodeID is FFFFFFFF
00 ETNBCS   | BRD  12 NodeID is FFFFFFFF
00 ETNBCS   | BRD  13 NodeID is FFFFFFFF
00 ETNBCS   | BRD  14 NodeID is FFFFFFFF
00 ETNBCS   | BRD  15 NodeID is FFFFFFFF
00 ETNBCS   | BRD  16 NodeID is FFFFFFFF
00 ETNBCS   | BRD  17 NodeID is FFFFFFFF
00 ETNBCS   | CCD   3 NodeID is FFFFFFFF
00 ETNBCS   | BRD  18 NodeID is FFFFFFFF
00 ETNBCS   | BRD  19 NodeID is FFFFFFFF
00 ETNBCS   | BRD  20 NodeID is FFFFFFFF
00 ETNBCS   | BRD  21 NodeID is FFFFFFFF
00 ETNBCS   | BRD  22 NodeID is FFFFFFFF
00 ETNBCS   | BRD  23 NodeID is FFFFFFFF
00 ETNBCS   | CCD   4 NodeID is FFFFFFFF
00 ETNBCS   | BRD  24 NodeID is FFFFFFFF
00 ETNBCS   | BRD  25 NodeID is FFFFFFFF
00 ETNBCS   | BRD  26 NodeID is FFFFFFFF
00 ETNBCS   | BRD  27 NodeID is FFFFFFFF
00 ETNBCS   | BRD  28 NodeID is FFFFFFFF
00 ETNBCS   | BRD  29 NodeID is FFFFFFFF
00 ETNBCS   | CCD   5 NodeID is FFFFFFFF
00 ETNBCS   | BRD  30 NodeID is FFFFFFFF
00 ETNBCS   | BRD  31 NodeID is FFFFFFFF
00 ETNBCS   | BRD  32 NodeID is FFFFFFFF
00 ETNBCS   | BRD  33 NodeID is FFFFFFFF
00 ETNBCS   | BRD  34 NodeID is FFFFFFFF
00 ETNBCS   | BRD  35 NodeID is FFFFFFFF
00 ETNBCS   | CCD   6 NodeID is 000182E9
00 ETNBCS   | BRD  36 NodeID is 000182EB
00 ETNBCS   | BRD  37 NodeID is 000182E6
00 ETNBCS   | BRD  38 NodeID is 000182EA
00 ETNBCS   | BRD  39 NodeID is 000182E5
00 ETNBCS   | BRD  40 NodeID is 000182E8
00 ETNBCS   | BRD  41 NodeID is 000182E7
00 ETNBCS   | CCD   7 NodeID is 000100E4
00 ETNBCS   | BRD  42 NodeID is 000100E5
00 ETNBCS   | BRD  43 NodeID is 000100EB
00 ETNBCS   | BRD  44 NodeID is 000100E8
00 ETNBCS   | BRD  45 NodeID is 000100E7
00 ETNBCS   | BRD  46 NodeID is 000100EA
00 ETNBCS   | BRD  47 NodeID is 000100E9
00 ETNBCS   | CCD   8 NodeID is 000100DE
00 ETNBCS   | BRD  48 NodeID is 000100DD
00 ETNBCS   | BRD  49 NodeID is 000100E2
00 ETNBCS   | BRD  50 NodeID is 000100DF
00 ETNBCS   | BRD  51 NodeID is 000100E1
00 ETNBCS   | BRD  52 NodeID is 000100E3
00 ETNBCS   | BRD  53 NodeID is 000100E0
00 ETNBCS   | CCD   9 NodeID is FFFFFFFF
00 ETNBCS   | BRD  54 NodeID is FFFFFFFF
00 ETNBCS   | BRD  55 NodeID is FFFFFFFF
00 ETNBCS   | BRD  56 NodeID is FFFFFFFF
00 ETNBCS   | BRD  57 NodeID is FFFFFFFF
00 ETNBCS   | BRD  58 NodeID is FFFFFFFF
00 ETNBCS   | BRD  59 NodeID is FFFFFFFF
00 ETNBCS   | CCD  10 NodeID is FFFFFFFF
00 ETNBCS   | BRD  60 NodeID is FFFFFFFF
00 ETNBCS   | BRD  61 NodeID is FFFFFFFF
00 ETNBCS   | BRD  62 NodeID is FFFFFFFF
00 ETNBCS   | BRD  63 NodeID is FFFFFFFF
00 ETNBCS   | BRD  64 NodeID is FFFFFFFF
00 ETNBCS   | BRD  65 NodeID is FFFFFFFF
00 ETNBCS   | CCD  11 NodeID is FFFFFFFF
00 ETNBCS   | BRD  66 NodeID is FFFFFFFF
00 ETNBCS   | BRD  67 NodeID is FFFFFFFF
00 ETNBCS   | BRD  68 NodeID is FFFFFFFF
00 ETNBCS   | BRD  69 NodeID is FFFFFFFF
00 ETNBCS   | BRD  70 NodeID is FFFFFFFF
00 ETNBCS   | BRD  71 NodeID is FFFFFFFF
00 ETNBCS   | CCD  12 NodeID is 000110D6
00 ETNBCS   | BRD  72 NodeID is 000110D7
00 ETNBCS   | BRD  73 NodeID is 000110D9
00 ETNBCS   | BRD  74 NodeID is 000110DB
00 ETNBCS   | BRD  75 NodeID is 000110DA
00 ETNBCS   | BRD  76 NodeID is 000110DC
00 ETNBCS   | BRD  77 NodeID is 000110D8
00 ETNBCS   | CCD  13 NodeID is 000100AC
00 ETNBCS   | BRD  78 NodeID is 000100AE
00 ETNBCS   | BRD  79 NodeID is 000100AF
00 ETNBCS   | BRD  80 NodeID is 000100B0
00 ETNBCS   | BRD  81 NodeID is 000100B1
00 ETNBCS   | BRD  82 NodeID is 000100AD
00 ETNBCS   | BRD  83 NodeID is 000100B2
00 ETNBCS   | CCD  14 NodeID is 000100BA
00 ETNBCS   | BRD  84 NodeID is 000100B8
00 ETNBCS   | BRD  85 NodeID is 000100C1
00 ETNBCS   | BRD  86 NodeID is 000100C4
00 ETNBCS   | BRD  87 NodeID is 000100C3
00 ETNBCS   | BRD  88 NodeID is 000100C2
00 ETNBCS   | BRD  89 NodeID is 000100C0
00 ETNBCS   | CCD  15 NodeID is 0001009B
00 ETNBCS   | BRD  92 NodeID is 0001009C
00 ETNBCS   | CCD  16 NodeID is 000100A4
00 ETNBCS   | BRD  96 NodeID is 000100A8
00 ETNBCS   | BRD  97 NodeID is 000100A5
00 ETNBCS   | BRD  98 NodeID is 000100A6
00 ETNBCS   | BRD  99 NodeID is 000100A7
00 ETNBCS   | BRD 100 NodeID is 000100A9
00 ETNBCS   | BRD 101 NodeID is 000100AA
00 ETNBCS   | CCD  17 NodeID is 000100A0
00 ETNBCS   | BRD 102 NodeID is 0001009D
00 ETNBCS   | BRD 103 NodeID is 0001009E
00 ETNBCS   | BRD 104 NodeID is 0001009F
00 ETNBCS   | BRD 107 NodeID is 000100A1
00 ETNBCS   | CCD  18 NodeID is FFFFFFFF
00 ETNBCS   | BRD 108 NodeID is FFFFFFFF
00 ETNBCS   | BRD 109 NodeID is FFFFFFFF
00 ETNBCS   | BRD 110 NodeID is FFFFFFFF
00 ETNBCS   | BRD 111 NodeID is FFFFFFFF
00 ETNBCS   | BRD 112 NodeID is FFFFFFFF
00 ETNBCS   | BRD 113 NodeID is FFFFFFFF
00 ETNBCS   | CCD  19 NodeID is FFFFFFFF
00 ETNBCS   | BRD 114 NodeID is FFFFFFFF
00 ETNBCS   | BRD 115 NodeID is FFFFFFFF
00 ETNBCS   | BRD 116 NodeID is FFFFFFFF
00 ETNBCS   | BRD 117 NodeID is FFFFFFFF
00 ETNBCS   | BRD 118 NodeID is FFFFFFFF
00 ETNBCS   | BRD 119 NodeID is FFFFFFFF
00 ETNBCS   | CCD  20 NodeID is FFFFFFFF
00 ETNBCS   | BRD 120 NodeID is FFFFFFFF
00 ETNBCS   | BRD 121 NodeID is FFFFFFFF
00 ETNBCS   | BRD 122 NodeID is FFFFFFFF
00 ETNBCS   | BRD 123 NodeID is FFFFFFFF
00 ETNBCS   | BRD 124 NodeID is FFFFFFFF
00 ETNBCS   | BRD 125 NodeID is FFFFFFFF
00 ETNBCS   | CCD  21 NodeID is FFFFFFFF
00 ETNBCS   | BRD 126 NodeID is FFFFFFFF
00 ETNBCS   | BRD 127 NodeID is FFFFFFFF
00 ETNBCS   | BRD 128 NodeID is FFFFFFFF
00 ETNBCS   | BRD 129 NodeID is FFFFFFFF
00 ETNBCS   | BRD 130 NodeID is FFFFFFFF
00 ETNBCS   | BRD 131 NodeID is FFFFFFFF
00 ETNBCS   | CCD  22 NodeID is FFFFFFFF
00 ETNBCS   | BRD 132 NodeID is FFFFFFFF
00 ETNBCS   | BRD 133 NodeID is FFFFFFFF
00 ETNBCS   | BRD 134 NodeID is FFFFFFFF
00 ETNBCS   | BRD 135 NodeID is FFFFFFFF
00 ETNBCS   | BRD 136 NodeID is FFFFFFFF
00 ETNBCS   | BRD 137 NodeID is FFFFFFFF
00 ETNBCS   | CCD  23 NodeID is FFFFFFFF
00 ETNBCS   | BRD 138 NodeID is FFFFFFFF
00 ETNBCS   | BRD 139 NodeID is FFFFFFFF
00 ETNBCS   | BRD 140 NodeID is FFFFFFFF
00 ETNBCS   | BRD 141 NodeID is FFFFFFFF
00 ETNBCS   | BRD 142 NodeID is FFFFFFFF
00 ETNBCS   | BRD 143 NodeID is FFFFFFFF
00 ETNBCS   | SCD   1 RCB    is 0.9001.0;  scd_rcb_g[1] is         90010000
00 ETNBCS   | 
00 ETNBCS   | MCD   0 RCB    is 0.A000.0
00 ETNBCS   | 
00 ETNBCS   | SCD   0 RCB    is 0.9000.0;  scd_rcb_g[0] is         90000000
00 ETNBCS   | 
00 ETNBCS   | DDR config file name is /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/dcc_ctl_conf_2133_S.dat
00 ETNBCS   | DDR config file name is /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/dcc_phy_conf_2133_S.dat
00 ETNBCS   | DDR config file name is /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/umc_ctl_conf_2133_S.dat
00 ETNBCS   | DDR config file name is /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/umc_phy_conf_2133_S.dat
00 ETNBCS   | DDR config file name is /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/dcc_ctl_conf_2133_M.dat
00 ETNBCS   | DDR config file name is /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/dcc_phy_conf_2133_M.dat
00 ETNBCS   | DDR config file name is /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/umc_ctl_conf_2133_M.dat
00 ETNBCS   | DDR config file name is /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/umc_phy_conf_2133_M.dat
00 ETNBCS   | ./tmp/nbcs_defaults downloaded from SCD host hsv-scd107
00 ETNBCS   | Defaults File "./tmp/nbcs_defaults" successfully processed
00 ETNBCS   |  
00 ETNBCS   | temporary directory            : ./tmp
00 ETNBCS   | 
00 ETNBCS   | temporary Configuration File   : ./tmp/hsv-scd107.et3confg
00 ETNBCS   | 
00 ETNBCS   |       SCD Configuration File   : /et3mach/scd.et3confg
00 ETNBCS   | 
00 ETNBCS   |                         DBIN   : ./tmp:.:/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit:/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/bi \
00 ETNBCS   | n:/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/bin/64bit:./64bit:./dbFiles:/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3:/lan/cva_rel/vx \
00 ETNBCS   | e23h1/23.03.131.s001/tools.lnx86/bin/x86-lx2-64:/et3mach
00 ETNBCS   | 
00 ETNBCS   |  
00 ETNBCS   | Configmgr IP Address           : 158.140.43.81
00 ETNBCS   | 
00 ETNBCS   | Configmgr Host Name            : hsv-scd107
00 ETNBCS   | 
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/etnbcs' (Elapsed time 1.54s (0.02u+0.04s), Memory used 2340 Mb) on 04/17/2024 13:07:38
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6confg' on 04/17/2024 13:07:38
00 DATABASE | Parms: '-client'
00 ET6CONFG | et6confg: env ET3MACH_DIR found: Using ./tmp as et3mach dir
00 ET6CONFG | THIS IS /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/bin/64bit/DBEngine RUNNING.
00 ET6CONFG | Reading configuration from Proto Configuration.proto
00 ET6CONFG |                       ET6 CONFIGURATION MANAGER
00 ET6CONFG |                                    
00 ET6CONFG |                            RELEASE 6.0.2.6
00 ET6CONFG |                           VXE, VEngineering
00 ET6CONFG |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET6CONFG |                          All rights reserved
00 ET6CONFG |                                    
00 ET6CONFG | et6confg created on Aug  3 2023 at 22:13:09.
00 ET6CONFG | --> USING LD8 CLUSTER TABLES
00 ET6CONFG | ***** MB/XB wire table initialization took 0.000165 seconds.
00 ET6CONFG | ***** Found 0000000  MBO->MBI  possible links in this configuration.
00 ET6CONFG | ***** HIGHEST board found in emulation configuration is 5
00 ET6CONFG | load_module_version()          = 30
00 ET6CONFG | minor_cycles_per_major_cycle() = 164
00 ET6CONFG | num_cycles_per_capture_frame   = 32
00 ET6CONFG | das_protocol()                 = 5
00 ET6CONFG | COMPILED ON ON AT  WITH SEED 96974518
00 ET6CONFG | +   1 BOARD ET6E
00 ET6CONFG | -   7 CHIPs
00 ET6CONFG |     8 installed chip(s)
00 ET6CONFG |     0 unused connectors out of 36 total
00 ET6CONFG | END of et6confg.........
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6confg' (Elapsed time 0.04s (0.01u+0.00s), Memory used 2340 Mb) on 04/17/2024 13:07:38
00 DATABASE | Calling '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6api' on 04/17/2024 13:07:38
00 DATABASE | Parms: '-client -i xcva_top -use_all_sa_boards -dcc_test_size 8184'
00 ET6API   |                                    
00 ET6API   |                        ET HARDWARE API (HWAPI)
00 ET6API   |                           VXE, VEngineering
00 ET6API   |             Copyright(C) 1995-2021, Cadence Design Systems
00 ET6API   |                          All rights reserved
00 ET6API   |                            RELEASE 6.0.2.6
00 ET6API   |                                    
00 ET6API   | et6api created on Aug  3 2023 at 22:14:09.
00 ET6API   | ET API is running with etnbcs: 'RELEASE 6.0.2.6' (6026)
00 ET6API   | ET API is running on a Linux machine (distribution is RedHat).
00 ET6API   | ET API is running in little-endian mode.
00 ET6API   | ET API is running in 64-bit mode.
00 ET6API   | ET API is running on emulator hsv-scd107 from host workstation hsv-sc49.
00 ET6API   | Set model_name to proto_name xcva_top (diags:0)
00 ET6API   | Active Proto=1, proto_name=xcva_top, model_name=xcva_top
10 ET6API   | WARNING: User set DCC SIZE to 8184MB with -dcc_test_size 8184
00 ET6API   | The configmgr IP address and port is 158.140.43.81 (port 65535)
00 ET6API   | configmgr: 'RELEASE 6.0.2.6' (6206)
00 ET6API   | ETNBCS trace threshold level is UNCHANGED [TRACE_LVL=TRC_INFO,PRINT_LVL=999]
00 ET6API   | Reading configuration file "././tmp/hsv-scd107.et3confg"
00 ET6API   | Boards skips detected in ./tmp/hsv-scd107.et3confg.  Adjusting tables (boards found:143  board slots needed:144)
00 ET6API   | --> USING LD8 CLUSTER TABLES
00 ET6API   | ***** MB/XB wire table initialization took 0.248352 seconds.
00 ET6API   | ***** Found 0046028  MBO->MBI  possible links in this configuration.
00 ET6API   | ***** Found 0057264  XBO->XBI  possible links in this configuration.
00 ET6API   | ***** HIGHEST board found in emulation configuration is 143
00 ET6API   | FAST INIT: Reading dbFiles/etapi.mem_slices was successful. File size is 15280, number of memory slices is 191.
00 ET6API   | CHECKPOINT_CONTROL: fffffffb (DCC Checkpointing is not supported on this hardware)
00 ET6API   | CURRENT DIRECTORY: /home/ibarry/Project-Zipline-master/pal_emu/work
00 ET6API   | Reading configuration file "././tmp/hsv-scd107.et3confg"
00 ET6API   | Boards skips detected in ./tmp/hsv-scd107.et3confg.  Adjusting tables (boards found:143  board slots needed:144)
00 ET6API   | --> USING LD8 CLUSTER TABLES
00 ET6API   | ***** MB/XB wire table initialization took 0.231041 seconds.
00 ET6API   | ***** Found 0046028  MBO->MBI  possible links in this configuration.
00 ET6API   | ***** Found 0057264  XBO->XBI  possible links in this configuration.
00 ET6API   | ***** HIGHEST board found in emulation configuration is 143
00 ET6API   | END of ET API initialization. (result 00000000)
00 DATABASE | Return from '/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/lib/64bit/et6api' (Elapsed time 1.75s (1.08u+0.60s), Memory used 3354 Mb) on 04/17/2024 13:07:40
00 DATABASE | fastDownload: off -> off
00 DATABASE | Reading configuration file "././tmp/hsv-scd107.et3confg"
00 DATABASE | Boards skips detected in ./tmp/hsv-scd107.et3confg.  Adjusting tables (boards found:143  board slots needed:144)
00 DATABASE | --> USING LD8 CLUSTER TABLES
00 DATABASE | ***** MB/XB wire table initialization took 0.218559 seconds.
00 DATABASE | ***** Found 0046028  MBO->MBI  possible links in this configuration.
00 DATABASE | ***** Found 0057264  XBO->XBI  possible links in this configuration.
00 DATABASE | ***** HIGHEST board found in emulation configuration is 143
00 DATABASE | >>> DOWNLOAD PROGRESS: 10 PERCENT COMPLETE [13:07:41] <<<
00 DATABASE | Reading configuration file "././tmp/hsv-scd107.et3confg"
00 DATABASE | Boards skips detected in ./tmp/hsv-scd107.et3confg.  Adjusting tables (boards found:143  board slots needed:144)
00 DATABASE | --> USING LD8 CLUSTER TABLES
00 DATABASE | ***** MB/XB wire table initialization took 0.202810 seconds.
00 DATABASE | ***** Found 0046028  MBO->MBI  possible links in this configuration.
00 DATABASE | ***** Found 0057264  XBO->XBI  possible links in this configuration.
00 DATABASE | ***** HIGHEST board found in emulation configuration is 143
00 DATABASE | building DCC_net table in et6confg
00 DATABASE | building DCC_net table in et6confg done in 0.013720 seconds
00 DATABASE | This design was compiled for best relocation.
00 DATABASE | ADV_RELOC: Mapping COMPILED 0.0 to PHY 102.5
00 DATABASE |  
00 DATABASE | NCC_PCI image for board 00(102) is 'RELEASE 6.0.2.6'  IP: 158.140.43.81
00 DATABASE | Advanced Relocation plugin starts at 13:07:42...
00 DATABASE | Advanced Relocation plugin ends at 13:07:42...
00 DATABASE | Cannot create file /et3mach/ET3_activity.log.  Using default file path. ERRNO:13 - Permission denied
00 DATABASE | 
00 DATABASE | User ibarry, (/home/ibarry/Project-Zipline-master/pal_emu/work/dbFiles/xcva_top(.ffproto), session 25742) 
00 DATABASE |   is running on board.domain(s): {102.5}
00 DATABASE | 
00 DATABASE | Keephot is active
00 DATABASE | >>> DOWNLOAD PROGRESS: 20 PERCENT COMPLETE [13:07:42] <<<
00 DATABASE | Success reading DCC training values for board 102 from file "/et3mach/dcc_tune.BRD022B00220010.dat"
00 DATABASE | Success reading UMC training values for board 102 from file "/et3mach/umc_tune.BRD022B00220010.dat"
00          | DCC CTL filename is "/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/dcc_ctl_conf_2133_S.dat"
00          | 
00          | DCC PHY filename is "/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/dcc_phy_conf_2133_S.dat"
00          | 
00          | UMC CTL filename is "/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/umc_ctl_conf_2133_S.dat"
00          | 
00          | UMC PHY filename is "/lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/etc/et3/umc_phy_conf_2133_S.dat"
00          | 
00 DATABASE | >>> DOWNLOAD PROGRESS: 30 PERCENT COMPLETE [13:07:49] <<<
00 DATABASE | >>> DOWNLOAD PROGRESS: 40 PERCENT COMPLETE [13:07:49] <<<
00 DATABASE | >>> DOWNLOAD PROGRESS: 50 PERCENT COMPLETE [13:07:49] <<<
00 DATABASE | >>> DOWNLOAD PROGRESS: 60 PERCENT COMPLETE [13:07:49] <<<
00 DATABASE | DCC Capture Depth is 7 GB
00 DATABASE |  
00 DATABASE | fastDownload: off -> off
00 DATABASE | >>> DOWNLOAD PROGRESS: 70 PERCENT COMPLETE [13:07:49] <<<
00 DATABASE | >>> DOWNLOAD PROGRESS: 80 PERCENT COMPLETE [13:07:50] <<<
00 DATABASE | >>> DOWNLOAD PROGRESS: 85 PERCENT COMPLETE [13:07:50] <<<
00 DATABASE | >>> DOWNLOAD PROGRESS: 90 PERCENT COMPLETE [13:07:50] <<<
00 DATABASE | >>> DOWNLOAD PROGRESS: 95 PERCENT COMPLETE [13:07:50] <<<
00 DATABASE | >>> DOWNLOAD PROGRESS: 100 PERCENT COMPLETE [13:07:50] <<<
00 DATABASE | ET_API  2: KH Board 102: Ramp-UP Performing one-time setup
00 DATABASE | Runtime speed is 2.997820 MHZ.
00 DATABASE | SIM_SET(NO_DCC_FLUSH,0): Will always FLUSH trace to DCC when requested.
00 DATABASE |  
00 DATABASE | ET Runtime Statistics
00 DATABASE |  
00 DATABASE |  ------------------------------  ------      -------------     -------------
00 DATABASE |  Command Name                    Calls       Longest Call      Total Time
00 DATABASE |  ------------------------------  ------      -------------     -------------
00 DATABASE |       sim_build_symbol_list_net      86      0.000049 secs     0.000879 secs
00 DATABASE |                   sim_clear_dcc       2      0.562530 secs     1.124309 secs
00 DATABASE |                       sim_clock      15      0.011007 secs     0.055045 secs
00 DATABASE |   sim_clock_combinatorial_logic      38      0.039428 secs     0.186408 secs
00 DATABASE |    sim_configuration_management       1      8.658721 secs     8.658721 secs
00 DATABASE |            sim_free_symbol_list      62      0.000006 secs     0.000126 secs
00 DATABASE |                sim_get_board_id       5      0.000024 secs     0.000041 secs
00 DATABASE |                     sim_get_net      53      0.014160 secs     0.131532 secs
00 DATABASE |                 sim_get_net_net      39      0.010209 secs     0.015312 secs
00 DATABASE |                 sim_get_old_new       1      0.024743 secs     0.024743 secs
00 DATABASE |                     sim_ith_dcc       6      0.000004 secs     0.000011 secs
00 DATABASE |                  sim_model_load       1      0.777948 secs     0.777948 secs
00 DATABASE |         sim_num_board_resources       1      0.000009 secs     0.000009 secs
00 DATABASE |                 sim_query_clock     468      0.000418 secs     0.020624 secs
00 DATABASE |                   sim_query_dcc       1      0.000420 secs     0.000420 secs
00 DATABASE |    sim_query_nets_per_dcc_entry      10      0.000009 secs     0.000017 secs
00 DATABASE |               sim_start_capture       3      0.000946 secs     0.001909 secs
00 DATABASE |                    sim_stop_et3      20      0.008123 secs     0.106435 secs
00 DATABASE |              sim_unload_dcc_mem       1      0.000549 secs     0.000549 secs
00 DATABASE |    sim_unload_dcc_connector_mem      12      0.000736 secs     0.007773 secs
00 DATABASE |                       sim_flush      38      0.000005 secs     0.000085 secs
00 DATABASE |                       sim_stick      37      0.000079 secs     0.000575 secs
00 DATABASE |                   sim_stick_net     130      0.000671 secs     0.007008 secs
00 DATABASE |                     sim_unstick       9      0.000072 secs     0.000134 secs
00 DATABASE |                 sim_unstick_net       8      0.000451 secs     0.001663 secs
00 DATABASE |         sim_get_emulation_speed       3      0.000006 secs     0.000012 secs
00 DATABASE |                sim_num_dccs_all       6      0.000006 secs     0.000021 secs
00 DATABASE |           sim_set_capture_delay       1      0.000004 secs     0.000004 secs
00 DATABASE |                         sim_set      80      0.001627 secs     0.002448 secs
00 DATABASE |                sim_report_stats       1      0.000067 secs     0.000067 secs
00 DATABASE |     sim_ith_board_resource_info    1152      0.010342 secs     2.544259 secs
00 DATABASE |    sim_query_capture_frame_info      10      0.000022 secs     0.000071 secs
00 DATABASE |          sim_flush_data_capture       4      0.000509 secs     0.001654 secs
00 DATABASE |             sim_get_symbol_size     132      0.000009 secs     0.000266 secs
00 DATABASE |             sim_get_symbol_nets     102      0.000037 secs     0.000143 secs
00 DATABASE |             sim_get_chip_offset       5      0.000003 secs     0.000009 secs
00 DATABASE |           sim_get_target_owners    1152      0.002050 secs     1.813053 secs
00 DATABASE |            sim_get_dsync_config       1      0.000005 secs     0.000005 secs
00 DATABASE |  
00 DATABASE |  ---> Total API time was 15.484288 secs
00 DATABASE | 
BEDB: Cleaning all
BEDB: Cleaning et6api
00 DATABASE | et6api called to clean-up and terminate.
BEDB: Cleaning et6confg
00 DATABASE | et6confg called to clean-up and terminate.
BEDB: Cleaning etnbcs
BEDB: Cleaning et3lib
