library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity nx_fifo_xcm33 is
  generic (
    DEPTH : integer := 2;
    WIDTH : integer := 71;
    DATA_RESET : integer := 1;
    UNDERFLOW_ASSERT : integer := 1;
    OVERFLOW_ASSERT : integer := 1
  ) ;
  port (
    empty : out std_logic ;
    full : out std_logic ;
    underflow : out std_logic ;
    overflow : out std_logic ;
    used_slots : out std_logic_vector(1 downto 0) ;
    free_slots : out std_logic_vector(1 downto 0) ;
    rdata : out std_logic_vector(70 downto 0) ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    wen : in std_logic ;
    ren : in std_logic ;
    clear : in std_logic ;
  wdata : in std_logic_vector(70 downto 0) ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_fifo_xcm33: entity is 1 ;
end nx_fifo_xcm33 ;
