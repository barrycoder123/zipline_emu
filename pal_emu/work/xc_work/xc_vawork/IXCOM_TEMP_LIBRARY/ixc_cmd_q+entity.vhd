library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_cmd_q is
  generic (
    NUM_QS : std_logic_vector := signed(integer_to_std(64,32));
    DEPTH : std_logic_vector := signed(integer_to_std(512,32));
    LEVEL : std_logic_vector := signed(integer_to_std(1,32));
    ROOT : std_logic_vector := signed(integer_to_std(1,32));
    IS_SV : integer := 1;
    ARCH : integer := 0;
    GF2_1XCB : std_logic_vector := signed(integer_to_std(0,32))
  ) ;
  port (
    cmdEnIn : in std_logic_vector(conv_integer((ext(NUM_QS,$QKTN_MAX
    (NUM_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32)))) downto
     0) ;
    cmdDataIn : in std_logic_vector(conv_integer(((ext(integer_to_std
    (7,$QKTN_MAX(32,NUM_QS'length)) * ext(NUM_QS,$QKTN_MAX(32,NUM_QS'length)
    ),$QKTN_MAX(32,NUM_QS'length))) - integer_to_std(1,$QKTN_MAX
    (32,NUM_QS'length)))) downto 0) ;
    cmdEnOut : out std_logic ;
    cmdDataOut : out std_logic_vector(6 downto 0) ;
    pollReq : out std_logic ;
    pollEn : in std_logic ;
  nrqsBusy : inout std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of pollReq: signal is 1 ;
  attribute _2_state_ of ixc_cmd_q: entity is 1 ;
  attribute upf_always_on of ixc_cmd_q: entity is 1 ;
  constant WIDTH : std_logic_vector := ((ext(NUM_QS,$QKTN_MAX(NUM_QS'length,32))
   + integer_to_std(7,$QKTN_MAX(NUM_QS'length,32))) / integer_to_std(8,$QKTN_MAX
  (NUM_QS'length,32))) ;
  constant SIZE : std_logic_vector := (ext(ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (NUM_QS'length,32),DEPTH'length)) * ext(DEPTH,$QKTN_MAX($QKTN_MAX
  (NUM_QS'length,32),DEPTH'length)),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32
  ),DEPTH'length))) ;
  constant ADDR_SIZE : integer := it_cond_op(($clog2( SIZE))/=0,$clog2( SIZE),1)
   ;
  constant BUF_SIZE : std_logic_vector := signed((shl(integer_to_std(1,32
  ),integer_to_std(ADDR_SIZE,32)) + "00000000000000000000000000000001")) ;
  constant P2C_DLY : std_logic_vector := (ext(LEVEL,$QKTN_MAX
  (LEVEL'length,GF2_1XCB'length)) + ext(GF2_1XCB,$QKTN_MAX
  (LEVEL'length,GF2_1XCB'length))) ;
  constant LG_WIDTH : integer := $clog2( (ext(WIDTH,$QKTN_MAX(NUM_QS'length,32))
   + integer_to_std(2,$QKTN_MAX(NUM_QS'length,32)))) ;
  constant MAX_MEM_PORTS : integer := it_cond_op((ARCH = 1 or ARCH = 2),16,64) ;
end ixc_cmd_q ;
