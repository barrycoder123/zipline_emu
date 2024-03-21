`begin_keywords "1800-2012"
module ixc_gf4_pkt_q_single ( pktEn, pktData, pollEn, hasData, pollReq );
parameter WIDTH = 64 ;
parameter DEPTH = 1024 ;
parameter SQ_WIDTH = 64 ;
parameter IS_SV = 1 ;
parameter ARCH = 0 ;
parameter GF2_1XCB = 0 ;
parameter NEEDS_ARGS_IN_FFS = 1 ;
input wire logic pktEn ;
input wire logic [((WIDTH * 64) - 1) : 0] pktData ;
input wire logic pollEn ;
output bit hasData ;
output wire logic pollReq ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH DEPTH SQ_WIDTH IS_SV ARCH GF2_1XCB NEEDS_ARGS_IN_FFS pktEn pktData pollEn hasData pollReq portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH DEPTH SQ_WIDTH ParamPreferVectorEnd**/
