`begin_keywords "1800-2012"
module ixc_ptz_port ( s2h_notify, s2h, h2s_notify, call_gf, h2s );
parameter PTYPE = 0 ;
parameter S2H_W = 32 ;
parameter H2S_W = 0 ;
parameter SF_BL = 8 ;
localparam S2HW =  ((S2H_W == 0) ? 1 : (((S2H_W + 63) / 64) * 64))  ;
output bit s2h_notify ;
output bit [(S2HW - 1) : 0] s2h ;
input wire logic h2s_notify ;
output bit call_gf ;
input wire logic h2s ;
endmodule
`end_keywords
/**portGenericDumpBegin PTYPE S2H_W H2S_W SF_BL S2HW s2h_notify s2h h2s_notify call_gf h2s portGenericDumpEnd**/
/**ParamPreferVectorBegin S2H_W SF_BL S2HW ParamPreferVectorEnd**/
