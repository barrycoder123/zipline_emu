`begin_keywords "1800-2012"
module nx_interface_monitor_pipe ( ob_in_mod, ob_out, im_vld, clk, rst_n, ob_out_pre, ob_in, im_rdy );
typedef struct packed {logic tready ;} axi4s_dp_rdy_t ;
typedef struct packed {logic tvalid ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} axi4s_dp_bus_t ;
output axi4s_dp_rdy_t ob_in_mod ;
output axi4s_dp_bus_t ob_out ;
output logic im_vld ;
input wire logic clk ;
input wire logic rst_n ;
input axi4s_dp_bus_t ob_out_pre ;
input axi4s_dp_rdy_t ob_in ;
input wire logic im_rdy ;
endmodule
`end_keywords
/**portGenericDumpBegin axi4s_dp_rdy_t tready axi4s_dp_bus_t tvalid tlast tid tstrb tuser tdata ob_in_mod ob_out im_vld clk rst_n ob_out_pre ob_in im_rdy portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
