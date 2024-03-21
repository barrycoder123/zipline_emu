library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_hwclksrc_emu is
  generic (
    CAKE05X : integer := 0
  ) ;
  port (
    cout : out std_logic ;
    en : in std_logic ;
  c05x : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of cout: signal is 1 ;
  attribute _2_state_ of ixc_hwclksrc_emu: entity is 1 ;
  attribute upf_always_on of ixc_hwclksrc_emu: entity is 1 ;
end ixc_hwclksrc_emu ;
