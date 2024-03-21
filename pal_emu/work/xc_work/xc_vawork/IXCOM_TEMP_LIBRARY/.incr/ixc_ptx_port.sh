`begin_keywords "1800-2012"
module ixc_ptx_port ( s2h_notify, s2h, h2s_notify, call_gf, h2s );
parameter PTYPE = 0 ;
parameter S2H_W = 32 ;
parameter H2S_W = 32 ;
localparam S2HW =  ((S2H_W == 0) ? 1 : (((S2H_W + 63) / 64) * 64))  ;
localparam H2SW =  ((H2S_W == 0) ? 1 : (((H2S_W + 63) / 64) * 64))  ;
output wire logic s2h_notify ;
output bit [(S2HW - 1) : 0] s2h ;
input wire logic h2s_notify ;
output bit call_gf ;
input wire logic [(H2SW - 1) : 0] h2s ;
endmodule
`end_keywords
/**portGenericDumpBegin PTYPE S2H_W H2S_W S2HW H2SW s2h_notify s2h h2s_notify call_gf h2s portGenericDumpEnd**/
/**ParamPreferVectorBegin S2H_W H2S_W S2HW H2SW ParamPreferVectorEnd**/
