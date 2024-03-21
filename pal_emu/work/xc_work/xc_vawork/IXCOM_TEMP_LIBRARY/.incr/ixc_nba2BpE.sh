`begin_keywords "1800-2012"
module ixc_nba2BpE ( drOn, drOut, enNxt, drIn, en );
parameter DWIDTH = 1 ;
parameter EWIDTH = 1 ;
parameter RESET = 0 ;
output wire logic [(EWIDTH - 1) : 0] drOn ;
output bit [(DWIDTH - 1) : 0] drOut ;
output wire logic [(EWIDTH - 1) : 0] enNxt ;
input wire logic [(DWIDTH - 1) : 0] drIn ;
input wire logic [(EWIDTH - 1) : 0] en ;
endmodule
`end_keywords
/**portGenericDumpBegin DWIDTH EWIDTH RESET drOn drOut enNxt drIn en portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
