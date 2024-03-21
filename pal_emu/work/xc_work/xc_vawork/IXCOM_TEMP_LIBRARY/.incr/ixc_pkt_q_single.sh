`begin_keywords "1800-2012"
module ixc_pkt_q_single ( pktEn, pktData, cmdEn, cmdData, pollReq, pollEn );
parameter WIDTH = 64 ;
parameter DEPTH = 1024 ;
parameter SQ_WIDTH = 64 ;
parameter IS_SV = 1 ;
parameter ARCH = 0 ;
parameter GF2_1XCB = 0 ;
parameter NEEDS_ARGS_IN_FFS = 1 ;
input wire logic pktEn ;
input wire logic [((WIDTH * 64) - 1) : 0] pktData ;
output bit cmdEn ;
output bit [6 : 0] cmdData ;
output bit pollReq ;
input wire logic pollEn ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH DEPTH SQ_WIDTH IS_SV ARCH GF2_1XCB NEEDS_ARGS_IN_FFS pktEn pktData cmdEn cmdData pollReq pollEn portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH DEPTH SQ_WIDTH ParamPreferVectorEnd**/
