`begin_keywords "1800-2012"
module nx_indirect_access_cntrl_v2_xcm125 ( clk, rst_n, wr_stb, reg_addr, cmnd_op, cmnd_addr, cmnd_table_id, stat_code, stat_datawords, stat_addr, stat_table_id, capability_lst, capability_type, enable, addr_limit, wr_dat, rd_dat, sw_cs, sw_ce, sw_we, sw_add, sw_wdat, sw_rdat, sw_match, sw_aindex, grant, rsp, yield, reset );
parameter MEM_TYPE = 4'b0 ;
parameter CMND_ADDRESS = 11'b0110111000 ;
parameter STAT_ADDRESS = 11'b0110101100 ;
parameter ALIGNMENT = 2 ;
parameter N_TIMER_BITS = 6 ;
parameter N_REG_ADDR_BITS = 11 ;
parameter N_DATA_BITS = 38 ;
parameter N_TABLES = 1 ;
parameter N_ENTRIES = 16384 ;
parameter N_INIT_INC_BITS = 0 ;
parameter logic [15 : 0] CAPABILITIES = 16'b1100000101111111 ;
parameter logic [37 : 0] RESET_DATA = 38'b0 ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic wr_stb ;
input wire logic [10 : 0] reg_addr ;
input wire logic [3 : 0] cmnd_op ;
input wire logic [13 : 0] cmnd_addr ;
input wire logic [0 : 0] cmnd_table_id ;
output logic [2 : 0] stat_code ;
output logic [4 : 0] stat_datawords ;
output logic [13 : 0] stat_addr ;
output logic [0 : 0] stat_table_id ;
output logic [15 : 0] capability_lst ;
output logic [3 : 0] capability_type ;
output logic enable ;
input wire logic[0 : 0][13 : 0] addr_limit ;
input wire logic [37 : 0] wr_dat ;
output logic [37 : 0] rd_dat ;
output logic sw_cs ;
output logic sw_ce ;
output logic sw_we ;
output logic [13 : 0] sw_add ;
output logic [37 : 0] sw_wdat ;
input wire logic [37 : 0] sw_rdat ;
input wire logic sw_match ;
input wire logic [12 : 0] sw_aindex ;
input wire logic grant ;
input wire logic rsp ;
output logic yield ;
output logic reset ;
endmodule
`end_keywords
/**portGenericDumpBegin MEM_TYPE CMND_ADDRESS STAT_ADDRESS ALIGNMENT N_TIMER_BITS N_REG_ADDR_BITS N_DATA_BITS N_TABLES N_ENTRIES N_INIT_INC_BITS CAPABILITIES RESET_DATA DUMMY0 clk rst_n wr_stb reg_addr cmnd_op cmnd_addr cmnd_table_id stat_code stat_datawords stat_addr stat_table_id capability_lst capability_type enable addr_limit wr_dat rd_dat sw_cs sw_ce sw_we sw_add sw_wdat sw_rdat sw_match sw_aindex grant rsp yield reset portGenericDumpEnd**/
/**ParamPreferVectorBegin MEM_TYPE CMND_ADDRESS STAT_ADDRESS ParamPreferVectorEnd**/
