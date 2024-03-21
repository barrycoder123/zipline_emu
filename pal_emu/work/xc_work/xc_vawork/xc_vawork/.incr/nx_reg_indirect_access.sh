`begin_keywords "1800-2012"
module nx_reg_indirect_access ( stat_code, stat_datawords, stat_addr, capability_lst, capability_type, rd_dat, mem_a, clk, rst_n, addr, cmnd_op, cmnd_addr, wr_stb, wr_dat, rst_dat );
parameter CMND_ADDRESS = 11'b10001010100 ;
parameter STAT_ADDRESS = 11'b10001001100 ;
parameter ALIGNMENT = 2 ;
parameter N_DATA_BITS = 32 ;
parameter N_REG_ADDR_BITS = 11 ;
parameter N_ENTRIES = 32 ;
output logic [2 : 0] stat_code ;
output logic [4 : 0] stat_datawords ;
output logic [4 : 0] stat_addr ;
output logic [15 : 0] capability_lst ;
output logic [3 : 0] capability_type ;
output logic [31 : 0] rd_dat ;
output logic [31 : 0] mem_a[0 : 31] ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [10 : 0] addr ;
input wire logic [3 : 0] cmnd_op ;
input wire logic [4 : 0] cmnd_addr ;
input wire logic wr_stb ;
input wire logic [31 : 0] wr_dat ;
input wire logic [31 : 0] rst_dat[0 : 31] ;
endmodule
`end_keywords
/**portGenericDumpBegin CMND_ADDRESS STAT_ADDRESS ALIGNMENT N_DATA_BITS N_REG_ADDR_BITS N_ENTRIES DUMMY0 stat_code stat_datawords stat_addr capability_lst capability_type rd_dat mem_a clk rst_n addr cmnd_op cmnd_addr wr_stb wr_dat rst_dat portGenericDumpEnd**/
/**ParamPreferVectorBegin CMND_ADDRESS STAT_ADDRESS ParamPreferVectorEnd**/
