LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_sfifo_port_136_0 IS
  GENERIC (
    IARGW : std_logic_vector := signed(integer_to_std(1,32));
    OARGW : std_logic_vector := signed(integer_to_std(1,32));
    CONSTANT IARGW1 : std_logic_vector := it_cond_op(ext(IARGW,$QKTN_MAX
    (IARGW'length,32)) = integer_to_std(0,$QKTN_MAX(IARGW'length,32)
    ),integer_to_std(0,$QKTN_MAX(IARGW'length,32)),(ext(IARGW,$QKTN_MAX
    (IARGW'length,32)) - integer_to_std(1,$QKTN_MAX(IARGW'length,32))));
    CONSTANT OARGW1 : std_logic_vector := it_cond_op(ext(OARGW,$QKTN_MAX
    (OARGW'length,32)) = integer_to_std(0,$QKTN_MAX(OARGW'length,32)
    ),integer_to_std(0,$QKTN_MAX(OARGW'length,32)),(ext(OARGW,$QKTN_MAX
    (OARGW'length,32)) - integer_to_std(1,$QKTN_MAX(OARGW'length,32))))
  ) ;
  PORT (
    call : OUT std_logic ;
    iarg : OUT std_logic_vector(conv_integer(IARGW1) DOWNTO 0) ;
    oarg : IN std_logic_vector(conv_integer(OARGW1) DOWNTO 0) ;
    tid : IN std_logic_vector(21 DOWNTO 0) ;
    fen : OUT std_logic ;
    CiData : IN std_logic_vector(511 DOWNTO 0) ;
    CtId : IN std_logic_vector(21 DOWNTO 0) ;
    CoData : OUT std_logic_vector(511 DOWNTO 0) ;
    CoDataEn : OUT std_logic ;
  CoDataLen : OUT std_logic_vector(3 DOWNTO 0) ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE _2_state_ OF iarg: SIGNAL IS 1 ;
  ATTRIBUTE _2_state_ OF fen: SIGNAL IS 1 ;
  ATTRIBUTE _2_state_ OF ixc_sfifo_port_136_0 : ENTITY IS 1 ;
  ATTRIBUTE upf_always_on OF ixc_sfifo_port_136_0 : ENTITY IS 1 ;
  CONSTANT IARGPL : std_logic_vector := it_cond_op(ext(IARGW,$QKTN_MAX
  (IARGW'length,32)) = integer_to_std(0,$QKTN_MAX(IARGW'length,32)
  ),integer_to_std(0,$QKTN_MAX(IARGW'length,32)),((ext(IARGW,$QKTN_MAX
  (IARGW'length,32)) + integer_to_std(511,$QKTN_MAX(IARGW'length,32))) /
   integer_to_std(512,$QKTN_MAX(IARGW'length,32)))) ;
  CONSTANT IARGPL1 : std_logic_vector := it_cond_op(ext(IARGPL,$QKTN_MAX
  (IARGW'length,32)) = integer_to_std(0,$QKTN_MAX(IARGW'length,32)
  ),integer_to_std(0,$QKTN_MAX(IARGW'length,32)),(ext(IARGPL,$QKTN_MAX
  (IARGW'length,32)) - integer_to_std(1,$QKTN_MAX(IARGW'length,32)))) ;
  CONSTANT OARGPL : std_logic_vector := it_cond_op(ext(OARGW,$QKTN_MAX
  (OARGW'length,32)) = integer_to_std(0,$QKTN_MAX(OARGW'length,32)
  ),integer_to_std(0,$QKTN_MAX(OARGW'length,32)),((ext(OARGW,$QKTN_MAX
  (OARGW'length,32)) + integer_to_std(511,$QKTN_MAX(OARGW'length,32))) /
   integer_to_std(512,$QKTN_MAX(OARGW'length,32)))) ;
  CONSTANT OARGPL1 : std_logic_vector := it_cond_op(ext(OARGPL,$QKTN_MAX
  (OARGW'length,32)) = integer_to_std(0,$QKTN_MAX(OARGW'length,32)
  ),integer_to_std(0,$QKTN_MAX(OARGW'length,32)),(ext(OARGPL,$QKTN_MAX
  (OARGW'length,32)) - integer_to_std(1,$QKTN_MAX(OARGW'length,32)))) ;
  CONSTANT OFWLEN : std_logic_vector := it_cond_op(ext(OARGW,$QKTN_MAX
  (OARGW'length,32)) = integer_to_std(0,$QKTN_MAX(OARGW'length,32)
  ),integer_to_std(0,$QKTN_MAX(OARGW'length,32)),(((ext(OARGW,$QKTN_MAX
  (OARGW'length,32)) - (ext(integer_to_std(512,$QKTN_MAX(OARGW'length,32)) * ext
  (OARGPL1,$QKTN_MAX(OARGW'length,32)),$QKTN_MAX(OARGW'length,32)))) +
   integer_to_std(63,$QKTN_MAX(OARGW'length,32))) / integer_to_std(64,$QKTN_MAX
  (OARGW'length,32)))) ;
END;


                