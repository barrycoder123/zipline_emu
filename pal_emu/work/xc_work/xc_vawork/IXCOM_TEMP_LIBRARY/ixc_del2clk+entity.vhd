library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_del2clk is
  generic (
    INITP : integer := 0;
    PEDGE : integer := 0;
    TOGGLE : integer := 0
  ) ;
  port (
    clko : out std_logic ;
    delay : in std_logic_vector(31 downto 0) ;
  en : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_del2clk: entity is 1 ;
  attribute upf_always_on of ixc_del2clk: entity is 1 ;
end ixc_del2clk ;
