`begin_keywords "1800-2012"
module ixc_sfifo_port ( call, iarg, oarg, tid, fen, CiData, CtId, CoData, CoDataEn, CoDataLen );
parameter IARGW = 1 ;
parameter OARGW = 1 ;
localparam IARGW1 =  ((IARGW == 0) ? 0 : (IARGW - 1))  ;
localparam OARGW1 =  ((OARGW == 0) ? 0 : (OARGW - 1))  ;
output wire logic call ;
output bit [IARGW1 : 0] iarg ;
input wire logic [OARGW1 : 0] oarg ;
input wire logic [21 : 0] tid ;
output bit fen ;
input wire logic [511 : 0] CiData ;
input wire logic [21 : 0] CtId ;
output wire logic [511 : 0] CoData ;
output wire logic CoDataEn ;
output wire logic [3 : 0] CoDataLen ;
endmodule
`end_keywords
/**portGenericDumpBegin IARGW OARGW IARGW1 OARGW1 call iarg oarg tid fen CiData CtId CoData CoDataEn CoDataLen portGenericDumpEnd**/
/**ParamPreferVectorBegin IARGW OARGW IARGW1 OARGW1 ParamPreferVectorEnd**/
