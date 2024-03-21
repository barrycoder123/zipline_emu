library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_capLoopXp is
  port (
    bClk : out std_logic ;
    en : in std_logic ;
    bcLatchEn : out std_logic ;
  bpHalt : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_capLoopXp: entity is 1 ;
  attribute upf_always_on of ixc_capLoopXp: entity is 1 ;
end ixc_capLoopXp ;
