library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity IXC_SV_SFIFO_VXE_256 is
  port (
    rdCnt : out std_logic_vector(63 downto 0) ;
  scgGFreq : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of rdCnt: signal is 1 ;
  attribute upf_always_on of IXC_SV_SFIFO_VXE_256: entity is 1 ;
  attribute _2_state_ of IXC_SV_SFIFO_VXE_256: entity is 1 ;
  constant VLEN : integer := 0 ;
  constant TID : integer := 10 ;
  constant ARGL : integer := 32 ;
  constant ODLY : integer := 48 ;
  constant MARK : integer := 63 ;
  constant MARKN : integer := 62 ;
  constant RST : integer := 61 ;
  constant LOG2_SFIFO_WORD_SIZE : integer := 2 ;
  constant LOG2_SFIFO_NUM_WORDS : integer := 15 ;
  constant LOG2_SFIFO_SIZE : integer := 17 ;
end IXC_SV_SFIFO_VXE_256 ;
