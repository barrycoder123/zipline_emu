library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_sampleLT is
  generic (
    WIDTH : integer := 1;
    ASYNC : integer := 0
  ) ;
  port (
    ov : out std_logic_vector((WIDTH - 1) downto 0) ;
  v : in std_logic_vector((WIDTH - 1) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute upf_always_on of ixc_sampleLT: entity is 1 ;
end ixc_sampleLT ;
