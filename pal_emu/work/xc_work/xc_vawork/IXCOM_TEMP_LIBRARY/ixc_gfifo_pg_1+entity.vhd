LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_gfifo_pg_1 IS
  GENERIC (
    R : std_logic_vector := signed(integer_to_std(4,32))
  ) ;
  PORT (
    so : OUT std_logic ;
    ci : OUT std_logic_vector(conv_integer((ext(R,$QKTN_MAX(R'length,32)) -
     integer_to_std(1,$QKTN_MAX(R'length,32)))) DOWNTO 0) ;
    co : IN std_logic_vector(conv_integer((ext(R,$QKTN_MAX(R'length,32)) -
     integer_to_std(1,$QKTN_MAX(R'length,32)))) DOWNTO 0) ;
  si : IN std_logic ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE _2_state_ OF ixc_gfifo_pg_1 : ENTITY IS 1 ;
  ATTRIBUTE upf_always_on OF ixc_gfifo_pg_1 : ENTITY IS 1 ;
END;


                