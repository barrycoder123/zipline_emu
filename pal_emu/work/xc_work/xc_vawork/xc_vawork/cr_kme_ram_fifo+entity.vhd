library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity cr_kme_ram_fifo is
  generic (
    DATA_SIZE : integer := 71;
    FIFO_DEPTH : integer := 2048;
    SPECIALIZE : integer := 1
  ) ;
  port (
    fifo_in_stall : out std_logic ;
    fifo_out : out std_logic_vector(70 downto 0) ;
    fifo_out_valid : out std_logic ;
    fifo_bimc_osync : out std_logic ;
    fifo_bimc_odat : out std_logic ;
    fifo_mbe : out std_logic ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    fifo_in : in std_logic_vector(70 downto 0) ;
    fifo_in_valid : in std_logic ;
    fifo_out_ack : in std_logic ;
    bimc_rst_n : in std_logic ;
    fifo_bimc_isync : in std_logic ;
  fifo_bimc_idat : in std_logic ) ;
  attribute _2_state_: integer;
end cr_kme_ram_fifo ;
