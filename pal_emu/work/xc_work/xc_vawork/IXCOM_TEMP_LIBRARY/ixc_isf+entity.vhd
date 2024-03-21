library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity IXC_ISF is
  generic (
    WIDTH : integer := 2
  ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute upf_always_on of IXC_ISF: entity is 1 ;
  attribute _2_state_ of IXC_ISF: entity is 1 ;
  constant PIOWIDTH : integer := 2 ;
  constant EVMEMW : integer := 512 ;
  constant NBLK : integer := 1 ;
  constant NBLK1 : integer := 0 ;
  constant MDEP : integer := 1 ;
  constant ST_IDLE : integer := 0 ;
  constant ST_ACTIVE : integer := 1 ;
  constant ST_MRD : integer := 2 ;
end IXC_ISF ;
