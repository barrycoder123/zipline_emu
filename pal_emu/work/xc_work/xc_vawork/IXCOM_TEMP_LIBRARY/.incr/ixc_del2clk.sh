`begin_keywords "1800-2012"
module ixc_del2clk ( clko, delay, en );
parameter INITP = 0 ;
parameter PEDGE = 0 ;
parameter TOGGLE = 0 ;
output wire logic clko ;
input wire logic [31 : 0] delay ;
input wire logic en ;
endmodule
`end_keywords
/**portGenericDumpBegin INITP PEDGE TOGGLE clko delay en portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
