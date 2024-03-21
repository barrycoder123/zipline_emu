`begin_keywords "1800-2012"
module ixc_ml_gfifo_root_port ( tkout, tkin, RGFreq, CGFcbid, CGFlen, CGFidata );
output wire logic tkout ;
input wire logic tkin ;
input wire logic RGFreq ;
output tri0 logic [19 : 0] CGFcbid ;
output tri0 logic [11 : 0] CGFlen ;
output tri0 logic [511 : 0] CGFidata ;
endmodule
`end_keywords
/**portGenericDumpBegin tkout tkin RGFreq CGFcbid CGFlen CGFidata portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
