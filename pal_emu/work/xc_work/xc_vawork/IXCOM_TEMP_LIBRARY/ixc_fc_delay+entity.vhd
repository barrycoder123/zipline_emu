library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_fc_delay is
  generic (
    WIDTH : integer := 1
  ) ;
  port (
    Q : out std_logic_vector((WIDTH - 1) downto 0) ;
  D : in std_logic_vector((WIDTH - 1) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of Q: signal is 1 ;
  attribute _2_state_ of ixc_fc_delay: entity is 1 ;
  attribute upf_always_on of ixc_fc_delay: entity is 1 ;
end ixc_fc_delay ;
