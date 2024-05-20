// xc_work/v/139n.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/IXCSF.sv:318
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module IXC_ISF;
// exported object:  (var) pvec (R)  
// exported object:  (var) pvec (R)  
parameter WIDTH = 1;
localparam PIOWIDTH = 1;
localparam EVMEMW = 512;
localparam NBLK = 1;
localparam NBLK1 = 0;
localparam MDEP = 1;
wire  fclk;
wire  [0:0] pvec ;
bit [0:0] pvecEv ;
bit [63:0] pvecEvD ;
bit [0:0] _zyevPio ;
wire  isfWait;
bit isfBusy;
bit isfBusyD;
bit [8:0] rptr ;
bit mark;
bit markN;
bit nd;
localparam ST_IDLE = 0;
localparam ST_ACTIVE = 1;
localparam ST_MRD = 2;
bit [1:0] state ;
wire  [0:0] _zy__zyevPio_x$ed_1 ;
assign  isfWait = (((nd | isfBusy) | isfBusyD) ? 1'b1 : 1'bz);
assign  pvec[0:0] = _zy__zyevPio_x$ed_1[0:0];
axPIBMod #(1 )_zy_pimod__2(_zy__zyevPio_x$ed_1,_zyevPio); 
initial 
 $import_rtl_signals;
endmodule

