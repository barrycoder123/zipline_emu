`begin_keywords "1800-2012"
module ixc_q_status ( Qwptr, pollQ, cqBusy, qsBusy, nrqsBusy );
parameter NUM_QS = 9 ;
parameter ROOT = 1 ;
parameter MAX_MEM_PORTS = 64 ;
parameter IS_SV = 1 ;
parameter ARCH = 0 ;
input wire logic [((18 * NUM_QS) - 1) : 0] Qwptr ;
input wire logic pollQ ;
input wire logic cqBusy ;
output wire logic qsBusy ;
inout wire logic nrqsBusy ;
endmodule
`end_keywords
/**portGenericDumpBegin NUM_QS ROOT MAX_MEM_PORTS IS_SV ARCH Qwptr pollQ cqBusy qsBusy nrqsBusy portGenericDumpEnd**/
/**ParamPreferVectorBegin NUM_QS MAX_MEM_PORTS ParamPreferVectorEnd**/
