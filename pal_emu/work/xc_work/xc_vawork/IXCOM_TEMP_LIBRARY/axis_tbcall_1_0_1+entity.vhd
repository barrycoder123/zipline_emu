LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY axis_tbcall_1_0_1 IS
  GENERIC (
    level : integer := 0;
    anyEdge : integer := 0;
    BP : integer := 0
  ) ;
  PORT (
    s : IN std_logic ;
    taskcall : IN std_logic ;
    so : OUT std_logic ;
  pui : IN std_logic ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE _2_state_ OF so: SIGNAL IS 1 ;
  ATTRIBUTE _2_state_ OF axis_tbcall_1_0_1 : ENTITY IS 1 ;
  ATTRIBUTE upf_always_on OF axis_tbcall_1_0_1 : ENTITY IS 1 ;
END;


                