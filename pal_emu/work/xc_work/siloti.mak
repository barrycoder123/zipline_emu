VERICOM_OPTIONS= -rcFile ./xc_work/siloti.rc -comment_transoff_regions -quiet -silent
VHDLCOM_OPTIONS= -rcFile ./xc_work/siloti.rc -quiet -silent
XHOME= /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86
compile_siloti: siloti_pkg siloti_cnt
	vericom $(VERICOM_OPTIONS) +define+SILOTI -sv -lib xc_ncwork $(XHOME)/etc/ixcom/axBMod.v
	vericom $(VERICOM_OPTIONS) +define+SILOTI -sv -lib xc_ncwork $(XHOME)/etc/ixcom/axEMod.v
	vhdlcom $(VHDLCOM_OPTIONS) -lib AXIS $(XHOME)/packages/src/AXIS/axis.vhd
	vhdlcom $(VHDLCOM_OPTIONS) -lib NCUTILS $(XHOME)/packages/src/NCUTILS/ncutilities.vhd
	vhdlcom $(VHDLCOM_OPTIONS) -lib XMUTILS $(XHOME)/packages/src/XMUTILS/xmutilities.vhd
	vericom $(VERICOM_OPTIONS) -2001 -lib xc_ncwork $(XHOME)/etc/ixcom/siloti_stubs.v
	vericom $(VERICOM_OPTIONS) -lib xc_ncwork -sv -f xc_work/v/vericom-xc_ncwork-1-systemverilog.f
	vericom $(VERICOM_OPTIONS) -lib xc_ncwork -sv -f xc_work/v/vericom-xc_ncwork-16-systemverilog.f
	vericom $(VERICOM_OPTIONS) -lib xc_ncwork -sv -f xc_work/v/vericom-xc_ncwork-215-systemverilog.f
	vericom $(VERICOM_OPTIONS) -lib IXCOM_TEMP_LIBRARY -2001 -f xc_work/v/vericom-IXCOM_TEMP_LIBRARY-v2001.f
	vericom $(VERICOM_OPTIONS) -lib IXCOM_TEMP_LIBRARY -sv -f xc_work/v/vericom-IXCOM_TEMP_LIBRARY-3-systemverilog.f

xc_pkg:
	echo Compiling packages


xcva_pkg:
	echo Compiling packages


siloti_pkg:
	@echo Compiling packages

xc_cnt:
	echo Compiling contexts


xcva_cnt:
	echo Compiling contexts


siloti_cnt:
	@echo Compiling contexts

clean: 
	@rm -rf vericomLog vhdlcomLog silotiLog ./xc_work/novaslibs/xc_ncwork.lib++ ./xc_work/novaslibs/AXIS.lib++ ./xc_work/novaslibs/work.lib++ ./xc_work/novaslibs/NCUTILS.lib++./xc_work/novaslibs/XMUTILS.lib++
run_siloti: 
	siloti -rcFile ./xc_work/siloti.rc -nologo -cont_ba_err -nclib -sigexp -de -verdi -top "kme_tb my_clks IXCOM_TEMP_LIBRARY.IXC_GFIFO "
