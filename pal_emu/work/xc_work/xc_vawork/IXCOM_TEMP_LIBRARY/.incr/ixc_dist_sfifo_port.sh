`begin_keywords "1800-2012"
module ixc_dist_sfifo_port ( call, iarg, oarg, tid, fen, CsfifoDone, CsfifoCount );
parameter IARGW = 1 ;
parameter OARGW = 1 ;
parameter CAPACITY = 16 ;
localparam IARGW1 =  ((IARGW == 0) ? 0 : (IARGW - 1))  ;
localparam OARGW1 =  ((OARGW == 0) ? 0 : (OARGW - 1))  ;
output wire logic call ;
output bit [IARGW1 : 0] iarg ;
input wire logic [OARGW1 : 0] oarg ;
input wire logic [15 : 0] tid ;
output bit fen ;
output wire logic CsfifoDone ;
input wire logic [47 : 0] CsfifoCount ;
endmodule
`end_keywords
/**portGenericDumpBegin IARGW OARGW CAPACITY IARGW1 OARGW1 call iarg oarg tid fen CsfifoDone CsfifoCount portGenericDumpEnd**/
/**ParamPreferVectorBegin CAPACITY ParamPreferVectorEnd**/
