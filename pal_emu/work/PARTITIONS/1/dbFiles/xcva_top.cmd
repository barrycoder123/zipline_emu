client et3lib   -client
call   ldproto  qt2dadb -modular -rename $1
client et3confg -client $* -seed 271448396 -reserve_epc 63 -compilerEffort 991010 -visionMode FV -num_cycles_per_capture_frame 32
call   et6ctl
call   et5nlopt -retiming ON
call   et3critpath
call   et5mpart -memTransform
call   etupart -s 271448396
call   svproto qt_modular  -remove_CMIO -optimize
