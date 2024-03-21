#!/bin/csh -f
unsetenv QTLOG_FILE
cd $1
xeCompile compilePPC.qel > xeCompile_log
echo xeCompile status: $?
echo tmp/mdc.csh finished
echo "NumP=`getconf _NPROCESSORS_ONLN` Load=`cut -d ' ' -f 3  < /proc/loadavg`"
