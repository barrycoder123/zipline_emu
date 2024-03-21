LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_context_write_1024 IS
  GENERIC (
    DWIDTH : std_logic_vector := signed(integer_to_std(32,32));
    NVEC : std_logic_vector := signed(integer_to_std(1,32))
  ) ;
  PORT (
  wdata : IN std_logic_vector(conv_integer((ext(DWIDTH,$QKTN_MAX
  (DWIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(DWIDTH'length,32)))) DOWNTO 0
  ) ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE _2_state_ OF ixc_context_write_1024 : ENTITY IS 1 ;
  ATTRIBUTE upf_always_on OF ixc_context_write_1024 : ENTITY IS 1 ;
  CONSTANT WIDTH : std_logic_vector := (ext(DWIDTH,$QKTN_MAX
  (DWIDTH'length,NVEC'length)) + ext(NVEC,$QKTN_MAX(DWIDTH'length,NVEC'length)))
   ;
  CONSTANT MEMWIDTH : integer := it_cond_op(ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) <= integer_to_std(32,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)),32,it_cond_op(ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) <= integer_to_std(64,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)),64,it_cond_op(ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) <= integer_to_std(128,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)),128,it_cond_op(ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) <= integer_to_std(256,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)),256,512)))) ;
  CONSTANT MEMDEPTH : std_logic_vector := ((ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) + integer_to_std(511,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32))) / integer_to_std(512,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32))) ;
END;


                