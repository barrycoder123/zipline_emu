`begin_keywords "1800-2012"
module ixc_cov_latch ( cout, cin, rst );
parameter WIDTH = 1 ;
parameter USE_RESET = 0 ;
output bit [(WIDTH - 1) : 0] cout ;
input wire logic [(WIDTH - 1) : 0] cin ;
input wire logic rst ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH USE_RESET cout cin rst portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH ParamPreferVectorEnd**/
