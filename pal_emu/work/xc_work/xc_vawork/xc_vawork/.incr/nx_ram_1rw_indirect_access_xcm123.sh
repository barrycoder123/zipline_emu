`begin_keywords "1800-2012"
module nx_ram_1rw_indirect_access_xcm123 ( clk, rst_n, reg_addr, cmnd_op, cmnd_addr, stat_code, stat_datawords, stat_addr, capability_lst, capability_type, wr_stb, wr_dat, rd_dat, ovstb, lvm, mlvm, mrdten, bimc_rst_n, bimc_isync, bimc_idat, bimc_odat, bimc_osync, ro_uncorrectable_ecc_error, hw_add, hw_we, hw_bwe, hw_cs, hw_din, hw_dout, hw_yield );
parameter CMND_ADDRESS = 11'b0110111000 ;
parameter STAT_ADDRESS = 11'b0110101100 ;
parameter ALIGNMENT = 2 ;
parameter N_TIMER_BITS = 6 ;
parameter N_REG_ADDR_BITS = 11 ;
parameter N_DATA_BITS = 38 ;
parameter N_ENTRIES = 16384 ;
parameter N_INIT_INC_BITS = 0 ;
parameter SPECIALIZE = 1 ;
parameter IN_FLOP = 1 ;
parameter OUT_FLOP = 0 ;
parameter RD_LATENCY = 1 ;
parameter logic [37 : 0] RESET_DATA = 38'b0 ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [10 : 0] reg_addr ;
input wire logic [3 : 0] cmnd_op ;
input wire logic [13 : 0] cmnd_addr ;
output logic [2 : 0] stat_code ;
output logic [4 : 0] stat_datawords ;
output logic [13 : 0] stat_addr ;
output logic [15 : 0] capability_lst ;
output logic [3 : 0] capability_type ;
input wire logic wr_stb ;
input wire logic [37 : 0] wr_dat ;
output logic [37 : 0] rd_dat ;
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
input wire logic [13 : 0] hw_add ;
input wire logic hw_we ;
input wire logic [37 : 0] hw_bwe ;
input wire logic hw_cs ;
input wire logic [37 : 0] hw_din ;
output logic [37 : 0] hw_dout ;
output logic hw_yield ;
endmodule
`end_keywords
/**portGenericDumpBegin CMND_ADDRESS STAT_ADDRESS ALIGNMENT N_TIMER_BITS N_REG_ADDR_BITS N_DATA_BITS N_ENTRIES N_INIT_INC_BITS SPECIALIZE IN_FLOP OUT_FLOP RD_LATENCY RESET_DATA clk rst_n reg_addr cmnd_op cmnd_addr stat_code stat_datawords stat_addr capability_lst capability_type wr_stb wr_dat rd_dat ovstb lvm mlvm mrdten bimc_rst_n bimc_isync bimc_idat bimc_odat bimc_osync ro_uncorrectable_ecc_error hw_add hw_we hw_bwe hw_cs hw_din hw_dout hw_yield portGenericDumpEnd**/
/**ParamPreferVectorBegin CMND_ADDRESS STAT_ADDRESS ParamPreferVectorEnd**/
