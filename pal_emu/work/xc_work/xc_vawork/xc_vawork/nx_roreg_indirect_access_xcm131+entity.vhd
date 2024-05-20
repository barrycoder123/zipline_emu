library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
use work.nx_mem_typePKG.all ;
entity nx_roreg_indirect_access_xcm131 is
  generic (
    CMND_ADDRESS : std_logic_vector := std_logic_vector'("10000001100");
    STAT_ADDRESS : std_logic_vector := std_logic_vector'("10000000000");
    ALIGNMENT : integer := 2;
    N_DATA_BITS : integer := 64;
    N_REG_ADDR_BITS : integer := 11;
    N_ENTRIES : integer := 32;
    type DUMMY0 is array(integer range <>) of std_logic_vector(63 downto 0)
  ) ;
  port (
    stat_code : out std_logic_vector(2 downto 0) ;
    stat_datawords : out std_logic_vector(4 downto 0) ;
    stat_addr : out std_logic_vector(4 downto 0) ;
    capability_lst : out std_logic_vector(15 downto 0) ;
    capability_type : out std_logic_vector(3 downto 0) ;
    rd_dat : out std_logic_vector(63 downto 0) ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    addr : in std_logic_vector(10 downto 0) ;
    cmnd_op : in std_logic_vector(3 downto 0) ;
    cmnd_addr : in std_logic_vector(4 downto 0) ;
    wr_stb : in std_logic ;
    wr_dat : in std_logic_vector(63 downto 0) ;
  mem_a : in DUMMY0(0 to 31) ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_roreg_indirect_access_xcm131: entity is 1 ;
  constant capabilities_t_set : std_logic_vector(15 downto 0) := $__unpack__
  (std_logic_vector'("1000000000100011")) ;
end nx_roreg_indirect_access_xcm131 ;
