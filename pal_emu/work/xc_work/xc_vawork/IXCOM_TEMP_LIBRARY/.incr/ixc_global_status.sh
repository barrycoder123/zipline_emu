`begin_keywords "1800-2012"
module ixc_global_status ( status );
parameter NUM_CHANNELS = 1 ;
input wire logic [(NUM_CHANNELS - 1) : 0] status ;
endmodule
`end_keywords
/**portGenericDumpBegin NUM_CHANNELS status portGenericDumpEnd**/
/**ParamPreferVectorBegin NUM_CHANNELS ParamPreferVectorEnd**/
