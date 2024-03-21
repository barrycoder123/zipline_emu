library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity nx_credit_manager is
  generic (
    N_MAX_CREDITS : integer := 512;
    N_USED_LAG_CYCLES : integer := 0;
    N_MAX_CREDITS_PER_CYCLE : integer := 256;
    N_OUTSTANDING_CREDITS : integer := 0;
    type $_hw_status_t is
    record
      used_err : std_logic ;
      return_err : std_logic ;
      credit_issued : std_logic_vector(9 downto 0) ;
    end record ;
    subtype hw_status_t is $_hw_status_t std_logic_vector(11 downto 0);
    type $_sw_config_t is
    record
      dis_used : std_logic ;
      dis_return : std_logic ;
      credit_limit : std_logic_vector(9 downto 0) ;
    end record ;
    subtype sw_config_t is $_sw_config_t std_logic_vector(11 downto 0)
  ) ;
  port (
    credit_available : out std_logic_vector(8 downto 0) ;
    hw_status : out hw_status_t ;
    clk : in std_logic ;
    rst_n : in std_logic ;
    sw_init : in std_logic ;
    credit_return : in std_logic_vector(8 downto 0) ;
    credit_used : in std_logic_vector(8 downto 0) ;
  sw_config : in sw_config_t ) ;
  attribute _2_state_: integer;
  attribute celldefine : integer;
  attribute celldefine of nx_credit_manager: entity is 1 ;
  constant RESERVED_CREDIT : integer := 0 ;
end nx_credit_manager ;
