`begin_keywords "1800-2012"
module cr_axi4s_mstr ( axi4s_mstr_rd, axi4s_ob_out, clk, rst_n, axi4s_in, axi4s_in_empty, axi4s_in_aempty, axi4s_ob_in );
typedef struct packed {logic tvalid ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} axi4s_dp_bus_t ;
typedef struct packed {logic tready ;} axi4s_dp_rdy_t ;
output logic axi4s_mstr_rd ;
output axi4s_dp_bus_t axi4s_ob_out ;
input wire logic clk ;
input wire logic rst_n ;
input axi4s_dp_bus_t axi4s_in ;
input wire logic axi4s_in_empty ;
input wire logic axi4s_in_aempty ;
input axi4s_dp_rdy_t axi4s_ob_in ;
endmodule
`end_keywords
/**portGenericDumpBegin axi4s_dp_bus_t tvalid tlast tid tstrb tuser tdata axi4s_dp_rdy_t tready axi4s_mstr_rd axi4s_ob_out clk rst_n axi4s_in axi4s_in_empty axi4s_in_aempty axi4s_ob_in portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
