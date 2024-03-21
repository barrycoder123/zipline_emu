`begin_keywords "1800-2012"
module ixc_gfifo2_port ( req, cbid, len, data, pktEn, pktData );
parameter DATA_WIDTH = 512 ;
parameter SHARE_FLAG = 0 ;
localparam PACKET_WIDTH = (DATA_WIDTH + 32) ;
localparam PACKET_WORDS = ((PACKET_WIDTH + 63) / 64) ;
input wire logic req ;
input wire logic [19 : 0] cbid ;
input wire logic [11 : 0] len ;
input wire logic [(DATA_WIDTH - 1) : 0] data ;
output wire logic [(PACKET_WORDS - 1) : 0] pktEn ;
output wire logic [((PACKET_WORDS * 64) - 1) : 0] pktData ;
endmodule
`end_keywords
/**portGenericDumpBegin DATA_WIDTH SHARE_FLAG PACKET_WIDTH PACKET_WORDS req cbid len data pktEn pktData portGenericDumpEnd**/
/**ParamPreferVectorBegin DATA_WIDTH SHARE_FLAG PACKET_WIDTH PACKET_WORDS ParamPreferVectorEnd**/
