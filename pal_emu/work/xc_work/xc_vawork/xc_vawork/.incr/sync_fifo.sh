`begin_keywords "1800-2012"
module sync_fifo ( dout, full, empty, clk, rst_n, din, wr_en, rd_en, space_avail );
parameter DATAWIDTH = 96 ;
parameter DEPTH = 8 ;
parameter RD_REG_MODE = 0 ;
parameter RD_LATCH_MODE = 0 ;
output wire logic [95 : 0] dout ;
output wire logic full ;
output wire logic empty ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [95 : 0] din ;
input wire logic wr_en ;
input wire logic rd_en ;
output wire logic [3 : 0] space_avail ;
endmodule
`end_keywords
/**portGenericDumpBegin DATAWIDTH DEPTH RD_REG_MODE RD_LATCH_MODE dout full empty clk rst_n din wr_en rd_en space_avail portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
