library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_q_status is
  generic (
    NUM_QS : std_logic_vector := signed(integer_to_std(9,32));
    ROOT : integer := 1;
    MAX_MEM_PORTS : std_logic_vector := signed(integer_to_std(64,32));
    IS_SV : integer := 1;
    ARCH : integer := 0
  ) ;
  port (
    Qwptr : in std_logic_vector(conv_integer(((ext(integer_to_std(18,$QKTN_MAX
    (32,NUM_QS'length)) * ext(NUM_QS,$QKTN_MAX(32,NUM_QS'length)),$QKTN_MAX
    (32,NUM_QS'length))) - integer_to_std(1,$QKTN_MAX(32,NUM_QS'length))))
     downto 0) ;
    pollQ : in std_logic ;
    cqBusy : in std_logic ;
    qsBusy : out std_logic ;
  nrqsBusy : inout std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of ixc_q_status: entity is 1 ;
  attribute upf_always_on of ixc_q_status: entity is 1 ;
  constant N3 : std_logic_vector := ((ext(NUM_QS,$QKTN_MAX(NUM_QS'length,32)) +
   integer_to_std(2,$QKTN_MAX(NUM_QS'length,32))) / integer_to_std(3,$QKTN_MAX
  (NUM_QS'length,32))) ;
  constant SBLK : std_logic_vector := it_cond_op(ext(N3,$QKTN_MAX($QKTN_MAX
  (NUM_QS'length,32),MAX_MEM_PORTS'length)) < ext(MAX_MEM_PORTS,$QKTN_MAX
  ($QKTN_MAX(NUM_QS'length,32),MAX_MEM_PORTS'length)),ext(N3,$QKTN_MAX($QKTN_MAX
  (NUM_QS'length,32),MAX_MEM_PORTS'length)),ext(MAX_MEM_PORTS,$QKTN_MAX
  ($QKTN_MAX(NUM_QS'length,32),MAX_MEM_PORTS'length))) ;
  constant LG_SBLK : integer := it_cond_op($clog2( SBLK) = 0,1,$clog2( SBLK)) ;
  constant BUF_SIZE : std_logic_vector := (ext(N3,$QKTN_MAX(NUM_QS'length,32)) +
   integer_to_std(3,$QKTN_MAX(NUM_QS'length,32))) ;
  constant IS_PTM : std_logic := boolean_to_std((ARCH = 1 or ARCH = 2)) ;
end ixc_q_status ;
