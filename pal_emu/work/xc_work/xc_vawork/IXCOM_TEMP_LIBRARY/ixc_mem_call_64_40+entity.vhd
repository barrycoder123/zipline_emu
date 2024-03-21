LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_mem_call_64_40 IS
  GENERIC (
    S2HDW : std_logic_vector := signed(integer_to_std(1,32));
    H2SDW : std_logic_vector := signed(integer_to_std(1,32));
    MAIDW : std_logic_vector := signed(integer_to_std(0,32));
    LTIDW : std_logic_vector := signed(integer_to_std(0,32));
    ISSVA : integer := 0;
    CONSTANT S2HDW1 : std_logic_vector := it_cond_op(ext(S2HDW,$QKTN_MAX
    (S2HDW'length,32)) = integer_to_std(0,$QKTN_MAX(S2HDW'length,32)
    ),integer_to_std(0,$QKTN_MAX(S2HDW'length,32)),(ext(S2HDW,$QKTN_MAX
    (S2HDW'length,32)) - integer_to_std(1,$QKTN_MAX(S2HDW'length,32))));
    CONSTANT H2SDW1 : std_logic_vector := it_cond_op(ext(H2SDW,$QKTN_MAX
    (H2SDW'length,32)) = integer_to_std(0,$QKTN_MAX(H2SDW'length,32)
    ),integer_to_std(0,$QKTN_MAX(H2SDW'length,32)),(ext(H2SDW,$QKTN_MAX
    (H2SDW'length,32)) - integer_to_std(1,$QKTN_MAX(H2SDW'length,32))));
    CONSTANT MAIDW1 : std_logic_vector := it_cond_op(ext(MAIDW,$QKTN_MAX
    (MAIDW'length,32)) = integer_to_std(0,$QKTN_MAX(MAIDW'length,32)
    ),integer_to_std(0,$QKTN_MAX(MAIDW'length,32)),(ext(MAIDW,$QKTN_MAX
    (MAIDW'length,32)) - integer_to_std(1,$QKTN_MAX(MAIDW'length,32))));
    CONSTANT LTIDW1 : std_logic_vector := it_cond_op(ext(LTIDW,$QKTN_MAX
    (LTIDW'length,32)) = integer_to_std(0,$QKTN_MAX(LTIDW'length,32)
    ),integer_to_std(0,$QKTN_MAX(LTIDW'length,32)),(ext(LTIDW,$QKTN_MAX
    (LTIDW'length,32)) - integer_to_std(1,$QKTN_MAX(LTIDW'length,32))))
  ) ;
  PORT (
    s2h_notify : OUT std_logic ;
    s2h_data : OUT std_logic_vector(conv_integer(S2HDW1) DOWNTO 0) ;
    from_isf : IN std_logic ;
    h2s_notify : IN std_logic ;
    h2s_data : IN std_logic_vector(conv_integer(H2SDW1) DOWNTO 0) ;
    to_osf : OUT std_logic ;
    maid : IN std_logic_vector(conv_integer(MAIDW1) DOWNTO 0) ;
  ltid : IN std_logic_vector(conv_integer(LTIDW1) DOWNTO 0) ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE _2_state_ OF s2h_data: SIGNAL IS 1 ;
  ATTRIBUTE _2_state_ OF h2s_data: SIGNAL IS 1 ;
  ATTRIBUTE _2_state_ OF maid: SIGNAL IS 1 ;
  ATTRIBUTE _2_state_ OF ltid: SIGNAL IS 1 ;
  ATTRIBUTE _2_state_ OF ixc_mem_call_64_40 : ENTITY IS 1 ;
  ATTRIBUTE upf_always_on OF ixc_mem_call_64_40 : ENTITY IS 1 ;
  CONSTANT S2HMEMW : integer := it_cond_op(ext(S2HDW,$QKTN_MAX(S2HDW'length,32))
   <= integer_to_std(32,$QKTN_MAX(S2HDW'length,32)),32,it_cond_op(ext
  (S2HDW,$QKTN_MAX(S2HDW'length,32)) <= integer_to_std(64,$QKTN_MAX
  (S2HDW'length,32)),64,it_cond_op(ext(S2HDW,$QKTN_MAX(S2HDW'length,32)) <=
   integer_to_std(256,$QKTN_MAX(S2HDW'length,32)),256,512))) ;
  CONSTANT H2SMEMW : integer := it_cond_op(ext(H2SDW,$QKTN_MAX(H2SDW'length,32))
   <= integer_to_std(32,$QKTN_MAX(H2SDW'length,32)),32,it_cond_op(ext
  (H2SDW,$QKTN_MAX(H2SDW'length,32)) <= integer_to_std(64,$QKTN_MAX
  (H2SDW'length,32)),64,it_cond_op(ext(H2SDW,$QKTN_MAX(H2SDW'length,32)) <=
   integer_to_std(256,$QKTN_MAX(H2SDW'length,32)),256,512))) ;
  CONSTANT S2HMEMW1 : integer := it_cond_op(S2HMEMW = 0,0,(S2HMEMW - 1)) ;
  CONSTANT H2SMEMW1 : integer := it_cond_op(H2SMEMW = 0,0,(H2SMEMW - 1)) ;
  CONSTANT S2HNBLK : std_logic_vector := ((ext(S2HDW,$QKTN_MAX(S2HDW'length,32))
   + integer_to_std(S2HMEMW1,$QKTN_MAX(S2HDW'length,32))) / integer_to_std
  (S2HMEMW,$QKTN_MAX(S2HDW'length,32))) ;
  CONSTANT H2SNBLK : std_logic_vector := ((ext(H2SDW,$QKTN_MAX(H2SDW'length,32))
   + integer_to_std(H2SMEMW1,$QKTN_MAX(H2SDW'length,32))) / integer_to_std
  (H2SMEMW,$QKTN_MAX(H2SDW'length,32))) ;
  CONSTANT S2HNBLK1 : std_logic_vector := it_cond_op(ext(S2HNBLK,$QKTN_MAX
  (S2HDW'length,32)) = integer_to_std(0,$QKTN_MAX(S2HDW'length,32)
  ),integer_to_std(0,$QKTN_MAX(S2HDW'length,32)),(ext(S2HNBLK,$QKTN_MAX
  (S2HDW'length,32)) - integer_to_std(1,$QKTN_MAX(S2HDW'length,32)))) ;
  CONSTANT H2SNBLK1 : std_logic_vector := it_cond_op(ext(H2SNBLK,$QKTN_MAX
  (H2SDW'length,32)) = integer_to_std(0,$QKTN_MAX(H2SDW'length,32)
  ),integer_to_std(0,$QKTN_MAX(H2SDW'length,32)),(ext(H2SNBLK,$QKTN_MAX
  (H2SDW'length,32)) - integer_to_std(1,$QKTN_MAX(H2SDW'length,32)))) ;
  CONSTANT S2HMDEP : std_logic_vector := it_cond_op(ext(S2HNBLK,$QKTN_MAX
  (S2HDW'length,32)) > integer_to_std(0,$QKTN_MAX(S2HDW'length,32)),it_cond_op
  (ext(S2HDW,$QKTN_MAX(S2HDW'length,32)) < (ext(integer_to_std(S2HMEMW,$QKTN_MAX
  (S2HDW'length,32)) * ext(S2HNBLK,$QKTN_MAX(S2HDW'length,32)),$QKTN_MAX
  (S2HDW'length,32))),ext(S2HNBLK,$QKTN_MAX(S2HDW'length,32)),(ext
  (S2HNBLK,$QKTN_MAX(S2HDW'length,32)) + integer_to_std(1,$QKTN_MAX
  (S2HDW'length,32)))),integer_to_std(1,$QKTN_MAX(S2HDW'length,32))) ;
  CONSTANT H2SMDEP : std_logic_vector := it_cond_op(ext(H2SNBLK,$QKTN_MAX
  (H2SDW'length,32)) > integer_to_std(0,$QKTN_MAX(H2SDW'length,32)),ext
  (H2SNBLK,$QKTN_MAX(H2SDW'length,32)),integer_to_std(1,$QKTN_MAX
  (H2SDW'length,32))) ;
  CONSTANT WPTRWID : integer := it_cond_op($clog2( H2SMDEP) > 0,$clog2( H2SMDEP
  ),1) ;
  CONSTANT RPTRWID : integer := it_cond_op($clog2( S2HMDEP) > 0,$clog2( S2HMDEP
  ),1) ;
  CONSTANT NEEDLTID : integer := it_cond_op((ext(MAIDW,$QKTN_MAX(MAIDW'length,32
  )) > integer_to_std(0,$QKTN_MAX(MAIDW'length,32)) OR ext(LTIDW,$QKTN_MAX
  (LTIDW'length,32)) > integer_to_std(0,$QKTN_MAX(LTIDW'length,32))),1,0) ;
  CONSTANT ST_IDLE : integer := 0 ;
  CONSTANT ST_ACTIVE : integer := 1 ;
  CONSTANT ST_MRDWR : integer := 2 ;
END;


                