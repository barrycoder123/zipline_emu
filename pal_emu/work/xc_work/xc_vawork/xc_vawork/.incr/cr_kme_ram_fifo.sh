`begin_keywords "1800-2012"
module cr_kme_ram_fifo ( fifo_in_stall, fifo_out, fifo_out_valid, fifo_bimc_osync, fifo_bimc_odat, fifo_mbe, clk, rst_n, fifo_in, fifo_in_valid, fifo_out_ack, bimc_rst_n, fifo_bimc_isync, fifo_bimc_idat );
parameter DATA_SIZE = 71 ;
parameter FIFO_DEPTH = 2048 ;
parameter SPECIALIZE = 1 ;
output wire logic fifo_in_stall ;
output wire logic [70 : 0] fifo_out ;
output wire logic fifo_out_valid ;
output wire logic fifo_bimc_osync ;
output wire logic fifo_bimc_odat ;
output wire logic fifo_mbe ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [70 : 0] fifo_in ;
input wire logic fifo_in_valid ;
input wire logic fifo_out_ack ;
input wire logic bimc_rst_n ;
input wire logic fifo_bimc_isync ;
input wire logic fifo_bimc_idat ;
endmodule
`end_keywords
/**portGenericDumpBegin DATA_SIZE FIFO_DEPTH SPECIALIZE fifo_in_stall fifo_out fifo_out_valid fifo_bimc_osync fifo_bimc_odat fifo_mbe clk rst_n fifo_in fifo_in_valid fifo_out_ack bimc_rst_n fifo_bimc_isync fifo_bimc_idat portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
