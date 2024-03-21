library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_clkXp is
  generic (
    DIR : integer := 2
  ) ;
  port (
    clk : out std_logic ;
    rtlClk : in std_logic ;
    PeEn : out std_logic ;
  NeEn : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of PeEn: signal is 1 ;
  attribute _2_state_ of NeEn: signal is 1 ;
  attribute _2_state_ of ixc_clkXp: entity is 1 ;
  attribute upf_always_on of ixc_clkXp: entity is 1 ;
end ixc_clkXp ;
