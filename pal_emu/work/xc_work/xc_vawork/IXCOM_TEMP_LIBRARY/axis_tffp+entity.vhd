library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axis_tffp is
  port (
    q : out std_logic ;
    d : in std_logic ;
    c : in std_logic ;
    s : in std_logic ;
    r : in std_logic ;
  e : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of q: signal is 1 ;
  attribute _2_state_ of axis_tffp: entity is 1 ;
  attribute upf_always_on of axis_tffp: entity is 1 ;
end axis_tffp ;
