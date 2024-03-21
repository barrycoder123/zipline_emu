library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_nba2BpE is
  generic (
    DWIDTH : integer := 1;
    EWIDTH : integer := 1;
    RESET : integer := 0
  ) ;
  port (
    drOn : out std_logic_vector((EWIDTH - 1) downto 0) ;
    drOut : out std_logic_vector((DWIDTH - 1) downto 0) ;
    enNxt : out std_logic_vector((EWIDTH - 1) downto 0) ;
    drIn : in std_logic_vector((DWIDTH - 1) downto 0) ;
  en : in std_logic_vector((EWIDTH - 1) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of drOut: signal is 1 ;
  attribute _2_state_ of ixc_nba2BpE: entity is 1 ;
  attribute upf_always_on of ixc_nba2BpE: entity is 1 ;
end ixc_nba2BpE ;
