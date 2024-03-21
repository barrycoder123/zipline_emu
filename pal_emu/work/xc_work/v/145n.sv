// xc_work/v/145n.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/GFIFO.sv:120
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
module IXC_SV_SFIFO(output  [63:0] rdCnt );
wire  scgGFreq;
IXC_SV_SFIFO_VXE_256 I(rdCnt,scgGFreq); 
IXC_SV_SCG_GFIFO_VXE_64 O(scgGFreq); 
endmodule

