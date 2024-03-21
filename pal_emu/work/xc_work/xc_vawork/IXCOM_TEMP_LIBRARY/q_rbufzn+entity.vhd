library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity Q_RBUFZN is
  port (
    Z : out std_logic ;
    A : in std_logic ;
  OE : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of Q_RBUFZN: entity is 1 ;
  attribute upf_always_on of Q_RBUFZN: entity is 1 ;
end Q_RBUFZN ;
