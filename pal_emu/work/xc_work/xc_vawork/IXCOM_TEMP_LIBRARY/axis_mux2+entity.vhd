library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axis_mux2 is
  port (
    DUMMY1 : out std_logic ;
    sel : in std_logic ;
    in1 : in std_logic ;
  in2 : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of axis_mux2: entity is 1 ;
  attribute upf_always_on of axis_mux2: entity is 1 ;
end axis_mux2 ;
