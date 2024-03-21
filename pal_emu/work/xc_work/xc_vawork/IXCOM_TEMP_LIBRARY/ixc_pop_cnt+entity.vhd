library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_pop_cnt is
  generic (
    W : std_logic_vector := signed(integer_to_std(127,32));
    LG_W : integer := 7
  ) ;
  port (
    d : in std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
     integer_to_std(1,$QKTN_MAX(W'length,32)))) downto 0) ;
  cnt : out std_logic_vector((LG_W - 1) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_pop_cnt: entity is 1 ;
  attribute upf_always_on of ixc_pop_cnt: entity is 1 ;
end ixc_pop_cnt ;
