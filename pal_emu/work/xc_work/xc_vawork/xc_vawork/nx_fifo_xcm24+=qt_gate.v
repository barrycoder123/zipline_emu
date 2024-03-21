
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_fifo_xcm24 ( empty, full, underflow, overflow, used_slots, free_slots, 
	rdata, clk, rst_n, wen, ren, clear, wdata);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output empty;
output full;
output underflow;
output overflow;
output [2:0] used_slots;
output [2:0] free_slots;
output [0:0] rdata;
input clk;
input rst_n;
input wen;
input ren;
input clear;
input [0:0] wdata;
wire _zy_simnet_underflow_0_w$;
wire _zy_simnet_overflow_1_w$;
wire \depth_n._zy_simnet_overflow_3_w$ ;
wire \depth_n._zy_simnet_underflow_2_w$ ;
wire [1:0] \depth_n.wptr ;
wire [1:0] \depth_n.rptr ;
supply0 n14;
ixc_assign _zz_strnp_3 ( _zy_simnet_overflow_1_w$, overflow);
ixc_assign _zz_strnp_2 ( _zy_simnet_underflow_0_w$, underflow);
Q_MX04 U2 ( .S0(\depth_n.rptr [0]), .S1(\depth_n.rptr [1]), .A0(\depth_n.r_data[0][0] ), .A1(\depth_n.r_data[1][0] ), .A2(\depth_n.r_data[2][0] ), .A3(\depth_n.r_data[3][0] ), .Z(n1));
Q_AN02 U3 ( .A0(n6), .A1(n12), .Z(n2));
Q_AN02 U4 ( .A0(n9), .A1(n10), .Z(n3));
Q_AN02 U5 ( .A0(n9), .A1(n8), .Z(n4));
Q_AN02 U6 ( .A0(n7), .A1(n10), .Z(n5));
Q_NR02 U7 ( .A0(n9), .A1(n10), .Z(n6));
Q_INV U8 ( .A(n9), .Z(n7));
Q_INV U9 ( .A(n10), .Z(n8));
Q_AN02 U10 ( .A0(\depth_n.wptr [1]), .A1(n12), .Z(n9));
Q_AN02 U11 ( .A0(\depth_n.wptr [0]), .A1(n12), .Z(n10));
Q_INV U12 ( .A(empty), .Z(n11));
Q_AN02 U13 ( .A0(n11), .A1(n1), .Z(rdata[0]));
Q_INV U14 ( .A(full), .Z(n13));
Q_AN02 U15 ( .A0(wen), .A1(n13), .Z(n12));
nx_fifo_ctrl_xcm36 \depth_n.fifo_ctrl ( .empty( empty), .full( full), 
	.used_slots( used_slots[2:0]), .free_slots( free_slots[2:0]), 
	.rptr( \depth_n.rptr [1:0]), .wptr( \depth_n.wptr [1:0]), 
	.underflow( \depth_n._zy_simnet_underflow_2_w$ ), .overflow( 
	\depth_n._zy_simnet_overflow_3_w$ ), .clk( clk), .rst_n( rst_n), 
	.wen( wen), .ren( ren), .clear( clear));
ixc_assign \depth_n._zz_strnp_1 ( overflow, 
	\depth_n._zy_simnet_overflow_3_w$ );
ixc_assign \depth_n._zz_strnp_0 ( underflow, 
	\depth_n._zy_simnet_underflow_2_w$ );
Q_FDP4EP \depth_n.r_data_REG[0][0] ( .CK(clk), .CE(n2), .R(n14), .D(wdata[0]), .Q(\depth_n.r_data[0][0] ));
Q_FDP4EP \depth_n.r_data_REG[1][0] ( .CK(clk), .CE(n5), .R(n14), .D(wdata[0]), .Q(\depth_n.r_data[1][0] ));
Q_FDP4EP \depth_n.r_data_REG[2][0] ( .CK(clk), .CE(n4), .R(n14), .D(wdata[0]), .Q(\depth_n.r_data[2][0] ));
Q_FDP4EP \depth_n.r_data_REG[3][0] ( .CK(clk), .CE(n3), .R(n14), .D(wdata[0]), .Q(\depth_n.r_data[3][0] ));
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "\depth_n.r_data  1 0 0 3 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 depth_n  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n.genblk1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n"
endmodule
