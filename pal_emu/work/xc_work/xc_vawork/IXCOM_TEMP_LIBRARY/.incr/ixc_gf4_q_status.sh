`begin_keywords "1800-2012"
module ixc_gf4_q_status ( status, pollEn, statusOut, pollReq );
parameter NUM_PKT_QS = 128 ;
parameter LEVEL = 1 ;
parameter ROOT = 1 ;
parameter IS_SV = 1 ;
parameter ARCH = 0 ;
parameter GF2_1XCB = 0 ;
input wire logic [(NUM_PKT_QS - 1) : 0] status ;
input wire logic pollEn ;
output wire logic statusOut ;
input bit pollReq ;
endmodule
`end_keywords
/**portGenericDumpBegin NUM_PKT_QS LEVEL ROOT IS_SV ARCH GF2_1XCB status pollEn statusOut pollReq portGenericDumpEnd**/
/**ParamPreferVectorBegin NUM_PKT_QS LEVEL GF2_1XCB ParamPreferVectorEnd**/
