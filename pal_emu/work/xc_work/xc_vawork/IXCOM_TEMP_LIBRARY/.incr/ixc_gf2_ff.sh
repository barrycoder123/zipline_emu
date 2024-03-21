`begin_keywords "1800-2012"
module ixc_gf2_ff ( q, d );
parameter W = 1 ;
parameter GF2_1XCB = 0 ;
output wire logic [(W - 1) : 0] q ;
input wire logic [(W - 1) : 0] d ;
endmodule
`end_keywords
/**portGenericDumpBegin W GF2_1XCB q d portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
