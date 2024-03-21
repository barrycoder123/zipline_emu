library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_gf2_ff is
  generic (
    W : integer := 1;
    GF2_1XCB : integer := 0
  ) ;
  port (
    q : out std_logic_vector((W - 1) downto 0) ;
  d : in std_logic_vector((W - 1) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_gf2_ff: entity is 1 ;
  attribute upf_always_on of ixc_gf2_ff: entity is 1 ;
end ixc_gf2_ff ;
