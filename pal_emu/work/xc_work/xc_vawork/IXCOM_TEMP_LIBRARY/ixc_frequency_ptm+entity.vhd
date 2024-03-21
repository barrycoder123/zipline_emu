library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_frequency_ptm is
  generic (
    FREQ : integer := (-1);
    BFREQ : integer := (-1);
    DUMMY0 : integer := (-1)
  ) ;
  port (
    clk : in std_logic ;
  clkBase : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_frequency_ptm: entity is 1 ;
  attribute upf_always_on of ixc_frequency_ptm: entity is 1 ;
end ixc_frequency_ptm ;
