client et3lib   -client
call   ldproto  qt_modular -combined PARTITIONS -rename $1
client et3confg -client $* -reserve_epc 63 -compilerEffort 991010 -visionMode FV -num_cycles_per_capture_frame 32 -discard_proto_config
call   et6ctl -ppcPhase2
call   et5nlopt -ppcPhase2 -min_post_merge_job -retiming ON
call   SCsched -PPC -multithreadBoxSched
call   et6xtime
call   et3lconf
call   svproto  $1
