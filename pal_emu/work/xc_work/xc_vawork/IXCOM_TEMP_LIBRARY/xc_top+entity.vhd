library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity xc_top is
  generic (
    IXC_TIME : integer := 0
  ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of xc_top: entity is 1 ;
  attribute upf_always_on of xc_top: entity is 1 ;
end xc_top ;
