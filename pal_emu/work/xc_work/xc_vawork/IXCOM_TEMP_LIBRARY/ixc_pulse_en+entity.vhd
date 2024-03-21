library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_pulse_en is
  port (
    p : out std_logic ;
    s : in std_logic ;
  en : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_pulse_en: entity is 1 ;
  attribute upf_always_on of ixc_pulse_en: entity is 1 ;
end ixc_pulse_en ;
