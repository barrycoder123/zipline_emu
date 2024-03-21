library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_dist_sfifo_port is
  generic (
    IARGW : integer := 1;
    OARGW : integer := 1;
    CAPACITY : std_logic_vector := signed(integer_to_std(16,32));
    constant IARGW1 : integer := it_cond_op(IARGW = 0,0,(IARGW - 1));
    constant OARGW1 : integer := it_cond_op(OARGW = 0,0,(OARGW - 1))
  ) ;
  port (
    call : out std_logic ;
    iarg : out std_logic_vector(IARGW1 downto 0) ;
    oarg : in std_logic_vector(OARGW1 downto 0) ;
    tid : in std_logic_vector(15 downto 0) ;
    fen : out std_logic ;
    CsfifoDone : out std_logic ;
  CsfifoCount : in std_logic_vector(47 downto 0) ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of iarg: signal is 1 ;
  attribute _2_state_ of fen: signal is 1 ;
  attribute _2_state_ of ixc_dist_sfifo_port: entity is 1 ;
  attribute upf_always_on of ixc_dist_sfifo_port: entity is 1 ;
  constant IARG_WORDS : integer := ((IARGW + 63) / 64) ;
  constant OARG_WORDS : integer := ((OARGW + 63) / 64) ;
  constant IFIFO_WORD_SIZE : integer := ((IARG_WORDS + 1) * 64) ;
  constant OFIFO_WORD_SIZE : integer := (OARG_WORDS * 64) ;
  constant IARGPL : integer := it_cond_op(IARGW = 0,0,((IARGW + 511) / 512)) ;
  constant IARGPL1 : integer := it_cond_op(IARGPL = 0,0,(IARGPL - 1)) ;
  constant OARGPL : integer := it_cond_op(OARGW = 0,0,((OARGW + 511) / 512)) ;
  constant OARGPL1 : integer := it_cond_op(OARGPL = 0,0,(OARGPL - 1)) ;
  constant OFWLEN : integer := it_cond_op(OARGW = 0,0,(((OARGW - (512 * OARGPL1)
  ) + 63) / 64)) ;
  constant LOG2_CAPACITY : integer := $clog2( CAPACITY) ;
end ixc_dist_sfifo_port ;
