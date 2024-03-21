library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_asgn_ecov_rst_pulse is
  port (
  rstsig : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_asgn_ecov_rst_pulse: entity is 1 ;
  attribute upf_always_on of ixc_asgn_ecov_rst_pulse: entity is 1 ;
end ixc_asgn_ecov_rst_pulse ;
