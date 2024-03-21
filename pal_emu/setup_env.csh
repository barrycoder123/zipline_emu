#unsetenv CDS_INST_DIR
#Fix PATH
if ( -f ~/.csh_util ) then
    source ~/.csh_util
endif

## path to VXE Z1
## modify accordingly
# VXE for Z1 and WXE for Z2
setenv VXE_HOME /lan/cva_rel/vxe23h1/23.03.131.s001
setenv AXIS_HOME ${VXE_HOME}/tools.lnx86
## end modify accordingly

##path to IXCOM
##Modify accordingly
setenv IXCOM_HOME /lan/cva_rel/ixcom23h1/23.03.131.s001

#path to HDLICE
#Modify accordingly
setenv HDLICE_HOME /lan/cva_rel/ixcom23h1/23.03.131.s001

#path to XCELIUM
## modify accordingly
setenv LDVHOME /grid/avs/install/xcelium/AGILE7/23.09.071
## end modify accordingly

## path to VMANAGER
## modify accordingly
setenv VMGR /grid/avs/install/vmanager/2303/23.03.003
## end modify accordingly

## path to HELIUM
#setenv heliumroot /lan/cva_rel/helium22h2/22.12.s001

##ARM
#setenv ARMFM_TOOLS_ROOT /grid/avs/pkgs/arm-sg/11.17/FastModelsTools_11.17/
#setenv ARMFM_PORTFOLIO_ROOT /grid/avs/pkgs/arm-sg/11.17/FastModelsPortfolio_11.17/


## licenses
## modify accordingly
setenv CDS_LIC_FILE 5280@sjflex1:5280@sjflex2:5280@sjflex3
setenv LM_LICENSE_FILE ${CDS_LIC_FILE}
## end modify accordingly

# indago
setenv INDAGO_ROOT /grid/avs/install/verisium_debug/AGILE/23.09.071

## path allocations
setenv PATH ${AXIS_HOME}/bin:${PATH}
setenv PATH ${IXCOM_HOME}/bin:${PATH}
setenv PATH ${HDLICE_HOME}/bin:${PATH}
setenv PATH ${LDVHOME}/tools/bin/64bit:${PATH}
setenv PATH ${LDVHOME}/tools/systemc/gcc/9.3/bin/:${PATH}
# setenv PATH ${LDVHOME}/tools/systemc/gcc/9.3/bin/:${PATH}
setenv PATH ${VMGR}/bin/:${PATH}
#setenv PATH ${heliumroot}/tools.lnx86/bin/64bit/:$heliumroot/tools/bin:${PATH}
#setenv PATH ${AEWARE_SCRIPT}:${PATH}

setenv LD_LIBRARY_PATH "" 
setenv LD_LIBRARY_PATH ${AXIS_HOME}/lib/64bit:${LD_LIBRARY_PATH}
setenv LD_LIBRARY_PATH ${IXCOM_HOME}/lib/64bit:${LD_LIBRARY_PATH}
setenv LD_LIBRARY_PATH ${HDLICE_HOME}/lib/64bit:${LD_LIBRARY_PATH}
setenv LD_LIBRARY_PATH ${LDVHOME}/tools/lib:${LD_LIBRARY_PATH}
setenv LD_LIBRARY_PATH ${LDVHOME}/tools/inca/lib:${LD_LIBRARY_PATH}
setenv LD_LIBRARY_PATH ${LDVHOME}/tools/systemc/gcc/9.3/install/lib:${LD_LIBRARY_PATH}
setenv LD_LIBRARY_PATH ${VMGR}/tool.lnx86/lib:${LD_LIBRARY_PATH}
#setenv LD_LIBRARY_PATH ${heliumroot}/tools.lnx86/lib:${LD_LIBRARY_PATH}
setenv LD_LIBRARY_PATH /lib:${LD_LIBRARY_PATH}
setenv LD_LIBRARY_PATH /lib64:${LD_LIBRARY_PATH}

#LSF
source /grid/sfi/farm/hsvlsf01/conf/cshrc.lsf

setenv BITS 64

#set the rtl and dv root
setenv RTL_ROOT /home/ibarry/Project-Zipline-master/rtl
setenv DV_ROOT /home/ibarry/Project-Zipline-master/dv
#source ~/VXE_configs/commons.csh
which xeDebug
which ixcom
which hdlice
which xmsim
which imc
#which helium






















