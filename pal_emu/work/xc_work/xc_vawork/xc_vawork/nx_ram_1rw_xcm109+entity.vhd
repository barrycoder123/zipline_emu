library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity nx_ram_1rw_xcm109 is
  generic (
    WIDTH : integer := 64;
    BWEWIDTH : integer := 64;
    DEPTH : integer := 32768;
    SPECIALIZE : integer := 1;
    LATCH : integer := 0
  ) ;
  port (
    clk : in std_logic ;
    rst_n : in std_logic ;
    ovstb : in std_logic ;
    lvm : in std_logic ;
    mlvm : in std_logic ;
    mrdten : in std_logic ;
    bimc_rst_n : in std_logic ;
    bimc_isync : in std_logic ;
    bimc_idat : in std_logic ;
    bimc_odat : out std_logic ;
    bimc_osync : out std_logic ;
    ro_uncorrectable_ecc_error : out std_logic ;
    bwe : in std_logic_vector(63 downto 0) ;
    din : in std_logic_vector(63 downto 0) ;
    add : in std_logic_vector(14 downto 0) ;
    cs : in std_logic ;
    we : in std_logic ;
  dout : out std_logic_vector(63 downto 0) ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_ram_1rw_xcm109: entity is 1 ;
end nx_ram_1rw_xcm109 ;
