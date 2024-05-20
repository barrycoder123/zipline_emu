library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity nx_ram_1r1w_xcm16 is
  generic (
    WIDTH : integer := 83;
    DEPTH : integer := 168;
    BWEWIDTH : integer := 83;
    SPECIALIZE : integer := 1;
    IN_FLOP : integer := 1;
    OUT_FLOP : integer := 1;
    RD_LATENCY : integer := 1;
    WRITETHROUGH : integer := 0
  ) ;
  port (
    rst_n : in std_logic ;
    clk : in std_logic ;
    lvm : in std_logic ;
    mlvm : in std_logic ;
    mrdten : in std_logic ;
    bimc_rst_n : in std_logic ;
    bimc_isync : in std_logic ;
    bimc_idat : in std_logic ;
    bimc_odat : out std_logic ;
    bimc_osync : out std_logic ;
    ro_uncorrectable_ecc_error : out std_logic ;
    reb : in std_logic ;
    ra : in std_logic_vector(7 downto 0) ;
    dout : out std_logic_vector(82 downto 0) ;
    web : in std_logic ;
    wa : in std_logic_vector(7 downto 0) ;
    din : in std_logic_vector(82 downto 0) ;
  bwe : in std_logic_vector(82 downto 0) ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_ram_1r1w_xcm16: entity is 1 ;
end nx_ram_1r1w_xcm16 ;
