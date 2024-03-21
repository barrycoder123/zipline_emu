LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_rforce_1024 IS
  GENERIC (
    W : std_logic_vector := signed(integer_to_std(1,32))
  ) ;
  PORT (
    L : IN std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
     integer_to_std(1,$QKTN_MAX(W'length,32)))) DOWNTO 0) ;
    V : IN std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
     integer_to_std(1,$QKTN_MAX(W'length,32)))) DOWNTO 0) ;
  en : IN std_logic ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE upf_always_on OF ixc_rforce_1024 : ENTITY IS 1 ;
END;


                