library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_tbcpo_push is
  generic (
    ARCH : integer := 0
  ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_tbcpo_push: entity is 1 ;
  attribute upf_always_on of ixc_tbcpo_push: entity is 1 ;
  constant IS_PTM : std_logic := boolean_to_std((ARCH = 1 or ARCH = 2)) ;
end ixc_tbcpo_push ;
