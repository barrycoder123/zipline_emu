`begin_keywords "1800-2012"
module ixc_gfifo_port ( tkout, tkin, ireq, cbid, len, idata, CGFtsReq, CGFcbid, CGFlen, CGFidata, CGFfull, CLBreq, CLBrd, CLBwr, CLBfull, Rtkin );
parameter DW = 512 ;
parameter SHARE = 0 ;
parameter USETIME = 1 ;
parameter BUFL = 4 ;
parameter IS_SV_CHANNEL = 1 ;
output wire logic tkout ;
input wire logic tkin ;
input wire logic ireq ;
input wire logic [19 : 0] cbid ;
input wire logic [11 : 0] len ;
input wire logic [(DW - 1) : 0] idata ;
output wire logic CGFtsReq ;
output wire logic [19 : 0] CGFcbid ;
output wire logic [11 : 0] CGFlen ;
output wire logic [(512 - 1) : 0] CGFidata ;
input wire logic CGFfull ;
output wire logic CLBreq ;
input wire logic [3 : 0] CLBrd ;
input wire logic [3 : 0] CLBwr ;
input wire logic CLBfull ;
input wire logic Rtkin ;
endmodule
`end_keywords
/**portGenericDumpBegin DW SHARE USETIME BUFL IS_SV_CHANNEL tkout tkin ireq cbid len idata CGFtsReq CGFcbid CGFlen CGFidata CGFfull CLBreq CLBrd CLBwr CLBfull Rtkin portGenericDumpEnd**/
/**ParamPreferVectorBegin DW USETIME BUFL ParamPreferVectorEnd**/
