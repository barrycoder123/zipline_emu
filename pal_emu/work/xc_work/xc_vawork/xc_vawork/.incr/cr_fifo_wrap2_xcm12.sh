`begin_keywords "1800-2012"
module cr_fifo_wrap2_xcm12 ( full, afull, rdata, empty, aempty, bimc_odat, bimc_osync, ro_uncorrectable_ecc_error, clk, rst_n, wdata, wen, ren, bimc_idat, bimc_isync, bimc_rst_n );
parameter N_DATA_BITS = 83 ;
parameter N_ENTRIES = 168 ;
parameter N_AFULL_VAL = 1 ;
parameter N_AEMPTY_VAL = 1 ;
parameter USE_RAM = 1 ;
output wire logic full ;
output wire logic afull ;
output wire logic [82 : 0] rdata ;
output wire logic empty ;
output wire logic aempty ;
output logic bimc_odat ;
output logic bimc_osync ;
output logic ro_uncorrectable_ecc_error ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [82 : 0] wdata ;
input wire logic wen ;
input wire logic ren ;
input wire logic bimc_idat ;
input wire logic bimc_isync ;
input wire logic bimc_rst_n ;
endmodule
`end_keywords
/**portGenericDumpBegin N_DATA_BITS N_ENTRIES N_AFULL_VAL N_AEMPTY_VAL USE_RAM full afull rdata empty aempty bimc_odat bimc_osync ro_uncorrectable_ecc_error clk rst_n wdata wen ren bimc_idat bimc_isync bimc_rst_n portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
