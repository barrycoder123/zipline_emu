`begin_keywords "1800-2012"
module cr_crc ( crc, clk, rst_n, data_in, data_valid, data_vbytes, enable, init_value, init );
parameter POLYNOMIAL = 32'b10000010111101100011101101111000 ;
parameter N_CRC_WIDTH = 32 ;
parameter N_DATA_WIDTH = 64 ;
output logic [31 : 0] crc ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [63 : 0] data_in ;
input wire logic data_valid ;
input wire logic [7 : 0] data_vbytes ;
input wire logic enable ;
input wire logic [31 : 0] init_value ;
input wire logic init ;
endmodule
`end_keywords
/**portGenericDumpBegin POLYNOMIAL N_CRC_WIDTH N_DATA_WIDTH crc clk rst_n data_in data_valid data_vbytes enable init_value init portGenericDumpEnd**/
/**ParamPreferVectorBegin POLYNOMIAL ParamPreferVectorEnd**/
