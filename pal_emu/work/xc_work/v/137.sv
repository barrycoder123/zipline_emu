// xc_work/v/137.sv
// /lan/cva_rel/ixcom23h1/23.03.131.s001/tools.lnx86/etc/ixcom/IXCSF.sv:197
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
 (* upf_always_on = 1, _2_state_ = 1 *) module IXC_OSF;
// exported object:  (var) pvecEv (R)  
// exported object:  (var) pvecEv (R)  
parameter WIDTH = 1;
localparam PIOWIDTH = 1;
localparam NMB = 0;
localparam MBSIZE = 1984;
wire  fclk;
bit [0:0] pvecEv ;
// quickturn external_ref pvecEv
wire  [0:0] _zyevPio ;
// quickturn preserve _zyevPio
// quickturn no_hardmacro _zyevPio
// quickturn external_ref _zyevPio
wire  _zyPOEv;
// quickturn preserve _zyPOEv
// quickturn external_ref _zyPOEv
wire  osfTbc;
// quickturn preserve osfTbc
// quickturn external_ref osfTbc
wire  dummyin;
wire  dummyout;
wire  osfTbc_x$tbc;
// quickturn preserve osfTbc_x$tbc
// quickturn external_ref osfTbc_x$tbc
assign  _zyPOEv = ( | _zyevPio );
pulldown (osfTbc);
axis_tbcall  #(0,0,1) tbcx (osfTbc,96'b010011110101001101000110010111110110011001101100011101010111001101101000010000010110110001101100,osfTbc_x$tbc,0);
ixc_assign  #(1) _zz_strnp_0 (_zyevPio,pvecEv);


   
   Q_NOT_TOUCH _zzqnthw();
   
   //quickturn fast_clock fclk
   //quickturn external_ref _zyevPio
   //quickturn external_ref pvecEv


// pragma CVASTRPROP MODULE IXC_OSF PROP_IXCOM_MOD TRUE
endmodule

