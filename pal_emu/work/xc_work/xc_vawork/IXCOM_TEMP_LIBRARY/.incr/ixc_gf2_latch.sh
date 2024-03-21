`begin_keywords "1800-2012"
module ixc_gf2_latch ( q, d, en );
parameter W = 1 ;
output wire logic [(W - 1) : 0] q ;
input wire logic [(W - 1) : 0] d ;
input wire logic en ;
endmodule
`end_keywords
/**portGenericDumpBegin W q d en portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
