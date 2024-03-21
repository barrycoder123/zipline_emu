library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_capU is
  generic (
    RTL : std_logic_vector := signed(integer_to_std(99,32));
    ASYNC : integer := 99;
    NO_CAP : integer := 0
  ) ;
  port (
    cap : out std_logic ;
    ev : in std_logic ;
    en : in std_logic ;
    rst : in std_logic ;
    xpsn : out std_logic ;
  xpen : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_capU: entity is 1 ;
  attribute upf_always_on of ixc_capU: entity is 1 ;
end ixc_capU ;
