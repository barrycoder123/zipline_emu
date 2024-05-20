library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity nx_fifo_ctrl_ram_1r1w_xcm18 is
  generic (
    DEPTH : integer := 168;
    WIDTH : integer := 83;
    UNDERFLOW_ASSERT : integer := 1;
    OVERFLOW_ASSERT : integer := 1;
    RD_LATENCY : integer := 3;
    REN_COMB : integer := 1;
    RDATA_COMB : integer := 1
  ) ;
  port (
    mem_wen : out std_logic ;
    mem_waddr : out std_logic_vector(7 downto 0) ;
    mem_wdata : out std_logic_vector(82 downto 0) ;
    mem_ren : out std_logic ;
    mem_raddr : out std_logic_vector(7 downto 0) ;
    empty : out std_logic ;
    full : out std_logic ;
    used_slots : out std_logic_vector(7 downto 0) ;
    free_slots : out std_logic_vector(7 downto 0) ;
    rerr : out std_logic ;
    rdata : out std_logic_vector(82 downto 0) ;
    underflow : out std_logic ;
    overflow : out std_logic ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    mem_rdata : in std_logic_vector(82 downto 0) ;
    mem_ecc_error : in std_logic ;
    wen : in std_logic ;
    wdata : in std_logic_vector(82 downto 0) ;
    ren : in std_logic ;
  clear : in std_logic ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_fifo_ctrl_ram_1r1w_xcm18: entity is 1 ;
  constant PREFETCH_DEPTH : integer := 3 ;
  constant TOTAL_DEPTH : integer := 171 ;
end nx_fifo_ctrl_ram_1r1w_xcm18 ;
