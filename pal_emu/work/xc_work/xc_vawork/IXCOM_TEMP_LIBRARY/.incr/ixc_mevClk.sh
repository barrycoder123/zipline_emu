`begin_keywords "1800-2012"
module ixc_mevClk ( xclk, clks, ens, loop, hold, active, busy, bwOn );
parameter WIDTH = 4 ;
parameter LOOP = 0 ;
parameter HOLD = 0 ;
parameter logic [(WIDTH - 1) : 0] IS_EDGED = 0 ;
parameter logic [(WIDTH - 1) : 0] POLARITY = 0 ;
parameter logic [(WIDTH - 1) : 0] DS = 0 ;
parameter logic [(WIDTH - 1) : 0] DM = 0 ;
parameter logic [(WIDTH - 1) : 0] EVOUT = 0 ;
parameter logic [(WIDTH - 1) : 0] WAIT_EV = 0 ;
output wire logic xclk ;
input wire logic [(WIDTH - 1) : 0] clks ;
input wire logic [(WIDTH - 1) : 0] ens ;
input wire logic loop ;
input wire logic hold ;
output wire logic active ;
output wire logic busy ;
output wire logic bwOn ;
endmodule
`end_keywords
/**portGenericDumpBegin WIDTH DUMMY3 HOLD IS_EDGED POLARITY DS DM EVOUT WAIT_EV xclk clks ens DUMMY5 DUMMY7 active busy bwOn portGenericDumpEnd**/
/**ParamPreferVectorBegin WIDTH DUMMY3 ParamPreferVectorEnd**/
