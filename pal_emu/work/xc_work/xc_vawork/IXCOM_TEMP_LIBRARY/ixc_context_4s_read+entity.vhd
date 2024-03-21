library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_context_4s_read is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(32,32))
  ) ;
  port (
  rdata : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
  ) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute upf_always_on of ixc_context_4s_read: entity is 1 ;
  constant WIDTH4S : std_logic_vector := (ext(ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) * integer_to_std(2,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX
  (WIDTH'length,32))) ;
  constant NWORDS : std_logic_vector := ((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
   + integer_to_std(31,$QKTN_MAX(WIDTH'length,32))) / integer_to_std
  (32,$QKTN_MAX(WIDTH'length,32))) ;
  constant MEMWIDTH : integer := it_cond_op(ext(WIDTH4S,$QKTN_MAX
  (WIDTH'length,32)) <= integer_to_std(32,$QKTN_MAX(WIDTH'length,32)
  ),32,it_cond_op(ext(WIDTH4S,$QKTN_MAX(WIDTH'length,32)) <= integer_to_std
  (64,$QKTN_MAX(WIDTH'length,32)),64,it_cond_op(ext(WIDTH4S,$QKTN_MAX
  (WIDTH'length,32)) <= integer_to_std(128,$QKTN_MAX(WIDTH'length,32)
  ),128,it_cond_op(ext(WIDTH4S,$QKTN_MAX(WIDTH'length,32)) <= integer_to_std
  (256,$QKTN_MAX(WIDTH'length,32)),256,512)))) ;
  constant MEMDEPTH : std_logic_vector := ((ext(WIDTH4S,$QKTN_MAX
  (WIDTH'length,32)) + integer_to_std(511,$QKTN_MAX(WIDTH'length,32))) /
   integer_to_std(512,$QKTN_MAX(WIDTH'length,32))) ;
end ixc_context_4s_read ;
