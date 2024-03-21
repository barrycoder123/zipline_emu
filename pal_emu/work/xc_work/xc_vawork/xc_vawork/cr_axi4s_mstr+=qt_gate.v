
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module cr_axi4s_mstr ( axi4s_mstr_rd, .axi4s_ob_out( {\axi4s_ob_out.tvalid , 
	\axi4s_ob_out.tlast , \axi4s_ob_out.tid [0], \axi4s_ob_out.tstrb [7], 
	\axi4s_ob_out.tstrb [6], \axi4s_ob_out.tstrb [5], 
	\axi4s_ob_out.tstrb [4], \axi4s_ob_out.tstrb [3], 
	\axi4s_ob_out.tstrb [2], \axi4s_ob_out.tstrb [1], 
	\axi4s_ob_out.tstrb [0], \axi4s_ob_out.tuser [7], 
	\axi4s_ob_out.tuser [6], \axi4s_ob_out.tuser [5], 
	\axi4s_ob_out.tuser [4], \axi4s_ob_out.tuser [3], 
	\axi4s_ob_out.tuser [2], \axi4s_ob_out.tuser [1], 
	\axi4s_ob_out.tuser [0], \axi4s_ob_out.tdata [63], 
	\axi4s_ob_out.tdata [62], \axi4s_ob_out.tdata [61], 
	\axi4s_ob_out.tdata [60], \axi4s_ob_out.tdata [59], 
	\axi4s_ob_out.tdata [58], \axi4s_ob_out.tdata [57], 
	\axi4s_ob_out.tdata [56], \axi4s_ob_out.tdata [55], 
	\axi4s_ob_out.tdata [54], \axi4s_ob_out.tdata [53], 
	\axi4s_ob_out.tdata [52], \axi4s_ob_out.tdata [51], 
	\axi4s_ob_out.tdata [50], \axi4s_ob_out.tdata [49], 
	\axi4s_ob_out.tdata [48], \axi4s_ob_out.tdata [47], 
	\axi4s_ob_out.tdata [46], \axi4s_ob_out.tdata [45], 
	\axi4s_ob_out.tdata [44], \axi4s_ob_out.tdata [43], 
	\axi4s_ob_out.tdata [42], \axi4s_ob_out.tdata [41], 
	\axi4s_ob_out.tdata [40], \axi4s_ob_out.tdata [39], 
	\axi4s_ob_out.tdata [38], \axi4s_ob_out.tdata [37], 
	\axi4s_ob_out.tdata [36], \axi4s_ob_out.tdata [35], 
	\axi4s_ob_out.tdata [34], \axi4s_ob_out.tdata [33], 
	\axi4s_ob_out.tdata [32], \axi4s_ob_out.tdata [31], 
	\axi4s_ob_out.tdata [30], \axi4s_ob_out.tdata [29], 
	\axi4s_ob_out.tdata [28], \axi4s_ob_out.tdata [27], 
	\axi4s_ob_out.tdata [26], \axi4s_ob_out.tdata [25], 
	\axi4s_ob_out.tdata [24], \axi4s_ob_out.tdata [23], 
	\axi4s_ob_out.tdata [22], \axi4s_ob_out.tdata [21], 
	\axi4s_ob_out.tdata [20], \axi4s_ob_out.tdata [19], 
	\axi4s_ob_out.tdata [18], \axi4s_ob_out.tdata [17], 
	\axi4s_ob_out.tdata [16], \axi4s_ob_out.tdata [15], 
	\axi4s_ob_out.tdata [14], \axi4s_ob_out.tdata [13], 
	\axi4s_ob_out.tdata [12], \axi4s_ob_out.tdata [11], 
	\axi4s_ob_out.tdata [10], \axi4s_ob_out.tdata [9], 
	\axi4s_ob_out.tdata [8], \axi4s_ob_out.tdata [7], 
	\axi4s_ob_out.tdata [6], \axi4s_ob_out.tdata [5], 
	\axi4s_ob_out.tdata [4], \axi4s_ob_out.tdata [3], 
	\axi4s_ob_out.tdata [2], \axi4s_ob_out.tdata [1], 
	\axi4s_ob_out.tdata [0]} ), clk, rst_n, .axi4s_in( {
	\axi4s_in.tvalid , \axi4s_in.tlast , \axi4s_in.tid [0], 
	\axi4s_in.tstrb [7], \axi4s_in.tstrb [6], \axi4s_in.tstrb [5], 
	\axi4s_in.tstrb [4], \axi4s_in.tstrb [3], \axi4s_in.tstrb [2], 
	\axi4s_in.tstrb [1], \axi4s_in.tstrb [0], \axi4s_in.tuser [7], 
	\axi4s_in.tuser [6], \axi4s_in.tuser [5], \axi4s_in.tuser [4], 
	\axi4s_in.tuser [3], \axi4s_in.tuser [2], \axi4s_in.tuser [1], 
	\axi4s_in.tuser [0], \axi4s_in.tdata [63], \axi4s_in.tdata [62], 
	\axi4s_in.tdata [61], \axi4s_in.tdata [60], \axi4s_in.tdata [59], 
	\axi4s_in.tdata [58], \axi4s_in.tdata [57], \axi4s_in.tdata [56], 
	\axi4s_in.tdata [55], \axi4s_in.tdata [54], \axi4s_in.tdata [53], 
	\axi4s_in.tdata [52], \axi4s_in.tdata [51], \axi4s_in.tdata [50], 
	\axi4s_in.tdata [49], \axi4s_in.tdata [48], \axi4s_in.tdata [47], 
	\axi4s_in.tdata [46], \axi4s_in.tdata [45], \axi4s_in.tdata [44], 
	\axi4s_in.tdata [43], \axi4s_in.tdata [42], \axi4s_in.tdata [41], 
	\axi4s_in.tdata [40], \axi4s_in.tdata [39], \axi4s_in.tdata [38], 
	\axi4s_in.tdata [37], \axi4s_in.tdata [36], \axi4s_in.tdata [35], 
	\axi4s_in.tdata [34], \axi4s_in.tdata [33], \axi4s_in.tdata [32], 
	\axi4s_in.tdata [31], \axi4s_in.tdata [30], \axi4s_in.tdata [29], 
	\axi4s_in.tdata [28], \axi4s_in.tdata [27], \axi4s_in.tdata [26], 
	\axi4s_in.tdata [25], \axi4s_in.tdata [24], \axi4s_in.tdata [23], 
	\axi4s_in.tdata [22], \axi4s_in.tdata [21], \axi4s_in.tdata [20], 
	\axi4s_in.tdata [19], \axi4s_in.tdata [18], \axi4s_in.tdata [17], 
	\axi4s_in.tdata [16], \axi4s_in.tdata [15], \axi4s_in.tdata [14], 
	\axi4s_in.tdata [13], \axi4s_in.tdata [12], \axi4s_in.tdata [11], 
	\axi4s_in.tdata [10], \axi4s_in.tdata [9], \axi4s_in.tdata [8], 
	\axi4s_in.tdata [7], \axi4s_in.tdata [6], \axi4s_in.tdata [5], 
	\axi4s_in.tdata [4], \axi4s_in.tdata [3], \axi4s_in.tdata [2], 
	\axi4s_in.tdata [1], \axi4s_in.tdata [0]} ), axi4s_in_empty, 
	axi4s_in_aempty, .axi4s_ob_in( {\axi4s_ob_in.tready } ));
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output axi4s_mstr_rd;
output \axi4s_ob_out.tvalid ;
output \axi4s_ob_out.tlast ;
output [0:0] \axi4s_ob_out.tid ;
output [7:0] \axi4s_ob_out.tstrb ;
output [7:0] \axi4s_ob_out.tuser ;
output [63:0] \axi4s_ob_out.tdata ;
wire [82:0] axi4s_ob_out;
input clk;
input rst_n;
input \axi4s_in.tvalid ;
input \axi4s_in.tlast ;
input [0:0] \axi4s_in.tid ;
input [7:0] \axi4s_in.tstrb ;
input [7:0] \axi4s_in.tuser ;
input [63:0] \axi4s_in.tdata ;
wire [82:0] axi4s_in;
input axi4s_in_empty;
input axi4s_in_aempty;
input \axi4s_ob_in.tready ;
wire [0:0] axi4s_ob_in;
wire _zy_simnet_axi4s_mstr_rd_0_w$;
wire [0:82] _zy_simnet_axi4s_ob_out_1_w$;
wire _zy_simnet_axi4s_ib_in_2_w$;
wire _zy_simnet_axi4s_ob_out_3_w$;
wire [0:81] _zy_simnet_axi4s_ob_out_payload_4_w$;
wire _zy_simnet_axi4s_ib_out_5_w$;
wire [0:81] _zy_simnet_axi4s_ib_out_payload_6_w$;
wire [82:0] axi4s_ib_out;
wire [0:0] axi4s_ib_in;
wire [81:0] axi4s_ib_out_payload;
wire [81:0] axi4s_ob_out_payload;
wire \axi4s_ib_out.tvalid ;
wire \axi4s_ib_out.tlast ;
wire [0:0] \axi4s_ib_out.tid ;
wire [7:0] \axi4s_ib_out.tstrb ;
wire [7:0] \axi4s_ib_out.tuser ;
wire [63:0] \axi4s_ib_out.tdata ;
wire \axi4s_ib_in.tready ;
wire \axi4s_ib_out_payload.tlast ;
wire [0:0] \axi4s_ib_out_payload.tid ;
wire [7:0] \axi4s_ib_out_payload.tstrb ;
wire [7:0] \axi4s_ib_out_payload.tuser ;
wire [63:0] \axi4s_ib_out_payload.tdata ;
wire \axi4s_ob_out_payload.tlast ;
wire [0:0] \axi4s_ob_out_payload.tid ;
wire [7:0] \axi4s_ob_out_payload.tstrb ;
wire [7:0] \axi4s_ob_out_payload.tuser ;
wire [63:0] \axi4s_ob_out_payload.tdata ;
tran (axi4s_ob_out[82], \axi4s_ob_out.tvalid );
tran (axi4s_ob_out[81], \axi4s_ob_out.tlast );
tran (axi4s_ob_out[80], \axi4s_ob_out.tid [0]);
tran (axi4s_ob_out[79], \axi4s_ob_out.tstrb [7]);
tran (axi4s_ob_out[78], \axi4s_ob_out.tstrb [6]);
tran (axi4s_ob_out[77], \axi4s_ob_out.tstrb [5]);
tran (axi4s_ob_out[76], \axi4s_ob_out.tstrb [4]);
tran (axi4s_ob_out[75], \axi4s_ob_out.tstrb [3]);
tran (axi4s_ob_out[74], \axi4s_ob_out.tstrb [2]);
tran (axi4s_ob_out[73], \axi4s_ob_out.tstrb [1]);
tran (axi4s_ob_out[72], \axi4s_ob_out.tstrb [0]);
tran (axi4s_ob_out[71], \axi4s_ob_out.tuser [7]);
tran (axi4s_ob_out[70], \axi4s_ob_out.tuser [6]);
tran (axi4s_ob_out[69], \axi4s_ob_out.tuser [5]);
tran (axi4s_ob_out[68], \axi4s_ob_out.tuser [4]);
tran (axi4s_ob_out[67], \axi4s_ob_out.tuser [3]);
tran (axi4s_ob_out[66], \axi4s_ob_out.tuser [2]);
tran (axi4s_ob_out[65], \axi4s_ob_out.tuser [1]);
tran (axi4s_ob_out[64], \axi4s_ob_out.tuser [0]);
tran (axi4s_ob_out[63], \axi4s_ob_out.tdata [63]);
tran (axi4s_ob_out[62], \axi4s_ob_out.tdata [62]);
tran (axi4s_ob_out[61], \axi4s_ob_out.tdata [61]);
tran (axi4s_ob_out[60], \axi4s_ob_out.tdata [60]);
tran (axi4s_ob_out[59], \axi4s_ob_out.tdata [59]);
tran (axi4s_ob_out[58], \axi4s_ob_out.tdata [58]);
tran (axi4s_ob_out[57], \axi4s_ob_out.tdata [57]);
tran (axi4s_ob_out[56], \axi4s_ob_out.tdata [56]);
tran (axi4s_ob_out[55], \axi4s_ob_out.tdata [55]);
tran (axi4s_ob_out[54], \axi4s_ob_out.tdata [54]);
tran (axi4s_ob_out[53], \axi4s_ob_out.tdata [53]);
tran (axi4s_ob_out[52], \axi4s_ob_out.tdata [52]);
tran (axi4s_ob_out[51], \axi4s_ob_out.tdata [51]);
tran (axi4s_ob_out[50], \axi4s_ob_out.tdata [50]);
tran (axi4s_ob_out[49], \axi4s_ob_out.tdata [49]);
tran (axi4s_ob_out[48], \axi4s_ob_out.tdata [48]);
tran (axi4s_ob_out[47], \axi4s_ob_out.tdata [47]);
tran (axi4s_ob_out[46], \axi4s_ob_out.tdata [46]);
tran (axi4s_ob_out[45], \axi4s_ob_out.tdata [45]);
tran (axi4s_ob_out[44], \axi4s_ob_out.tdata [44]);
tran (axi4s_ob_out[43], \axi4s_ob_out.tdata [43]);
tran (axi4s_ob_out[42], \axi4s_ob_out.tdata [42]);
tran (axi4s_ob_out[41], \axi4s_ob_out.tdata [41]);
tran (axi4s_ob_out[40], \axi4s_ob_out.tdata [40]);
tran (axi4s_ob_out[39], \axi4s_ob_out.tdata [39]);
tran (axi4s_ob_out[38], \axi4s_ob_out.tdata [38]);
tran (axi4s_ob_out[37], \axi4s_ob_out.tdata [37]);
tran (axi4s_ob_out[36], \axi4s_ob_out.tdata [36]);
tran (axi4s_ob_out[35], \axi4s_ob_out.tdata [35]);
tran (axi4s_ob_out[34], \axi4s_ob_out.tdata [34]);
tran (axi4s_ob_out[33], \axi4s_ob_out.tdata [33]);
tran (axi4s_ob_out[32], \axi4s_ob_out.tdata [32]);
tran (axi4s_ob_out[31], \axi4s_ob_out.tdata [31]);
tran (axi4s_ob_out[30], \axi4s_ob_out.tdata [30]);
tran (axi4s_ob_out[29], \axi4s_ob_out.tdata [29]);
tran (axi4s_ob_out[28], \axi4s_ob_out.tdata [28]);
tran (axi4s_ob_out[27], \axi4s_ob_out.tdata [27]);
tran (axi4s_ob_out[26], \axi4s_ob_out.tdata [26]);
tran (axi4s_ob_out[25], \axi4s_ob_out.tdata [25]);
tran (axi4s_ob_out[24], \axi4s_ob_out.tdata [24]);
tran (axi4s_ob_out[23], \axi4s_ob_out.tdata [23]);
tran (axi4s_ob_out[22], \axi4s_ob_out.tdata [22]);
tran (axi4s_ob_out[21], \axi4s_ob_out.tdata [21]);
tran (axi4s_ob_out[20], \axi4s_ob_out.tdata [20]);
tran (axi4s_ob_out[19], \axi4s_ob_out.tdata [19]);
tran (axi4s_ob_out[18], \axi4s_ob_out.tdata [18]);
tran (axi4s_ob_out[17], \axi4s_ob_out.tdata [17]);
tran (axi4s_ob_out[16], \axi4s_ob_out.tdata [16]);
tran (axi4s_ob_out[15], \axi4s_ob_out.tdata [15]);
tran (axi4s_ob_out[14], \axi4s_ob_out.tdata [14]);
tran (axi4s_ob_out[13], \axi4s_ob_out.tdata [13]);
tran (axi4s_ob_out[12], \axi4s_ob_out.tdata [12]);
tran (axi4s_ob_out[11], \axi4s_ob_out.tdata [11]);
tran (axi4s_ob_out[10], \axi4s_ob_out.tdata [10]);
tran (axi4s_ob_out[9], \axi4s_ob_out.tdata [9]);
tran (axi4s_ob_out[8], \axi4s_ob_out.tdata [8]);
tran (axi4s_ob_out[7], \axi4s_ob_out.tdata [7]);
tran (axi4s_ob_out[6], \axi4s_ob_out.tdata [6]);
tran (axi4s_ob_out[5], \axi4s_ob_out.tdata [5]);
tran (axi4s_ob_out[4], \axi4s_ob_out.tdata [4]);
tran (axi4s_ob_out[3], \axi4s_ob_out.tdata [3]);
tran (axi4s_ob_out[2], \axi4s_ob_out.tdata [2]);
tran (axi4s_ob_out[1], \axi4s_ob_out.tdata [1]);
tran (axi4s_ob_out[0], \axi4s_ob_out.tdata [0]);
tran (axi4s_in[82], \axi4s_in.tvalid );
tran (axi4s_in[81], \axi4s_in.tlast );
tran (axi4s_in[80], \axi4s_in.tid [0]);
tran (axi4s_in[79], \axi4s_in.tstrb [7]);
tran (axi4s_in[78], \axi4s_in.tstrb [6]);
tran (axi4s_in[77], \axi4s_in.tstrb [5]);
tran (axi4s_in[76], \axi4s_in.tstrb [4]);
tran (axi4s_in[75], \axi4s_in.tstrb [3]);
tran (axi4s_in[74], \axi4s_in.tstrb [2]);
tran (axi4s_in[73], \axi4s_in.tstrb [1]);
tran (axi4s_in[72], \axi4s_in.tstrb [0]);
tran (axi4s_in[71], \axi4s_in.tuser [7]);
tran (axi4s_in[70], \axi4s_in.tuser [6]);
tran (axi4s_in[69], \axi4s_in.tuser [5]);
tran (axi4s_in[68], \axi4s_in.tuser [4]);
tran (axi4s_in[67], \axi4s_in.tuser [3]);
tran (axi4s_in[66], \axi4s_in.tuser [2]);
tran (axi4s_in[65], \axi4s_in.tuser [1]);
tran (axi4s_in[64], \axi4s_in.tuser [0]);
tran (axi4s_in[63], \axi4s_in.tdata [63]);
tran (axi4s_in[62], \axi4s_in.tdata [62]);
tran (axi4s_in[61], \axi4s_in.tdata [61]);
tran (axi4s_in[60], \axi4s_in.tdata [60]);
tran (axi4s_in[59], \axi4s_in.tdata [59]);
tran (axi4s_in[58], \axi4s_in.tdata [58]);
tran (axi4s_in[57], \axi4s_in.tdata [57]);
tran (axi4s_in[56], \axi4s_in.tdata [56]);
tran (axi4s_in[55], \axi4s_in.tdata [55]);
tran (axi4s_in[54], \axi4s_in.tdata [54]);
tran (axi4s_in[53], \axi4s_in.tdata [53]);
tran (axi4s_in[52], \axi4s_in.tdata [52]);
tran (axi4s_in[51], \axi4s_in.tdata [51]);
tran (axi4s_in[50], \axi4s_in.tdata [50]);
tran (axi4s_in[49], \axi4s_in.tdata [49]);
tran (axi4s_in[48], \axi4s_in.tdata [48]);
tran (axi4s_in[47], \axi4s_in.tdata [47]);
tran (axi4s_in[46], \axi4s_in.tdata [46]);
tran (axi4s_in[45], \axi4s_in.tdata [45]);
tran (axi4s_in[44], \axi4s_in.tdata [44]);
tran (axi4s_in[43], \axi4s_in.tdata [43]);
tran (axi4s_in[42], \axi4s_in.tdata [42]);
tran (axi4s_in[41], \axi4s_in.tdata [41]);
tran (axi4s_in[40], \axi4s_in.tdata [40]);
tran (axi4s_in[39], \axi4s_in.tdata [39]);
tran (axi4s_in[38], \axi4s_in.tdata [38]);
tran (axi4s_in[37], \axi4s_in.tdata [37]);
tran (axi4s_in[36], \axi4s_in.tdata [36]);
tran (axi4s_in[35], \axi4s_in.tdata [35]);
tran (axi4s_in[34], \axi4s_in.tdata [34]);
tran (axi4s_in[33], \axi4s_in.tdata [33]);
tran (axi4s_in[32], \axi4s_in.tdata [32]);
tran (axi4s_in[31], \axi4s_in.tdata [31]);
tran (axi4s_in[30], \axi4s_in.tdata [30]);
tran (axi4s_in[29], \axi4s_in.tdata [29]);
tran (axi4s_in[28], \axi4s_in.tdata [28]);
tran (axi4s_in[27], \axi4s_in.tdata [27]);
tran (axi4s_in[26], \axi4s_in.tdata [26]);
tran (axi4s_in[25], \axi4s_in.tdata [25]);
tran (axi4s_in[24], \axi4s_in.tdata [24]);
tran (axi4s_in[23], \axi4s_in.tdata [23]);
tran (axi4s_in[22], \axi4s_in.tdata [22]);
tran (axi4s_in[21], \axi4s_in.tdata [21]);
tran (axi4s_in[20], \axi4s_in.tdata [20]);
tran (axi4s_in[19], \axi4s_in.tdata [19]);
tran (axi4s_in[18], \axi4s_in.tdata [18]);
tran (axi4s_in[17], \axi4s_in.tdata [17]);
tran (axi4s_in[16], \axi4s_in.tdata [16]);
tran (axi4s_in[15], \axi4s_in.tdata [15]);
tran (axi4s_in[14], \axi4s_in.tdata [14]);
tran (axi4s_in[13], \axi4s_in.tdata [13]);
tran (axi4s_in[12], \axi4s_in.tdata [12]);
tran (axi4s_in[11], \axi4s_in.tdata [11]);
tran (axi4s_in[10], \axi4s_in.tdata [10]);
tran (axi4s_in[9], \axi4s_in.tdata [9]);
tran (axi4s_in[8], \axi4s_in.tdata [8]);
tran (axi4s_in[7], \axi4s_in.tdata [7]);
tran (axi4s_in[6], \axi4s_in.tdata [6]);
tran (axi4s_in[5], \axi4s_in.tdata [5]);
tran (axi4s_in[4], \axi4s_in.tdata [4]);
tran (axi4s_in[3], \axi4s_in.tdata [3]);
tran (axi4s_in[2], \axi4s_in.tdata [2]);
tran (axi4s_in[1], \axi4s_in.tdata [1]);
tran (axi4s_in[0], \axi4s_in.tdata [0]);
tran (axi4s_ob_in[0], \axi4s_ob_in.tready );
tran (axi4s_ib_out[0], \axi4s_ib_out.tdata [0]);
tran (axi4s_ib_out[1], \axi4s_ib_out.tdata [1]);
tran (axi4s_ib_out[2], \axi4s_ib_out.tdata [2]);
tran (axi4s_ib_out[3], \axi4s_ib_out.tdata [3]);
tran (axi4s_ib_out[4], \axi4s_ib_out.tdata [4]);
tran (axi4s_ib_out[5], \axi4s_ib_out.tdata [5]);
tran (axi4s_ib_out[6], \axi4s_ib_out.tdata [6]);
tran (axi4s_ib_out[7], \axi4s_ib_out.tdata [7]);
tran (axi4s_ib_out[8], \axi4s_ib_out.tdata [8]);
tran (axi4s_ib_out[9], \axi4s_ib_out.tdata [9]);
tran (axi4s_ib_out[10], \axi4s_ib_out.tdata [10]);
tran (axi4s_ib_out[11], \axi4s_ib_out.tdata [11]);
tran (axi4s_ib_out[12], \axi4s_ib_out.tdata [12]);
tran (axi4s_ib_out[13], \axi4s_ib_out.tdata [13]);
tran (axi4s_ib_out[14], \axi4s_ib_out.tdata [14]);
tran (axi4s_ib_out[15], \axi4s_ib_out.tdata [15]);
tran (axi4s_ib_out[16], \axi4s_ib_out.tdata [16]);
tran (axi4s_ib_out[17], \axi4s_ib_out.tdata [17]);
tran (axi4s_ib_out[18], \axi4s_ib_out.tdata [18]);
tran (axi4s_ib_out[19], \axi4s_ib_out.tdata [19]);
tran (axi4s_ib_out[20], \axi4s_ib_out.tdata [20]);
tran (axi4s_ib_out[21], \axi4s_ib_out.tdata [21]);
tran (axi4s_ib_out[22], \axi4s_ib_out.tdata [22]);
tran (axi4s_ib_out[23], \axi4s_ib_out.tdata [23]);
tran (axi4s_ib_out[24], \axi4s_ib_out.tdata [24]);
tran (axi4s_ib_out[25], \axi4s_ib_out.tdata [25]);
tran (axi4s_ib_out[26], \axi4s_ib_out.tdata [26]);
tran (axi4s_ib_out[27], \axi4s_ib_out.tdata [27]);
tran (axi4s_ib_out[28], \axi4s_ib_out.tdata [28]);
tran (axi4s_ib_out[29], \axi4s_ib_out.tdata [29]);
tran (axi4s_ib_out[30], \axi4s_ib_out.tdata [30]);
tran (axi4s_ib_out[31], \axi4s_ib_out.tdata [31]);
tran (axi4s_ib_out[32], \axi4s_ib_out.tdata [32]);
tran (axi4s_ib_out[33], \axi4s_ib_out.tdata [33]);
tran (axi4s_ib_out[34], \axi4s_ib_out.tdata [34]);
tran (axi4s_ib_out[35], \axi4s_ib_out.tdata [35]);
tran (axi4s_ib_out[36], \axi4s_ib_out.tdata [36]);
tran (axi4s_ib_out[37], \axi4s_ib_out.tdata [37]);
tran (axi4s_ib_out[38], \axi4s_ib_out.tdata [38]);
tran (axi4s_ib_out[39], \axi4s_ib_out.tdata [39]);
tran (axi4s_ib_out[40], \axi4s_ib_out.tdata [40]);
tran (axi4s_ib_out[41], \axi4s_ib_out.tdata [41]);
tran (axi4s_ib_out[42], \axi4s_ib_out.tdata [42]);
tran (axi4s_ib_out[43], \axi4s_ib_out.tdata [43]);
tran (axi4s_ib_out[44], \axi4s_ib_out.tdata [44]);
tran (axi4s_ib_out[45], \axi4s_ib_out.tdata [45]);
tran (axi4s_ib_out[46], \axi4s_ib_out.tdata [46]);
tran (axi4s_ib_out[47], \axi4s_ib_out.tdata [47]);
tran (axi4s_ib_out[48], \axi4s_ib_out.tdata [48]);
tran (axi4s_ib_out[49], \axi4s_ib_out.tdata [49]);
tran (axi4s_ib_out[50], \axi4s_ib_out.tdata [50]);
tran (axi4s_ib_out[51], \axi4s_ib_out.tdata [51]);
tran (axi4s_ib_out[52], \axi4s_ib_out.tdata [52]);
tran (axi4s_ib_out[53], \axi4s_ib_out.tdata [53]);
tran (axi4s_ib_out[54], \axi4s_ib_out.tdata [54]);
tran (axi4s_ib_out[55], \axi4s_ib_out.tdata [55]);
tran (axi4s_ib_out[56], \axi4s_ib_out.tdata [56]);
tran (axi4s_ib_out[57], \axi4s_ib_out.tdata [57]);
tran (axi4s_ib_out[58], \axi4s_ib_out.tdata [58]);
tran (axi4s_ib_out[59], \axi4s_ib_out.tdata [59]);
tran (axi4s_ib_out[60], \axi4s_ib_out.tdata [60]);
tran (axi4s_ib_out[61], \axi4s_ib_out.tdata [61]);
tran (axi4s_ib_out[62], \axi4s_ib_out.tdata [62]);
tran (axi4s_ib_out[63], \axi4s_ib_out.tdata [63]);
tran (axi4s_ib_out[64], \axi4s_ib_out.tuser [0]);
tran (axi4s_ib_out[65], \axi4s_ib_out.tuser [1]);
tran (axi4s_ib_out[66], \axi4s_ib_out.tuser [2]);
tran (axi4s_ib_out[67], \axi4s_ib_out.tuser [3]);
tran (axi4s_ib_out[68], \axi4s_ib_out.tuser [4]);
tran (axi4s_ib_out[69], \axi4s_ib_out.tuser [5]);
tran (axi4s_ib_out[70], \axi4s_ib_out.tuser [6]);
tran (axi4s_ib_out[71], \axi4s_ib_out.tuser [7]);
tran (axi4s_ib_out[72], \axi4s_ib_out.tstrb [0]);
tran (axi4s_ib_out[73], \axi4s_ib_out.tstrb [1]);
tran (axi4s_ib_out[74], \axi4s_ib_out.tstrb [2]);
tran (axi4s_ib_out[75], \axi4s_ib_out.tstrb [3]);
tran (axi4s_ib_out[76], \axi4s_ib_out.tstrb [4]);
tran (axi4s_ib_out[77], \axi4s_ib_out.tstrb [5]);
tran (axi4s_ib_out[78], \axi4s_ib_out.tstrb [6]);
tran (axi4s_ib_out[79], \axi4s_ib_out.tstrb [7]);
tran (axi4s_ib_out[80], \axi4s_ib_out.tid [0]);
tran (axi4s_ib_out[81], \axi4s_ib_out.tlast );
tran (axi4s_ib_out[82], \axi4s_ib_out.tvalid );
tran (axi4s_ob_out_payload[0], \axi4s_ob_out_payload.tdata [0]);
tran (axi4s_ob_out_payload[1], \axi4s_ob_out_payload.tdata [1]);
tran (axi4s_ob_out_payload[2], \axi4s_ob_out_payload.tdata [2]);
tran (axi4s_ob_out_payload[3], \axi4s_ob_out_payload.tdata [3]);
tran (axi4s_ob_out_payload[4], \axi4s_ob_out_payload.tdata [4]);
tran (axi4s_ob_out_payload[5], \axi4s_ob_out_payload.tdata [5]);
tran (axi4s_ob_out_payload[6], \axi4s_ob_out_payload.tdata [6]);
tran (axi4s_ob_out_payload[7], \axi4s_ob_out_payload.tdata [7]);
tran (axi4s_ob_out_payload[8], \axi4s_ob_out_payload.tdata [8]);
tran (axi4s_ob_out_payload[9], \axi4s_ob_out_payload.tdata [9]);
tran (axi4s_ob_out_payload[10], \axi4s_ob_out_payload.tdata [10]);
tran (axi4s_ob_out_payload[11], \axi4s_ob_out_payload.tdata [11]);
tran (axi4s_ob_out_payload[12], \axi4s_ob_out_payload.tdata [12]);
tran (axi4s_ob_out_payload[13], \axi4s_ob_out_payload.tdata [13]);
tran (axi4s_ob_out_payload[14], \axi4s_ob_out_payload.tdata [14]);
tran (axi4s_ob_out_payload[15], \axi4s_ob_out_payload.tdata [15]);
tran (axi4s_ob_out_payload[16], \axi4s_ob_out_payload.tdata [16]);
tran (axi4s_ob_out_payload[17], \axi4s_ob_out_payload.tdata [17]);
tran (axi4s_ob_out_payload[18], \axi4s_ob_out_payload.tdata [18]);
tran (axi4s_ob_out_payload[19], \axi4s_ob_out_payload.tdata [19]);
tran (axi4s_ob_out_payload[20], \axi4s_ob_out_payload.tdata [20]);
tran (axi4s_ob_out_payload[21], \axi4s_ob_out_payload.tdata [21]);
tran (axi4s_ob_out_payload[22], \axi4s_ob_out_payload.tdata [22]);
tran (axi4s_ob_out_payload[23], \axi4s_ob_out_payload.tdata [23]);
tran (axi4s_ob_out_payload[24], \axi4s_ob_out_payload.tdata [24]);
tran (axi4s_ob_out_payload[25], \axi4s_ob_out_payload.tdata [25]);
tran (axi4s_ob_out_payload[26], \axi4s_ob_out_payload.tdata [26]);
tran (axi4s_ob_out_payload[27], \axi4s_ob_out_payload.tdata [27]);
tran (axi4s_ob_out_payload[28], \axi4s_ob_out_payload.tdata [28]);
tran (axi4s_ob_out_payload[29], \axi4s_ob_out_payload.tdata [29]);
tran (axi4s_ob_out_payload[30], \axi4s_ob_out_payload.tdata [30]);
tran (axi4s_ob_out_payload[31], \axi4s_ob_out_payload.tdata [31]);
tran (axi4s_ob_out_payload[32], \axi4s_ob_out_payload.tdata [32]);
tran (axi4s_ob_out_payload[33], \axi4s_ob_out_payload.tdata [33]);
tran (axi4s_ob_out_payload[34], \axi4s_ob_out_payload.tdata [34]);
tran (axi4s_ob_out_payload[35], \axi4s_ob_out_payload.tdata [35]);
tran (axi4s_ob_out_payload[36], \axi4s_ob_out_payload.tdata [36]);
tran (axi4s_ob_out_payload[37], \axi4s_ob_out_payload.tdata [37]);
tran (axi4s_ob_out_payload[38], \axi4s_ob_out_payload.tdata [38]);
tran (axi4s_ob_out_payload[39], \axi4s_ob_out_payload.tdata [39]);
tran (axi4s_ob_out_payload[40], \axi4s_ob_out_payload.tdata [40]);
tran (axi4s_ob_out_payload[41], \axi4s_ob_out_payload.tdata [41]);
tran (axi4s_ob_out_payload[42], \axi4s_ob_out_payload.tdata [42]);
tran (axi4s_ob_out_payload[43], \axi4s_ob_out_payload.tdata [43]);
tran (axi4s_ob_out_payload[44], \axi4s_ob_out_payload.tdata [44]);
tran (axi4s_ob_out_payload[45], \axi4s_ob_out_payload.tdata [45]);
tran (axi4s_ob_out_payload[46], \axi4s_ob_out_payload.tdata [46]);
tran (axi4s_ob_out_payload[47], \axi4s_ob_out_payload.tdata [47]);
tran (axi4s_ob_out_payload[48], \axi4s_ob_out_payload.tdata [48]);
tran (axi4s_ob_out_payload[49], \axi4s_ob_out_payload.tdata [49]);
tran (axi4s_ob_out_payload[50], \axi4s_ob_out_payload.tdata [50]);
tran (axi4s_ob_out_payload[51], \axi4s_ob_out_payload.tdata [51]);
tran (axi4s_ob_out_payload[52], \axi4s_ob_out_payload.tdata [52]);
tran (axi4s_ob_out_payload[53], \axi4s_ob_out_payload.tdata [53]);
tran (axi4s_ob_out_payload[54], \axi4s_ob_out_payload.tdata [54]);
tran (axi4s_ob_out_payload[55], \axi4s_ob_out_payload.tdata [55]);
tran (axi4s_ob_out_payload[56], \axi4s_ob_out_payload.tdata [56]);
tran (axi4s_ob_out_payload[57], \axi4s_ob_out_payload.tdata [57]);
tran (axi4s_ob_out_payload[58], \axi4s_ob_out_payload.tdata [58]);
tran (axi4s_ob_out_payload[59], \axi4s_ob_out_payload.tdata [59]);
tran (axi4s_ob_out_payload[60], \axi4s_ob_out_payload.tdata [60]);
tran (axi4s_ob_out_payload[61], \axi4s_ob_out_payload.tdata [61]);
tran (axi4s_ob_out_payload[62], \axi4s_ob_out_payload.tdata [62]);
tran (axi4s_ob_out_payload[63], \axi4s_ob_out_payload.tdata [63]);
tran (axi4s_ob_out_payload[64], \axi4s_ob_out_payload.tuser [0]);
tran (axi4s_ob_out_payload[65], \axi4s_ob_out_payload.tuser [1]);
tran (axi4s_ob_out_payload[66], \axi4s_ob_out_payload.tuser [2]);
tran (axi4s_ob_out_payload[67], \axi4s_ob_out_payload.tuser [3]);
tran (axi4s_ob_out_payload[68], \axi4s_ob_out_payload.tuser [4]);
tran (axi4s_ob_out_payload[69], \axi4s_ob_out_payload.tuser [5]);
tran (axi4s_ob_out_payload[70], \axi4s_ob_out_payload.tuser [6]);
tran (axi4s_ob_out_payload[71], \axi4s_ob_out_payload.tuser [7]);
tran (axi4s_ob_out_payload[72], \axi4s_ob_out_payload.tstrb [0]);
tran (axi4s_ob_out_payload[73], \axi4s_ob_out_payload.tstrb [1]);
tran (axi4s_ob_out_payload[74], \axi4s_ob_out_payload.tstrb [2]);
tran (axi4s_ob_out_payload[75], \axi4s_ob_out_payload.tstrb [3]);
tran (axi4s_ob_out_payload[76], \axi4s_ob_out_payload.tstrb [4]);
tran (axi4s_ob_out_payload[77], \axi4s_ob_out_payload.tstrb [5]);
tran (axi4s_ob_out_payload[78], \axi4s_ob_out_payload.tstrb [6]);
tran (axi4s_ob_out_payload[79], \axi4s_ob_out_payload.tstrb [7]);
tran (axi4s_ob_out_payload[80], \axi4s_ob_out_payload.tid [0]);
tran (axi4s_ob_out_payload[81], \axi4s_ob_out_payload.tlast );
tran (axi4s_ib_in[0], \axi4s_ib_in.tready );
tran (axi4s_ib_out_payload[0], \axi4s_ib_out_payload.tdata [0]);
tran (axi4s_ib_out_payload[1], \axi4s_ib_out_payload.tdata [1]);
tran (axi4s_ib_out_payload[2], \axi4s_ib_out_payload.tdata [2]);
tran (axi4s_ib_out_payload[3], \axi4s_ib_out_payload.tdata [3]);
tran (axi4s_ib_out_payload[4], \axi4s_ib_out_payload.tdata [4]);
tran (axi4s_ib_out_payload[5], \axi4s_ib_out_payload.tdata [5]);
tran (axi4s_ib_out_payload[6], \axi4s_ib_out_payload.tdata [6]);
tran (axi4s_ib_out_payload[7], \axi4s_ib_out_payload.tdata [7]);
tran (axi4s_ib_out_payload[8], \axi4s_ib_out_payload.tdata [8]);
tran (axi4s_ib_out_payload[9], \axi4s_ib_out_payload.tdata [9]);
tran (axi4s_ib_out_payload[10], \axi4s_ib_out_payload.tdata [10]);
tran (axi4s_ib_out_payload[11], \axi4s_ib_out_payload.tdata [11]);
tran (axi4s_ib_out_payload[12], \axi4s_ib_out_payload.tdata [12]);
tran (axi4s_ib_out_payload[13], \axi4s_ib_out_payload.tdata [13]);
tran (axi4s_ib_out_payload[14], \axi4s_ib_out_payload.tdata [14]);
tran (axi4s_ib_out_payload[15], \axi4s_ib_out_payload.tdata [15]);
tran (axi4s_ib_out_payload[16], \axi4s_ib_out_payload.tdata [16]);
tran (axi4s_ib_out_payload[17], \axi4s_ib_out_payload.tdata [17]);
tran (axi4s_ib_out_payload[18], \axi4s_ib_out_payload.tdata [18]);
tran (axi4s_ib_out_payload[19], \axi4s_ib_out_payload.tdata [19]);
tran (axi4s_ib_out_payload[20], \axi4s_ib_out_payload.tdata [20]);
tran (axi4s_ib_out_payload[21], \axi4s_ib_out_payload.tdata [21]);
tran (axi4s_ib_out_payload[22], \axi4s_ib_out_payload.tdata [22]);
tran (axi4s_ib_out_payload[23], \axi4s_ib_out_payload.tdata [23]);
tran (axi4s_ib_out_payload[24], \axi4s_ib_out_payload.tdata [24]);
tran (axi4s_ib_out_payload[25], \axi4s_ib_out_payload.tdata [25]);
tran (axi4s_ib_out_payload[26], \axi4s_ib_out_payload.tdata [26]);
tran (axi4s_ib_out_payload[27], \axi4s_ib_out_payload.tdata [27]);
tran (axi4s_ib_out_payload[28], \axi4s_ib_out_payload.tdata [28]);
tran (axi4s_ib_out_payload[29], \axi4s_ib_out_payload.tdata [29]);
tran (axi4s_ib_out_payload[30], \axi4s_ib_out_payload.tdata [30]);
tran (axi4s_ib_out_payload[31], \axi4s_ib_out_payload.tdata [31]);
tran (axi4s_ib_out_payload[32], \axi4s_ib_out_payload.tdata [32]);
tran (axi4s_ib_out_payload[33], \axi4s_ib_out_payload.tdata [33]);
tran (axi4s_ib_out_payload[34], \axi4s_ib_out_payload.tdata [34]);
tran (axi4s_ib_out_payload[35], \axi4s_ib_out_payload.tdata [35]);
tran (axi4s_ib_out_payload[36], \axi4s_ib_out_payload.tdata [36]);
tran (axi4s_ib_out_payload[37], \axi4s_ib_out_payload.tdata [37]);
tran (axi4s_ib_out_payload[38], \axi4s_ib_out_payload.tdata [38]);
tran (axi4s_ib_out_payload[39], \axi4s_ib_out_payload.tdata [39]);
tran (axi4s_ib_out_payload[40], \axi4s_ib_out_payload.tdata [40]);
tran (axi4s_ib_out_payload[41], \axi4s_ib_out_payload.tdata [41]);
tran (axi4s_ib_out_payload[42], \axi4s_ib_out_payload.tdata [42]);
tran (axi4s_ib_out_payload[43], \axi4s_ib_out_payload.tdata [43]);
tran (axi4s_ib_out_payload[44], \axi4s_ib_out_payload.tdata [44]);
tran (axi4s_ib_out_payload[45], \axi4s_ib_out_payload.tdata [45]);
tran (axi4s_ib_out_payload[46], \axi4s_ib_out_payload.tdata [46]);
tran (axi4s_ib_out_payload[47], \axi4s_ib_out_payload.tdata [47]);
tran (axi4s_ib_out_payload[48], \axi4s_ib_out_payload.tdata [48]);
tran (axi4s_ib_out_payload[49], \axi4s_ib_out_payload.tdata [49]);
tran (axi4s_ib_out_payload[50], \axi4s_ib_out_payload.tdata [50]);
tran (axi4s_ib_out_payload[51], \axi4s_ib_out_payload.tdata [51]);
tran (axi4s_ib_out_payload[52], \axi4s_ib_out_payload.tdata [52]);
tran (axi4s_ib_out_payload[53], \axi4s_ib_out_payload.tdata [53]);
tran (axi4s_ib_out_payload[54], \axi4s_ib_out_payload.tdata [54]);
tran (axi4s_ib_out_payload[55], \axi4s_ib_out_payload.tdata [55]);
tran (axi4s_ib_out_payload[56], \axi4s_ib_out_payload.tdata [56]);
tran (axi4s_ib_out_payload[57], \axi4s_ib_out_payload.tdata [57]);
tran (axi4s_ib_out_payload[58], \axi4s_ib_out_payload.tdata [58]);
tran (axi4s_ib_out_payload[59], \axi4s_ib_out_payload.tdata [59]);
tran (axi4s_ib_out_payload[60], \axi4s_ib_out_payload.tdata [60]);
tran (axi4s_ib_out_payload[61], \axi4s_ib_out_payload.tdata [61]);
tran (axi4s_ib_out_payload[62], \axi4s_ib_out_payload.tdata [62]);
tran (axi4s_ib_out_payload[63], \axi4s_ib_out_payload.tdata [63]);
tran (axi4s_ib_out_payload[64], \axi4s_ib_out_payload.tuser [0]);
tran (axi4s_ib_out_payload[65], \axi4s_ib_out_payload.tuser [1]);
tran (axi4s_ib_out_payload[66], \axi4s_ib_out_payload.tuser [2]);
tran (axi4s_ib_out_payload[67], \axi4s_ib_out_payload.tuser [3]);
tran (axi4s_ib_out_payload[68], \axi4s_ib_out_payload.tuser [4]);
tran (axi4s_ib_out_payload[69], \axi4s_ib_out_payload.tuser [5]);
tran (axi4s_ib_out_payload[70], \axi4s_ib_out_payload.tuser [6]);
tran (axi4s_ib_out_payload[71], \axi4s_ib_out_payload.tuser [7]);
tran (axi4s_ib_out_payload[72], \axi4s_ib_out_payload.tstrb [0]);
tran (axi4s_ib_out_payload[73], \axi4s_ib_out_payload.tstrb [1]);
tran (axi4s_ib_out_payload[74], \axi4s_ib_out_payload.tstrb [2]);
tran (axi4s_ib_out_payload[75], \axi4s_ib_out_payload.tstrb [3]);
tran (axi4s_ib_out_payload[76], \axi4s_ib_out_payload.tstrb [4]);
tran (axi4s_ib_out_payload[77], \axi4s_ib_out_payload.tstrb [5]);
tran (axi4s_ib_out_payload[78], \axi4s_ib_out_payload.tstrb [6]);
tran (axi4s_ib_out_payload[79], \axi4s_ib_out_payload.tstrb [7]);
tran (axi4s_ib_out_payload[80], \axi4s_ib_out_payload.tid [0]);
tran (axi4s_ib_out_payload[81], \axi4s_ib_out_payload.tlast );
Q_NR02 U0 ( .A0(axi4s_mstr_rd), .A1(n1), .Z(n2));
Q_AN02 U1 ( .A0(axi4s_mstr_rd), .A1(axi4s_in[82]), .Z(n3));
Q_AN02 U2 ( .A0(axi4s_ib_out[82]), .A1(axi4s_ib_in[0]), .Z(n1));
ixc_assign _zz_strnp_1 ( axi4s_ib_out_payload[80], axi4s_ib_out[80]);
ixc_assign_8 _zz_strnp_2 ( axi4s_ib_out_payload[79:72], axi4s_ib_out[79:72]);
ixc_assign_8 _zz_strnp_3 ( axi4s_ib_out_payload[71:64], axi4s_ib_out[71:64]);
ixc_assign_64 _zz_strnp_4 ( axi4s_ib_out_payload[63:0], axi4s_ib_out[63:0]);
ixc_assign _zz_strnp_6 ( axi4s_ob_out[80], axi4s_ob_out_payload[80]);
ixc_assign_8 _zz_strnp_7 ( axi4s_ob_out[79:72], axi4s_ob_out_payload[79:72]);
ixc_assign_8 _zz_strnp_8 ( axi4s_ob_out[71:64], axi4s_ob_out_payload[71:64]);
ixc_assign_64 _zz_strnp_9 ( axi4s_ob_out[63:0], axi4s_ob_out_payload[63:0]);
ixc_assign _zz_strnp_12 ( axi4s_ib_in[0], _zy_simnet_axi4s_ib_in_2_w$);
ixc_assign _zz_strnp_13 ( axi4s_ob_out[82], _zy_simnet_axi4s_ob_out_3_w$);
ixc_assign_82 _zz_strnp_14 ( axi4s_ob_out_payload[81:0], 
	_zy_simnet_axi4s_ob_out_payload_4_w$[0:81]);
ixc_assign _zz_strnp_15 ( _zy_simnet_axi4s_ib_out_5_w$, axi4s_ib_out[82]);
ixc_assign_82 _zz_strnp_16 ( _zy_simnet_axi4s_ib_out_payload_6_w$[0:81], 
	axi4s_ib_out_payload[81:0]);
axi_channel_reg_slice u_axi_channel_reg_slice ( .ready_src( 
	_zy_simnet_axi4s_ib_in_2_w$), .valid_dst( 
	_zy_simnet_axi4s_ob_out_3_w$), .payload_dst( 
	_zy_simnet_axi4s_ob_out_payload_4_w$[0:81]), .aclk( clk), .aresetn( 
	rst_n), .valid_src( _zy_simnet_axi4s_ib_out_5_w$), .payload_src( 
	_zy_simnet_axi4s_ib_out_payload_6_w$[0:81]), .ready_dst( 
	axi4s_ob_in[0]));
Q_INV U17 ( .A(axi4s_in_empty), .Z(n5));
Q_OA21 U18 ( .A0(n4), .A1(axi4s_ib_in[0]), .B0(n5), .Z(axi4s_mstr_rd));
ixc_assign _zz_strnp_0 ( axi4s_ib_out_payload[81], axi4s_ib_out[81]);
ixc_assign _zz_strnp_5 ( axi4s_ob_out[81], axi4s_ob_out_payload[81]);
ixc_assign _zz_strnp_10 ( _zy_simnet_axi4s_mstr_rd_0_w$, axi4s_mstr_rd);
ixc_assign_83 _zz_strnp_11 ( _zy_simnet_axi4s_ob_out_1_w$[0:82], 
	axi4s_ob_out[82:0]);
Q_FDP4EP \axi4s_ib_out_REG[81] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[81]), .Q(axi4s_ib_out[81]));
Q_INV U24 ( .A(rst_n), .Z(n6));
Q_FDP4EP \axi4s_ib_out_REG[80] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[80]), .Q(axi4s_ib_out[80]));
Q_FDP4EP \axi4s_ib_out_REG[79] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[79]), .Q(axi4s_ib_out[79]));
Q_FDP4EP \axi4s_ib_out_REG[78] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[78]), .Q(axi4s_ib_out[78]));
Q_FDP4EP \axi4s_ib_out_REG[77] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[77]), .Q(axi4s_ib_out[77]));
Q_FDP4EP \axi4s_ib_out_REG[76] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[76]), .Q(axi4s_ib_out[76]));
Q_FDP4EP \axi4s_ib_out_REG[75] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[75]), .Q(axi4s_ib_out[75]));
Q_FDP4EP \axi4s_ib_out_REG[74] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[74]), .Q(axi4s_ib_out[74]));
Q_FDP4EP \axi4s_ib_out_REG[73] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[73]), .Q(axi4s_ib_out[73]));
Q_FDP4EP \axi4s_ib_out_REG[72] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[72]), .Q(axi4s_ib_out[72]));
Q_FDP4EP \axi4s_ib_out_REG[71] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[71]), .Q(axi4s_ib_out[71]));
Q_FDP4EP \axi4s_ib_out_REG[70] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[70]), .Q(axi4s_ib_out[70]));
Q_FDP4EP \axi4s_ib_out_REG[69] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[69]), .Q(axi4s_ib_out[69]));
Q_FDP4EP \axi4s_ib_out_REG[68] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[68]), .Q(axi4s_ib_out[68]));
Q_FDP4EP \axi4s_ib_out_REG[67] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[67]), .Q(axi4s_ib_out[67]));
Q_FDP4EP \axi4s_ib_out_REG[66] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[66]), .Q(axi4s_ib_out[66]));
Q_FDP4EP \axi4s_ib_out_REG[65] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[65]), .Q(axi4s_ib_out[65]));
Q_FDP4EP \axi4s_ib_out_REG[64] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[64]), .Q(axi4s_ib_out[64]));
Q_FDP4EP \axi4s_ib_out_REG[63] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[63]), .Q(axi4s_ib_out[63]));
Q_FDP4EP \axi4s_ib_out_REG[62] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[62]), .Q(axi4s_ib_out[62]));
Q_FDP4EP \axi4s_ib_out_REG[61] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[61]), .Q(axi4s_ib_out[61]));
Q_FDP4EP \axi4s_ib_out_REG[60] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[60]), .Q(axi4s_ib_out[60]));
Q_FDP4EP \axi4s_ib_out_REG[59] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[59]), .Q(axi4s_ib_out[59]));
Q_FDP4EP \axi4s_ib_out_REG[58] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[58]), .Q(axi4s_ib_out[58]));
Q_FDP4EP \axi4s_ib_out_REG[57] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[57]), .Q(axi4s_ib_out[57]));
Q_FDP4EP \axi4s_ib_out_REG[56] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[56]), .Q(axi4s_ib_out[56]));
Q_FDP4EP \axi4s_ib_out_REG[55] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[55]), .Q(axi4s_ib_out[55]));
Q_FDP4EP \axi4s_ib_out_REG[54] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[54]), .Q(axi4s_ib_out[54]));
Q_FDP4EP \axi4s_ib_out_REG[53] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[53]), .Q(axi4s_ib_out[53]));
Q_FDP4EP \axi4s_ib_out_REG[52] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[52]), .Q(axi4s_ib_out[52]));
Q_FDP4EP \axi4s_ib_out_REG[51] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[51]), .Q(axi4s_ib_out[51]));
Q_FDP4EP \axi4s_ib_out_REG[50] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[50]), .Q(axi4s_ib_out[50]));
Q_FDP4EP \axi4s_ib_out_REG[49] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[49]), .Q(axi4s_ib_out[49]));
Q_FDP4EP \axi4s_ib_out_REG[48] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[48]), .Q(axi4s_ib_out[48]));
Q_FDP4EP \axi4s_ib_out_REG[47] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[47]), .Q(axi4s_ib_out[47]));
Q_FDP4EP \axi4s_ib_out_REG[46] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[46]), .Q(axi4s_ib_out[46]));
Q_FDP4EP \axi4s_ib_out_REG[45] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[45]), .Q(axi4s_ib_out[45]));
Q_FDP4EP \axi4s_ib_out_REG[44] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[44]), .Q(axi4s_ib_out[44]));
Q_FDP4EP \axi4s_ib_out_REG[43] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[43]), .Q(axi4s_ib_out[43]));
Q_FDP4EP \axi4s_ib_out_REG[42] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[42]), .Q(axi4s_ib_out[42]));
Q_FDP4EP \axi4s_ib_out_REG[41] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[41]), .Q(axi4s_ib_out[41]));
Q_FDP4EP \axi4s_ib_out_REG[40] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[40]), .Q(axi4s_ib_out[40]));
Q_FDP4EP \axi4s_ib_out_REG[39] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[39]), .Q(axi4s_ib_out[39]));
Q_FDP4EP \axi4s_ib_out_REG[38] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[38]), .Q(axi4s_ib_out[38]));
Q_FDP4EP \axi4s_ib_out_REG[37] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[37]), .Q(axi4s_ib_out[37]));
Q_FDP4EP \axi4s_ib_out_REG[36] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[36]), .Q(axi4s_ib_out[36]));
Q_FDP4EP \axi4s_ib_out_REG[35] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[35]), .Q(axi4s_ib_out[35]));
Q_FDP4EP \axi4s_ib_out_REG[34] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[34]), .Q(axi4s_ib_out[34]));
Q_FDP4EP \axi4s_ib_out_REG[33] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[33]), .Q(axi4s_ib_out[33]));
Q_FDP4EP \axi4s_ib_out_REG[32] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[32]), .Q(axi4s_ib_out[32]));
Q_FDP4EP \axi4s_ib_out_REG[31] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[31]), .Q(axi4s_ib_out[31]));
Q_FDP4EP \axi4s_ib_out_REG[30] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[30]), .Q(axi4s_ib_out[30]));
Q_FDP4EP \axi4s_ib_out_REG[29] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[29]), .Q(axi4s_ib_out[29]));
Q_FDP4EP \axi4s_ib_out_REG[28] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[28]), .Q(axi4s_ib_out[28]));
Q_FDP4EP \axi4s_ib_out_REG[27] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[27]), .Q(axi4s_ib_out[27]));
Q_FDP4EP \axi4s_ib_out_REG[26] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[26]), .Q(axi4s_ib_out[26]));
Q_FDP4EP \axi4s_ib_out_REG[25] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[25]), .Q(axi4s_ib_out[25]));
Q_FDP4EP \axi4s_ib_out_REG[24] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[24]), .Q(axi4s_ib_out[24]));
Q_FDP4EP \axi4s_ib_out_REG[23] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[23]), .Q(axi4s_ib_out[23]));
Q_FDP4EP \axi4s_ib_out_REG[22] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[22]), .Q(axi4s_ib_out[22]));
Q_FDP4EP \axi4s_ib_out_REG[21] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[21]), .Q(axi4s_ib_out[21]));
Q_FDP4EP \axi4s_ib_out_REG[20] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[20]), .Q(axi4s_ib_out[20]));
Q_FDP4EP \axi4s_ib_out_REG[19] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[19]), .Q(axi4s_ib_out[19]));
Q_FDP4EP \axi4s_ib_out_REG[18] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[18]), .Q(axi4s_ib_out[18]));
Q_FDP4EP \axi4s_ib_out_REG[17] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[17]), .Q(axi4s_ib_out[17]));
Q_FDP4EP \axi4s_ib_out_REG[16] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[16]), .Q(axi4s_ib_out[16]));
Q_FDP4EP \axi4s_ib_out_REG[15] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[15]), .Q(axi4s_ib_out[15]));
Q_FDP4EP \axi4s_ib_out_REG[14] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[14]), .Q(axi4s_ib_out[14]));
Q_FDP4EP \axi4s_ib_out_REG[13] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[13]), .Q(axi4s_ib_out[13]));
Q_FDP4EP \axi4s_ib_out_REG[12] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[12]), .Q(axi4s_ib_out[12]));
Q_FDP4EP \axi4s_ib_out_REG[11] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[11]), .Q(axi4s_ib_out[11]));
Q_FDP4EP \axi4s_ib_out_REG[10] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[10]), .Q(axi4s_ib_out[10]));
Q_FDP4EP \axi4s_ib_out_REG[9] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[9]), .Q(axi4s_ib_out[9]));
Q_FDP4EP \axi4s_ib_out_REG[8] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[8]), .Q(axi4s_ib_out[8]));
Q_FDP4EP \axi4s_ib_out_REG[7] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[7]), .Q(axi4s_ib_out[7]));
Q_FDP4EP \axi4s_ib_out_REG[6] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[6]), .Q(axi4s_ib_out[6]));
Q_FDP4EP \axi4s_ib_out_REG[5] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[5]), .Q(axi4s_ib_out[5]));
Q_FDP4EP \axi4s_ib_out_REG[4] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[4]), .Q(axi4s_ib_out[4]));
Q_FDP4EP \axi4s_ib_out_REG[3] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[3]), .Q(axi4s_ib_out[3]));
Q_FDP4EP \axi4s_ib_out_REG[2] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[2]), .Q(axi4s_ib_out[2]));
Q_FDP4EP \axi4s_ib_out_REG[1] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[1]), .Q(axi4s_ib_out[1]));
Q_FDP4EP \axi4s_ib_out_REG[0] ( .CK(clk), .CE(axi4s_mstr_rd), .R(n6), .D(axi4s_in[0]), .Q(axi4s_ib_out[0]));
Q_INV U106 ( .A(n2), .Z(n7));
Q_FDP4EP \axi4s_ib_out_REG[82] ( .CK(clk), .CE(n7), .R(n6), .D(n3), .Q(axi4s_ib_out[82]));
Q_INV U108 ( .A(axi4s_ib_out[82]), .Z(n4));
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "\axi4s_ob_out.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m2 "\axi4s_ob_out.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m3 "\axi4s_ob_out.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m4 "\axi4s_ob_out.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m5 "\axi4s_in.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m6 "\axi4s_in.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m7 "\axi4s_in.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m8 "\axi4s_in.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m9 "\axi4s_ib_out.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m10 "\axi4s_ib_out.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m11 "\axi4s_ib_out.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m12 "\axi4s_ib_out.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m13 "\axi4s_ib_out_payload.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m14 "\axi4s_ib_out_payload.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m15 "\axi4s_ib_out_payload.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m16 "\axi4s_ib_out_payload.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m17 "\axi4s_ob_out_payload.tid  (1,0) 1 0 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m18 "\axi4s_ob_out_payload.tstrb  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m19 "\axi4s_ob_out_payload.tuser  (1,0) 1 7 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m20 "\axi4s_ob_out_payload.tdata  (1,0) 1 63 0 -2147483648 -2147483648"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "20"
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r1 "axi4s_ob_out 6 \axi4s_ob_out.tvalid  \axi4s_ob_out.tlast  \axi4s_ob_out.tid  \axi4s_ob_out.tstrb  \axi4s_ob_out.tuser  \axi4s_ob_out.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r2 "axi4s_in 6 \axi4s_in.tvalid  \axi4s_in.tlast  \axi4s_in.tid  \axi4s_in.tstrb  \axi4s_in.tuser  \axi4s_in.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r3 "axi4s_ob_in 1 \axi4s_ob_in.tready "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r4 "axi4s_ib_out 6 \axi4s_ib_out.tvalid  \axi4s_ib_out.tlast  \axi4s_ib_out.tid  \axi4s_ib_out.tstrb  \axi4s_ib_out.tuser  \axi4s_ib_out.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r5 "axi4s_ib_in 1 \axi4s_ib_in.tready "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r6 "axi4s_ib_out_payload 5 \axi4s_ib_out_payload.tlast  \axi4s_ib_out_payload.tid  \axi4s_ib_out_payload.tstrb  \axi4s_ib_out_payload.tuser  \axi4s_ib_out_payload.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_r7 "axi4s_ob_out_payload 5 \axi4s_ob_out_payload.tlast  \axi4s_ob_out_payload.tid  \axi4s_ob_out_payload.tstrb  \axi4s_ob_out_payload.tuser  \axi4s_ob_out_payload.tdata "
// pragma CVASTRPROP MODULE HDLICE HDL_RECORD_PACKED_NUM "7"
endmodule
