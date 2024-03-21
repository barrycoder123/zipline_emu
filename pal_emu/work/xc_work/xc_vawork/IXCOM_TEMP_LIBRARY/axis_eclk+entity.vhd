library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axis_eclk is
  generic (
    beh : integer := 1
  ) ;
  port (
    pclk : out std_logic ;
  DUMMY2 : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of axis_eclk: entity is 1 ;
  attribute upf_always_on of axis_eclk: entity is 1 ;
end axis_eclk ;
