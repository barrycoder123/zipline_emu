library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity sync_fifo is
  generic (
    DATAWIDTH : integer := 96;
    DEPTH : integer := 8;
    RD_REG_MODE : integer := 0;
    RD_LATCH_MODE : integer := 0
  ) ;
  port (
    dout : out std_logic_vector(95 downto 0) ;
    full : out std_logic ;
    empty : out std_logic ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    din : in std_logic_vector(95 downto 0) ;
    wr_en : in std_logic ;
    rd_en : in std_logic ;
  space_avail : out std_logic_vector(3 downto 0) ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of sync_fifo: entity is 1 ;
  constant L2DEPTH : integer := 3 ;
  constant PTRW : integer := 4 ;
  constant DW : integer := 96 ;
end sync_fifo ;
