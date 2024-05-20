library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
use work.nx_mem_typePKG.all ;
entity nx_indirect_access_cntrl_xcm112 is
  generic (
    MEM_TYPE : std_logic_vector := std_logic_vector'("0010");
    CMND_ADDRESS : std_logic_vector := std_logic_vector'("10000101000");
    STAT_ADDRESS : std_logic_vector := std_logic_vector'("10000011100");
    ALIGNMENT : integer := 2;
    N_TIMER_BITS : integer := 0;
    N_REG_ADDR_BITS : integer := 11;
    N_DATA_BITS : integer := 64;
    N_TABLES : integer := 1;
    N_ENTRIES : integer := 32;
    N_INIT_INC_BITS : integer := 0;
    CAPABILITIES : std_logic_vector(15 downto 0) := std_logic_vector'
    ("1000000000100011");
    RESET_DATA : std_logic_vector(63 downto 0) := std_logic_vector'
    ("0000000000000000000000000000000000000000000000000000000000000000");
    type DUMMY0 is array(integer range <>) of std_logic_vector(4 downto 0)
  ) ;
  port (
    clk : in std_logic ;
    rst_n : in std_logic ;
    wr_stb : in std_logic ;
    reg_addr : in std_logic_vector(10 downto 0) ;
    cmnd_op : in std_logic_vector(3 downto 0) ;
    cmnd_addr : in std_logic_vector(4 downto 0) ;
    cmnd_table_id : in std_logic_vector(0 downto 0) ;
    stat_code : out std_logic_vector(2 downto 0) ;
    stat_datawords : out std_logic_vector(4 downto 0) ;
    stat_addr : out std_logic_vector(4 downto 0) ;
    stat_table_id : out std_logic_vector(0 downto 0) ;
    capability_lst : out std_logic_vector(15 downto 0) ;
    capability_type : out std_logic_vector(3 downto 0) ;
    enable : out std_logic ;
    addr_limit : in DUMMY0(0 downto 0) ;
    -- quickturn array_with_packed_dim addr_limit 2 0
    wr_dat : in std_logic_vector(63 downto 0) ;
    rd_dat : out std_logic_vector(63 downto 0) ;
    sw_cs : out std_logic ;
    sw_ce : out std_logic ;
    sw_we : out std_logic ;
    sw_add : out std_logic_vector(4 downto 0) ;
    sw_wdat : out std_logic_vector(63 downto 0) ;
    sw_rdat : in std_logic_vector(63 downto 0) ;
    sw_match : in std_logic ;
    sw_aindex : in std_logic_vector(3 downto 0) ;
    grant : in std_logic ;
    yield : out std_logic ;
  reset : out std_logic ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_indirect_access_cntrl_xcm112: entity is 1 ;
  subtype ia_operation_e is std_logic_vector(3 downto 0) ;
  constant NOP : ia_operation_e := std_logic_vector'("0000") ;
  constant READ : ia_operation_e := std_logic_vector'("0001") ;
  constant WRITE : ia_operation_e := std_logic_vector'("0010") ;
  constant DUMMY1 : ia_operation_e := std_logic_vector'("0011") ;
  constant DISABLED : ia_operation_e := std_logic_vector'("0100") ;
  constant DUMMY2 : ia_operation_e := std_logic_vector'("0101") ;
  constant INIT : ia_operation_e := std_logic_vector'("0110") ;
  constant INIT_INC : ia_operation_e := std_logic_vector'("0111") ;
  constant SET_INIT_START : ia_operation_e := std_logic_vector'("1000") ;
  constant COMPARE : ia_operation_e := std_logic_vector'("1001") ;
  constant SIM_TMO : ia_operation_e := std_logic_vector'("1110") ;
  constant ACK_ERROR : ia_operation_e := std_logic_vector'("1111") ;
  subtype ia_status_e is std_logic_vector(2 downto 0) ;
  constant RDY : ia_status_e := std_logic_vector'("000") ;
  constant BSY : ia_status_e := std_logic_vector'("001") ;
  constant TMO : ia_status_e := std_logic_vector'("010") ;
  constant OVR : ia_status_e := std_logic_vector'("011") ;
  constant NXM : ia_status_e := std_logic_vector'("100") ;
  constant UOP : ia_status_e := std_logic_vector'("101") ;
  constant PDN : ia_status_e := std_logic_vector'("111") ;
  subtype state_e is std_logic_vector(3 downto 0) ;
  constant POWERDOWN : state_e := "0000" ;
  constant READY : state_e := std_logic_vector'("0001") ;
  constant ERROR : state_e := std_logic_vector'("0010") ;
  constant DO_RESET : state_e := std_logic_vector'("0011") ;
  constant DO_INIT : state_e := std_logic_vector'("0100") ;
  constant DO_WRITE : state_e := std_logic_vector'("0101") ;
  constant DO_READ : state_e := std_logic_vector'("0110") ;
  constant READ_DONE : state_e := std_logic_vector'("0111") ;
  constant DO_COMPARE : state_e := std_logic_vector'("1000") ;
  constant COMPARE_WAIT : state_e := std_logic_vector'("1001") ;
  constant COMPARE_DONE : state_e := std_logic_vector'("1010") ;
end nx_indirect_access_cntrl_xcm112 ;
