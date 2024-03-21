library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axis_delay is
  port (
    z : out std_logic ;
  a : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of axis_delay: entity is 1 ;
  attribute upf_always_on of axis_delay: entity is 1 ;
end axis_delay ;
