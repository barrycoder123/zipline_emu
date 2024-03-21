library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity cr_kme_fifo_xcm47 is
  generic (
    DATA_SIZE : integer := 263;
    FIFO_DEPTH : integer := 4;
    OVERRIDE_EN : integer := 1;
    STALL_AT : integer := 0
  ) ;
  port (
    fifo_in_stall : out std_logic ;
    fifo_out : out std_logic_vector(262 downto 0) ;
    fifo_out_valid : out std_logic ;
    fifo_overflow : out std_logic ;
    fifo_underflow : out std_logic ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    fifo_in : in std_logic_vector(262 downto 0) ;
    fifo_in_valid : in std_logic ;
    fifo_out_ack : in std_logic ;
  fifo_in_stall_override : in std_logic ) ;
  attribute _2_state_: integer;
end cr_kme_fifo_xcm47 ;
