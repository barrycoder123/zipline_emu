library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_gf4_pkt_q is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(64,32));
    DEPTH : std_logic_vector := signed(integer_to_std(1024,32));
    IS_SV : integer := 1;
    ARCH : integer := 0;
    GF2_1XCB : integer := 0
  ) ;
  port (
    pktEn : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0
    ) ;
    pktData : in std_logic_vector(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX
    (WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
     0) ;
    pollEn : in std_logic ;
    hasData : out std_logic ;
  pollReq : out std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of hasData: signal is 1 ;
  attribute _2_state_ of ixc_gf4_pkt_q: entity is 1 ;
  attribute upf_always_on of ixc_gf4_pkt_q: entity is 1 ;
  constant ADDR_SIZE : integer := it_cond_op(($clog2( (ext(ext(WIDTH,$QKTN_MAX
  (WIDTH'length,DEPTH'length)) * ext(DEPTH,$QKTN_MAX(WIDTH'length,DEPTH'length)
  ),$QKTN_MAX(WIDTH'length,DEPTH'length)))))/=0,$clog2( (ext(ext(WIDTH,$QKTN_MAX
  (WIDTH'length,DEPTH'length)) * ext(DEPTH,$QKTN_MAX(WIDTH'length,DEPTH'length)
  ),$QKTN_MAX(WIDTH'length,DEPTH'length)))),1) ;
  constant BUF_SIZE : std_logic_vector := signed((shl(integer_to_std(1,32
  ),integer_to_std(ADDR_SIZE,32)) + "00000000000000000000000000000001")) ;
  constant LG_WIDTH : integer := $clog2( (ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
   + integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) ;
end ixc_gf4_pkt_q ;
