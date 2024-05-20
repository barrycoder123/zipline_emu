`begin_keywords "1800-2012"
module cr_kme_kop_kdf_stream_pipe_xcm79 ( pipe_valid, pipe_data, pipe_byte_count, clk, rst_n, cmd_valid, cmd_data_size, cmd_data, pipe_ack, pipe_ack_num_bytes );
parameter IN_DATA_SIZE_IN_BYTES = 37 ;
output wire logic [0 : 0] pipe_valid ;
output wire logic [127 : 0] pipe_data ;
output logic [5 : 0] pipe_byte_count ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic cmd_valid ;
input wire logic [5 : 0] cmd_data_size ;
input wire logic [295 : 0] cmd_data ;
input wire logic [0 : 0] pipe_ack ;
input wire logic [4 : 0] pipe_ack_num_bytes ;
endmodule
`end_keywords
/**portGenericDumpBegin IN_DATA_SIZE_IN_BYTES pipe_valid pipe_data pipe_byte_count clk rst_n cmd_valid cmd_data_size cmd_data pipe_ack pipe_ack_num_bytes portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
