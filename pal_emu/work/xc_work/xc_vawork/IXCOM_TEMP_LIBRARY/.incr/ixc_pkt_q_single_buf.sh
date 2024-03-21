`begin_keywords "1800-2012"
module ixc_pkt_q_single_buf ( wen, wptrP, data, pushEn, pushAddr, pushLen, pushId );
parameter WIDTH = 64 ;
parameter ADDR_SIZE = 18 ;
parameter ARCH = 0 ;
input wire logic wen ;
input wire logic [(ADDR_SIZE - 1) : 0] wptrP ;
input wire logic [((WIDTH * 64) - 1) : 0] data ;
input wire logic pushEn ;
input wire logic [(ADDR_SIZE - 1) : 0] pushAddr ;
input wire logic [(ADDR_SIZE - 1) : 0] pushLen ;
input wire logic [63 : 0] pushId ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH ADDR_SIZE ARCH wen wptrP data pushEn pushAddr pushLen pushId portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH ParamPreferVectorEnd**/
