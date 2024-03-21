
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_interface_monitor_pipe ( .ob_in_mod( {\ob_in_mod.tready } ), .ob_out( {
	\ob_out.tvalid , \ob_out.tlast , \ob_out.tid [0], \ob_out.tstrb [7], 
	\ob_out.tstrb [6], \ob_out.tstrb [5], \ob_out.tstrb [4], 
	\ob_out.tstrb [3], \ob_out.tstrb [2], \ob_out.tstrb [1], 
	\ob_out.tstrb [0], \ob_out.tuser [7], \ob_out.tuser [6], 
	\ob_out.tuser [5], \ob_out.tuser [4], \ob_out.tuser [3], 
	\ob_out.tuser [2], \ob_out.tuser [1], \ob_out.tuser [0], 
	\ob_out.tdata [63], \ob_out.tdata [62], \ob_out.tdata [61], 
	\ob_out.tdata [60], \ob_out.tdata [59], \ob_out.tdata [58], 
	\ob_out.tdata [57], \ob_out.tdata [56], \ob_out.tdata [55], 
	\ob_out.tdata [54], \ob_out.tdata [53], \ob_out.tdata [52], 
	\ob_out.tdata [51], \ob_out.tdata [50], \ob_out.tdata [49], 
	\ob_out.tdata [48], \ob_out.tdata [47], \ob_out.tdata [46], 
	\ob_out.tdata [45], \ob_out.tdata [44], \ob_out.tdata [43], 
	\ob_out.tdata [42], \ob_out.tdata [41], \ob_out.tdata [40], 
	\ob_out.tdata [39], \ob_out.tdata [38], \ob_out.tdata [37], 
	\ob_out.tdata [36], \ob_out.tdata [35], \ob_out.tdata [34], 
	\ob_out.tdata [33], \ob_out.tdata [32], \ob_out.tdata [31], 
	\ob_out.tdata [30], \ob_out.tdata [29], \ob_out.tdata [28], 
	\ob_out.tdata [27], \ob_out.tdata [26], \ob_out.tdata [25], 
	\ob_out.tdata [24], \ob_out.tdata [23], \ob_out.tdata [22], 
	\ob_out.tdata [21], \ob_out.tdata [20], \ob_out.tdata [19], 
	\ob_out.tdata [18], \ob_out.tdata [17], \ob_out.tdata [16], 
	\ob_out.tdata [15], \ob_out.tdata [14], \ob_out.tdata [13], 
	\ob_out.tdata [12], \ob_out.tdata [11], \ob_out.tdata [10], 
	\ob_out.tdata [9], \ob_out.tdata [8], \ob_out.tdata [7], 
	\ob_out.tdata [6], \ob_out.tdata [5], \ob_out.tdata [4], 
	\ob_out.tdata [3], \ob_out.tdata [2], \ob_out.tdata [1], 
	\ob_out.tdata [0]} ), im_vld, clk, rst_n, .ob_out_pre( {
	\ob_out_pre.tvalid , \ob_out_pre.tlast , \ob_out_pre.tid [0], 
	\ob_out_pre.tstrb [7], \ob_out_pre.tstrb [6], \ob_out_pre.tstrb [5], 
	\ob_out_pre.tstrb [4], \ob_out_pre.tstrb [3], \ob_out_pre.tstrb [2], 
	\ob_out_pre.tstrb [1], \ob_out_pre.tstrb [0], \ob_out_pre.tuser [7], 
	\ob_out_pre.tuser [6], \ob_out_pre.tuser [5], \ob_out_pre.tuser [4], 
	\ob_out_pre.tuser [3], \ob_out_pre.tuser [2], \ob_out_pre.tuser [1], 
	\ob_out_pre.tuser [0], \ob_out_pre.tdata [63], 
	\ob_out_pre.tdata [62], \ob_out_pre.tdata [61], 
	\ob_out_pre.tdata [60], \ob_out_pre.tdata [59], 
	\ob_out_pre.tdata [58], \ob_out_pre.tdata [57], 
	\ob_out_pre.tdata [56], \ob_out_pre.tdata [55], 
	\ob_out_pre.tdata [54], \ob_out_pre.tdata [53], 
	\ob_out_pre.tdata [52], \ob_out_pre.tdata [51], 
	\ob_out_pre.tdata [50], \ob_out_pre.tdata [49], 
	\ob_out_pre.tdata [48], \ob_out_pre.tdata [47], 
	\ob_out_pre.tdata [46], \ob_out_pre.tdata [45], 
	\ob_out_pre.tdata [44], \ob_out_pre.tdata [43], 
	\ob_out_pre.tdata [42], \ob_out_pre.tdata [41], 
	\ob_out_pre.tdata [40], \ob_out_pre.tdata [39], 
	\ob_out_pre.tdata [38], \ob_out_pre.tdata [37], 
	\ob_out_pre.tdata [36], \ob_out_pre.tdata [35], 
	\ob_out_pre.tdata [34], \ob_out_pre.tdata [33], 
	\ob_out_pre.tdata [32], \ob_out_pre.tdata [31], 
	\ob_out_pre.tdata [30], \ob_out_pre.tdata [29], 
	\ob_out_pre.tdata [28], \ob_out_pre.tdata [27], 
	\ob_out_pre.tdata [26], \ob_out_pre.tdata [25], 
	\ob_out_pre.tdata [24], \ob_out_pre.tdata [23], 
	\ob_out_pre.tdata [22], \ob_out_pre.tdata [21], 
	\ob_out_pre.tdata [20], \ob_out_pre.tdata [19], 
	\ob_out_pre.tdata [18], \ob_out_pre.tdata [17], 
	\ob_out_pre.tdata [16], \ob_out_pre.tdata [15], 
	\ob_out_pre.tdata [14], \ob_out_pre.tdata [13], 
	\ob_out_pre.tdata [12], \ob_out_pre.tdata [11], 
	\ob_out_pre.tdata [10], \ob_out_pre.tdata [9], \ob_out_pre.tdata [8], 
	\ob_out_pre.tdata [7], \ob_out_pre.tdata [6], \ob_out_pre.tdata [5], 
	\ob_out_pre.tdata [4], \ob_out_pre.tdata [3], \ob_out_pre.tdata [2], 
	\ob_out_pre.tdata [1], \ob_out_pre.tdata [0]} ), .ob_in( {
	\ob_in.tready } ), im_rdy);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output \ob_in_mod.tready ;
wire [0:0] ob_in_mod;
output \ob_out.tvalid ;
output \ob_out.tlast ;
output [0:0] \ob_out.tid ;
output [7:0] \ob_out.tstrb ;
output [7:0] \ob_out.tuser ;
output [63:0] \ob_out.tdata ;
wire [82:0] ob_out;
output im_vld;
input clk;
input rst_n;
input \ob_out_pre.tvalid ;
input \ob_out_pre.tlast ;
input [0:0] \ob_out_pre.tid ;
input [7:0] \ob_out_pre.tstrb ;
input [7:0] \ob_out_pre.tuser ;
input [63:0] \ob_out_pre.tdata ;
wire [82:0] ob_out_pre;
input \ob_in.tready ;
wire [0:0] ob_in;
input im_rdy;
wire _zy_simnet_ob_in_mod_0_w$;
wire [0:82] _zy_simnet_ob_out_1_w$;
wire _zy_simnet_im_vld_2_w$;
wire [1:0] state;
wire [1:0] state_last;
wire im_rdy_dly;
wire [1:0] \state.state ;
wire [1:0] \state_last.state ;
tran (ob_in_mod[0], \ob_in_mod.tready );
tran (ob_out[82], \ob_out.tvalid );
tran (ob_out[81], \ob_out.tlast );
tran (ob_out[80], \ob_out.tid [0]);
tran (ob_out[79], \ob_out.tstrb [7]);
tran (ob_out[78], \ob_out.tstrb [6]);
tran (ob_out[77], \ob_out.tstrb [5]);
tran (ob_out[76], \ob_out.tstrb [4]);
tran (ob_out[75], \ob_out.tstrb [3]);
tran (ob_out[74], \ob_out.tstrb [2]);
tran (ob_out[73], \ob_out.tstrb [1]);
tran (ob_out[72], \ob_out.tstrb [0]);
tran (ob_out[71], \ob_out.tuser [7]);
tran (ob_out[70], \ob_out.tuser [6]);
tran (ob_out[69], \ob_out.tuser [5]);
tran (ob_out[68], \ob_out.tuser [4]);
tran (ob_out[67], \ob_out.tuser [3]);
tran (ob_out[66], \ob_out.tuser [2]);
tran (ob_out[65], \ob_out.tuser [1]);
tran (ob_out[64], \ob_out.tuser [0]);
tran (ob_out[63], \ob_out.tdata [63]);
tran (ob_out[62], \ob_out.tdata [62]);
tran (ob_out[61], \ob_out.tdata [61]);
tran (ob_out[60], \ob_out.tdata [60]);
tran (ob_out[59], \ob_out.tdata [59]);
tran (ob_out[58], \ob_out.tdata [58]);
tran (ob_out[57], \ob_out.tdata [57]);
tran (ob_out[56], \ob_out.tdata [56]);
tran (ob_out[55], \ob_out.tdata [55]);
tran (ob_out[54], \ob_out.tdata [54]);
tran (ob_out[53], \ob_out.tdata [53]);
tran (ob_out[52], \ob_out.tdata [52]);
tran (ob_out[51], \ob_out.tdata [51]);
tran (ob_out[50], \ob_out.tdata [50]);
tran (ob_out[49], \ob_out.tdata [49]);
tran (ob_out[48], \ob_out.tdata [48]);
tran (ob_out[47], \ob_out.tdata [47]);
tran (ob_out[46], \ob_out.tdata [46]);
tran (ob_out[45], \ob_out.tdata [45]);
tran (ob_out[44], \ob_out.tdata [44]);
tran (ob_out[43], \ob_out.tdata [43]);
tran (ob_out[42], \ob_out.tdata [42]);
tran (ob_out[41], \ob_out.tdata [41]);
tran (ob_out[40], \ob_out.tdata [40]);
tran (ob_out[39], \ob_out.tdata [39]);
tran (ob_out[38], \ob_out.tdata [38]);
tran (ob_out[37], \ob_out.tdata [37]);
tran (ob_out[36], \ob_out.tdata [36]);
tran (ob_out[35], \ob_out.tdata [35]);
tran (ob_out[34], \ob_out.tdata [34]);
tran (ob_out[33], \ob_out.tdata [33]);
tran (ob_out[32], \ob_out.tdata [32]);
tran (ob_out[31], \ob_out.tdata [31]);
tran (ob_out[30], \ob_out.tdata [30]);
tran (ob_out[29], \ob_out.tdata [29]);
tran (ob_out[28], \ob_out.tdata [28]);
tran (ob_out[27], \ob_out.tdata [27]);
tran (ob_out[26], \ob_out.tdata [26]);
tran (ob_out[25], \ob_out.tdata [25]);
tran (ob_out[24], \ob_out.tdata [24]);
tran (ob_out[23], \ob_out.tdata [23]);
tran (ob_out[22], \ob_out.tdata [22]);
tran (ob_out[21], \ob_out.tdata [21]);
tran (ob_out[20], \ob_out.tdata [20]);
tran (ob_out[19], \ob_out.tdata [19]);
tran (ob_out[18], \ob_out.tdata [18]);
tran (ob_out[17], \ob_out.tdata [17]);
tran (ob_out[16], \ob_out.tdata [16]);
tran (ob_out[15], \ob_out.tdata [15]);
tran (ob_out[14], \ob_out.tdata [14]);
tran (ob_out[13], \ob_out.tdata [13]);
tran (ob_out[12], \ob_out.tdata [12]);
tran (ob_out[11], \ob_out.tdata [11]);
tran (ob_out[10], \ob_out.tdata [10]);
tran (ob_out[9], \ob_out.tdata [9]);
tran (ob_out[8], \ob_out.tdata [8]);
tran (ob_out[7], \ob_out.tdata [7]);
tran (ob_out[6], \ob_out.tdata [6]);
tran (ob_out[5], \ob_out.tdata [5]);
tran (ob_out[4], \ob_out.tdata [4]);
tran (ob_out[3], \ob_out.tdata [3]);
tran (ob_out[2], \ob_out.tdata [2]);
tran (ob_out[1], \ob_out.tdata [1]);
tran (ob_out[0], \ob_out.tdata [0]);
tran (ob_out_pre[82], \ob_out_pre.tvalid );
tran (ob_out_pre[81], \ob_out_pre.tlast );
tran (ob_out_pre[80], \ob_out_pre.tid [0]);
tran (ob_out_pre[79], \ob_out_pre.tstrb [7]);
tran (ob_out_pre[78], \ob_out_pre.tstrb [6]);
tran (ob_out_pre[77], \ob_out_pre.tstrb [5]);
tran (ob_out_pre[76], \ob_out_pre.tstrb [4]);
tran (ob_out_pre[75], \ob_out_pre.tstrb [3]);
tran (ob_out_pre[74], \ob_out_pre.tstrb [2]);
tran (ob_out_pre[73], \ob_out_pre.tstrb [1]);
tran (ob_out_pre[72], \ob_out_pre.tstrb [0]);
tran (ob_out_pre[71], \ob_out_pre.tuser [7]);
tran (ob_out_pre[70], \ob_out_pre.tuser [6]);
tran (ob_out_pre[69], \ob_out_pre.tuser [5]);
tran (ob_out_pre[68], \ob_out_pre.tuser [4]);
tran (ob_out_pre[67], \ob_out_pre.tuser [3]);
tran (ob_out_pre[66], \ob_out_pre.tuser [2]);
tran (ob_out_pre[65], \ob_out_pre.tuser [1]);
tran (ob_out_pre[64], \ob_out_pre.tuser [0]);
tran (ob_out_pre[63], \ob_out_pre.tdata [63]);
tran (ob_out_pre[62], \ob_out_pre.tdata [62]);
tran (ob_out_pre[61], \ob_out_pre.tdata [61]);
tran (ob_out_pre[60], \ob_out_pre.tdata [60]);
tran (ob_out_pre[59], \ob_out_pre.tdata [59]);
tran (ob_out_pre[58], \ob_out_pre.tdata [58]);
tran (ob_out_pre[57], \ob_out_pre.tdata [57]);
tran (ob_out_pre[56], \ob_out_pre.tdata [56]);
tran (ob_out_pre[55], \ob_out_pre.tdata [55]);
tran (ob_out_pre[54], \ob_out_pre.tdata [54]);
tran (ob_out_pre[53], \ob_out_pre.tdata [53]);
tran (ob_out_pre[52], \ob_out_pre.tdata [52]);
tran (ob_out_pre[51], \ob_out_pre.tdata [51]);
tran (ob_out_pre[50], \ob_out_pre.tdata [50]);
tran (ob_out_pre[49], \ob_out_pre.tdata [49]);
tran (ob_out_pre[48], \ob_out_pre.tdata [48]);
tran (ob_out_pre[47], \ob_out_pre.tdata [47]);
tran (ob_out_pre[46], \ob_out_pre.tdata [46]);
tran (ob_out_pre[45], \ob_out_pre.tdata [45]);
tran (ob_out_pre[44], \ob_out_pre.tdata [44]);
tran (ob_out_pre[43], \ob_out_pre.tdata [43]);
tran (ob_out_pre[42], \ob_out_pre.tdata [42]);
tran (ob_out_pre[41], \ob_out_pre.tdata [41]);
tran (ob_out_pre[40], \ob_out_pre.tdata [40]);
tran (ob_out_pre[39], \ob_out_pre.tdata [39]);
tran (ob_out_pre[38], \ob_out_pre.tdata [38]);
tran (ob_out_pre[37], \ob_out_pre.tdata [37]);
tran (ob_out_pre[36], \ob_out_pre.tdata [36]);
tran (ob_out_pre[35], \ob_out_pre.tdata [35]);
tran (ob_out_pre[34], \ob_out_pre.tdata [34]);
tran (ob_out_pre[33], \ob_out_pre.tdata [33]);
tran (ob_out_pre[32], \ob_out_pre.tdata [32]);
tran (ob_out_pre[31], \ob_out_pre.tdata [31]);
tran (ob_out_pre[30], \ob_out_pre.tdata [30]);
tran (ob_out_pre[29], \ob_out_pre.tdata [29]);
tran (ob_out_pre[28], \ob_out_pre.tdata [28]);
tran (ob_out_pre[27], \ob_out_pre.tdata [27]);
tran (ob_out_pre[26], \ob_out_pre.tdata [26]);
tran (ob_out_pre[25], \ob_out_pre.tdata [25]);
tran (ob_out_pre[24], \ob_out_pre.tdata [24]);
tran (ob_out_pre[23], \ob_out_pre.tdata [23]);
tran (ob_out_pre[22], \ob_out_pre.tdata [22]);
tran (ob_out_pre[21], \ob_out_pre.tdata [21]);
tran (ob_out_pre[20], \ob_out_pre.tdata [20]);
tran (ob_out_pre[19], \ob_out_pre.tdata [19]);
tran (ob_out_pre[18], \ob_out_pre.tdata [18]);
tran (ob_out_pre[17], \ob_out_pre.tdata [17]);
tran (ob_out_pre[16], \ob_out_pre.tdata [16]);
tran (ob_out_pre[15], \ob_out_pre.tdata [15]);
tran (ob_out_pre[14], \ob_out_pre.tdata [14]);
tran (ob_out_pre[13], \ob_out_pre.tdata [13]);
tran (ob_out_pre[12], \ob_out_pre.tdata [12]);
tran (ob_out_pre[11], \ob_out_pre.tdata [11]);
tran (ob_out_pre[10], \ob_out_pre.tdata [10]);
tran (ob_out_pre[9], \ob_out_pre.tdata [9]);
tran (ob_out_pre[8], \ob_out_pre.tdata [8]);
tran (ob_out_pre[7], \ob_out_pre.tdata [7]);
tran (ob_out_pre[6], \ob_out_pre.tdata [6]);
tran (ob_out_pre[5], \ob_out_pre.tdata [5]);
tran (ob_out_pre[4], \ob_out_pre.tdata [4]);
tran (ob_out_pre[3], \ob_out_pre.tdata [3]);
tran (ob_out_pre[2], \ob_out_pre.tdata [2]);
tran (ob_out_pre[1], \ob_out_pre.tdata [1]);
tran (ob_out_pre[0], \ob_out_pre.tdata [0]);
tran (ob_in[0], \ob_in.tready );
tran (state[0], \state.state [0]);
tran (state[1], \state.state [1]);
tran (state_last[1], \state_last.state [1]);
tran (state_last[0], \state_last.state [0]);
Q_ASSIGN U0 ( .B(ob_in[0]), .A(state[0]));
Q_ASSIGN U1 ( .B(im_rdy), .A(state[1]));
ixc_assign _zz_strnp_2 ( _zy_simnet_im_vld_2_w$, im_vld);
ixc_assign_83 _zz_strnp_1 ( _zy_simnet_ob_out_1_w$[0:82], ob_out[82:0]);
ixc_assign _zz_strnp_0 ( _zy_simnet_ob_in_mod_0_w$, ob_in_mod[0]);
Q_AN03 U5 ( .A0(state[0]), .A1(state[1]), .A2(im_rdy_dly), .Z(ob_in_mod[0]));
Q_AN03 U6 ( .A0(ob_out_pre[82]), .A1(state[0]), .A2(im_rdy_dly), .Z(im_vld));
Q_FDP1 \state_last_REG[1] ( .CK(clk), .R(rst_n), .D(state[1]), .Q(state_last[1]), .QN(n10));
Q_FDP1 \state_last_REG[0] ( .CK(clk), .R(rst_n), .D(state[0]), .Q(state_last[0]), .QN(n9));
Q_MX02 U9 ( .S(n11), .A0(n3), .A1(ob_out_pre[82]), .Z(n1));
Q_FDP2 im_rdy_dly_REG  ( .CK(clk), .S(rst_n), .D(n2), .Q(im_rdy_dly), .QN(n7));
Q_MX02 U11 ( .S(n14), .A0(im_rdy_dly), .A1(state[0]), .Z(n2));
Q_NR02 U12 ( .A0(n4), .A1(im_rdy_dly), .Z(n3));
Q_AN02 U13 ( .A0(state[1]), .A1(im_rdy_dly), .Z(n11));
Q_INV U14 ( .A(state[1]), .Z(n4));
Q_OR03 U15 ( .A0(n5), .A1(n6), .A2(n4), .Z(n12));
Q_AN03 U16 ( .A0(state[1]), .A1(state[0]), .A2(n7), .Z(n6));
Q_AN02 U17 ( .A0(state[0]), .A1(im_rdy_dly), .Z(n5));
Q_AN02 U18 ( .A0(state[1]), .A1(n5), .Z(n13));
Q_MX02 U19 ( .S(state[1]), .A0(n8), .A1(state[0]), .Z(n14));
Q_NR03 U20 ( .A0(n10), .A1(state[0]), .A2(n9), .Z(n8));
Q_FDP4EP \ob_out_REG[82] ( .CK(clk), .CE(n12), .R(n15), .D(n1), .Q(ob_out[82]));
Q_INV U22 ( .A(rst_n), .Z(n15));
Q_FDP4EP \ob_out_REG[0] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[0]), .Q(ob_out[0]));
Q_FDP4EP \ob_out_REG[1] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[1]), .Q(ob_out[1]));
Q_FDP4EP \ob_out_REG[2] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[2]), .Q(ob_out[2]));
Q_FDP4EP \ob_out_REG[3] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[3]), .Q(ob_out[3]));
Q_FDP4EP \ob_out_REG[4] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[4]), .Q(ob_out[4]));
Q_FDP4EP \ob_out_REG[5] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[5]), .Q(ob_out[5]));
Q_FDP4EP \ob_out_REG[6] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[6]), .Q(ob_out[6]));
Q_FDP4EP \ob_out_REG[7] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[7]), .Q(ob_out[7]));
Q_FDP4EP \ob_out_REG[8] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[8]), .Q(ob_out[8]));
Q_FDP4EP \ob_out_REG[9] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[9]), .Q(ob_out[9]));
Q_FDP4EP \ob_out_REG[10] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[10]), .Q(ob_out[10]));
Q_FDP4EP \ob_out_REG[11] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[11]), .Q(ob_out[11]));
Q_FDP4EP \ob_out_REG[12] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[12]), .Q(ob_out[12]));
Q_FDP4EP \ob_out_REG[13] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[13]), .Q(ob_out[13]));
Q_FDP4EP \ob_out_REG[14] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[14]), .Q(ob_out[14]));
Q_FDP4EP \ob_out_REG[15] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[15]), .Q(ob_out[15]));
Q_FDP4EP \ob_out_REG[16] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[16]), .Q(ob_out[16]));
Q_FDP4EP \ob_out_REG[17] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[17]), .Q(ob_out[17]));
Q_FDP4EP \ob_out_REG[18] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[18]), .Q(ob_out[18]));
Q_FDP4EP \ob_out_REG[19] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[19]), .Q(ob_out[19]));
Q_FDP4EP \ob_out_REG[20] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[20]), .Q(ob_out[20]));
Q_FDP4EP \ob_out_REG[21] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[21]), .Q(ob_out[21]));
Q_FDP4EP \ob_out_REG[22] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[22]), .Q(ob_out[22]));
Q_FDP4EP \ob_out_REG[23] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[23]), .Q(ob_out[23]));
Q_FDP4EP \ob_out_REG[24] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[24]), .Q(ob_out[24]));
Q_FDP4EP \ob_out_REG[25] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[25]), .Q(ob_out[25]));
Q_FDP4EP \ob_out_REG[26] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[26]), .Q(ob_out[26]));
Q_FDP4EP \ob_out_REG[27] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[27]), .Q(ob_out[27]));
Q_FDP4EP \ob_out_REG[28] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[28]), .Q(ob_out[28]));
Q_FDP4EP \ob_out_REG[29] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[29]), .Q(ob_out[29]));
Q_FDP4EP \ob_out_REG[30] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[30]), .Q(ob_out[30]));
Q_FDP4EP \ob_out_REG[31] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[31]), .Q(ob_out[31]));
Q_FDP4EP \ob_out_REG[32] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[32]), .Q(ob_out[32]));
Q_FDP4EP \ob_out_REG[33] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[33]), .Q(ob_out[33]));
Q_FDP4EP \ob_out_REG[34] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[34]), .Q(ob_out[34]));
Q_FDP4EP \ob_out_REG[35] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[35]), .Q(ob_out[35]));
Q_FDP4EP \ob_out_REG[36] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[36]), .Q(ob_out[36]));
Q_FDP4EP \ob_out_REG[37] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[37]), .Q(ob_out[37]));
Q_FDP4EP \ob_out_REG[38] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[38]), .Q(ob_out[38]));
Q_FDP4EP \ob_out_REG[39] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[39]), .Q(ob_out[39]));
Q_FDP4EP \ob_out_REG[40] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[40]), .Q(ob_out[40]));
Q_FDP4EP \ob_out_REG[41] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[41]), .Q(ob_out[41]));
Q_FDP4EP \ob_out_REG[42] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[42]), .Q(ob_out[42]));
Q_FDP4EP \ob_out_REG[43] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[43]), .Q(ob_out[43]));
Q_FDP4EP \ob_out_REG[44] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[44]), .Q(ob_out[44]));
Q_FDP4EP \ob_out_REG[45] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[45]), .Q(ob_out[45]));
Q_FDP4EP \ob_out_REG[46] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[46]), .Q(ob_out[46]));
Q_FDP4EP \ob_out_REG[47] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[47]), .Q(ob_out[47]));
Q_FDP4EP \ob_out_REG[48] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[48]), .Q(ob_out[48]));
Q_FDP4EP \ob_out_REG[49] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[49]), .Q(ob_out[49]));
Q_FDP4EP \ob_out_REG[50] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[50]), .Q(ob_out[50]));
Q_FDP4EP \ob_out_REG[51] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[51]), .Q(ob_out[51]));
Q_FDP4EP \ob_out_REG[52] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[52]), .Q(ob_out[52]));
Q_FDP4EP \ob_out_REG[53] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[53]), .Q(ob_out[53]));
Q_FDP4EP \ob_out_REG[54] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[54]), .Q(ob_out[54]));
Q_FDP4EP \ob_out_REG[55] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[55]), .Q(ob_out[55]));
Q_FDP4EP \ob_out_REG[56] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[56]), .Q(ob_out[56]));
Q_FDP4EP \ob_out_REG[57] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[57]), .Q(ob_out[57]));
Q_FDP4EP \ob_out_REG[58] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[58]), .Q(ob_out[58]));
Q_FDP4EP \ob_out_REG[59] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[59]), .Q(ob_out[59]));
Q_FDP4EP \ob_out_REG[60] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[60]), .Q(ob_out[60]));
Q_FDP4EP \ob_out_REG[61] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[61]), .Q(ob_out[61]));
Q_FDP4EP \ob_out_REG[62] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[62]), .Q(ob_out[62]));
Q_FDP4EP \ob_out_REG[63] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[63]), .Q(ob_out[63]));
Q_FDP4EP \ob_out_REG[64] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[64]), .Q(ob_out[64]));
Q_FDP4EP \ob_out_REG[65] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[65]), .Q(ob_out[65]));
Q_FDP4EP \ob_out_REG[66] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[66]), .Q(ob_out[66]));
Q_FDP4EP \ob_out_REG[67] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[67]), .Q(ob_out[67]));
Q_FDP4EP \ob_out_REG[68] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[68]), .Q(ob_out[68]));
Q_FDP4EP \ob_out_REG[69] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[69]), .Q(ob_out[69]));
Q_FDP4EP \ob_out_REG[70] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[70]), .Q(ob_out[70]));
Q_FDP4EP \ob_out_REG[71] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[71]), .Q(ob_out[71]));
Q_FDP4EP \ob_out_REG[72] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[72]), .Q(ob_out[72]));
Q_FDP4EP \ob_out_REG[73] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[73]), .Q(ob_out[73]));
Q_FDP4EP \ob_out_REG[74] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[74]), .Q(ob_out[74]));
Q_FDP4EP \ob_out_REG[75] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[75]), .Q(ob_out[75]));
Q_FDP4EP \ob_out_REG[76] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[76]), .Q(ob_out[76]));
Q_FDP4EP \ob_out_REG[77] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[77]), .Q(ob_out[77]));
Q_FDP4EP \ob_out_REG[78] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[78]), .Q(ob_out[78]));
Q_FDP4EP \ob_out_REG[79] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[79]), .Q(ob_out[79]));
Q_FDP4EP \ob_out_REG[80] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[80]), .Q(ob_out[80]));
Q_FDP4EP \ob_out_REG[81] ( .CK(clk), .CE(n13), .R(n15), .D(ob_out_pre[81]), .Q(ob_out[81]));
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\ob_out.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m2 "\ob_out.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m3 "\ob_out.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m4 "\ob_out.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m5 "\ob_out_pre.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m6 "\ob_out_pre.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m7 "\ob_out_pre.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m8 "\ob_out_pre.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m9 "\state.state  (1,0) 1 1 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m10 "\state_last.state  (1,0) 1 1 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "10"
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r1 "ob_in_mod 1 \ob_in_mod.tready "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r2 "ob_out 6 \ob_out.tvalid  \ob_out.tlast  \ob_out.tid  \ob_out.tstrb  \ob_out.tuser  \ob_out.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r3 "ob_out_pre 6 \ob_out_pre.tvalid  \ob_out_pre.tlast  \ob_out_pre.tid  \ob_out_pre.tstrb  \ob_out_pre.tuser  \ob_out_pre.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r4 "ob_in 1 \ob_in.tready "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r5 "state 1 \state.state "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r6 "state_last 1 \state_last.state "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_NUM "6"
endmodule
