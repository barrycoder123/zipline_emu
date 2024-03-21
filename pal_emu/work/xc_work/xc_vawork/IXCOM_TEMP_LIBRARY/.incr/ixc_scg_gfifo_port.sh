`begin_keywords "1800-2012"
module ixc_scg_gfifo_port ( tkout, tkin, ireq, cbid, len, idata );
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
endmodule
`end_keywords
/**portGenericDumpBegin DW SHARE USETIME BUFL IS_SV_CHANNEL tkout tkin ireq cbid len idata portGenericDumpEnd**/
/**ParamPreferVectorBegin DW USETIME ParamPreferVectorEnd**/
