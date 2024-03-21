library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_1xbufsrc is
  port (
    cout : out std_logic ;
  cin : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute upf_always_on of ixc_1xbufsrc: entity is 1 ;
  attribute _2_state_ of ixc_1xbufsrc: entity is 1 ;
end ixc_1xbufsrc ;
