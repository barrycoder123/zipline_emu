library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_osf_evcap is
  port (
    pvec : in std_logic ;
  pvecEvO : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_osf_evcap: entity is 1 ;
  attribute upf_always_on of ixc_osf_evcap: entity is 1 ;
end ixc_osf_evcap ;
