LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY IXC_OSF_MB_20 IS
  GENERIC (
    WIDTH : std_logic_vector := signed(integer_to_std(1984,32))
  ) ;
  PORT (
    pvecEv : IN std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0
    ) ;
  dirty : OUT std_logic ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE upf_always_on OF IXC_OSF_MB_20 : ENTITY IS 1 ;
  ATTRIBUTE _2_state_ OF IXC_OSF_MB_20 : ENTITY IS 1 ;
  CONSTANT EVMEMW : integer := 64 ;
  CONSTANT NBLK : std_logic_vector := ((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) + 
  (conv_signed(EVMEMW,$QKTN_MAX(WIDTH'length,32)) - conv_signed(1,$QKTN_MAX
  (WIDTH'length,32)))) / integer_to_std(64,$QKTN_MAX(WIDTH'length,32))) ;
  CONSTANT NBLK1 : std_logic_vector := it_cond_op(ext(NBLK,$QKTN_MAX
  (WIDTH'length,32)) = integer_to_std(0,$QKTN_MAX(WIDTH'length,32)
  ),integer_to_std(0,$QKTN_MAX(WIDTH'length,32)),(ext(NBLK,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) ;
  CONSTANT MDEP : std_logic_vector := it_cond_op(ext(NBLK,$QKTN_MAX
  (WIDTH'length,32)) > integer_to_std(0,$QKTN_MAX(WIDTH'length,32)),(ext
  (NBLK,$QKTN_MAX(WIDTH'length,32)) + integer_to_std(1,$QKTN_MAX(WIDTH'length,32
  ))),integer_to_std(1,$QKTN_MAX(WIDTH'length,32))) ;
  CONSTANT PTRWID : integer := it_cond_op($clog2( MDEP) > 0,$clog2( MDEP),1) ;
END;


                