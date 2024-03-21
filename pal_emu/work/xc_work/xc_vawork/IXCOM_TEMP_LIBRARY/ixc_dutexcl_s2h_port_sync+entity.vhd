library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_dutexcl_s2h_port_sync is
  generic (
    WIDTH : integer := 0
  ) ;
  port (
    hwTriggeredEvalToggle : in std_logic ;
    swTriggeredEvalToggle : in std_logic ;
  swp : in std_logic_vector(0 to (WIDTH - 1)) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_dutexcl_s2h_port_sync: entity is 1 ;
  attribute upf_always_on of ixc_dutexcl_s2h_port_sync: entity is 1 ;
end ixc_dutexcl_s2h_port_sync ;
