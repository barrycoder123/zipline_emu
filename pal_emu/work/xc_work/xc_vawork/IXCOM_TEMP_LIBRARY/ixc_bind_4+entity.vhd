LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_bind_4 IS
  GENERIC (
    W : integer := 1
  ) ;
  PORT (
    L : INOUT std_logic_vector((W - 1) DOWNTO 0) ;
  DUMMY0 : INOUT std_logic_vector((W - 1) DOWNTO 0) ) ;
  ATTRIBUTE _2_state_: integer;
END;


                