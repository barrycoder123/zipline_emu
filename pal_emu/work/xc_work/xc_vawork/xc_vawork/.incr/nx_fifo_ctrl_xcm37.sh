`begin_keywords "1800-2012"
module nx_fifo_ctrl_xcm37 ( empty, full, used_slots, free_slots, rptr, wptr, underflow, overflow, clk, rst_n, wen, ren, clear );
parameter DEPTH = 4 ;
parameter OVERFLOW_ASSERT = 1 ;
parameter UNDERFLOW_ASSERT = 1 ;
output wire logic empty ;
output wire logic full ;
output wire logic [2 : 0] used_slots ;
output wire logic [2 : 0] free_slots ;
output wire logic [1 : 0] rptr ;
output wire logic [1 : 0] wptr ;
output logic underflow ;
output logic overflow ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic wen ;
input wire logic ren ;
input wire logic clear ;
endmodule
`end_keywords
/**portGenericDumpBegin DEPTH OVERFLOW_ASSERT UNDERFLOW_ASSERT empty full used_slots free_slots rptr wptr underflow overflow clk rst_n wen ren clear portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
