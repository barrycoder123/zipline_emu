`begin_keywords "1800-2012"
module nx_ram_1rw_xcm109 ( clk, rst_n, ovstb, lvm, mlvm, mrdten, bimc_rst_n, bimc_isync, bimc_idat, bimc_odat, bimc_osync, ro_uncorrectable_ecc_error, bwe, din, add, cs, we, dout );
parameter integer WIDTH = 32'b01100000 ;
parameter integer BWEWIDTH = 32'b01100000 ;
parameter integer DEPTH = 512 ;
parameter integer SPECIALIZE = 1 ;
parameter integer LATCH = 0 ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic ovstb ;
input wire logic lvm ;
input wire logic mlvm ;
input wire logic mrdten ;
input wire logic bimc_rst_n ;
input wire logic bimc_isync ;
input wire logic bimc_idat ;
output logic bimc_odat ;
output logic bimc_osync ;
output logic ro_uncorrectable_ecc_error ;
input wire logic [95 : 0] bwe ;
input wire logic [95 : 0] din ;
input wire logic [8 : 0] add ;
input wire logic cs ;
input wire logic we ;
output wire logic [95 : 0] dout ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH BWEWIDTH DEPTH SPECIALIZE LATCH clk rst_n ovstb lvm mlvm mrdten bimc_rst_n bimc_isync bimc_idat bimc_odat bimc_osync ro_uncorrectable_ecc_error bwe din add cs we dout portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
