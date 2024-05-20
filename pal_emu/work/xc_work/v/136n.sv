// xc_work/v/136n.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/GFIFO.sv:46
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module IXC_GFIFO;
wire  [63:0] rdCnt ;
IXC_OSF OSF(); 
IXC_ISF ISF(); 
IXC_OSF1 OSF1(); 
IXC_PTXTOP PTXTOP(); 
ixcEcmHold HOLDTOP(); 
ixcEcmHoldOtb DUMMY(); 
IXC_SV_GFIFO O(rdCnt); 
IXC_SV_SFIFO I(rdCnt); 
gfifo_conns _zyGfifo_gfifo_conns();
sfifo_conns _zyGfifo_sfifo_conns();

endmodule

