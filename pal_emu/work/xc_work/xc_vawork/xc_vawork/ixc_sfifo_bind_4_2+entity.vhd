library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_sfifo_bind_4_2 is
  port (
    L : inout std_logic_vector(3 downto 0) ;
  DUMMY0 : inout std_logic_vector(3 downto 0) ) ;
  attribute _2_state_: integer;
end ixc_sfifo_bind_4_2 ;
