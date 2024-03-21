`begin_keywords "1800-2012"
module ixc_mevent ( ev, clks );
parameter WIDTH = 4 ;
parameter logic [(WIDTH - 1) : 0] IS_EDGED = 0 ;
parameter logic [(WIDTH - 1) : 0] POLARITY = 0 ;
parameter PULSE = 0 ;
output wire logic ev ;
input wire logic [(WIDTH - 1) : 0] clks ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH IS_EDGED POLARITY PULSE ev clks portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH ParamPreferVectorEnd**/
