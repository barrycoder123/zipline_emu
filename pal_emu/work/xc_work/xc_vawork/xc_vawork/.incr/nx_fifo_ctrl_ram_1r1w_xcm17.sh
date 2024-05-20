`begin_keywords "1800-2012"
module nx_fifo_ctrl_ram_1r1w_xcm17 ( mem_wen, mem_waddr, mem_wdata, mem_ren, mem_raddr, empty, full, used_slots, free_slots, rerr, rdata, underflow, overflow, clk, rst_n, mem_rdata, mem_ecc_error, wen, wdata, ren, clear );
parameter DEPTH = 2048 ;
parameter WIDTH = 71 ;
parameter UNDERFLOW_ASSERT = 1 ;
parameter OVERFLOW_ASSERT = 1 ;
parameter RD_LATENCY = 3 ;
parameter REN_COMB = 1 ;
parameter RDATA_COMB = 1 ;
output logic mem_wen ;
output logic [10 : 0] mem_waddr ;
output logic [70 : 0] mem_wdata ;
output logic mem_ren ;
output logic [10 : 0] mem_raddr ;
output logic empty ;
output logic full ;
output logic [11 : 0] used_slots ;
output logic [11 : 0] free_slots ;
output logic rerr ;
output logic [70 : 0] rdata ;
output logic underflow ;
output logic overflow ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [70 : 0] mem_rdata ;
input wire logic mem_ecc_error ;
input wire logic wen ;
input wire logic [70 : 0] wdata ;
input wire logic ren ;
input wire logic clear ;
endmodule
`end_keywords
/**portGenericDumpBegin DEPTH WIDTH UNDERFLOW_ASSERT OVERFLOW_ASSERT RD_LATENCY REN_COMB RDATA_COMB mem_wen mem_waddr mem_wdata mem_ren mem_raddr empty full used_slots free_slots rerr rdata underflow overflow clk rst_n mem_rdata mem_ecc_error wen wdata ren clear portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
