library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_sampleXp is
  generic (
    WIDTH : integer := 1;
    DUMMY3 : integer := 3
  ) ;
  port (
    sv : out std_logic_vector((WIDTH - 1) downto 0) ;
  v : in std_logic_vector((WIDTH - 1) downto 0) ) ;
  attribute _2_state_: integer;
end ixc_sampleXp ;
