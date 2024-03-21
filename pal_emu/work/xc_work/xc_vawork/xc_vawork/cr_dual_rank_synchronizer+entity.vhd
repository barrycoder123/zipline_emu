library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity cr_dual_rank_synchronizer is
  generic (
    WIDTH : integer := 1;
    RESET_VAL : integer := 0
  ) ;
  port (
    clk : in std_logic ;
    rst_n : in std_logic ;
    din : in std_logic ;
  dout : out std_logic ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of cr_dual_rank_synchronizer: entity is 1 ;
end cr_dual_rank_synchronizer ;
