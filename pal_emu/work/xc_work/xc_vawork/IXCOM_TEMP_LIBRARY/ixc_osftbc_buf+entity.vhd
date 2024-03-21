library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_osfTbc_buf is
  port (
    osfTbcO : out std_logic ;
  osfTbcI : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute upf_always_on of ixc_osfTbc_buf: entity is 1 ;
end ixc_osfTbc_buf ;
