
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* upf_always_on = 1 *) 
module ixc_sampleLT_20 ( ov, v);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output [19:0] ov;
input [19:0] v;
wire fclk;
Q_FDP0UA U0 ( .D(v[0]), .QTFCLK( ), .Q(ov[0]));
Q_FDP0UA U1 ( .D(v[1]), .QTFCLK( ), .Q(ov[1]));
Q_FDP0UA U2 ( .D(v[2]), .QTFCLK( ), .Q(ov[2]));
Q_FDP0UA U3 ( .D(v[3]), .QTFCLK( ), .Q(ov[3]));
Q_FDP0UA U4 ( .D(v[4]), .QTFCLK( ), .Q(ov[4]));
Q_FDP0UA U5 ( .D(v[5]), .QTFCLK( ), .Q(ov[5]));
Q_FDP0UA U6 ( .D(v[6]), .QTFCLK( ), .Q(ov[6]));
Q_FDP0UA U7 ( .D(v[7]), .QTFCLK( ), .Q(ov[7]));
Q_FDP0UA U8 ( .D(v[8]), .QTFCLK( ), .Q(ov[8]));
Q_FDP0UA U9 ( .D(v[9]), .QTFCLK( ), .Q(ov[9]));
Q_FDP0UA U10 ( .D(v[10]), .QTFCLK( ), .Q(ov[10]));
Q_FDP0UA U11 ( .D(v[11]), .QTFCLK( ), .Q(ov[11]));
Q_FDP0UA U12 ( .D(v[12]), .QTFCLK( ), .Q(ov[12]));
Q_FDP0UA U13 ( .D(v[13]), .QTFCLK( ), .Q(ov[13]));
Q_FDP0UA U14 ( .D(v[14]), .QTFCLK( ), .Q(ov[14]));
Q_FDP0UA U15 ( .D(v[15]), .QTFCLK( ), .Q(ov[15]));
Q_FDP0UA U16 ( .D(v[16]), .QTFCLK( ), .Q(ov[16]));
Q_FDP0UA U17 ( .D(v[17]), .QTFCLK( ), .Q(ov[17]));
Q_FDP0UA U18 ( .D(v[18]), .QTFCLK( ), .Q(ov[18]));
Q_FDP0UA U19 ( .D(v[19]), .QTFCLK( ), .Q(ov[19]));
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_sampleLT"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
