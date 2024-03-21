library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_pkt_q_single_buf is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(64,32));
    ADDR_SIZE : integer := 18;
    ARCH : integer := 0
  ) ;
  port (
    wen : in std_logic ;
    wptrP : in std_logic_vector((ADDR_SIZE - 1) downto 0) ;
    data : in std_logic_vector(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX
    (WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
     0) ;
    pushEn : in std_logic ;
    pushAddr : in std_logic_vector((ADDR_SIZE - 1) downto 0) ;
    pushLen : in std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  pushId : in std_logic_vector(63 downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_pkt_q_single_buf: entity is 1 ;
  attribute upf_always_on of ixc_pkt_q_single_buf: entity is 1 ;
  constant NUM_WORDS_PER_FCLK : std_logic_vector := ((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) + integer_to_std(7,$QKTN_MAX(WIDTH'length,32))) /
   integer_to_std(8,$QKTN_MAX(WIDTH'length,32))) ;
  constant LOG_NUM_WORDS_PER_FCLK : integer := it_cond_op(($clog2(
   NUM_WORDS_PER_FCLK))/=0,$clog2( NUM_WORDS_PER_FCLK),1) ;
  constant BUF_SIZE : std_logic_vector := ((ext(shl(conv_signed(1,$QKTN_MAX
  (WIDTH'length,32)),integer_to_std(ADDR_SIZE,32)) * ext
  (NUM_WORDS_PER_FCLK,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX(WIDTH'length,32))) +
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32))) ;
end ixc_pkt_q_single_buf ;
