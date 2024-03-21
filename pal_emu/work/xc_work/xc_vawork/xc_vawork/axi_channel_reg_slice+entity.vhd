library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axi_channel_reg_slice is
  generic (
    PAYLD_WIDTH : integer := 82;
    HNDSHK_MODE : integer := 0;
    BITS_PER_CHUNK : integer := 8
  ) ;
  port (
    ready_src : out std_logic ;
    valid_dst : out std_logic ;
    payload_dst : out std_logic_vector(81 downto 0) ;
    aclk : in std_logic ;
    aresetn : in std_logic ;
    valid_src : in std_logic ;
    payload_src : in std_logic_vector(81 downto 0) ;
  ready_dst : in std_logic ) ;
  attribute _2_state_: integer;
  constant CHUNKS : integer := 11 ;
end axi_channel_reg_slice ;
