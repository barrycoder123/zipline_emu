library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity IXC_SV_GFIFO is
  port (
  rdCnt : in std_logic_vector(63 downto 0) ) ;
  attribute _2_state_: integer;
end IXC_SV_GFIFO ;
