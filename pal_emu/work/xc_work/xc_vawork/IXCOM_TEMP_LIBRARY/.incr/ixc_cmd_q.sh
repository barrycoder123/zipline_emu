`begin_keywords "1800-2012"
module ixc_cmd_q ( cmdEnIn, cmdDataIn, cmdEnOut, cmdDataOut, pollReq, pollEn, nrqsBusy );
parameter NUM_QS = 64 ;
parameter DEPTH = 512 ;
parameter LEVEL = 1 ;
parameter ROOT = 1 ;
parameter IS_SV = 1 ;
parameter ARCH = 0 ;
parameter GF2_1XCB = 0 ;
input wire logic [(NUM_QS - 1) : 0] cmdEnIn ;
input wire logic [((7 * NUM_QS) - 1) : 0] cmdDataIn ;
output wire logic cmdEnOut ;
output wire logic [6 : 0] cmdDataOut ;
output bit pollReq ;
input wire logic pollEn ;
inout wire logic nrqsBusy ;
endmodule
`end_keywords
/**portGenericDumpBegin NUM_QS DEPTH LEVEL ROOT IS_SV ARCH GF2_1XCB cmdEnIn cmdDataIn cmdEnOut cmdDataOut pollReq pollEn nrqsBusy portGenericDumpEnd**/
/**ParamPreferVectorBegin NUM_QS DEPTH LEVEL ROOT GF2_1XCB ParamPreferVectorEnd**/
