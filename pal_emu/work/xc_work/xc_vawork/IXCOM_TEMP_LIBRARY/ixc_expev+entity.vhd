library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_expEv is
  generic (
    w : std_logic_vector := signed(integer_to_std(1,32))
  ) ;
  port (
    so : out std_logic ;
  s : in std_logic_vector(conv_integer((ext(w,$QKTN_MAX(w'length,32)) -
   integer_to_std(1,$QKTN_MAX(w'length,32)))) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of so: signal is 1 ;
  attribute _2_state_ of ixc_expEv: entity is 1 ;
  attribute upf_always_on of ixc_expEv: entity is 1 ;
end ixc_expEv ;
