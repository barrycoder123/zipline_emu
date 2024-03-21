`begin_keywords "1800-2012"
module axi_channel_reg_slice ( ready_src, valid_dst, payload_dst, aclk, aresetn, valid_src, payload_src, ready_dst );
parameter PAYLD_WIDTH = 82 ;
parameter HNDSHK_MODE = 0 ;
parameter BITS_PER_CHUNK = 8 ;
output wire logic ready_src ;
output wire logic valid_dst ;
output wire logic [81 : 0] payload_dst ;
input wire logic aclk ;
input wire logic aresetn ;
input wire logic valid_src ;
input wire logic [81 : 0] payload_src ;
input wire logic ready_dst ;
endmodule
`end_keywords
/**portGenericDumpBegin PAYLD_WIDTH HNDSHK_MODE BITS_PER_CHUNK ready_src valid_dst payload_dst aclk aresetn valid_src payload_src ready_dst portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
