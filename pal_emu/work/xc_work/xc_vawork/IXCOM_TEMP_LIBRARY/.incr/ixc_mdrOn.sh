`begin_keywords "1800-2012"
module ixc_mdrOn ( drOn, enNxt, en );
parameter WIDTH = 1 ;
output wire logic [(WIDTH - 1) : 0] drOn ;
output wire logic [(WIDTH - 1) : 0] enNxt ;
input wire logic [(WIDTH - 1) : 0] en ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH drOn enNxt en portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
