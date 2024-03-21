library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_master_clock is
  generic (
    phase_length : integer := 625
  ) ;
  port (
  phi1 : out std_logic ) ;
  attribute _2_state_: integer;
end ixc_master_clock ;
