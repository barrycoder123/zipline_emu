library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity IXC_OSF_MB is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(1984,32))
  ) ;
  port (
    pvecEv : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0
    ) ;
  dirty : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute upf_always_on of IXC_OSF_MB: entity is 1 ;
  attribute _2_state_ of IXC_OSF_MB: entity is 1 ;
  constant EVMEMW : integer := 64 ;
  constant NBLK : std_logic_vector := ((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) + 
  (conv_signed(EVMEMW,$QKTN_MAX(WIDTH'length,32)) - conv_signed(1,$QKTN_MAX
  (WIDTH'length,32)))) / integer_to_std(64,$QKTN_MAX(WIDTH'length,32))) ;
  constant NBLK1 : std_logic_vector := it_cond_op(ext(NBLK,$QKTN_MAX
  (WIDTH'length,32)) = integer_to_std(0,$QKTN_MAX(WIDTH'length,32)
  ),integer_to_std(0,$QKTN_MAX(WIDTH'length,32)),(ext(NBLK,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) ;
  constant MDEP : std_logic_vector := it_cond_op(ext(NBLK,$QKTN_MAX
  (WIDTH'length,32)) > integer_to_std(0,$QKTN_MAX(WIDTH'length,32)),(ext
  (NBLK,$QKTN_MAX(WIDTH'length,32)) + integer_to_std(1,$QKTN_MAX(WIDTH'length,32
  ))),integer_to_std(1,$QKTN_MAX(WIDTH'length,32))) ;
  constant PTRWID : integer := it_cond_op($clog2( MDEP) > 0,$clog2( MDEP),1) ;
end IXC_OSF_MB ;
