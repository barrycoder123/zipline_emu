library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_gf4_q_status is
  generic (
    NUM_PKT_QS : std_logic_vector := signed(integer_to_std(128,32));
    LEVEL : std_logic_vector := signed(integer_to_std(1,32));
    ROOT : integer := 1;
    IS_SV : integer := 1;
    ARCH : integer := 0;
    GF2_1XCB : std_logic_vector := signed(integer_to_std(0,32))
  ) ;
  port (
    status : in std_logic_vector(conv_integer((ext(NUM_PKT_QS,$QKTN_MAX
    (NUM_PKT_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_PKT_QS'length,32)))
    ) downto 0) ;
    pollEn : in std_logic ;
    statusOut : out std_logic ;
  pollReq : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of pollReq: signal is 1 ;
  attribute _2_state_ of ixc_gf4_q_status: entity is 1 ;
  attribute upf_always_on of ixc_gf4_q_status: entity is 1 ;
  constant NUM_GRP_64 : std_logic_vector := ((ext(NUM_PKT_QS,$QKTN_MAX
  (NUM_PKT_QS'length,32)) + integer_to_std(63,$QKTN_MAX(NUM_PKT_QS'length,32)))
   / integer_to_std(64,$QKTN_MAX(NUM_PKT_QS'length,32))) ;
  constant DEPTH : std_logic_vector := (ext(NUM_GRP_64,$QKTN_MAX
  (NUM_PKT_QS'length,32)) + integer_to_std(3,$QKTN_MAX(NUM_PKT_QS'length,32))) ;
  constant ADDR_SIZE : integer := it_cond_op(($clog2( DEPTH))/=0,$clog2( DEPTH
  ),1) ;
  constant PQ2QS_DLY : std_logic_vector := (ext(LEVEL,$QKTN_MAX
  (LEVEL'length,GF2_1XCB'length)) + ext(GF2_1XCB,$QKTN_MAX
  (LEVEL'length,GF2_1XCB'length))) ;
end ixc_gf4_q_status ;
