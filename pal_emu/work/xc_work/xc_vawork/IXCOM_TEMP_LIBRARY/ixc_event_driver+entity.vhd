library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_event_driver is
  generic (
    WIDTH : integer := 1
  ) ;
  port (
    d : inout std_logic ;
    sI : in std_logic_vector((WIDTH - 1) downto 0) ;
  sR : out std_logic_vector((WIDTH - 1) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_event_driver: entity is 1 ;
  attribute upf_always_on of ixc_event_driver: entity is 1 ;
end ixc_event_driver ;
