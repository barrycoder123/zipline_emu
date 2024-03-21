`begin_keywords "1800-2012"
module apb_xactor ( psel, penable, paddr, pwdata, pwrite, clk, reset_n, prdata, pready, pslverr );
parameter ADDR_WIDTH = 20 ;
parameter DATA_WIDTH = 32 ;
output logic psel ;
output logic penable ;
output logic [19 : 0] paddr ;
output logic [31 : 0] pwdata ;
output logic pwrite ;
input wire logic clk ;
input wire logic reset_n ;
input wire logic [31 : 0] prdata ;
input wire logic pready ;
input wire logic pslverr ;
endmodule
`end_keywords
/**portGenericDumpBegin ADDR_WIDTH DATA_WIDTH psel penable paddr pwdata pwrite clk reset_n prdata pready pslverr portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
