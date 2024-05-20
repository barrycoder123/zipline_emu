SHELL           = /bin/sh
IXCOM_HOME      = /lan/cva_rel/ixcom23h1/23.03.131.s001
SIMTOOL_HOME    = /grid/avs/install/xcelium/AGILE7/23.09.071
BITS           ?= 64
HWFILES         = -f scripts/kme.vlist
HWTOP           = cr_kme
TBTOP			= kme_tb
DUT_INST 		= kme_dut
PAL_TOP  		= tb_top
DV_ROOT		    = /home/ibarry/Project-Zipline-master/dv
RTL_ROOT        = /home/ibarry/Project-Zipline-master/rtl

VLAN_OPTS       = -sv -vtimescale 1ns/1ns
IXCOM_OPTS      = -ua -timescale 1ps/1ps
RUN_SCRIPT 	    = scripts/run.qel
SIMRUN_OPTS     = +xcprof
SIMULATOR	    = xrun

CLOCK_OPTS = scripts/clockOptions.qel
CLOCK_TOP = my_clks
APB		  = apb_xactor
NX_CDT    = nx_credit_manager
# testname ?= kme_key_type_0
help:
	@echo "make sim_comp     compile for simulation"

################################# EMU ######################################
# simtool home is where the svdpi.h header file is
c_comp_2 : 
	gcc -m64 -c -fPIC -g -DIXCOM_COMPILE \ 
	-I${IXCOM_HOME}/share/uxe/etc/ixcom \
	I${SIMTOOL_HOME}/tools/include \
 	$(DV_ROOT)/KME/run/tb.c && \
	gcc -m64 -shared -o libdpi.so tb.o
c_comp : 
	gcc -shared -o libdpi.so $(DV_ROOT)/KME/run/tb.c -g -fPIC -I$(SIMTOOL_HOME)/tools/include -m64
clk_gen :
	@ixclkgen -input $(CLOCK_OPTS) -o $(CLOCK_TOP).sv -module $(CLOCK_TOP) -timescale 1ps/1ps

vlan : clk_gen
	@vlan -$(BITS) $(VLAN_OPTS) -incdir $(DV_ROOT)/KME/run $(HWFILES) -l vlan.log

ixcom : vlan
	#@ixcom -$(BITS) $(IXCOM_OPTS) -top $(HWTOP) -top $(CLOCK_TOP) -top $(APB) +dut+$(HWTOP)+$(CLOCK_TOP)+$(APB) +xcDesignTop+$(TBTOP).$(DUT_INST)=$(HWTOP) +gfifoDisp+$(TBTOP)+$(APB) -l ixcom.log 
	#@ixcom -$(BITS) $(IXCOM_OPTS) -top $(PAL_TOP) -top $(TBTOP) -top $(CLOCK_TOP) +dut+$(HWTOP)+$(CLOCK_TOP) +gfifoDisp+$(TBTOP) -l ixcom.log 
	@ixcom -$(BITS) $(IXCOM_OPTS) -top $(PAL_TOP) -top $(CLOCK_TOP) +1xua +dut+$(TBTOP)+$(HWTOP)+$(CLOCK_TOP)+$(APB) +gfifoDisp+$(TBTOP)+$(PAL_TOP) -l ixcom.log
	#@ixcom -$(BITS) $(IXCOM_OPTS) -top $(PAL_TOP) -top $(CLOCK_TOP) +dut+$(TBTOP)+$(HWTOP)+$(CLOCK_TOP)+$(APB) +gfifoDisp+$(TBTOP)+$(PAL_TOP) -l ixcom.log

xrun : ixcom 
	@xrun -vtimescale 1ns/1ns -c $(DV_ROOT)/KME/run/$(TBTOP).sv -top $(TBTOP) -dpi -sv_lib libdpi.so -f xc_work/$(SIMULATOR).f -incdir $(RTL_ROOT)/common/include
run : 
	@read -p "Enter the testname to run: " testname && \
	xeDebug --xmsim +xcprof -sv_lib libdpi.so +TESTNAME=$$testname -- $(RUN_SCRIPT)
clean :

test_user_input :
	@echo "testname = $(TESTNAME)"

	
.PHONY: clean 

