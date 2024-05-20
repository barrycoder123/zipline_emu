`begin_keywords "1800-2012"
module nx_fifo_ram_1r1w_xcm13 ( empty, full, used_slots, free_slots, rerr, rdata, underflow, overflow, bimc_odat, bimc_osync, ro_uncorrectable_ecc_error, clk, rst_n, wen, wdata, ren, clear, bimc_idat, bimc_isync, bimc_rst_n, lvm, mlvm, mrdten );
parameter DEPTH = 2048 ;
parameter WIDTH = 71 ;
parameter UNDERFLOW_ASSERT = 1 ;
parameter OVERFLOW_ASSERT = 1 ;
parameter SPECIALIZE = 1 ;
parameter IN_FLOP = 1 ;
parameter OUT_FLOP = 1 ;
parameter RD_LATENCY = 1 ;
parameter REN_COMB = 1 ;
parameter RDATA_COMB = 1 ;
output logic empty ;
output logic full ;
output logic [11 : 0] used_slots ;
output logic [11 : 0] free_slots ;
output logic rerr ;
output logic [70 : 0] rdata ;
output logic underflow ;
output logic overflow ;
output logic bimc_odat ;
output logic bimc_osync ;
output logic ro_uncorrectable_ecc_error ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic wen ;
input wire logic [70 : 0] wdata ;
input wire logic ren ;
input wire logic clear ;
input wire logic bimc_idat ;
input wire logic bimc_isync ;
input wire logic bimc_rst_n ;
input wire logic lvm ;
input wire logic mlvm ;
input wire logic mrdten ;
endmodule
`end_keywords
/**portGenericDumpBegin DEPTH WIDTH UNDERFLOW_ASSERT OVERFLOW_ASSERT SPECIALIZE IN_FLOP OUT_FLOP RD_LATENCY REN_COMB RDATA_COMB empty full used_slots free_slots rerr rdata underflow overflow bimc_odat bimc_osync ro_uncorrectable_ecc_error clk rst_n wen wdata ren clear bimc_idat bimc_isync bimc_rst_n lvm mlvm mrdten portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
