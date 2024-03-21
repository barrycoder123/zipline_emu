library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_capR is
  port (
    cap : out std_logic ;
    ev : in std_logic ;
  en : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of cap: signal is 1 ;
  attribute _2_state_ of ixc_capR: entity is 1 ;
  attribute upf_always_on of ixc_capR: entity is 1 ;
end ixc_capR ;
