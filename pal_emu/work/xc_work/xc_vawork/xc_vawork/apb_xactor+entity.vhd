library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity apb_xactor is
  generic (
    ADDR_WIDTH : integer := 20;
    DATA_WIDTH : integer := 32
  ) ;
  port (
    psel : out std_logic ;
    penable : out std_logic ;
    paddr : out std_logic_vector(19 downto 0) ;
    pwdata : out std_logic_vector(31 downto 0) ;
    pwrite : out std_logic ;
    clk : in std_logic ;
    reset_n : in std_logic ;
    prdata : in std_logic_vector(31 downto 0) ;
    pready : in std_logic ;
  pslverr : in std_logic ) ;
  -- quickturn keep_net psel
  -- quickturn keep_net penable
  -- quickturn keep_net paddr
  -- quickturn keep_net pwdata
  -- quickturn keep_net pwrite
  attribute _2_state_: integer;
  constant BUS_TIMER_EXPIRATION : integer := 100 ;
end apb_xactor ;
