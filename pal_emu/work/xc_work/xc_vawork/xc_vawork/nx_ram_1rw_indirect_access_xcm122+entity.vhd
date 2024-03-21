library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
use work.nx_mem_typePKG_v2.all ;
entity nx_ram_1rw_indirect_access_xcm122 is
  generic (
    CMND_ADDRESS : std_logic_vector := std_logic_vector'("00110111000");
    STAT_ADDRESS : std_logic_vector := std_logic_vector'("00110101100");
    ALIGNMENT : integer := 2;
    N_TIMER_BITS : integer := 6;
    N_REG_ADDR_BITS : integer := 11;
    N_DATA_BITS : integer := 38;
    N_ENTRIES : integer := 16384;
    N_INIT_INC_BITS : integer := 0;
    SPECIALIZE : integer := 1;
    IN_FLOP : integer := 1;
    OUT_FLOP : integer := 0;
    RD_LATENCY : integer := 1;
    RESET_DATA : std_logic_vector(37 downto 0) := std_logic_vector'
    ("00000000000000000000000000000000000000")
  ) ;
  port (
    clk : in std_logic ;
    rst_n : in std_logic ;
    reg_addr : in std_logic_vector(10 downto 0) ;
    cmnd_op : in std_logic_vector(3 downto 0) ;
    cmnd_addr : in std_logic_vector(13 downto 0) ;
    stat_code : out std_logic_vector(2 downto 0) ;
    stat_datawords : out std_logic_vector(4 downto 0) ;
    stat_addr : out std_logic_vector(13 downto 0) ;
    capability_lst : out std_logic_vector(15 downto 0) ;
    capability_type : out std_logic_vector(3 downto 0) ;
    wr_stb : in std_logic ;
    wr_dat : in std_logic_vector(37 downto 0) ;
    rd_dat : out std_logic_vector(37 downto 0) ;
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
    hw_add : in std_logic_vector(13 downto 0) ;
    hw_we : in std_logic ;
    hw_bwe : in std_logic_vector(37 downto 0) ;
    hw_cs : in std_logic ;
    hw_din : in std_logic_vector(37 downto 0) ;
    hw_dout : out std_logic_vector(37 downto 0) ;
  hw_yield : out std_logic ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_ram_1rw_indirect_access_xcm122: entity is 1 ;
  constant capabilities_t_set : std_logic_vector(15 downto 0) := $__unpack__
  (std_logic_vector'("1100000101111111")) ;
  constant TOTAL_LATENCY : integer := 2 ;
end nx_ram_1rw_indirect_access_xcm122 ;
