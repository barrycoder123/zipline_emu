library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity axis_tbcall is
  generic (
    level : integer := 0;
    anyEdge : integer := 0;
    BP : integer := 0
  ) ;
  port (
    s : in std_logic ;
    taskcall : in std_logic ;
    so : out std_logic ;
  pui : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of so: signal is 1 ;
  attribute _2_state_ of axis_tbcall: entity is 1 ;
  attribute upf_always_on of axis_tbcall: entity is 1 ;
end axis_tbcall ;
