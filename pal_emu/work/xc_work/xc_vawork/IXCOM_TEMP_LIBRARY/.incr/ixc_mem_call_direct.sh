`begin_keywords "1800-2012"
module ixc_mem_call_direct ( s2h_notify, s2h_data, from_isf, h2s_notify, h2s_data, to_osf, maid, ltid );
parameter S2HDW = 1 ;
parameter H2SDW = 1 ;
parameter MAIDW = 0 ;
parameter LTIDW = 0 ;
parameter ISSVA = 0 ;
localparam S2HDW1 =  ((S2HDW == 0) ? 0 : (S2HDW - 1))  ;
localparam H2SDW1 =  ((H2SDW == 0) ? 0 : (H2SDW - 1))  ;
localparam MAIDW1 =  ((MAIDW == 0) ? 0 : (MAIDW - 1))  ;
localparam LTIDW1 =  ((LTIDW == 0) ? 0 : (LTIDW - 1))  ;
output wire logic s2h_notify ;
output bit [S2HDW1 : 0] s2h_data ;
input wire logic from_isf ;
input wire logic h2s_notify ;
input wire logic [H2SDW1 : 0] h2s_data ;
output wire logic to_osf ;
input bit [MAIDW1 : 0] maid ;
input bit [LTIDW1 : 0] ltid ;
endmodule
`end_keywords
/**portGenericDumpBegin S2HDW H2SDW MAIDW LTIDW ISSVA S2HDW1 H2SDW1 MAIDW1 LTIDW1 s2h_notify s2h_data from_isf h2s_notify h2s_data to_osf maid ltid portGenericDumpEnd**/
/**ParamPreferVectorBegin S2HDW H2SDW MAIDW LTIDW S2HDW1 H2SDW1 MAIDW1 LTIDW1 ParamPreferVectorEnd**/
