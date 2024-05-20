library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity IXC_OSF is
  generic (
    WIDTH : integer := 1
  ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute upf_always_on of IXC_OSF: entity is 1 ;
  attribute _2_state_ of IXC_OSF: entity is 1 ;
  constant PIOWIDTH : integer := 1 ;
  constant NMB : integer := 0 ;
  constant MBSIZE : integer := 1984 ;
end IXC_OSF ;
