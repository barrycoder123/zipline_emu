library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity IXC_SV_SCG_GFIFO_VXE_64 is
  port (
  scgGFreq : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute upf_always_on of IXC_SV_SCG_GFIFO_VXE_64: entity is 1 ;
  attribute _2_state_ of IXC_SV_SCG_GFIFO_VXE_64: entity is 1 ;
  constant LBSIZE : integer := 4 ;
  constant LOG2_GFIFO_WORD_SIZE : integer := 1 ;
  constant LOG2_GFIFO_NUM_WORDS : integer := 17 ;
  constant LOG2_GFIFO_SIZE : integer := 18 ;
end IXC_SV_SCG_GFIFO_VXE_64 ;
