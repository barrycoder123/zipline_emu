`begin_keywords "1800-2012"
module ixc_dutexcl_h2s_port_sync ( h2s_trigger, triggerClk, swp_ba, swp_nba, reqSwFailSafe, h2sPortEvent, runModeIsNBRUN, currentRunModeWasNBRUN, gfifoReqAck );
parameter MODE = 0 ;
parameter BA_WIDTH = 0 ;
parameter NBA_WIDTH = 0 ;
input wire logic h2s_trigger ;
output bit triggerClk ;
output bit [0 : (BA_WIDTH - 1)] swp_ba ;
output bit [0 : (NBA_WIDTH - 1)] swp_nba ;
output bit reqSwFailSafe ;
input wire logic h2sPortEvent ;
input wire logic runModeIsNBRUN ;
output bit currentRunModeWasNBRUN ;
input wire logic gfifoReqAck ;
endmodule
`end_keywords
/**portGenericDumpBegin MODE BA_WIDTH NBA_WIDTH h2s_trigger triggerClk swp_ba swp_nba reqSwFailSafe h2sPortEvent runModeIsNBRUN currentRunModeWasNBRUN gfifoReqAck portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
