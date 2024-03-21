library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_global_status is
  generic (
    NUM_CHANNELS : std_logic_vector := signed(integer_to_std(1,32))
  ) ;
  port (
  status : in std_logic_vector(conv_integer((ext(NUM_CHANNELS,$QKTN_MAX
  (NUM_CHANNELS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_CHANNELS'length,32)
  ))) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_global_status: entity is 1 ;
  attribute upf_always_on of ixc_global_status: entity is 1 ;
  constant DEPTH : std_logic_vector := (((ext(NUM_CHANNELS,$QKTN_MAX
  (NUM_CHANNELS'length,32)) + integer_to_std(63,$QKTN_MAX(NUM_CHANNELS'length,32
  ))) / integer_to_std(64,$QKTN_MAX(NUM_CHANNELS'length,32))) + integer_to_std
  (1,$QKTN_MAX(NUM_CHANNELS'length,32))) ;
end ixc_global_status ;
