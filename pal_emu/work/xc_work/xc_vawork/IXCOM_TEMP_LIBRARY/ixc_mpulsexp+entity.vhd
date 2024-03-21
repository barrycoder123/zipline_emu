library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_mpulseXp is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(4,32));
    PULSE : integer := 0
  ) ;
  port (
    p : out std_logic ;
  v : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_mpulseXp: entity is 1 ;
  attribute upf_always_on of ixc_mpulseXp: entity is 1 ;
end ixc_mpulseXp ;
