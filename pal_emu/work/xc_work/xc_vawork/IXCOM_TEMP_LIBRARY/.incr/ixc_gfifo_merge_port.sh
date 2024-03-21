`begin_keywords "1800-2012"
module ixc_gfifo_merge_port ( i1req, i1cbid, i1len, i1data, i2req, i2cbid, i2len, i2data, i2tgl, LBfull, mreq, mcbid, mlen, mdata, mtgl );
parameter FIRST_IN_CHAIN = 0 ;
parameter LAST_IN_CHAIN = 0 ;
parameter I1_DW = 64 ;
parameter I2_DW = 64 ;
localparam O_DW = ((I1_DW + I2_DW) + 32) ;
input wire logic i1req ;
input wire logic [19 : 0] i1cbid ;
input wire logic [11 : 0] i1len ;
input wire logic [(I1_DW - 1) : 0] i1data ;
input wire logic i2req ;
input wire logic [19 : 0] i2cbid ;
input wire logic [11 : 0] i2len ;
input wire logic [ ((I2_DW == 0) ? 0 : (I2_DW - 1))  : 0] i2data ;
input wire logic i2tgl ;
input wire logic LBfull ;
output wire logic mreq ;
output wire logic [19 : 0] mcbid ;
output wire logic [11 : 0] mlen ;
output wire logic [(O_DW - 1) : 0] mdata ;
output wire logic mtgl ;
endmodule
`end_keywords
/**portGenericDumpBegin FIRST_IN_CHAIN LAST_IN_CHAIN I1_DW I2_DW O_DW i1req i1cbid i1len i1data i2req i2cbid i2len i2data i2tgl LBfull mreq mcbid mlen mdata mtgl portGenericDumpEnd**/
/**ParamPreferVectorBegin I1_DW I2_DW O_DW ParamPreferVectorEnd**/
