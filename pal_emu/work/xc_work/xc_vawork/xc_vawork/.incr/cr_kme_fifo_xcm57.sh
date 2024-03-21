`begin_keywords "1800-2012"
module cr_kme_fifo_xcm57 ( fifo_in_stall, fifo_out, fifo_out_valid, fifo_overflow, fifo_underflow, clk, rst_n, fifo_in, fifo_in_valid, fifo_out_ack, fifo_in_stall_override );
parameter DATA_SIZE = 71 ;
parameter FIFO_DEPTH = 2 ;
parameter OVERRIDE_EN = 0 ;
parameter STALL_AT = 0 ;
output wire logic fifo_in_stall ;
output wire logic [70 : 0] fifo_out ;
output wire logic fifo_out_valid ;
output wire logic fifo_overflow ;
output wire logic fifo_underflow ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [70 : 0] fifo_in ;
input wire logic fifo_in_valid ;
input wire logic fifo_out_ack ;
input wire logic fifo_in_stall_override ;
endmodule
`end_keywords
/**portGenericDumpBegin DATA_SIZE FIFO_DEPTH OVERRIDE_EN STALL_AT fifo_in_stall fifo_out fifo_out_valid fifo_overflow fifo_underflow clk rst_n fifo_in fifo_in_valid fifo_out_ack fifo_in_stall_override portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
