LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_sampleLT_20 IS
  GENERIC (
    WIDTH : integer := 1;
    ASYNC : integer := 0
  ) ;
  PORT (
    ov : OUT std_logic_vector((WIDTH - 1) DOWNTO 0) ;
  v : IN std_logic_vector((WIDTH - 1) DOWNTO 0) ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE upf_always_on OF ixc_sampleLT_20 : ENTITY IS 1 ;
END;


                