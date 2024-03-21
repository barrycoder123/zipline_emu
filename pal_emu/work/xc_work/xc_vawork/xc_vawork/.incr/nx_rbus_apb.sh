`begin_keywords "1800-2012"
module nx_rbus_apb ( rbus_addr_o, rbus_wr_strb_o, rbus_wr_data_o, rbus_rd_strb_o, apb_prdata, apb_pready, apb_pslverr, clk, rst_n, rbus_rd_data_i, rbus_ack_i, rbus_err_ack_i, rbus_wr_strb_i, rbus_rd_strb_i, apb_paddr, apb_psel, apb_penable, apb_pwrite, apb_pwdata );
parameter N_RBUS_ADDR_BITS = 16 ;
parameter N_RBUS_DATA_BITS = 32 ;
output logic [15 : 0] rbus_addr_o ;
output logic rbus_wr_strb_o ;
output logic [31 : 0] rbus_wr_data_o ;
output logic rbus_rd_strb_o ;
output logic [31 : 0] apb_prdata ;
output logic apb_pready ;
output logic apb_pslverr ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [31 : 0] rbus_rd_data_i ;
input wire logic rbus_ack_i ;
input wire logic rbus_err_ack_i ;
input wire logic rbus_wr_strb_i ;
input wire logic rbus_rd_strb_i ;
input wire logic [15 : 0] apb_paddr ;
input wire logic apb_psel ;
input wire logic apb_penable ;
input wire logic apb_pwrite ;
input wire logic [31 : 0] apb_pwdata ;
endmodule
`end_keywords
/**portGenericDumpBegin N_RBUS_ADDR_BITS N_RBUS_DATA_BITS rbus_addr_o rbus_wr_strb_o rbus_wr_data_o rbus_rd_strb_o apb_prdata apb_pready apb_pslverr clk rst_n rbus_rd_data_i rbus_ack_i rbus_err_ack_i rbus_wr_strb_i rbus_rd_strb_i apb_paddr apb_psel apb_penable apb_pwrite apb_pwdata portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
