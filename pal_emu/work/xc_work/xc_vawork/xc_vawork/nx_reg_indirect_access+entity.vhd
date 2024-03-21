library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
use work.nx_mem_typePKG.all ;
entity nx_reg_indirect_access is
  generic (
    CMND_ADDRESS : std_logic_vector := std_logic_vector'("10001010100");
    STAT_ADDRESS : std_logic_vector := std_logic_vector'("10001001100");
    ALIGNMENT : integer := 2;
    N_DATA_BITS : integer := 32;
    N_REG_ADDR_BITS : integer := 11;
    N_ENTRIES : integer := 32;
    type DUMMY0 is array(integer range <>) of std_logic_vector(31 downto 0)
  ) ;
  port (
    stat_code : out std_logic_vector(2 downto 0) ;
    stat_datawords : out std_logic_vector(4 downto 0) ;
    stat_addr : out std_logic_vector(4 downto 0) ;
    capability_lst : out std_logic_vector(15 downto 0) ;
    capability_type : out std_logic_vector(3 downto 0) ;
    rd_dat : out std_logic_vector(31 downto 0) ;
    mem_a : out DUMMY0(0 to 31) ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    addr : in std_logic_vector(10 downto 0) ;
    cmnd_op : in std_logic_vector(3 downto 0) ;
    cmnd_addr : in std_logic_vector(4 downto 0) ;
    wr_stb : in std_logic ;
    wr_dat : in std_logic_vector(31 downto 0) ;
  rst_dat : in DUMMY0(0 to 31) ) ;
  -- quickturn keep_net mem_a
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_reg_indirect_access: entity is 1 ;
  constant capabilities_t_set : std_logic_vector(15 downto 0) := $__unpack__
  (std_logic_vector'("1000000000100111")) ;
end nx_reg_indirect_access ;
