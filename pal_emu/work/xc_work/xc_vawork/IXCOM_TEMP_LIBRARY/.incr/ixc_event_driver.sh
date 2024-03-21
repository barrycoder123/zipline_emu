`begin_keywords "1800-2012"
module ixc_event_driver ( d, sI, sR );
parameter WIDTH = 1 ;
inout wire logic d ;
input wire logic [(WIDTH - 1) : 0] sI ;
output wire logic [(WIDTH - 1) : 0] sR ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH d sI sR portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
