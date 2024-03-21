library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_assign is
  generic (
    W : integer := 1
  ) ;
  port (
    L : out std_logic_vector((W - 1) downto 0) ;
  R : in std_logic_vector((W - 1) downto 0) ) ;
  attribute _2_state_: integer;
end ixc_assign ;
