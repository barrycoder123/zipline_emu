`begin_keywords "1800-2012"
module ixc_ev ( ev, s );
parameter W = 1 ;
parameter ASYNC = 0 ;
output wire logic ev ;
input wire logic [(W - 1) : 0] s ;
endmodule
`end_keywords
/**portGenericDumpBegin W ASYNC ev s portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
