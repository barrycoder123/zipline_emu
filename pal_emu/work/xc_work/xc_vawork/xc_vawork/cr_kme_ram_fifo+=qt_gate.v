
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module cr_kme_ram_fifo ( fifo_in_stall, fifo_out, fifo_out_valid, 
	fifo_bimc_osync, fifo_bimc_odat, fifo_mbe, clk, rst_n, fifo_in, 
	fifo_in_valid, fifo_out_ack, bimc_rst_n, fifo_bimc_isync, 
	fifo_bimc_idat);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output fifo_in_stall;
output [70:0] fifo_out;
output fifo_out_valid;
output fifo_bimc_osync;
output fifo_bimc_odat;
output fifo_mbe;
input clk;
input rst_n;
input [70:0] fifo_in;
input fifo_in_valid;
input fifo_out_ack;
input bimc_rst_n;
input fifo_bimc_isync;
input fifo_bimc_idat;
wire ren;
wire empty;
wire _zy_simnet_dio_0;
wire _zy_simnet_dio_1;
Q_INV U0 ( .A(empty), .Z(fifo_out_valid));
Q_AN02 U1 ( .A0(fifo_out_valid), .A1(fifo_out_ack), .Z(ren));
cr_fifo_wrap2_xcm11 ram_fifo ( .full( fifo_in_stall), .afull( 
	_zy_simnet_dio_0), .rdata( fifo_out[70:0]), .empty( empty), 
	.aempty( _zy_simnet_dio_1), .bimc_odat( fifo_bimc_odat), 
	.bimc_osync( fifo_bimc_osync), .ro_uncorrectable_ecc_error( 
	fifo_mbe), .clk( clk), .rst_n( rst_n), .wdata( fifo_in[70:0]), 
	.wen( fifo_in_valid), .ren( ren), .bimc_idat( fifo_bimc_idat), 
	.bimc_isync( fifo_bimc_isync), .bimc_rst_n( bimc_rst_n));
endmodule
