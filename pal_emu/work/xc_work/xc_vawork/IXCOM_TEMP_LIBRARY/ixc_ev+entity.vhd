library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_ev is
  generic (
    W : integer := 1;
    ASYNC : integer := 0
  ) ;
  port (
    ev : out std_logic ;
  s : in std_logic_vector((W - 1) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_ev: entity is 1 ;
  attribute upf_always_on of ixc_ev: entity is 1 ;
end ixc_ev ;
