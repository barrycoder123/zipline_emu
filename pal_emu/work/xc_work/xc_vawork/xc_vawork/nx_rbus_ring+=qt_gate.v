
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_rbus_ring ( clk, rst_n, cfg_start_addr, cfg_end_addr, rbus_addr_i, 
	rbus_wr_strb_i, rbus_wr_data_i, rbus_rd_strb_i, rbus_addr_o, 
	rbus_wr_strb_o, rbus_wr_data_o, rbus_rd_strb_o, locl_addr_o, 
	locl_wr_strb_o, locl_wr_data_o, locl_rd_strb_o, rbus_rd_data_i, 
	rbus_ack_i, rbus_err_ack_i, locl_rd_data_i, locl_ack_i, 
	locl_err_ack_i, rbus_rd_data_o, rbus_ack_o, rbus_err_ack_o);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input clk;
input rst_n;
input [15:0] cfg_start_addr;
input [15:0] cfg_end_addr;
input [15:0] rbus_addr_i;
input rbus_wr_strb_i;
input [31:0] rbus_wr_data_i;
input rbus_rd_strb_i;
output [15:0] rbus_addr_o;
output rbus_wr_strb_o;
output [31:0] rbus_wr_data_o;
output rbus_rd_strb_o;
output [10:0] locl_addr_o;
output locl_wr_strb_o;
output [31:0] locl_wr_data_o;
output locl_rd_strb_o;
input [31:0] rbus_rd_data_i;
input rbus_ack_i;
input rbus_err_ack_i;
input [31:0] locl_rd_data_i;
input locl_ack_i;
input locl_err_ack_i;
output [31:0] rbus_rd_data_o;
output rbus_ack_o;
output rbus_err_ack_o;
wire [0:15] _zy_simnet_rbus_addr_o_0_w$;
wire _zy_simnet_rbus_wr_strb_o_1_w$;
wire [0:31] _zy_simnet_rbus_wr_data_o_2_w$;
wire _zy_simnet_rbus_rd_strb_o_3_w$;
wire [0:10] _zy_simnet_locl_addr_o_4_w$;
wire _zy_simnet_locl_wr_strb_o_5_w$;
wire [0:31] _zy_simnet_locl_wr_data_o_6_w$;
wire _zy_simnet_locl_rd_strb_o_7_w$;
wire [0:31] _zy_simnet_rbus_rd_data_o_8_w$;
wire _zy_simnet_rbus_ack_o_9_w$;
wire _zy_simnet_rbus_err_ack_o_10_w$;
wire [15:0] \sync_io.rbus_addr_i_reg ;
wire \sync_io.rbus_wr_strb_i_reg ;
wire [31:0] \sync_io.rbus_wr_data_i_reg ;
wire \sync_io.rbus_rd_strb_i_reg ;
wire [31:0] \sync_io.rbus_rd_data_i_reg ;
wire \sync_io.rbus_ack_i_reg ;
wire \sync_io.rbus_err_ack_i_reg ;
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[15] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[15]), .Q(\sync_io.rbus_addr_i_reg [15]), .QN(n1));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[14] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[14]), .Q(\sync_io.rbus_addr_i_reg [14]), .QN(n3));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[13] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[13]), .Q(\sync_io.rbus_addr_i_reg [13]), .QN(n4));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[12] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[12]), .Q(\sync_io.rbus_addr_i_reg [12]), .QN(n5));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[11] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[11]), .Q(\sync_io.rbus_addr_i_reg [11]), .QN(n14));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[10] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[10]), .Q(\sync_io.rbus_addr_i_reg [10]), .QN(n16));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[9] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[9]), .Q(\sync_io.rbus_addr_i_reg [9]), .QN(n17));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[8] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[8]), .Q(\sync_io.rbus_addr_i_reg [8]), .QN(n18));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[7] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[7]), .Q(\sync_io.rbus_addr_i_reg [7]), .QN(n27));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[6] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[6]), .Q(\sync_io.rbus_addr_i_reg [6]), .QN(n29));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[5] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[5]), .Q(\sync_io.rbus_addr_i_reg [5]), .QN(n30));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[4] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[4]), .Q(\sync_io.rbus_addr_i_reg [4]), .QN(n31));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[3] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[3]), .Q(\sync_io.rbus_addr_i_reg [3]), .QN(n40));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[2] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[2]), .Q(\sync_io.rbus_addr_i_reg [2]), .QN(n42));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[1] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[1]), .Q(\sync_io.rbus_addr_i_reg [1]), .QN(n43));
Q_FDP1 \sync_io.rbus_addr_i_reg_REG[0] ( .CK(clk), .R(rst_n), .D(rbus_addr_i[0]), .Q(\sync_io.rbus_addr_i_reg [0]), .QN(n44));
Q_FDP1 \sync_io.rbus_wr_strb_i_reg_REG ( .CK(clk), .R(rst_n), .D(rbus_wr_strb_i), .Q(\sync_io.rbus_wr_strb_i_reg ), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[31] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[31]), .Q(\sync_io.rbus_wr_data_i_reg [31]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[30] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[30]), .Q(\sync_io.rbus_wr_data_i_reg [30]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[29] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[29]), .Q(\sync_io.rbus_wr_data_i_reg [29]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[28] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[28]), .Q(\sync_io.rbus_wr_data_i_reg [28]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[27] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[27]), .Q(\sync_io.rbus_wr_data_i_reg [27]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[26] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[26]), .Q(\sync_io.rbus_wr_data_i_reg [26]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[25] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[25]), .Q(\sync_io.rbus_wr_data_i_reg [25]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[24] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[24]), .Q(\sync_io.rbus_wr_data_i_reg [24]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[23] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[23]), .Q(\sync_io.rbus_wr_data_i_reg [23]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[22] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[22]), .Q(\sync_io.rbus_wr_data_i_reg [22]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[21] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[21]), .Q(\sync_io.rbus_wr_data_i_reg [21]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[20] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[20]), .Q(\sync_io.rbus_wr_data_i_reg [20]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[19] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[19]), .Q(\sync_io.rbus_wr_data_i_reg [19]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[18] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[18]), .Q(\sync_io.rbus_wr_data_i_reg [18]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[17] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[17]), .Q(\sync_io.rbus_wr_data_i_reg [17]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[16] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[16]), .Q(\sync_io.rbus_wr_data_i_reg [16]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[15] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[15]), .Q(\sync_io.rbus_wr_data_i_reg [15]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[14] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[14]), .Q(\sync_io.rbus_wr_data_i_reg [14]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[13] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[13]), .Q(\sync_io.rbus_wr_data_i_reg [13]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[12] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[12]), .Q(\sync_io.rbus_wr_data_i_reg [12]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[11] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[11]), .Q(\sync_io.rbus_wr_data_i_reg [11]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[10] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[10]), .Q(\sync_io.rbus_wr_data_i_reg [10]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[9] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[9]), .Q(\sync_io.rbus_wr_data_i_reg [9]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[8] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[8]), .Q(\sync_io.rbus_wr_data_i_reg [8]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[7] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[7]), .Q(\sync_io.rbus_wr_data_i_reg [7]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[6] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[6]), .Q(\sync_io.rbus_wr_data_i_reg [6]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[5] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[5]), .Q(\sync_io.rbus_wr_data_i_reg [5]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[4] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[4]), .Q(\sync_io.rbus_wr_data_i_reg [4]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[3] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[3]), .Q(\sync_io.rbus_wr_data_i_reg [3]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[2] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[2]), .Q(\sync_io.rbus_wr_data_i_reg [2]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[1] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[1]), .Q(\sync_io.rbus_wr_data_i_reg [1]), .QN( ));
Q_FDP1 \sync_io.rbus_wr_data_i_reg_REG[0] ( .CK(clk), .R(rst_n), .D(rbus_wr_data_i[0]), .Q(\sync_io.rbus_wr_data_i_reg [0]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_strb_i_reg_REG ( .CK(clk), .R(rst_n), .D(rbus_rd_strb_i), .Q(\sync_io.rbus_rd_strb_i_reg ), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[31] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[31]), .Q(\sync_io.rbus_rd_data_i_reg [31]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[30] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[30]), .Q(\sync_io.rbus_rd_data_i_reg [30]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[29] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[29]), .Q(\sync_io.rbus_rd_data_i_reg [29]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[28] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[28]), .Q(\sync_io.rbus_rd_data_i_reg [28]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[27] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[27]), .Q(\sync_io.rbus_rd_data_i_reg [27]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[26] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[26]), .Q(\sync_io.rbus_rd_data_i_reg [26]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[25] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[25]), .Q(\sync_io.rbus_rd_data_i_reg [25]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[24] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[24]), .Q(\sync_io.rbus_rd_data_i_reg [24]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[23] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[23]), .Q(\sync_io.rbus_rd_data_i_reg [23]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[22] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[22]), .Q(\sync_io.rbus_rd_data_i_reg [22]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[21] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[21]), .Q(\sync_io.rbus_rd_data_i_reg [21]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[20] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[20]), .Q(\sync_io.rbus_rd_data_i_reg [20]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[19] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[19]), .Q(\sync_io.rbus_rd_data_i_reg [19]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[18] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[18]), .Q(\sync_io.rbus_rd_data_i_reg [18]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[17] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[17]), .Q(\sync_io.rbus_rd_data_i_reg [17]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[16] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[16]), .Q(\sync_io.rbus_rd_data_i_reg [16]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[15] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[15]), .Q(\sync_io.rbus_rd_data_i_reg [15]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[14] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[14]), .Q(\sync_io.rbus_rd_data_i_reg [14]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[13] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[13]), .Q(\sync_io.rbus_rd_data_i_reg [13]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[12] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[12]), .Q(\sync_io.rbus_rd_data_i_reg [12]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[11] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[11]), .Q(\sync_io.rbus_rd_data_i_reg [11]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[10] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[10]), .Q(\sync_io.rbus_rd_data_i_reg [10]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[9] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[9]), .Q(\sync_io.rbus_rd_data_i_reg [9]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[8] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[8]), .Q(\sync_io.rbus_rd_data_i_reg [8]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[7] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[7]), .Q(\sync_io.rbus_rd_data_i_reg [7]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[6] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[6]), .Q(\sync_io.rbus_rd_data_i_reg [6]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[5] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[5]), .Q(\sync_io.rbus_rd_data_i_reg [5]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[4] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[4]), .Q(\sync_io.rbus_rd_data_i_reg [4]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[3] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[3]), .Q(\sync_io.rbus_rd_data_i_reg [3]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[2] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[2]), .Q(\sync_io.rbus_rd_data_i_reg [2]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[1] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[1]), .Q(\sync_io.rbus_rd_data_i_reg [1]), .QN( ));
Q_FDP1 \sync_io.rbus_rd_data_i_reg_REG[0] ( .CK(clk), .R(rst_n), .D(rbus_rd_data_i[0]), .Q(\sync_io.rbus_rd_data_i_reg [0]), .QN( ));
Q_FDP1 \sync_io.rbus_ack_i_reg_REG ( .CK(clk), .R(rst_n), .D(rbus_ack_i), .Q(\sync_io.rbus_ack_i_reg ), .QN( ));
Q_FDP1 \sync_io.rbus_err_ack_i_reg_REG ( .CK(clk), .R(rst_n), .D(rbus_err_ack_i), .Q(\sync_io.rbus_err_ack_i_reg ), .QN( ));
Q_AO21 U84 ( .A0(cfg_start_addr[15]), .A1(n1), .B0(n10), .Z(n11));
Q_OR02 U85 ( .A0(cfg_start_addr[15]), .A1(n1), .Z(n2));
Q_AN03 U86 ( .A0(cfg_start_addr[14]), .A1(n3), .A2(n2), .Z(n10));
Q_OA21 U87 ( .A0(cfg_start_addr[14]), .A1(n3), .B0(n2), .Z(n6));
Q_AN03 U88 ( .A0(cfg_start_addr[13]), .A1(n4), .A2(n6), .Z(n9));
Q_OA21 U89 ( .A0(cfg_start_addr[13]), .A1(n4), .B0(n6), .Z(n7));
Q_AN03 U90 ( .A0(cfg_start_addr[12]), .A1(n5), .A2(n7), .Z(n8));
Q_OA21 U91 ( .A0(cfg_start_addr[12]), .A1(n5), .B0(n7), .Z(n13));
Q_OR03 U92 ( .A0(n9), .A1(n8), .A2(n11), .Z(n12));
Q_AO21 U93 ( .A0(cfg_start_addr[11]), .A1(n14), .B0(n23), .Z(n24));
Q_OR02 U94 ( .A0(cfg_start_addr[11]), .A1(n14), .Z(n15));
Q_AN03 U95 ( .A0(cfg_start_addr[10]), .A1(n16), .A2(n15), .Z(n23));
Q_OA21 U96 ( .A0(cfg_start_addr[10]), .A1(n16), .B0(n15), .Z(n19));
Q_AN03 U97 ( .A0(cfg_start_addr[9]), .A1(n17), .A2(n19), .Z(n22));
Q_OA21 U98 ( .A0(cfg_start_addr[9]), .A1(n17), .B0(n19), .Z(n20));
Q_AN03 U99 ( .A0(cfg_start_addr[8]), .A1(n18), .A2(n20), .Z(n21));
Q_OA21 U100 ( .A0(cfg_start_addr[8]), .A1(n18), .B0(n20), .Z(n26));
Q_OR03 U101 ( .A0(n22), .A1(n21), .A2(n24), .Z(n25));
Q_AO21 U102 ( .A0(cfg_start_addr[7]), .A1(n27), .B0(n36), .Z(n37));
Q_OR02 U103 ( .A0(cfg_start_addr[7]), .A1(n27), .Z(n28));
Q_AN03 U104 ( .A0(cfg_start_addr[6]), .A1(n29), .A2(n28), .Z(n36));
Q_OA21 U105 ( .A0(cfg_start_addr[6]), .A1(n29), .B0(n28), .Z(n32));
Q_AN03 U106 ( .A0(cfg_start_addr[5]), .A1(n30), .A2(n32), .Z(n35));
Q_OA21 U107 ( .A0(cfg_start_addr[5]), .A1(n30), .B0(n32), .Z(n33));
Q_AN03 U108 ( .A0(cfg_start_addr[4]), .A1(n31), .A2(n33), .Z(n34));
Q_OA21 U109 ( .A0(cfg_start_addr[4]), .A1(n31), .B0(n33), .Z(n39));
Q_OR03 U110 ( .A0(n35), .A1(n34), .A2(n37), .Z(n38));
Q_AO21 U111 ( .A0(cfg_start_addr[3]), .A1(n40), .B0(n49), .Z(n50));
Q_OR02 U112 ( .A0(cfg_start_addr[3]), .A1(n40), .Z(n41));
Q_AN03 U113 ( .A0(cfg_start_addr[2]), .A1(n42), .A2(n41), .Z(n49));
Q_OA21 U114 ( .A0(cfg_start_addr[2]), .A1(n42), .B0(n41), .Z(n45));
Q_AN03 U115 ( .A0(cfg_start_addr[1]), .A1(n43), .A2(n45), .Z(n48));
Q_OA21 U116 ( .A0(cfg_start_addr[1]), .A1(n43), .B0(n45), .Z(n46));
Q_AN03 U117 ( .A0(cfg_start_addr[0]), .A1(n44), .A2(n46), .Z(n47));
Q_OR03 U118 ( .A0(n48), .A1(n47), .A2(n50), .Z(n51));
Q_AN02 U119 ( .A0(n13), .A1(n26), .Z(n52));
Q_AN03 U120 ( .A0(n52), .A1(n39), .A2(n51), .Z(n53));
Q_AO21 U121 ( .A0(n52), .A1(n38), .B0(n53), .Z(n54));
Q_AO21 U122 ( .A0(n13), .A1(n25), .B0(n12), .Z(n55));
Q_OR02 U123 ( .A0(n55), .A1(n54), .Z(n155));
Q_INV U124 ( .A(cfg_end_addr[15]), .Z(n56));
Q_AO21 U125 ( .A0(\sync_io.rbus_addr_i_reg [15]), .A1(n56), .B0(n65), .Z(n66));
Q_OR02 U126 ( .A0(\sync_io.rbus_addr_i_reg [15]), .A1(n56), .Z(n57));
Q_INV U127 ( .A(cfg_end_addr[14]), .Z(n58));
Q_AN03 U128 ( .A0(\sync_io.rbus_addr_i_reg [14]), .A1(n58), .A2(n57), .Z(n65));
Q_OA21 U129 ( .A0(\sync_io.rbus_addr_i_reg [14]), .A1(n58), .B0(n57), .Z(n61));
Q_INV U130 ( .A(cfg_end_addr[13]), .Z(n59));
Q_AN03 U131 ( .A0(\sync_io.rbus_addr_i_reg [13]), .A1(n59), .A2(n61), .Z(n64));
Q_OA21 U132 ( .A0(\sync_io.rbus_addr_i_reg [13]), .A1(n59), .B0(n61), .Z(n62));
Q_INV U133 ( .A(cfg_end_addr[12]), .Z(n60));
Q_AN03 U134 ( .A0(\sync_io.rbus_addr_i_reg [12]), .A1(n60), .A2(n62), .Z(n63));
Q_OA21 U135 ( .A0(\sync_io.rbus_addr_i_reg [12]), .A1(n60), .B0(n62), .Z(n68));
Q_OR03 U136 ( .A0(n64), .A1(n63), .A2(n66), .Z(n67));
Q_INV U137 ( .A(cfg_end_addr[11]), .Z(n69));
Q_AO21 U138 ( .A0(\sync_io.rbus_addr_i_reg [11]), .A1(n69), .B0(n78), .Z(n79));
Q_OR02 U139 ( .A0(\sync_io.rbus_addr_i_reg [11]), .A1(n69), .Z(n70));
Q_INV U140 ( .A(cfg_end_addr[10]), .Z(n71));
Q_AN03 U141 ( .A0(\sync_io.rbus_addr_i_reg [10]), .A1(n71), .A2(n70), .Z(n78));
Q_OA21 U142 ( .A0(\sync_io.rbus_addr_i_reg [10]), .A1(n71), .B0(n70), .Z(n74));
Q_INV U143 ( .A(cfg_end_addr[9]), .Z(n72));
Q_AN03 U144 ( .A0(\sync_io.rbus_addr_i_reg [9]), .A1(n72), .A2(n74), .Z(n77));
Q_OA21 U145 ( .A0(\sync_io.rbus_addr_i_reg [9]), .A1(n72), .B0(n74), .Z(n75));
Q_INV U146 ( .A(cfg_end_addr[8]), .Z(n73));
Q_AN03 U147 ( .A0(\sync_io.rbus_addr_i_reg [8]), .A1(n73), .A2(n75), .Z(n76));
Q_OA21 U148 ( .A0(\sync_io.rbus_addr_i_reg [8]), .A1(n73), .B0(n75), .Z(n81));
Q_OR03 U149 ( .A0(n77), .A1(n76), .A2(n79), .Z(n80));
Q_INV U150 ( .A(cfg_end_addr[7]), .Z(n82));
Q_AO21 U151 ( .A0(\sync_io.rbus_addr_i_reg [7]), .A1(n82), .B0(n91), .Z(n92));
Q_OR02 U152 ( .A0(\sync_io.rbus_addr_i_reg [7]), .A1(n82), .Z(n83));
Q_INV U153 ( .A(cfg_end_addr[6]), .Z(n84));
Q_AN03 U154 ( .A0(\sync_io.rbus_addr_i_reg [6]), .A1(n84), .A2(n83), .Z(n91));
Q_OA21 U155 ( .A0(\sync_io.rbus_addr_i_reg [6]), .A1(n84), .B0(n83), .Z(n87));
Q_INV U156 ( .A(cfg_end_addr[5]), .Z(n85));
Q_AN03 U157 ( .A0(\sync_io.rbus_addr_i_reg [5]), .A1(n85), .A2(n87), .Z(n90));
Q_OA21 U158 ( .A0(\sync_io.rbus_addr_i_reg [5]), .A1(n85), .B0(n87), .Z(n88));
Q_INV U159 ( .A(cfg_end_addr[4]), .Z(n86));
Q_AN03 U160 ( .A0(\sync_io.rbus_addr_i_reg [4]), .A1(n86), .A2(n88), .Z(n89));
Q_OA21 U161 ( .A0(\sync_io.rbus_addr_i_reg [4]), .A1(n86), .B0(n88), .Z(n94));
Q_OR03 U162 ( .A0(n90), .A1(n89), .A2(n92), .Z(n93));
Q_INV U163 ( .A(cfg_end_addr[3]), .Z(n95));
Q_AO21 U164 ( .A0(\sync_io.rbus_addr_i_reg [3]), .A1(n95), .B0(n104), .Z(n105));
Q_OR02 U165 ( .A0(\sync_io.rbus_addr_i_reg [3]), .A1(n95), .Z(n96));
Q_INV U166 ( .A(cfg_end_addr[2]), .Z(n97));
Q_AN03 U167 ( .A0(\sync_io.rbus_addr_i_reg [2]), .A1(n97), .A2(n96), .Z(n104));
Q_OA21 U168 ( .A0(\sync_io.rbus_addr_i_reg [2]), .A1(n97), .B0(n96), .Z(n100));
Q_INV U169 ( .A(cfg_end_addr[1]), .Z(n98));
Q_AN03 U170 ( .A0(\sync_io.rbus_addr_i_reg [1]), .A1(n98), .A2(n100), .Z(n103));
Q_OA21 U171 ( .A0(\sync_io.rbus_addr_i_reg [1]), .A1(n98), .B0(n100), .Z(n101));
Q_INV U172 ( .A(cfg_end_addr[0]), .Z(n99));
Q_AN03 U173 ( .A0(\sync_io.rbus_addr_i_reg [0]), .A1(n99), .A2(n101), .Z(n102));
Q_OR03 U174 ( .A0(n103), .A1(n102), .A2(n105), .Z(n106));
Q_AN02 U175 ( .A0(n68), .A1(n81), .Z(n107));
Q_AN03 U176 ( .A0(n107), .A1(n94), .A2(n106), .Z(n108));
Q_AO21 U177 ( .A0(n107), .A1(n93), .B0(n108), .Z(n109));
Q_AO21 U178 ( .A0(n68), .A1(n80), .B0(n67), .Z(n110));
Q_OR02 U179 ( .A0(n110), .A1(n109), .Z(n156));
Q_MX02 U180 ( .S(n153), .A0(locl_err_ack_i), .A1(\sync_io.rbus_err_ack_i_reg ), .Z(n111));
Q_MX02 U181 ( .S(n153), .A0(locl_ack_i), .A1(\sync_io.rbus_ack_i_reg ), .Z(n112));
Q_MX02 U182 ( .S(n153), .A0(locl_rd_data_i[0]), .A1(\sync_io.rbus_rd_data_i_reg [0]), .Z(n113));
Q_MX02 U183 ( .S(n153), .A0(locl_rd_data_i[1]), .A1(\sync_io.rbus_rd_data_i_reg [1]), .Z(n114));
Q_MX02 U184 ( .S(n153), .A0(locl_rd_data_i[2]), .A1(\sync_io.rbus_rd_data_i_reg [2]), .Z(n115));
Q_MX02 U185 ( .S(n153), .A0(locl_rd_data_i[3]), .A1(\sync_io.rbus_rd_data_i_reg [3]), .Z(n116));
Q_MX02 U186 ( .S(n153), .A0(locl_rd_data_i[4]), .A1(\sync_io.rbus_rd_data_i_reg [4]), .Z(n117));
Q_MX02 U187 ( .S(n153), .A0(locl_rd_data_i[5]), .A1(\sync_io.rbus_rd_data_i_reg [5]), .Z(n118));
Q_MX02 U188 ( .S(n153), .A0(locl_rd_data_i[6]), .A1(\sync_io.rbus_rd_data_i_reg [6]), .Z(n119));
Q_MX02 U189 ( .S(n153), .A0(locl_rd_data_i[7]), .A1(\sync_io.rbus_rd_data_i_reg [7]), .Z(n120));
Q_MX02 U190 ( .S(n153), .A0(locl_rd_data_i[8]), .A1(\sync_io.rbus_rd_data_i_reg [8]), .Z(n121));
Q_MX02 U191 ( .S(n153), .A0(locl_rd_data_i[9]), .A1(\sync_io.rbus_rd_data_i_reg [9]), .Z(n122));
Q_MX02 U192 ( .S(n153), .A0(locl_rd_data_i[10]), .A1(\sync_io.rbus_rd_data_i_reg [10]), .Z(n123));
Q_MX02 U193 ( .S(n153), .A0(locl_rd_data_i[11]), .A1(\sync_io.rbus_rd_data_i_reg [11]), .Z(n124));
Q_MX02 U194 ( .S(n153), .A0(locl_rd_data_i[12]), .A1(\sync_io.rbus_rd_data_i_reg [12]), .Z(n125));
Q_MX02 U195 ( .S(n153), .A0(locl_rd_data_i[13]), .A1(\sync_io.rbus_rd_data_i_reg [13]), .Z(n126));
Q_MX02 U196 ( .S(n153), .A0(locl_rd_data_i[14]), .A1(\sync_io.rbus_rd_data_i_reg [14]), .Z(n127));
Q_MX02 U197 ( .S(n153), .A0(locl_rd_data_i[15]), .A1(\sync_io.rbus_rd_data_i_reg [15]), .Z(n128));
Q_MX02 U198 ( .S(n153), .A0(locl_rd_data_i[16]), .A1(\sync_io.rbus_rd_data_i_reg [16]), .Z(n129));
Q_MX02 U199 ( .S(n153), .A0(locl_rd_data_i[17]), .A1(\sync_io.rbus_rd_data_i_reg [17]), .Z(n130));
Q_MX02 U200 ( .S(n153), .A0(locl_rd_data_i[18]), .A1(\sync_io.rbus_rd_data_i_reg [18]), .Z(n131));
Q_MX02 U201 ( .S(n153), .A0(locl_rd_data_i[19]), .A1(\sync_io.rbus_rd_data_i_reg [19]), .Z(n132));
Q_MX02 U202 ( .S(n153), .A0(locl_rd_data_i[20]), .A1(\sync_io.rbus_rd_data_i_reg [20]), .Z(n133));
Q_MX02 U203 ( .S(n153), .A0(locl_rd_data_i[21]), .A1(\sync_io.rbus_rd_data_i_reg [21]), .Z(n134));
Q_MX02 U204 ( .S(n153), .A0(locl_rd_data_i[22]), .A1(\sync_io.rbus_rd_data_i_reg [22]), .Z(n135));
Q_MX02 U205 ( .S(n153), .A0(locl_rd_data_i[23]), .A1(\sync_io.rbus_rd_data_i_reg [23]), .Z(n136));
Q_MX02 U206 ( .S(n153), .A0(locl_rd_data_i[24]), .A1(\sync_io.rbus_rd_data_i_reg [24]), .Z(n137));
Q_MX02 U207 ( .S(n153), .A0(locl_rd_data_i[25]), .A1(\sync_io.rbus_rd_data_i_reg [25]), .Z(n138));
Q_MX02 U208 ( .S(n153), .A0(locl_rd_data_i[26]), .A1(\sync_io.rbus_rd_data_i_reg [26]), .Z(n139));
Q_MX02 U209 ( .S(n153), .A0(locl_rd_data_i[27]), .A1(\sync_io.rbus_rd_data_i_reg [27]), .Z(n140));
Q_MX02 U210 ( .S(n153), .A0(locl_rd_data_i[28]), .A1(\sync_io.rbus_rd_data_i_reg [28]), .Z(n141));
Q_MX02 U211 ( .S(n153), .A0(locl_rd_data_i[29]), .A1(\sync_io.rbus_rd_data_i_reg [29]), .Z(n142));
Q_MX02 U212 ( .S(n153), .A0(locl_rd_data_i[30]), .A1(\sync_io.rbus_rd_data_i_reg [30]), .Z(n143));
Q_MX02 U213 ( .S(n153), .A0(locl_rd_data_i[31]), .A1(\sync_io.rbus_rd_data_i_reg [31]), .Z(n144));
Q_AN02 U214 ( .A0(n154), .A1(\sync_io.rbus_rd_strb_i_reg ), .Z(n145));
Q_AN02 U215 ( .A0(n154), .A1(\sync_io.rbus_wr_strb_i_reg ), .Z(n146));
Q_AN02 U216 ( .A0(n149), .A1(\sync_io.rbus_rd_strb_i_reg ), .Z(n147));
Q_AN02 U217 ( .A0(n149), .A1(\sync_io.rbus_wr_strb_i_reg ), .Z(n148));
Q_FDP1 rbus_wr_strb_o_REG  ( .CK(clk), .R(rst_n), .D(n148), .Q(rbus_wr_strb_o), .QN( ));
Q_FDP1 rbus_rd_strb_o_REG  ( .CK(clk), .R(rst_n), .D(n147), .Q(rbus_rd_strb_o), .QN( ));
Q_FDP1 locl_wr_strb_o_REG  ( .CK(clk), .R(rst_n), .D(n146), .Q(locl_wr_strb_o), .QN( ));
Q_FDP1 locl_rd_strb_o_REG  ( .CK(clk), .R(rst_n), .D(n145), .Q(locl_rd_strb_o), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[31] ( .CK(clk), .R(rst_n), .D(n144), .Q(rbus_rd_data_o[31]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[30] ( .CK(clk), .R(rst_n), .D(n143), .Q(rbus_rd_data_o[30]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[29] ( .CK(clk), .R(rst_n), .D(n142), .Q(rbus_rd_data_o[29]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[28] ( .CK(clk), .R(rst_n), .D(n141), .Q(rbus_rd_data_o[28]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[27] ( .CK(clk), .R(rst_n), .D(n140), .Q(rbus_rd_data_o[27]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[26] ( .CK(clk), .R(rst_n), .D(n139), .Q(rbus_rd_data_o[26]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[25] ( .CK(clk), .R(rst_n), .D(n138), .Q(rbus_rd_data_o[25]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[24] ( .CK(clk), .R(rst_n), .D(n137), .Q(rbus_rd_data_o[24]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[23] ( .CK(clk), .R(rst_n), .D(n136), .Q(rbus_rd_data_o[23]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[22] ( .CK(clk), .R(rst_n), .D(n135), .Q(rbus_rd_data_o[22]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[21] ( .CK(clk), .R(rst_n), .D(n134), .Q(rbus_rd_data_o[21]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[20] ( .CK(clk), .R(rst_n), .D(n133), .Q(rbus_rd_data_o[20]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[19] ( .CK(clk), .R(rst_n), .D(n132), .Q(rbus_rd_data_o[19]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[18] ( .CK(clk), .R(rst_n), .D(n131), .Q(rbus_rd_data_o[18]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[17] ( .CK(clk), .R(rst_n), .D(n130), .Q(rbus_rd_data_o[17]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[16] ( .CK(clk), .R(rst_n), .D(n129), .Q(rbus_rd_data_o[16]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[15] ( .CK(clk), .R(rst_n), .D(n128), .Q(rbus_rd_data_o[15]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[14] ( .CK(clk), .R(rst_n), .D(n127), .Q(rbus_rd_data_o[14]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[13] ( .CK(clk), .R(rst_n), .D(n126), .Q(rbus_rd_data_o[13]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[12] ( .CK(clk), .R(rst_n), .D(n125), .Q(rbus_rd_data_o[12]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[11] ( .CK(clk), .R(rst_n), .D(n124), .Q(rbus_rd_data_o[11]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[10] ( .CK(clk), .R(rst_n), .D(n123), .Q(rbus_rd_data_o[10]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[9] ( .CK(clk), .R(rst_n), .D(n122), .Q(rbus_rd_data_o[9]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[8] ( .CK(clk), .R(rst_n), .D(n121), .Q(rbus_rd_data_o[8]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[7] ( .CK(clk), .R(rst_n), .D(n120), .Q(rbus_rd_data_o[7]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[6] ( .CK(clk), .R(rst_n), .D(n119), .Q(rbus_rd_data_o[6]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[5] ( .CK(clk), .R(rst_n), .D(n118), .Q(rbus_rd_data_o[5]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[4] ( .CK(clk), .R(rst_n), .D(n117), .Q(rbus_rd_data_o[4]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[3] ( .CK(clk), .R(rst_n), .D(n116), .Q(rbus_rd_data_o[3]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[2] ( .CK(clk), .R(rst_n), .D(n115), .Q(rbus_rd_data_o[2]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[1] ( .CK(clk), .R(rst_n), .D(n114), .Q(rbus_rd_data_o[1]), .QN( ));
Q_FDP1 \rbus_rd_data_o_REG[0] ( .CK(clk), .R(rst_n), .D(n113), .Q(rbus_rd_data_o[0]), .QN( ));
Q_FDP1 rbus_ack_o_REG  ( .CK(clk), .R(rst_n), .D(n112), .Q(rbus_ack_o), .QN( ));
Q_FDP1 rbus_err_ack_o_REG  ( .CK(clk), .R(rst_n), .D(n111), .Q(rbus_err_ack_o), .QN( ));
Q_NR02 U256 ( .A0(locl_ack_i), .A1(locl_err_ack_i), .Z(n153));
Q_NR02 U257 ( .A0(n150), .A1(n151), .Z(n149));
Q_INV U258 ( .A(n152), .Z(n150));
Q_AN02 U259 ( .A0(n151), .A1(n152), .Z(n154));
Q_NR02 U260 ( .A0(n155), .A1(n156), .Z(n151));
Q_OR02 U261 ( .A0(\sync_io.rbus_rd_strb_i_reg ), .A1(\sync_io.rbus_wr_strb_i_reg ), .Z(n152));
ixc_assign_16 _zz_strnp_0 ( _zy_simnet_rbus_addr_o_0_w$[0:15], 
	rbus_addr_o[15:0]);
ixc_assign _zz_strnp_1 ( _zy_simnet_rbus_wr_strb_o_1_w$, rbus_wr_strb_o);
ixc_assign_32 _zz_strnp_2 ( _zy_simnet_rbus_wr_data_o_2_w$[0:31], 
	rbus_wr_data_o[31:0]);
ixc_assign _zz_strnp_3 ( _zy_simnet_rbus_rd_strb_o_3_w$, rbus_rd_strb_o);
ixc_assign_11 _zz_strnp_4 ( _zy_simnet_locl_addr_o_4_w$[0:10], 
	locl_addr_o[10:0]);
ixc_assign _zz_strnp_5 ( _zy_simnet_locl_wr_strb_o_5_w$, locl_wr_strb_o);
ixc_assign_32 _zz_strnp_6 ( _zy_simnet_locl_wr_data_o_6_w$[0:31], 
	locl_wr_data_o[31:0]);
ixc_assign _zz_strnp_7 ( _zy_simnet_locl_rd_strb_o_7_w$, locl_rd_strb_o);
ixc_assign_32 _zz_strnp_8 ( _zy_simnet_rbus_rd_data_o_8_w$[0:31], 
	rbus_rd_data_o[31:0]);
ixc_assign _zz_strnp_9 ( _zy_simnet_rbus_ack_o_9_w$, rbus_ack_o);
ixc_assign _zz_strnp_10 ( _zy_simnet_rbus_err_ack_o_10_w$, rbus_err_ack_o);
Q_FDP4EP \locl_wr_data_o_REG[0] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [0]), .Q(locl_wr_data_o[0]));
Q_INV U274 ( .A(rst_n), .Z(n157));
Q_FDP4EP \locl_wr_data_o_REG[1] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [1]), .Q(locl_wr_data_o[1]));
Q_FDP4EP \locl_wr_data_o_REG[2] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [2]), .Q(locl_wr_data_o[2]));
Q_FDP4EP \locl_wr_data_o_REG[3] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [3]), .Q(locl_wr_data_o[3]));
Q_FDP4EP \locl_wr_data_o_REG[4] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [4]), .Q(locl_wr_data_o[4]));
Q_FDP4EP \locl_wr_data_o_REG[5] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [5]), .Q(locl_wr_data_o[5]));
Q_FDP4EP \locl_wr_data_o_REG[6] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [6]), .Q(locl_wr_data_o[6]));
Q_FDP4EP \locl_wr_data_o_REG[7] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [7]), .Q(locl_wr_data_o[7]));
Q_FDP4EP \locl_wr_data_o_REG[8] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [8]), .Q(locl_wr_data_o[8]));
Q_FDP4EP \locl_wr_data_o_REG[9] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [9]), .Q(locl_wr_data_o[9]));
Q_FDP4EP \locl_wr_data_o_REG[10] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [10]), .Q(locl_wr_data_o[10]));
Q_FDP4EP \locl_wr_data_o_REG[11] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [11]), .Q(locl_wr_data_o[11]));
Q_FDP4EP \locl_wr_data_o_REG[12] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [12]), .Q(locl_wr_data_o[12]));
Q_FDP4EP \locl_wr_data_o_REG[13] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [13]), .Q(locl_wr_data_o[13]));
Q_FDP4EP \locl_wr_data_o_REG[14] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [14]), .Q(locl_wr_data_o[14]));
Q_FDP4EP \locl_wr_data_o_REG[15] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [15]), .Q(locl_wr_data_o[15]));
Q_FDP4EP \locl_wr_data_o_REG[16] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [16]), .Q(locl_wr_data_o[16]));
Q_FDP4EP \locl_wr_data_o_REG[17] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [17]), .Q(locl_wr_data_o[17]));
Q_FDP4EP \locl_wr_data_o_REG[18] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [18]), .Q(locl_wr_data_o[18]));
Q_FDP4EP \locl_wr_data_o_REG[19] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [19]), .Q(locl_wr_data_o[19]));
Q_FDP4EP \locl_wr_data_o_REG[20] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [20]), .Q(locl_wr_data_o[20]));
Q_FDP4EP \locl_wr_data_o_REG[21] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [21]), .Q(locl_wr_data_o[21]));
Q_FDP4EP \locl_wr_data_o_REG[22] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [22]), .Q(locl_wr_data_o[22]));
Q_FDP4EP \locl_wr_data_o_REG[23] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [23]), .Q(locl_wr_data_o[23]));
Q_FDP4EP \locl_wr_data_o_REG[24] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [24]), .Q(locl_wr_data_o[24]));
Q_FDP4EP \locl_wr_data_o_REG[25] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [25]), .Q(locl_wr_data_o[25]));
Q_FDP4EP \locl_wr_data_o_REG[26] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [26]), .Q(locl_wr_data_o[26]));
Q_FDP4EP \locl_wr_data_o_REG[27] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [27]), .Q(locl_wr_data_o[27]));
Q_FDP4EP \locl_wr_data_o_REG[28] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [28]), .Q(locl_wr_data_o[28]));
Q_FDP4EP \locl_wr_data_o_REG[29] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [29]), .Q(locl_wr_data_o[29]));
Q_FDP4EP \locl_wr_data_o_REG[30] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [30]), .Q(locl_wr_data_o[30]));
Q_FDP4EP \locl_wr_data_o_REG[31] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [31]), .Q(locl_wr_data_o[31]));
Q_FDP4EP \locl_addr_o_REG[0] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_addr_i_reg [0]), .Q(locl_addr_o[0]));
Q_FDP4EP \locl_addr_o_REG[1] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_addr_i_reg [1]), .Q(locl_addr_o[1]));
Q_FDP4EP \locl_addr_o_REG[2] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_addr_i_reg [2]), .Q(locl_addr_o[2]));
Q_FDP4EP \locl_addr_o_REG[3] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_addr_i_reg [3]), .Q(locl_addr_o[3]));
Q_FDP4EP \locl_addr_o_REG[4] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_addr_i_reg [4]), .Q(locl_addr_o[4]));
Q_FDP4EP \locl_addr_o_REG[5] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_addr_i_reg [5]), .Q(locl_addr_o[5]));
Q_FDP4EP \locl_addr_o_REG[6] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_addr_i_reg [6]), .Q(locl_addr_o[6]));
Q_FDP4EP \locl_addr_o_REG[7] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_addr_i_reg [7]), .Q(locl_addr_o[7]));
Q_FDP4EP \locl_addr_o_REG[8] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_addr_i_reg [8]), .Q(locl_addr_o[8]));
Q_FDP4EP \locl_addr_o_REG[9] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_addr_i_reg [9]), .Q(locl_addr_o[9]));
Q_FDP4EP \locl_addr_o_REG[10] ( .CK(clk), .CE(n154), .R(n157), .D(\sync_io.rbus_addr_i_reg [10]), .Q(locl_addr_o[10]));
Q_FDP4EP \rbus_wr_data_o_REG[0] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [0]), .Q(rbus_wr_data_o[0]));
Q_FDP4EP \rbus_wr_data_o_REG[1] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [1]), .Q(rbus_wr_data_o[1]));
Q_FDP4EP \rbus_wr_data_o_REG[2] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [2]), .Q(rbus_wr_data_o[2]));
Q_FDP4EP \rbus_wr_data_o_REG[3] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [3]), .Q(rbus_wr_data_o[3]));
Q_FDP4EP \rbus_wr_data_o_REG[4] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [4]), .Q(rbus_wr_data_o[4]));
Q_FDP4EP \rbus_wr_data_o_REG[5] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [5]), .Q(rbus_wr_data_o[5]));
Q_FDP4EP \rbus_wr_data_o_REG[6] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [6]), .Q(rbus_wr_data_o[6]));
Q_FDP4EP \rbus_wr_data_o_REG[7] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [7]), .Q(rbus_wr_data_o[7]));
Q_FDP4EP \rbus_wr_data_o_REG[8] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [8]), .Q(rbus_wr_data_o[8]));
Q_FDP4EP \rbus_wr_data_o_REG[9] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [9]), .Q(rbus_wr_data_o[9]));
Q_FDP4EP \rbus_wr_data_o_REG[10] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [10]), .Q(rbus_wr_data_o[10]));
Q_FDP4EP \rbus_wr_data_o_REG[11] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [11]), .Q(rbus_wr_data_o[11]));
Q_FDP4EP \rbus_wr_data_o_REG[12] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [12]), .Q(rbus_wr_data_o[12]));
Q_FDP4EP \rbus_wr_data_o_REG[13] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [13]), .Q(rbus_wr_data_o[13]));
Q_FDP4EP \rbus_wr_data_o_REG[14] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [14]), .Q(rbus_wr_data_o[14]));
Q_FDP4EP \rbus_wr_data_o_REG[15] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [15]), .Q(rbus_wr_data_o[15]));
Q_FDP4EP \rbus_wr_data_o_REG[16] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [16]), .Q(rbus_wr_data_o[16]));
Q_FDP4EP \rbus_wr_data_o_REG[17] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [17]), .Q(rbus_wr_data_o[17]));
Q_FDP4EP \rbus_wr_data_o_REG[18] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [18]), .Q(rbus_wr_data_o[18]));
Q_FDP4EP \rbus_wr_data_o_REG[19] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [19]), .Q(rbus_wr_data_o[19]));
Q_FDP4EP \rbus_wr_data_o_REG[20] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [20]), .Q(rbus_wr_data_o[20]));
Q_FDP4EP \rbus_wr_data_o_REG[21] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [21]), .Q(rbus_wr_data_o[21]));
Q_FDP4EP \rbus_wr_data_o_REG[22] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [22]), .Q(rbus_wr_data_o[22]));
Q_FDP4EP \rbus_wr_data_o_REG[23] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [23]), .Q(rbus_wr_data_o[23]));
Q_FDP4EP \rbus_wr_data_o_REG[24] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [24]), .Q(rbus_wr_data_o[24]));
Q_FDP4EP \rbus_wr_data_o_REG[25] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [25]), .Q(rbus_wr_data_o[25]));
Q_FDP4EP \rbus_wr_data_o_REG[26] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [26]), .Q(rbus_wr_data_o[26]));
Q_FDP4EP \rbus_wr_data_o_REG[27] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [27]), .Q(rbus_wr_data_o[27]));
Q_FDP4EP \rbus_wr_data_o_REG[28] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [28]), .Q(rbus_wr_data_o[28]));
Q_FDP4EP \rbus_wr_data_o_REG[29] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [29]), .Q(rbus_wr_data_o[29]));
Q_FDP4EP \rbus_wr_data_o_REG[30] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [30]), .Q(rbus_wr_data_o[30]));
Q_FDP4EP \rbus_wr_data_o_REG[31] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_wr_data_i_reg [31]), .Q(rbus_wr_data_o[31]));
Q_FDP4EP \rbus_addr_o_REG[0] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [0]), .Q(rbus_addr_o[0]));
Q_FDP4EP \rbus_addr_o_REG[1] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [1]), .Q(rbus_addr_o[1]));
Q_FDP4EP \rbus_addr_o_REG[2] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [2]), .Q(rbus_addr_o[2]));
Q_FDP4EP \rbus_addr_o_REG[3] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [3]), .Q(rbus_addr_o[3]));
Q_FDP4EP \rbus_addr_o_REG[4] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [4]), .Q(rbus_addr_o[4]));
Q_FDP4EP \rbus_addr_o_REG[5] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [5]), .Q(rbus_addr_o[5]));
Q_FDP4EP \rbus_addr_o_REG[6] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [6]), .Q(rbus_addr_o[6]));
Q_FDP4EP \rbus_addr_o_REG[7] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [7]), .Q(rbus_addr_o[7]));
Q_FDP4EP \rbus_addr_o_REG[8] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [8]), .Q(rbus_addr_o[8]));
Q_FDP4EP \rbus_addr_o_REG[9] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [9]), .Q(rbus_addr_o[9]));
Q_FDP4EP \rbus_addr_o_REG[10] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [10]), .Q(rbus_addr_o[10]));
Q_FDP4EP \rbus_addr_o_REG[11] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [11]), .Q(rbus_addr_o[11]));
Q_FDP4EP \rbus_addr_o_REG[12] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [12]), .Q(rbus_addr_o[12]));
Q_FDP4EP \rbus_addr_o_REG[13] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [13]), .Q(rbus_addr_o[13]));
Q_FDP4EP \rbus_addr_o_REG[14] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [14]), .Q(rbus_addr_o[14]));
Q_FDP4EP \rbus_addr_o_REG[15] ( .CK(clk), .CE(n149), .R(n157), .D(\sync_io.rbus_addr_i_reg [15]), .Q(rbus_addr_o[15]));
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 sync_io  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "sync_io"
endmodule
