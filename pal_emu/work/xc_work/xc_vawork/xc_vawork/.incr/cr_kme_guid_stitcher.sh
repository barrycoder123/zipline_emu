`begin_keywords "1800-2012"
module cr_kme_guid_stitcher ( kme_slv_rd, stitcher_out, stitcher_empty, set_tlv_bip2_error_int, clk, rst_n, kme_slv_out, kme_slv_aempty, kme_slv_empty, stitcher_rd );
typedef struct packed {logic tvalid ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} axi4s_dp_bus_t ;
output logic kme_slv_rd ;
output axi4s_dp_bus_t stitcher_out ;
output logic stitcher_empty ;
output logic set_tlv_bip2_error_int ;
input wire logic clk ;
input wire logic rst_n ;
input axi4s_dp_bus_t kme_slv_out ;
input wire logic kme_slv_aempty ;
input wire logic kme_slv_empty ;
input wire logic stitcher_rd ;
endmodule
`end_keywords
/**portGenericDumpBegin axi4s_dp_bus_t tvalid tlast tid tstrb tuser tdata kme_slv_rd stitcher_out stitcher_empty set_tlv_bip2_error_int clk rst_n kme_slv_out kme_slv_aempty kme_slv_empty stitcher_rd portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
