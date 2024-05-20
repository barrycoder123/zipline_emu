
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module cr_kme_fifo_xcm53 ( fifo_in_stall, fifo_out, fifo_out_valid, 
	fifo_overflow, fifo_underflow, clk, rst_n, fifo_in, fifo_in_valid, 
	fifo_out_ack, fifo_in_stall_override);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output fifo_in_stall;
output [33:0] fifo_out;
output fifo_out_valid;
output fifo_overflow;
output fifo_underflow;
input clk;
input rst_n;
input [33:0] fifo_in;
input fifo_in_valid;
input fifo_out_ack;
input fifo_in_stall_override;
wire ren;
wire empty;
wire [1:0] free_slots;
wire _zy_simnet_dio_0;
wire [0:1] _zy_simnet_dio_1;
wire _zy_simnet_cio_2;
supply0 n1;
Q_BUF U0 ( .A(n1), .Z(_zy_simnet_cio_2));
Q_INV U1 ( .A(empty), .Z(fifo_out_valid));
Q_AN02 U2 ( .A0(fifo_out_valid), .A1(fifo_out_ack), .Z(ren));
nx_fifo_xcm28 std_fifo ( .empty( empty), .full( _zy_simnet_dio_0), 
	.underflow( fifo_underflow), .overflow( fifo_overflow), 
	.used_slots( _zy_simnet_dio_1[0:1]), .free_slots( free_slots[1:0]), 
	.rdata( fifo_out[33:0]), .clk( clk), .rst_n( rst_n), .wen( 
	fifo_in_valid), .ren( ren), .clear( _zy_simnet_cio_2), .wdata( 
	fifo_in[33:0]));
Q_NR02 U4 ( .A0(free_slots[1]), .A1(free_slots[0]), .Z(fifo_in_stall));
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 genblk1  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "genblk1"
endmodule
