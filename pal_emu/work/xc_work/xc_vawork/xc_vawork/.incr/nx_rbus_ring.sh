`begin_keywords "1800-2012"
module nx_rbus_ring ( clk, rst_n, cfg_start_addr, cfg_end_addr, rbus_addr_i, rbus_wr_strb_i, rbus_wr_data_i, rbus_rd_strb_i, rbus_addr_o, rbus_wr_strb_o, rbus_wr_data_o, rbus_rd_strb_o, locl_addr_o, locl_wr_strb_o, locl_wr_data_o, locl_rd_strb_o, rbus_rd_data_i, rbus_ack_i, rbus_err_ack_i, locl_rd_data_i, locl_ack_i, locl_err_ack_i, rbus_rd_data_o, rbus_ack_o, rbus_err_ack_o );
parameter IO_ASYNC = 0 ;
parameter N_RBUS_ADDR_BITS = 16 ;
parameter N_LOCL_ADDR_BITS = 11 ;
parameter N_RBUS_DATA_BITS = 32 ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [15 : 0] cfg_start_addr ;
input wire logic [15 : 0] cfg_end_addr ;
input wire logic [15 : 0] rbus_addr_i ;
input wire logic rbus_wr_strb_i ;
input wire logic [31 : 0] rbus_wr_data_i ;
input wire logic rbus_rd_strb_i ;
output logic [15 : 0] rbus_addr_o ;
output logic rbus_wr_strb_o ;
output logic [31 : 0] rbus_wr_data_o ;
output logic rbus_rd_strb_o ;
output logic [10 : 0] locl_addr_o ;
output logic locl_wr_strb_o ;
output logic [31 : 0] locl_wr_data_o ;
output logic locl_rd_strb_o ;
input wire logic [31 : 0] rbus_rd_data_i ;
input wire logic rbus_ack_i ;
input wire logic rbus_err_ack_i ;
input wire logic [31 : 0] locl_rd_data_i ;
input wire logic locl_ack_i ;
input wire logic locl_err_ack_i ;
output logic [31 : 0] rbus_rd_data_o ;
output logic rbus_ack_o ;
output logic rbus_err_ack_o ;
endmodule
`end_keywords
/**portGenericDumpBegin IO_ASYNC N_RBUS_ADDR_BITS N_LOCL_ADDR_BITS N_RBUS_DATA_BITS clk rst_n cfg_start_addr cfg_end_addr rbus_addr_i rbus_wr_strb_i rbus_wr_data_i rbus_rd_strb_i rbus_addr_o rbus_wr_strb_o rbus_wr_data_o rbus_rd_strb_o locl_addr_o locl_wr_strb_o locl_wr_data_o locl_rd_strb_o rbus_rd_data_i rbus_ack_i rbus_err_ack_i locl_rd_data_i locl_ack_i locl_err_ack_i rbus_rd_data_o rbus_ack_o rbus_err_ack_o portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
