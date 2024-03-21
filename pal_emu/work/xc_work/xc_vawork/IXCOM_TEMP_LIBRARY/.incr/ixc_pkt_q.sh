`begin_keywords "1800-2012"
module ixc_pkt_q ( pktEn, pktData, cmdEn, cmdData, pollReq, pollEn );
parameter WIDTH = 64 ;
parameter DEPTH = 1024 ;
parameter IS_SV = 1 ;
parameter ARCH = 0 ;
parameter GF2_1XCB = 0 ;
input wire logic [(WIDTH - 1) : 0] pktEn ;
input wire logic [((WIDTH * 64) - 1) : 0] pktData ;
output bit cmdEn ;
output bit [6 : 0] cmdData ;
output bit pollReq ;
input wire logic pollEn ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH DEPTH IS_SV ARCH GF2_1XCB pktEn pktData cmdEn cmdData pollReq pollEn portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH DEPTH ParamPreferVectorEnd**/
