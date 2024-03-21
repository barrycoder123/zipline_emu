library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity cr_crc is
  generic (
    POLYNOMIAL : std_logic_vector := std_logic_vector'
    ("10000010111101100011101101111000");
    N_CRC_WIDTH : integer := 32;
    N_DATA_WIDTH : integer := 64
  ) ;
  port (
    crc : out std_logic_vector(31 downto 0) ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    data_in : in std_logic_vector(63 downto 0) ;
    data_valid : in std_logic ;
    data_vbytes : in std_logic_vector(7 downto 0) ;
    enable : in std_logic ;
    init_value : in std_logic_vector(31 downto 0) ;
  init : in std_logic ) ;
  attribute _2_state_: integer;
  constant N_VBYTES_WIDTH : integer := 8 ;
end cr_crc ;
