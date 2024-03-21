
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* upf_always_on = 1 *) 
module ixc_sampleLT_8 ( ov, v);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [7:0] ov;
input [7:0] v;
wire fclk;
Q_FDP0UA U0 ( .D(v[0]), .QTFCLK( ), .Q(ov[0]));
Q_FDP0UA U1 ( .D(v[1]), .QTFCLK( ), .Q(ov[1]));
Q_FDP0UA U2 ( .D(v[2]), .QTFCLK( ), .Q(ov[2]));
Q_FDP0UA U3 ( .D(v[3]), .QTFCLK( ), .Q(ov[3]));
Q_FDP0UA U4 ( .D(v[4]), .QTFCLK( ), .Q(ov[4]));
Q_FDP0UA U5 ( .D(v[5]), .QTFCLK( ), .Q(ov[5]));
Q_FDP0UA U6 ( .D(v[6]), .QTFCLK( ), .Q(ov[6]));
Q_FDP0UA U7 ( .D(v[7]), .QTFCLK( ), .Q(ov[7]));
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_sampleLT"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
