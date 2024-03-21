library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_error is
  generic (
    SIZE : integer := 1;
    UCLK_COND : integer := 0
  ) ;
  port (
  errCond : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_error: entity is 1 ;
  attribute upf_always_on of ixc_error: entity is 1 ;
end ixc_error ;
