library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axis_busreg is
  port (
    z : inout std_logic ;
  DUMMY0 : inout std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of axis_busreg: entity is 1 ;
  attribute upf_always_on of axis_busreg: entity is 1 ;
end axis_busreg ;
