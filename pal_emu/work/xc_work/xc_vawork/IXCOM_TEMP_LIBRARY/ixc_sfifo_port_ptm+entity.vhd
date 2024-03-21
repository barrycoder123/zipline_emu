library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_sfifo_port_ptm is
  generic (
    IARGW : std_logic_vector := signed(integer_to_std(1,32));
    OARGW : std_logic_vector := signed(integer_to_std(1,32));
    constant IARGW1 : std_logic_vector := it_cond_op(ext(IARGW,$QKTN_MAX
    (IARGW'length,32)) = integer_to_std(0,$QKTN_MAX(IARGW'length,32)
    ),integer_to_std(0,$QKTN_MAX(IARGW'length,32)),(ext(IARGW,$QKTN_MAX
    (IARGW'length,32)) - integer_to_std(1,$QKTN_MAX(IARGW'length,32))));
    constant OARGW1 : std_logic_vector := it_cond_op(ext(OARGW,$QKTN_MAX
    (OARGW'length,32)) = integer_to_std(0,$QKTN_MAX(OARGW'length,32)
    ),integer_to_std(0,$QKTN_MAX(OARGW'length,32)),(ext(OARGW,$QKTN_MAX
    (OARGW'length,32)) - integer_to_std(1,$QKTN_MAX(OARGW'length,32))))
  ) ;
  port (
    call : out std_logic ;
    iarg : out std_logic_vector(conv_integer(IARGW1) downto 0) ;
    oarg : in std_logic_vector(conv_integer(OARGW1) downto 0) ;
    tid : in std_logic_vector(21 downto 0) ;
    fen : out std_logic ;
    CiData : in std_logic_vector(511 downto 0) ;
    CtId : in std_logic_vector(21 downto 0) ;
    CoData : out std_logic_vector(511 downto 0) ;
    CoDataEn : out std_logic ;
  CoDataLen : out std_logic_vector(3 downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of iarg: signal is 1 ;
  attribute _2_state_ of fen: signal is 1 ;
  attribute _2_state_ of ixc_sfifo_port_ptm: entity is 1 ;
  attribute upf_always_on of ixc_sfifo_port_ptm: entity is 1 ;
  constant IARGPL : std_logic_vector := it_cond_op(ext(IARGW,$QKTN_MAX
  (IARGW'length,32)) = integer_to_std(0,$QKTN_MAX(IARGW'length,32)
  ),integer_to_std(0,$QKTN_MAX(IARGW'length,32)),((ext(IARGW,$QKTN_MAX
  (IARGW'length,32)) + integer_to_std(511,$QKTN_MAX(IARGW'length,32))) /
   integer_to_std(512,$QKTN_MAX(IARGW'length,32)))) ;
  constant IARGPL1 : std_logic_vector := it_cond_op(ext(IARGPL,$QKTN_MAX
  (IARGW'length,32)) = integer_to_std(0,$QKTN_MAX(IARGW'length,32)
  ),integer_to_std(0,$QKTN_MAX(IARGW'length,32)),(ext(IARGPL,$QKTN_MAX
  (IARGW'length,32)) - integer_to_std(1,$QKTN_MAX(IARGW'length,32)))) ;
  constant OARGPL : std_logic_vector := it_cond_op(ext(OARGW,$QKTN_MAX
  (OARGW'length,32)) = integer_to_std(0,$QKTN_MAX(OARGW'length,32)
  ),integer_to_std(0,$QKTN_MAX(OARGW'length,32)),((ext(OARGW,$QKTN_MAX
  (OARGW'length,32)) + integer_to_std(511,$QKTN_MAX(OARGW'length,32))) /
   integer_to_std(512,$QKTN_MAX(OARGW'length,32)))) ;
  constant OARGPL1 : std_logic_vector := it_cond_op(ext(OARGPL,$QKTN_MAX
  (OARGW'length,32)) = integer_to_std(0,$QKTN_MAX(OARGW'length,32)
  ),integer_to_std(0,$QKTN_MAX(OARGW'length,32)),(ext(OARGPL,$QKTN_MAX
  (OARGW'length,32)) - integer_to_std(1,$QKTN_MAX(OARGW'length,32)))) ;
  constant OFWLEN : std_logic_vector := it_cond_op(ext(OARGW,$QKTN_MAX
  (OARGW'length,32)) = integer_to_std(0,$QKTN_MAX(OARGW'length,32)
  ),integer_to_std(0,$QKTN_MAX(OARGW'length,32)),(((ext(OARGW,$QKTN_MAX
  (OARGW'length,32)) - (ext(integer_to_std(512,$QKTN_MAX(OARGW'length,32)) * ext
  (OARGPL1,$QKTN_MAX(OARGW'length,32)),$QKTN_MAX(OARGW'length,32)))) +
   integer_to_std(63,$QKTN_MAX(OARGW'length,32))) / integer_to_std(64,$QKTN_MAX
  (OARGW'length,32)))) ;
end ixc_sfifo_port_ptm ;
