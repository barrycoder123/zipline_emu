library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ecm_holdToEOT is
  port (
    evh : out std_logic ;
  ev : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of evh: signal is 1 ;
  attribute _2_state_ of ecm_holdToEOT: entity is 1 ;
  attribute upf_always_on of ecm_holdToEOT: entity is 1 ;
end ecm_holdToEOT ;
