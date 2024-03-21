`begin_keywords "1800-2012"
module nx_fifo_xcm27 ( empty, full, underflow, overflow, used_slots, free_slots, rdata, clk, rst_n, wen, ren, clear, wdata );
parameter DEPTH = 2 ;
parameter WIDTH = 34 ;
parameter DATA_RESET = 1 ;
parameter UNDERFLOW_ASSERT = 1 ;
parameter OVERFLOW_ASSERT = 1 ;
output wire logic empty ;
output wire logic full ;
output logic underflow ;
output logic overflow ;
output wire logic [1 : 0] used_slots ;
output wire logic [1 : 0] free_slots ;
output wire logic [33 : 0] rdata ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic wen ;
input wire logic ren ;
input wire logic clear ;
input wire logic [33 : 0] wdata ;
endmodule
`end_keywords
/**portGenericDumpBegin DEPTH WIDTH DATA_RESET UNDERFLOW_ASSERT OVERFLOW_ASSERT empty full underflow overflow used_slots free_slots rdata clk rst_n wen ren clear wdata portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
