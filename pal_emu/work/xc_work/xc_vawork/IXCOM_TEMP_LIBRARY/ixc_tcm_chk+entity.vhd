library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_tcm_chk is
  port (
    tc : out std_logic ;
    en : in std_logic ;
  rst : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_tcm_chk: entity is 1 ;
  attribute upf_always_on of ixc_tcm_chk: entity is 1 ;
end ixc_tcm_chk ;
