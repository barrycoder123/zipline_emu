LIBRARY ieee, quickturn ;
USE ieee.std_logic_1164.ALL ;
USE quickturn.verilog.ALL ;
ENTITY ixc_gfifo_port_136_0_0 IS
  GENERIC (
    DW : std_logic_vector := signed(integer_to_std(512,32));
    SHARE : integer := 0;
    USETIME : std_logic_vector := signed(integer_to_std(1,32));
    BUFL : std_logic_vector := signed(integer_to_std(4,32));
    IS_SV_CHANNEL : integer := 1
  ) ;
  PORT (
    tkout : OUT std_logic ;
    tkin : IN std_logic ;
    ireq : IN std_logic ;
    cbid : IN std_logic_vector(19 DOWNTO 0) ;
    len : IN std_logic_vector(11 DOWNTO 0) ;
    idata : IN std_logic_vector(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
     integer_to_std(1,$QKTN_MAX(DW'length,32)))) DOWNTO 0) ;
    CGFtsReq : OUT std_logic ;
    CGFcbid : OUT std_logic_vector(19 DOWNTO 0) ;
    CGFlen : OUT std_logic_vector(11 DOWNTO 0) ;
    CGFidata : OUT std_logic_vector((512 - 1) DOWNTO 0) ;
    CGFfull : IN std_logic ;
    CLBreq : OUT std_logic ;
    CLBrd : IN std_logic_vector(3 DOWNTO 0) ;
    CLBwr : IN std_logic_vector(3 DOWNTO 0) ;
    CLBfull : IN std_logic ;
  Rtkin : IN std_logic ) ;
  ATTRIBUTE _2_state_: integer;
  ATTRIBUTE upf_always_on : integer;
  ATTRIBUTE _2_state_ OF ixc_gfifo_port_136_0_0 : ENTITY IS 1 ;
  ATTRIBUTE upf_always_on OF ixc_gfifo_port_136_0_0 : ENTITY IS 1 ;
  CONSTANT BW : std_logic_vector := it_cond_op(SHARE = 0,(ext(DW,$QKTN_MAX
  (DW'length,32)) + integer_to_std(1,$QKTN_MAX(DW'length,32))),it_cond_op(SHARE
   = 1,(ext(DW,$QKTN_MAX(DW'length,32)) + integer_to_std(13,$QKTN_MAX
  (DW'length,32))),it_cond_op(SHARE = 2,(ext(DW,$QKTN_MAX(DW'length,32)) +
   integer_to_std(21,$QKTN_MAX(DW'length,32))),(ext(DW,$QKTN_MAX(DW'length,32))
   + integer_to_std(33,$QKTN_MAX(DW'length,32)))))) ;
  CONSTANT XW : std_logic_vector := it_cond_op(ext(DW,$QKTN_MAX(DW'length,32)) >
   integer_to_std(512,$QKTN_MAX(DW'length,32)),integer_to_std(512,$QKTN_MAX
  (DW'length,32)),ext(DW,$QKTN_MAX(DW'length,32))) ;
  CONSTANT SEL1 : std_logic_vector := it_cond_op(ext(DW,$QKTN_MAX(DW'length,32))
   > integer_to_std(512,$QKTN_MAX(DW'length,32)),((ext(DW,$QKTN_MAX(DW'length,32
  )) - integer_to_std(1,$QKTN_MAX(DW'length,32))) / integer_to_std(512,$QKTN_MAX
  (DW'length,32))),integer_to_std(0,$QKTN_MAX(DW'length,32))) ;
  CONSTANT LBADW : integer := it_cond_op(ext(BUFL,$QKTN_MAX(BUFL'length,32)) <
   integer_to_std(2,$QKTN_MAX(BUFL'length,32)),1,it_cond_op(ext(BUFL,$QKTN_MAX
  (BUFL'length,32)) < integer_to_std(4,$QKTN_MAX(BUFL'length,32)),2,it_cond_op
  (ext(BUFL,$QKTN_MAX(BUFL'length,32)) < integer_to_std(8,$QKTN_MAX
  (BUFL'length,32)),3,4))) ;
  SIGNAL CGFfull_DUMMY0 : std_logic ;
  SIGNAL CLBrd_DUMMY1 : std_logic_vector(3 DOWNTO 0) ;
  SIGNAL CLBwr_DUMMY2 : std_logic_vector(3 DOWNTO 0) ;
  SIGNAL CLBfull_DUMMY3 : std_logic ;
END;


                