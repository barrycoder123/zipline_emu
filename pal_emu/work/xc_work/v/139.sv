// xc_work/v/139.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/IXCSF.sv:447
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module IXC_OSF1;
// exported object:  (var) pvecEv (R)  
parameter WIDTH = 20;
localparam NMB = 1;
localparam MBSIZE = 1984;
wire  fclk;
bit [19:0] pvecEv ;
// quickturn external_ref pvecEv
wire  osfTbc;
wire  dummyin;
wire  dummyout;
wire  osfTbcB;
// quickturn preserve osfTbcB
// quickturn external_ref osfTbcB
bit [0:0] _zyMBEv ;
// quickturn preserve _zyMBEv
// quickturn no_hardmacro _zyMBEv
// quickturn external_ref _zyMBEv
wire  osfTbcB_x$tbc;
// quickturn preserve osfTbcB_x$tbc
// quickturn external_ref osfTbcB_x$tbc
pulldown (osfTbc);
axis_tbcall  #(1,0,1) tbcx (osfTbcB,104'b01001111010100110100011000110001010111110110011001101100011101010111001101101000010000010110110001101100,osfTbcB_x$tbc,0);

   ixc_osfTbc_buf us(osfTbcB, osfTbc);           


   
   Q_NOT_TOUCH _zzqnthw();

   //quickturn fast_clock fclk
   //quickturn external_ref pvecEv



    IXC_OSF_MB #(20) OMB_0 (pvecEv[19:0], _zyMBEv[0]);
// pragma CVASTRPROP MODULE IXC_OSF1 PROP_IXCOM_MOD TRUE
endmodule

