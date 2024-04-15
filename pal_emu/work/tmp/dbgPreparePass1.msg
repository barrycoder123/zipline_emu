
## dbgPrepare starts at 04/15/2024 11:32:14 ibarry V23.03.131.s001, HOST: hsv-sc49, PID: 2594046, DISPLAY: sjcvl-ibarry:1
dbgPrepare hdldb xcva_top -pass1 -mc
## 64bit program from /lan/cva_rel/vxe23h1/23.03.131.s001/tools.lnx86/bin on Linux 4.18.0-305.el8.x86_64 64bit
(c) 1991-2021 Cadence Design Systems, Inc. All rights reserved worldwide.
See files in <rootdir>/share/vxe/install/Copyrights
#)libdb.so - 23H1_VXE, V23.03.131.s001            
#)libsmDB.so - 23H1_VXE, V23.03.131.s001            
#)libtypedb.so - 23H1_VXE, V23.03.131.s001            
#)libudqr.so - 23H1_VXE, V23.03.131.s001            
#)libhdldb.so - 23H1_VXE, V23.03.131.s001            
#)libhdlucdb.so - 23H1_VXE, V23.03.131.s001            
#)libCompilerRT.so - 23H1_VXE, V23.03.131.s001            
#)libhwConfig.so - 23H1_VXE, V23.03.131.s001            
#)libucdbwrt.so - 23H1_VXE, V23.03.131.s001            
#)libdbgutil.so - 23H1_VXE, V23.03.131.s001            
#)libdbgPrepare.so - 23H1_VXE, V23.03.131.s001            
#)libucdb_sh.so - 23H1_VXE, V23.03.131.s001            
#)libqtutil.so - 23H1_VXE, V23.03.131.s001            
#)libsideFile.so - 23H1_VXE, V23.03.131.s001            
#)libsdltm.so - 23H1_VXE, V23.03.131.s001            
#)libudq.so - 23H1_VXE, V23.03.131.s001            
#)libradb.so - 23H1_VXE, V23.03.131.s001            
#)libeclutil.so - 23H1_VXE, V23.03.131.s001            
#)libdb3.so - 23H1_VXE, V23.03.131.s001            
#)libet3wrapper.so - 23H1_VXE, V23.03.131.s001            
#)libsd.so - 23H1_VXE, V23.03.131.s001            
#)libtcl.so - 23H1_VXE, V23.03.131.s001            
#)libtbb.so - 23H1_VXE, V23.03.131.s001            
#)libnativeutils.so - 23H1_VXE, V23.03.131.s001            
#)libdb3.so - 23H1_VXE, V23.03.131.s001            
#)libet3wrapper.so - 23H1_VXE, V23.03.131.s001            
#)libsd.so - 23H1_VXE, V23.03.131.s001            
#)libtcl.so - 23H1_VXE, V23.03.131.s001            
#)libtbb.so - 23H1_VXE, V23.03.131.s001            
#)libqt.so - 23H1_VXE, V23.03.131.s001            
#)libqtutil.so - 23H1_VXE, V23.03.131.s001            
#)libsd.so - 23H1_VXE, V23.03.131.s001            
* System parameters:
vm/overcommit_memory: 0
vm/overcommit_ratio: 50
vm/oom_dump_tasks: 1
vm/oom_kill_allocating_task: 0
% ulimit -a
core file size          (blocks, -c) unlimited
data seg size           (kbytes, -d) unlimited
scheduling priority             (-e) 0
file size               (blocks, -f) unlimited
pending signals                 (-i) 3601275
max locked memory       (kbytes, -l) unlimited
max memory size         (kbytes, -m) unlimited
open files                      (-n) 524288
pipe size            (512 bytes, -p) 8
POSIX message queues     (bytes, -q) 819200
real-time priority              (-r) 0
stack size              (kbytes, -s) unlimited
cpu time               (seconds, -t) unlimited
max user processes              (-u) unlimited
virtual memory          (kbytes, -v) unlimited
file locks                      (-x) unlimited
* CPU info:
  Number of CPUs: 96
  Name: Intel(R) Xeon(R) CPU E7-4830 v3 @ 2.10GHz
  Vendor: GenuineIntel, family: 6, model: 63, stepping: 4
  CPU min MHz: 1200.0000, BogoMIPS: 4200.28, virtualization: VT-x
  L1d cache: 32K, L1i cache: 32K, L2 cache: 256K, L3 cache: 30720K
* Memory info:
              total     used     free   shared  buffers   cached
Mem  (GB):     1007      420      587        0        0      244
Swap (GB):      127        0      127
* Load info:
  1465 threads
  Load (avg):    1 min (% CPU) |     5 min (% CPU) |    15 min (% CPU)
               2.41 (  3% CPU) |   1.21 (  1% CPU) |   1.28 (  1% CPU)
System info: hsv-sc49 - dbgPrepare - 2594046 2589563 - qtInit - 2024-04-15 11:32:14 - 2.41 3% 1.21 1% 1.28 1% - 1007 420 587 244 127 0 127
000,000 s: dbgPrepare pre-selected instances top N = 10000
000,000 s: INFO (legacy-39111): Opening PDB hdldb xcva_top (of=0).
000,000 s: INFO (legacy-0): 30302 critical net names have been restored: elapsed time 0 sec
000,000 s: INFO (legacy-0): strtab(segs and data) has been restored: elapsed time 1 sec
000,000 s: INFO (legacy-0): sigmap has been restored: elapsed time 0 sec
000,001 s: INFO (legacy-0): 1396 cells have been restored: elapsed time 0 sec
000,001 s: INFO (legacy-0): 243428 smTrNets have been restored: elapsed time 0 sec
000,001 s: INFO (legacy-0): 233212 smTrPrims have been restored: elapsed time 0 sec
000,001 s: INFO (legacy-0): flat-conns have been restored: elapsed time 0 sec
000,001 s: INFO (legacy-0): 967639 synonyms have been setup: elapsed time 0 sec
000,001 s: Restoring PDB ./PDB/hdldb.xcva_top.rt: elapsed time 1 sec.
000,001 s: INFO (legacy-0): smNetIDs have been setup: elapsed time 0 sec
000,001 s: INFO (legacy-0): CRT-FULL has been restored: elapsed time 0 sec
000,001 s: ConstructInfoFile 117 cells (2907 constructs) which has 2706 records 72 arrays 155401 name size.
000,001 s: INFO (legacy-45793): Collected construct info.
000,001 s: WARNING (legacy-55183): Mode 'FV' detected, dsnGen only support FV and CP mode.
000,001 s: INFO (legacy-0): pass1: start to prepare memory,current time is Mon Apr 15 11:32:15 2024
000,001 s: INFO (legacy-0): pass1: start to prepare ucdb,current time is Mon Apr 15 11:32:15 2024
000,001 s: INFO (legacy-0): pass1: start to prepare swfv, current time is Mon Apr 15 11:32:15 2024 
000,001 s: INFO (legacy-0): Reading BIN ucdb
000,001 s: building swfv DB...
000,001 s: INFO (legacy-0): #PPC partitions = 1
000,001 s: INFO (legacy-0): maxPDBnets 243429 #FD01s 53984 #PIprobes 9332 #FFprobes 38351
000,001 s: INFO (legacy-73921): Created sourceless net sidefile, total nets 2 (#3:36, #2:51710, #1:30479, #0:71030, 243429)
000,001 s: INFO (legacy-0): pass1: finish preparing memory, current time is Mon Apr 15 11:32:16 2024, Elapsed time 0.13 real, 0.83 cpu(0.77u+0.06s), 638%, memory 4298M
000,001 s: INFO (legacy-1): setStepDone: memory
000,001 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,001 s: INFO (legacy-0): pass1: finish memory preparing
000,001 s: total 31498 FF, 9248 PI, 153628 Comb, 142 back-to-back FF in PDB
000,001 s: INFO (legacy-0): pass1: finish preparing ucdb, current time is Mon Apr 15 11:32:16 2024, Elapsed time 0.22 real, 1.07 cpu(1u+0.07s), 486%, memory 4298M
000,001 s: INFO (legacy-1): setStepDone: ucdb
000,001 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,001 s: INFO (legacy-0): Total Wire Cap = 0.000000(pf)
000,001 s: INFO (legacy-0): Total Pin Cap = 0.000000(pf)
000,001 s: INFO (legacy-0): Full swfvDB details: #FF = 31498, #PI = 9248, #Gates = 194378
000,002 s: INFO (legacy-54218): The number of comb is 153628, the number of breaking points is 0
000,002 s: INFO (legacy-54218): Find breaking points total time 0.01 real, 0.01 cpu(0.01u+0s), 100%, memory 8826M
000,002 s: INFO (legacy-26751): Created swfvIdset with 194232 fv nets in 0.000000 seconds, 1.253422 bits/id, skipped 146 artificial nets.
000,002 s: INFO (legacy-26752): Created dccMaskFilePass1 in 0.000000 seconds.
000,002 s: INFO (legacy-0): pass1: finish preparing swfvDB, current time is Mon Apr 15 11:32:16 2024, Elapsed time 0.7 real, 1.95 cpu(1.75u+0.2s), 279%, memory 9157M
000,002 s: INFO (legacy-1): setStepDone: swfvDB
000,002 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,002 s: INFO (legacy-0): pass1: finish swfvDB preparing
000,002 s: INFO (legacy-0): pass1: finish preparing clockconfig
000,002 s: INFO (legacy-1): setStepDone: clockconfig
000,002 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,002 s: INFO (legacy-0): pass1: finish clockconfig preparing
000,002 s: INFO (legacy-0): pass1: finish preparing abart
000,002 s: INFO (legacy-1): setStepDone: abart
000,002 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,002 s: INFO (legacy-0): pass1: finish abart preparing
000,002 s: INFO (legacy-1): setStepDone: dccmaskmd5
000,002 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,002 s: INFO (legacy-0): pass1: calculate dccMaskFilePass1 md5sum takes 0.010000 seconds.
000,002 s: INFO (legacy-1): setStepDone: memorymd5
000,002 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,002 s: INFO (legacy-0): pass1: calculate memInfo_pass1 md5sum takes 0.020000 seconds.
000,002 s: INFO (dbgPrep-1052): dbgPrepare done.
000,002 s: INFO (legacy-0): updatePass1Stat status: 1, pid_t: 2594046
* Memory info:
              total     used     free   shared  buffers   cached
Mem  (GB):     1007      420      586        0        0      244
Swap (GB):      127        0      127
* Load info:
  1489 threads
  Load (avg):    1 min (% CPU) |     5 min (% CPU) |    15 min (% CPU)
               2.46 (  3% CPU) |   1.24 (  1% CPU) |   1.29 (  1% CPU)
System info: hsv-sc49 - dbgPrepare - 2594046 2589563 - qtExit - 2024-04-15 11:32:16 - 2.46 3% 1.24 1% 1.29 1% - 1007 420 586 244 127 0 127
Peak usage info for dbgPrepare (pid 2594046, ppid 2589563) on hsv-sc49: CPU usage 0.00, Peak mem (Res 1 GB, Virt 9 GB), freePhyMem 586 GB, totalPhyMem 1007 GB, freeSwap 128 GB, totalSwap 128 GB
DRM memory info: hsv-sc49 - dbgPrepare - 2594046 - 2589563 - unknown unlimited
## dbgPrepare exits at 04/15/2024 11:32:16 Status: 0, PID: 2594046
## dbgPrepare Elapsed time: 0:00:02, CPU time: 0:00:03.09, Memory Usage: 8.9G
## Child Proc. CPU time: 0:00:00.15
