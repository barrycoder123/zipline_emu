library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_uClkGen is
  port (
  uclk : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_uClkGen: entity is 1 ;
  attribute upf_always_on of ixc_uClkGen: entity is 1 ;
end ixc_uClkGen ;
