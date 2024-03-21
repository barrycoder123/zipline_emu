library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity nx_rbus_ring is
  generic (
    IO_ASYNC : integer := 0;
    N_RBUS_ADDR_BITS : integer := 16;
    N_LOCL_ADDR_BITS : integer := 11;
    N_RBUS_DATA_BITS : integer := 32
  ) ;
  port (
    clk : in std_logic ;
    rst_n : in std_logic ;
    cfg_start_addr : in std_logic_vector(15 downto 0) ;
    cfg_end_addr : in std_logic_vector(15 downto 0) ;
    rbus_addr_i : in std_logic_vector(15 downto 0) ;
    rbus_wr_strb_i : in std_logic ;
    rbus_wr_data_i : in std_logic_vector(31 downto 0) ;
    rbus_rd_strb_i : in std_logic ;
    rbus_addr_o : out std_logic_vector(15 downto 0) ;
    rbus_wr_strb_o : out std_logic ;
    rbus_wr_data_o : out std_logic_vector(31 downto 0) ;
    rbus_rd_strb_o : out std_logic ;
    locl_addr_o : out std_logic_vector(10 downto 0) ;
    locl_wr_strb_o : out std_logic ;
    locl_wr_data_o : out std_logic_vector(31 downto 0) ;
    locl_rd_strb_o : out std_logic ;
    rbus_rd_data_i : in std_logic_vector(31 downto 0) ;
    rbus_ack_i : in std_logic ;
    rbus_err_ack_i : in std_logic ;
    locl_rd_data_i : in std_logic_vector(31 downto 0) ;
    locl_ack_i : in std_logic ;
    locl_err_ack_i : in std_logic ;
    rbus_rd_data_o : out std_logic_vector(31 downto 0) ;
    rbus_ack_o : out std_logic ;
  rbus_err_ack_o : out std_logic ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_rbus_ring: entity is 1 ;
end nx_rbus_ring ;
