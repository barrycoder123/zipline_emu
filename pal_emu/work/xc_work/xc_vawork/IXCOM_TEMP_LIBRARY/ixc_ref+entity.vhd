library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_ref is
  generic (
    WIDTH : integer := 1
  ) ;
  port (
  i : inout std_logic_vector((WIDTH - 1) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_ref: entity is 1 ;
  attribute upf_always_on of ixc_ref: entity is 1 ;
end ixc_ref ;
