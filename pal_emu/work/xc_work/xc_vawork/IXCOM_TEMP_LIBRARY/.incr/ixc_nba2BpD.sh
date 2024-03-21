`begin_keywords "1800-2012"
module ixc_nba2BpD ( drOn, enNxt, en );
parameter WIDTH = 1 ;
parameter RESET = 0 ;
output wire logic [(WIDTH - 1) : 0] drOn ;
output wire logic [(WIDTH - 1) : 0] enNxt ;
input wire logic [(WIDTH - 1) : 0] en ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH RESET drOn enNxt en portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
