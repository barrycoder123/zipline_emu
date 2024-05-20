library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity nx_fifo_ctrl_xcm41 is
  generic (
    DEPTH : integer := 6;
    OVERFLOW_ASSERT : integer := 1;
    UNDERFLOW_ASSERT : integer := 1
  ) ;
  port (
    empty : out std_logic ;
    full : out std_logic ;
    used_slots : out std_logic_vector(2 downto 0) ;
    free_slots : out std_logic_vector(2 downto 0) ;
    rptr : out std_logic_vector(2 downto 0) ;
    wptr : out std_logic_vector(2 downto 0) ;
    underflow : out std_logic ;
    overflow : out std_logic ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    wen : in std_logic ;
    ren : in std_logic ;
  clear : in std_logic ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_fifo_ctrl_xcm41: entity is 1 ;
end nx_fifo_ctrl_xcm41 ;
