`begin_keywords "1800-2012"
module ixc_mtoggle ( p, v );
parameter WIDTH = 4 ;
parameter RTLONLY = 0 ;
parameter PULSE = 0 ;
output wire logic p ;
input wire logic [(WIDTH - 1) : 0] v ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH RTLONLY PULSE p v portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH ParamPreferVectorEnd**/
