library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity nx_rbus_apb is
  generic (
    N_RBUS_ADDR_BITS : integer := 16;
    N_RBUS_DATA_BITS : integer := 32
  ) ;
  port (
    rbus_addr_o : out std_logic_vector(15 downto 0) ;
    rbus_wr_strb_o : out std_logic ;
    rbus_wr_data_o : out std_logic_vector(31 downto 0) ;
    rbus_rd_strb_o : out std_logic ;
    apb_prdata : out std_logic_vector(31 downto 0) ;
    apb_pready : out std_logic ;
    apb_pslverr : out std_logic ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    rbus_rd_data_i : in std_logic_vector(31 downto 0) ;
    rbus_ack_i : in std_logic ;
    rbus_err_ack_i : in std_logic ;
    rbus_wr_strb_i : in std_logic ;
    rbus_rd_strb_i : in std_logic ;
    apb_paddr : in std_logic_vector(15 downto 0) ;
    apb_psel : in std_logic ;
    apb_penable : in std_logic ;
    apb_pwrite : in std_logic ;
  apb_pwdata : in std_logic_vector(31 downto 0) ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_rbus_apb: entity is 1 ;
end nx_rbus_apb ;
