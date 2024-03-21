library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_edge is
  generic (
    DIR : integer := 0;
    ASYNC : integer := 0
  ) ;
  port (
    ev : out std_logic ;
  s : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_edge: entity is 1 ;
  attribute upf_always_on of ixc_edge: entity is 1 ;
end ixc_edge ;
