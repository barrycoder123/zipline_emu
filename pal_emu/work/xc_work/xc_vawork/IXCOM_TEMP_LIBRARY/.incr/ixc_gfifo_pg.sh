`begin_keywords "1800-2012"
module ixc_gfifo_pg ( so, ci, co, si );
parameter R = 4 ;
output wire logic so ;
output wire logic [(R - 1) : 0] ci ;
input wire logic [(R - 1) : 0] co ;
input wire logic si ;
endmodule
`end_keywords
/**portGenericDumpBegin R so ci co si portGenericDumpEnd**/
/**ParamPreferVectorBegin R ParamPreferVectorEnd**/
