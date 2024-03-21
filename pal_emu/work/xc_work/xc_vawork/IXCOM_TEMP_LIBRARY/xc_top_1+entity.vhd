LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY xc_top_1 IS
  GENERIC (
    IXC_TIME : integer := 0
  ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE _2_state_ OF xc_top_1 : ENTITY IS 1 ;
  ATTRIBUTE upf_always_on OF xc_top_1 : ENTITY IS 1 ;
END;


      