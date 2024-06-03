
## dbgPrepare starts at 05/21/2024 16:19:00 ibarry V23.03.131.s001, HOST: hsv-sc49, PID: 720257, DISPLAY: sjcvl-ibarry:1
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
Mem  (GB):     1007      423      583        0        0      218
Swap (GB):      127        1      126
* Load info:
  1403 threads
  Load (avg):    1 min (% CPU) |     5 min (% CPU) |    15 min (% CPU)
               2.35 (  2% CPU) |   1.78 (  2% CPU) |   1.65 (  2% CPU)
System info: hsv-sc49 - dbgPrepare - 720257 715534 - qtInit - 2024-05-21 16:19:00 - 2.35 2% 1.78 2% 1.65 2% - 1007 423 583 218 127 1 126
000,000 s: dbgPrepare pre-selected instances top N = 10000
000,000 s: INFO (legacy-39111): Opening PDB hdldb xcva_top (of=0).
000,000 s: INFO (legacy-0): 47849 critical net names have been restored: elapsed time 0 sec
000,000 s: INFO (legacy-0): strtab(segs and data) has been restored: elapsed time 0 sec
000,000 s: INFO (legacy-0): sigmap has been restored: elapsed time 0 sec
000,001 s: INFO (legacy-0): 1439 cells have been restored: elapsed time 1 sec
000,001 s: INFO (legacy-0): 546222 smTrNets have been restored: elapsed time 0 sec
000,001 s: INFO (legacy-0): 530301 smTrPrims have been restored: elapsed time 0 sec
000,001 s: INFO (legacy-0): flat-conns have been restored: elapsed time 0 sec
000,001 s: INFO (legacy-0): 1307961 synonyms have been setup: elapsed time 0 sec
000,001 s: Restoring PDB ./PDB/hdldb.xcva_top.rt: elapsed time 1 sec.
000,001 s: INFO (legacy-0): smNetIDs have been setup: elapsed time 0 sec
000,001 s: INFO (legacy-0): CRT-FULL has been restored: elapsed time 0 sec
000,001 s: ConstructInfoFile 117 cells (2907 constructs) which has 2706 records 72 arrays 155403 name size.
000,001 s: INFO (legacy-45793): Collected construct info.
000,001 s: WARNING (legacy-55183): Mode 'FV' detected, dsnGen only support FV and CP mode.
000,001 s: INFO (legacy-0): pass1: start to prepare memory,current time is Tue May 21 16:19:02 2024
000,001 s: INFO (legacy-0): pass1: start to prepare ucdb,current time is Tue May 21 16:19:02 2024
000,001 s: INFO (legacy-0): pass1: start to prepare swfv, current time is Tue May 21 16:19:02 2024 
000,001 s: INFO (legacy-0): Reading BIN ucdb
000,001 s: building swfv DB...
000,001 s: INFO (legacy-0): #PPC partitions = 1
000,001 s: INFO (legacy-0): maxPDBnets 546223 #FD01s 100965 #PIprobes 15644 #FFprobes 65072
000,001 s: INFO (legacy-73921): Created sourceless net sidefile, total nets 2 (#3:1635, #2:13148, #1:13140, #0:453191, 546223)
000,001 s: INFO (legacy-0): pass1: finish preparing memory, current time is Tue May 21 16:19:02 2024, Elapsed time 0.19 real, 2.28 cpu(2.16u+0.12s), 1200%, memory 5423M
000,001 s: INFO (legacy-1): setStepDone: memory
000,001 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,001 s: INFO (legacy-0): pass1: finish memory preparing
000,001 s: INFO (legacy-0): pass1: finish preparing ucdb, current time is Tue May 21 16:19:02 2024, Elapsed time 0.26 real, 2.49 cpu(2.36u+0.13s), 958%, memory 5423M
000,001 s: INFO (legacy-1): setStepDone: ucdb
000,001 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,002 s: total 77574 FF, 15623 PI, 401711 Comb, 1635 back-to-back FF in PDB
000,002 s: INFO (legacy-0): Total Wire Cap = 0.000000(pf)
000,002 s: INFO (legacy-0): Total Pin Cap = 0.000000(pf)
000,002 s: INFO (legacy-0): Full swfvDB details: #FF = 77574, #PI = 15623, #Gates = 494912
000,002 s: INFO (legacy-54218): The number of comb is 401711, the number of breaking points is 0
000,002 s: INFO (legacy-54218): Find breaking points total time 0.03 real, 0.06 cpu(0.05u+0.01s), 200%, memory 9093M
000,002 s: INFO (legacy-26752): Created dccMaskFilePass1 in 0.000000 seconds.
000,002 s: INFO (legacy-26751): Created swfvIdset with 493273 fv nets in 0.000000 seconds, 1.107376 bits/id, skipped 1639 artificial nets.
000,002 s: INFO (legacy-0): pass1: finish preparing swfvDB, current time is Tue May 21 16:19:03 2024, Elapsed time 1.16 real, 4.92 cpu(4.57u+0.35s), 424%, memory 9404M
000,003 s: INFO (legacy-1): setStepDone: swfvDB
000,003 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,003 s: INFO (legacy-0): pass1: finish swfvDB preparing
000,003 s: INFO (legacy-0): pass1: finish preparing clockconfig
000,003 s: INFO (legacy-1): setStepDone: clockconfig
000,003 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,003 s: INFO (legacy-0): pass1: finish clockconfig preparing
000,003 s: INFO (legacy-0): pass1: finish preparing abart
000,003 s: INFO (legacy-1): setStepDone: abart
000,003 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,003 s: INFO (legacy-0): pass1: finish abart preparing
000,003 s: INFO (legacy-1): setStepDone: dccmaskmd5
000,003 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,003 s: INFO (legacy-0): pass1: calculate dccMaskFilePass1 md5sum takes 0.030000 seconds.
000,003 s: INFO (legacy-1): setStepDone: memorymd5
000,003 s: INFO (legacy-1): Start to write back to dbgPrepStatus
000,003 s: INFO (legacy-0): pass1: calculate memInfo_pass1 md5sum takes 0.010000 seconds.
000,003 s: INFO (dbgPrep-1052): dbgPrepare done.
000,003 s: INFO (legacy-0): updatePass1Stat status: 1, pid_t: 720257
* Memory info:
              total     used     free   shared  buffers   cached
Mem  (GB):     1007      424      582        0        0      218
Swap (GB):      127        1      126
* Load info:
  1439 threads
  Load (avg):    1 min (% CPU) |     5 min (% CPU) |    15 min (% CPU)
               2.48 (  3% CPU) |   1.82 (  2% CPU) |   1.66 (  2% CPU)
System info: hsv-sc49 - dbgPrepare - 720257 715534 - qtExit - 2024-05-21 16:19:03 - 2.48 3% 1.82 2% 1.66 2% - 1007 424 582 218 127 1 126
Peak usage info for dbgPrepare (pid 720257, ppid 715534) on hsv-sc49: CPU usage 0.00, Peak mem (Res 1 GB, Virt 9 GB), freePhyMem 583 GB, totalPhyMem 1007 GB, freeSwap 127 GB, totalSwap 128 GB
DRM memory info: hsv-sc49 - dbgPrepare - 720257 - 715534 - unknown unlimited
## dbgPrepare exits at 05/21/2024 16:19:03 Status: 0, PID: 720257
## dbgPrepare Elapsed time: 0:00:03, CPU time: 0:00:06.75, Memory Usage: 9.2G
## Child Proc. CPU time: 0:00:00.15
