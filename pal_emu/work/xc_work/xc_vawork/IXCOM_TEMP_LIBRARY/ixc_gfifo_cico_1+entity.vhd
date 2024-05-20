LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_gfifo_cico_1 IS
  GENERIC (
    N : std_logic_vector := signed(integer_to_std(16,32))
  ) ;
  PORT (
    ci : OUT std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
     integer_to_std(1,$QKTN_MAX(N'length,32)))) DOWNTO 0) ;
    co : IN std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
     integer_to_std(1,$QKTN_MAX(N'length,32)))) DOWNTO 0) ;
    GFLock : IN std_logic ;
  anyReq : OUT std_logic ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE _2_state_ OF ixc_gfifo_cico_1 : ENTITY IS 1 ;
  ATTRIBUTE upf_always_on OF ixc_gfifo_cico_1 : ENTITY IS 1 ;
  CONSTANT G : integer := 4 ;
  CONSTANT M : std_logic_vector := (ext(N,$QKTN_MAX(N'length,32)) /
   integer_to_std(4,$QKTN_MAX(N'length,32))) ;
  CONSTANT R : std_logic_vector := (ext(N,$QKTN_MAX(N'length,32)) - (ext
  (integer_to_std(4,$QKTN_MAX(N'length,32)) * ext(M,$QKTN_MAX(N'length,32)
  ),$QKTN_MAX(N'length,32)))) ;
END;


                