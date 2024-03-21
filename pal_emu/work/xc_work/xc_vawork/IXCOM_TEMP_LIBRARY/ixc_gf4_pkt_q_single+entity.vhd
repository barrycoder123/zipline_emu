library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_gf4_pkt_q_single is
  generic (
    WIDTH : std_logic_vector := signed(integer_to_std(64,32));
    DEPTH : std_logic_vector := signed(integer_to_std(1024,32));
    SQ_WIDTH : std_logic_vector := signed(integer_to_std(64,32));
    IS_SV : integer := 1;
    ARCH : integer := 0;
    GF2_1XCB : integer := 0;
    NEEDS_ARGS_IN_FFS : integer := 1
  ) ;
  port (
    pktEn : in std_logic ;
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
  attribute _2_state_ of ixc_gf4_pkt_q_single: entity is 1 ;
  attribute upf_always_on of ixc_gf4_pkt_q_single: entity is 1 ;
  constant ADDR_SIZE : integer := it_cond_op(($clog2( DEPTH))/=0,$clog2( DEPTH
  ),1) ;
  constant TOTAL_WIDTH : std_logic_vector := (ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) + integer_to_std(1,$QKTN_MAX(WIDTH'length,32))) ;
end ixc_gf4_pkt_q_single ;
