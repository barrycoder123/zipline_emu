`begin_keywords "1800-2012"
module ixc_gfifo_cico ( ci, co, GFLock, anyReq );
parameter N = 16 ;
output wire logic [(N - 1) : 0] ci ;
input wire logic [(N - 1) : 0] co ;
input wire logic GFLock ;
output wire logic anyReq ;
endmodule
`end_keywords
/**portGenericDumpBegin N ci co GFLock anyReq portGenericDumpEnd**/
/**ParamPreferVectorBegin N ParamPreferVectorEnd**/
