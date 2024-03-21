library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity IXC_SV_GFIFO_VXE_256 is
  port (
  rdCnt : in std_logic_vector(63 downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute upf_always_on of IXC_SV_GFIFO_VXE_256: entity is 1 ;
  attribute _2_state_ of IXC_SV_GFIFO_VXE_256: entity is 1 ;
  constant LBSIZE : integer := 4 ;
  constant LOG2_GFIFO_WORD_SIZE : integer := 3 ;
  constant LOG2_GFIFO_NUM_WORDS : integer := 15 ;
  constant LOG2_GFIFO_SIZE : integer := 18 ;
  constant ASYNC_OFF_THRESHOLD : integer := 65536 ;
end IXC_SV_GFIFO_VXE_256 ;
