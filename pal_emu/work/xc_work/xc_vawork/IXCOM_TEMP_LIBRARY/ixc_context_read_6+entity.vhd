LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_context_read_6 IS
  GENERIC (
    WIDTH : std_logic_vector := signed(integer_to_std(32,32))
  ) ;
  PORT (
  rdata : IN std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
  ) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0) ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE _2_state_ OF ixc_context_read_6 : ENTITY IS 1 ;
  ATTRIBUTE upf_always_on OF ixc_context_read_6 : ENTITY IS 1 ;
  CONSTANT MEMWIDTH : integer := it_cond_op(ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
  ) <= integer_to_std(32,$QKTN_MAX(WIDTH'length,32)),32,it_cond_op(ext
  (WIDTH,$QKTN_MAX(WIDTH'length,32)) <= integer_to_std(64,$QKTN_MAX
  (WIDTH'length,32)),64,it_cond_op(ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) <=
   integer_to_std(128,$QKTN_MAX(WIDTH'length,32)),128,it_cond_op(ext
  (WIDTH,$QKTN_MAX(WIDTH'length,32)) <= integer_to_std(256,$QKTN_MAX
  (WIDTH'length,32)),256,512)))) ;
  CONSTANT MEMDEPTH : std_logic_vector := ((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
  ) + integer_to_std(511,$QKTN_MAX(WIDTH'length,32))) / integer_to_std
  (512,$QKTN_MAX(WIDTH'length,32))) ;
END;


                