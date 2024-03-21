library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity nx_fifo_ram_1r1w_xcm13 is
  generic (
    DEPTH : integer := 168;
    WIDTH : integer := 83;
    UNDERFLOW_ASSERT : integer := 1;
    OVERFLOW_ASSERT : integer := 1;
    SPECIALIZE : integer := 1;
    IN_FLOP : integer := 1;
    OUT_FLOP : integer := 1;
    RD_LATENCY : integer := 1;
    REN_COMB : integer := 1;
    RDATA_COMB : integer := 1
  ) ;
  port (
    empty : out std_logic ;
    full : out std_logic ;
    used_slots : out std_logic_vector(7 downto 0) ;
    free_slots : out std_logic_vector(7 downto 0) ;
    rerr : out std_logic ;
    rdata : out std_logic_vector(82 downto 0) ;
    underflow : out std_logic ;
    overflow : out std_logic ;
    bimc_odat : out std_logic ;
    bimc_osync : out std_logic ;
    ro_uncorrectable_ecc_error : out std_logic ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    wen : in std_logic ;
    wdata : in std_logic_vector(82 downto 0) ;
    ren : in std_logic ;
    clear : in std_logic ;
    bimc_idat : in std_logic ;
    bimc_isync : in std_logic ;
    bimc_rst_n : in std_logic ;
    lvm : in std_logic ;
    mlvm : in std_logic ;
  mrdten : in std_logic ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_fifo_ram_1r1w_xcm13: entity is 1 ;
  constant PREFETCH_DEPTH : integer := 3 ;
  constant TOTAL_DEPTH : integer := 171 ;
end nx_fifo_ram_1r1w_xcm13 ;
