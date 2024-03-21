library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity cr_rst_sync is
  port (
    clk : in std_logic ;
    async_rst_n : in std_logic ;
    bypass_reset : in std_logic ;
    test_rst_n : in std_logic ;
  rst_n : out std_logic ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of cr_rst_sync: entity is 1 ;
end cr_rst_sync ;
