`begin_keywords "1800-2012"
module nx_ram_1r1w_xcm14 ( rst_n, clk, lvm, mlvm, mrdten, bimc_rst_n, bimc_isync, bimc_idat, bimc_odat, bimc_osync, ro_uncorrectable_ecc_error, reb, ra, dout, web, wa, din, bwe );
parameter integer WIDTH = 71 ;
parameter integer DEPTH = 2048 ;
parameter integer BWEWIDTH = 71 ;
parameter integer SPECIALIZE = 1 ;
parameter integer IN_FLOP = 1 ;
parameter integer OUT_FLOP = 1 ;
parameter integer RD_LATENCY = 1 ;
parameter integer WRITETHROUGH = 0 ;
input wire logic rst_n ;
input wire logic clk ;
input wire logic lvm ;
input wire logic mlvm ;
input wire logic mrdten ;
input wire logic bimc_rst_n ;
input wire logic bimc_isync ;
input wire logic bimc_idat ;
output logic bimc_odat ;
output logic bimc_osync ;
output logic ro_uncorrectable_ecc_error ;
input wire logic reb ;
input wire logic [10 : 0] ra ;
output logic [70 : 0] dout ;
input wire logic web ;
input wire logic [10 : 0] wa ;
input wire logic [70 : 0] din ;
input wire logic [70 : 0] bwe ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH DEPTH BWEWIDTH SPECIALIZE IN_FLOP OUT_FLOP RD_LATENCY WRITETHROUGH rst_n clk lvm mlvm mrdten bimc_rst_n bimc_isync bimc_idat bimc_odat bimc_osync ro_uncorrectable_ecc_error reb ra dout web wa din bwe portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
