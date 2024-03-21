LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_sample_logic_1_3 IS
  GENERIC (
    WIDTH : integer := 1;
    RD_TYPE : integer := 0;
    SUBTYPE StateType IS std_logic;
    TYPE DUMMY2 IS ARRAY(integer RANGE <>) OF std_logic
  ) ;
  PORT (
    sv : OUT DUMMY2((WIDTH - 1) DOWNTO 0) ;
    --  quickturn array_with_packed_dim sv 2 0
  v : IN DUMMY2((WIDTH - 1) DOWNTO 0) ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  --  quickturn array_with_packed_dim v 2 0
  ATTRIBUTE upf_always_on OF ixc_sample_logic_1_3 : ENTITY IS 1 ;
END;


                