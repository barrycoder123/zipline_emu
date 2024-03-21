`begin_keywords "1800-2012"
module cr_kme_kop_upsizer_x2_xcm71 ( upsizer_in_stall, upsizer_out_valid, upsizer_out_eof, upsizer_out_data, clk, rst_n, in_upsizer_valid, in_upsizer_eof, in_upsizer_data, out_upsizer_stall );
parameter IN_DATA_SIZE = 128 ;
output logic upsizer_in_stall ;
output logic upsizer_out_valid ;
output logic upsizer_out_eof ;
output logic [255 : 0] upsizer_out_data ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic in_upsizer_valid ;
input wire logic in_upsizer_eof ;
input wire logic [127 : 0] in_upsizer_data ;
input wire logic out_upsizer_stall ;
endmodule
`end_keywords
/**portGenericDumpBegin IN_DATA_SIZE upsizer_in_stall upsizer_out_valid upsizer_out_eof upsizer_out_data clk rst_n in_upsizer_valid in_upsizer_eof in_upsizer_data out_upsizer_stall portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
