library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_uclk_sample is
  port (
    so : out std_logic ;
  si : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_uclk_sample: entity is 1 ;
  attribute upf_always_on of ixc_uclk_sample: entity is 1 ;
end ixc_uclk_sample ;
