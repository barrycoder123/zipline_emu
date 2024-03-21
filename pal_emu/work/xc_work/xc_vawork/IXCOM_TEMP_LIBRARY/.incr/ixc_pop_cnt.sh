`begin_keywords "1800-2012"
module ixc_pop_cnt ( d, cnt );
parameter W = 127 ;
parameter LG_W = 7 ;
input wire logic [(W - 1) : 0] d ;
output wire logic [(LG_W - 1) : 0] cnt ;
endmodule
`end_keywords
/**portGenericDumpBegin W LG_W d cnt portGenericDumpEnd**/
/**ParamPreferVectorBegin W ParamPreferVectorEnd**/
