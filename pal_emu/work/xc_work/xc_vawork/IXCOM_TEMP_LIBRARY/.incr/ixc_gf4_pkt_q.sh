`begin_keywords "1800-2012"
module ixc_gf4_pkt_q ( pktEn, pktData, pollEn, hasData, pollReq );
parameter WIDTH = 64 ;
parameter DEPTH = 1024 ;
parameter IS_SV = 1 ;
parameter ARCH = 0 ;
parameter GF2_1XCB = 0 ;
input wire logic [(WIDTH - 1) : 0] pktEn ;
input wire logic [((WIDTH * 64) - 1) : 0] pktData ;
input wire logic pollEn ;
output bit hasData ;
output wire logic pollReq ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH DEPTH IS_SV ARCH GF2_1XCB pktEn pktData pollEn hasData pollReq portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH DEPTH ParamPreferVectorEnd**/
