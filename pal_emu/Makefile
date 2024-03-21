SHELL           = /bin/sh
BITS           ?= 64
HWFILES         = -f scripts/kme.vlist
HWTOP           = cr_kme
TBTOP			= kme_tb
DUT_INST 		= kme_dut
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
clk_gen :
	@ixclkgen -input $(CLOCK_OPTS) -o $(CLOCK_TOP).sv -module $(CLOCK_TOP) -timescale 1ps/1ps

vlan : clk_gen
	@vlan -$(BITS) $(VLAN_OPTS) $(HWFILES) -l vlan.log

ixcom : vlan
	#@ixcom -$(BITS) $(IXCOM_OPTS) -top $(HWTOP) -top $(CLOCK_TOP) -top $(APB) +dut+$(HWTOP)+$(CLOCK_TOP)+$(APB) +xcDesignTop+$(TBTOP).$(DUT_INST)=$(HWTOP) +gfifoDisp+$(TBTOP)+$(APB) -l ixcom.log 
	@ixcom -$(BITS) $(IXCOM_OPTS) -top $(TBTOP) -top $(CLOCK_TOP) +dut+$(HWTOP)+$(CLOCK_TOP)+$(APB) +gfifoDisp+$(TBTOP)+$(APB) -l ixcom.log 

xrun : ixcom 
	@xrun -vtimescale 1ns/1ns -c $(DV_ROOT)/KME/run/$(TBTOP).sv -top $(TBTOP) -f xc_work/$(SIMULATOR).f -incdir $(RTL_ROOT)/common/include
run : 
	@read -p "Enter the testname to run: " testname && \
	xeDebug --xmsim +xcprof +TESTNAME=$$testname -- $(RUN_SCRIPT)
clean :

test_user_input :
	@echo "testname is : $(TESTNAME)"
	
.PHONY: clean 

