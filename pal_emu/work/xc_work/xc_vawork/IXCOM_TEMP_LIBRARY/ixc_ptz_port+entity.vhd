library ieee, quickturn ;
use ieee.std_logic_1164.all ;
use quickturn.verilog.all ;
entity ixc_ptz_port is
  generic (
    PTYPE : integer := 0;
    S2H_W : std_logic_vector := signed(integer_to_std(32,32));
    H2S_W : integer := 0;
    SF_BL : std_logic_vector := signed(integer_to_std(8,32));
    constant S2HW : std_logic_vector := it_cond_op(ext(S2H_W,$QKTN_MAX
    (S2H_W'length,32)) = integer_to_std(0,$QKTN_MAX(S2H_W'length,32)
    ),integer_to_std(1,$QKTN_MAX(S2H_W'length,32)),(ext(((ext(S2H_W,$QKTN_MAX
    (S2H_W'length,32)) + integer_to_std(63,$QKTN_MAX(S2H_W'length,32))) /
     integer_to_std(64,$QKTN_MAX(S2H_W'length,32))) * integer_to_std
    (64,$QKTN_MAX(S2H_W'length,32)),$QKTN_MAX(S2H_W'length,32))))
  ) ;
  port (
    s2h_notify : out std_logic ;
    s2h : out std_logic_vector(conv_integer((ext(S2HW,$QKTN_MAX(S2H_W'length,32)
    ) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))) downto 0) ;
    h2s_notify : in std_logic ;
    call_gf : out std_logic ;
  h2s : in std_logic ) ;
  attribute _2_state_: integer;
  attribute upf_always_on : integer;
  attribute _2_state_ of s2h_notify: signal is 1 ;
  attribute _2_state_ of s2h: signal is 1 ;
  attribute _2_state_ of call_gf: signal is 1 ;
  attribute _2_state_ of ixc_ptz_port: entity is 1 ;
  attribute upf_always_on of ixc_ptz_port: entity is 1 ;
  constant S2H_ML : std_logic_vector := ((ext(S2H_W,$QKTN_MAX(S2H_W'length,32))
   + integer_to_std(63,$QKTN_MAX(S2H_W'length,32))) / integer_to_std
  (64,$QKTN_MAX(S2H_W'length,32))) ;
  constant S2H_ML1 : std_logic_vector := (ext(S2H_ML,$QKTN_MAX(S2H_W'length,32))
   + integer_to_std(1,$QKTN_MAX(S2H_W'length,32))) ;
  constant S2H_PW : std_logic_vector := it_cond_op(ext(S2H_ML1,$QKTN_MAX
  (S2H_W'length,32)) < integer_to_std(8,$QKTN_MAX(S2H_W'length,32)),(ext(ext
  (S2H_ML1,$QKTN_MAX(S2H_W'length,32)) * integer_to_std(64,$QKTN_MAX
  (S2H_W'length,32)),$QKTN_MAX(S2H_W'length,32))),integer_to_std(512,$QKTN_MAX
  (S2H_W'length,32))) ;
  constant S2H_PL : std_logic_vector := (ext(S2H_PW,$QKTN_MAX(S2H_W'length,32))
   / integer_to_std(64,$QKTN_MAX(S2H_W'length,32))) ;
  constant S2H_SL : std_logic_vector := it_cond_op(ext(S2H_ML,$QKTN_MAX
  (S2H_W'length,32)) < integer_to_std(8,$QKTN_MAX(S2H_W'length,32)
  ),integer_to_std(1,$QKTN_MAX(S2H_W'length,32)),((ext(S2H_ML,$QKTN_MAX
  (S2H_W'length,32)) + integer_to_std(7,$QKTN_MAX(S2H_W'length,32))) /
   integer_to_std(8,$QKTN_MAX(S2H_W'length,32)))) ;
  constant S2H_SL1 : std_logic_vector := it_cond_op(ext(S2H_ML1,$QKTN_MAX
  (S2H_W'length,32)) < integer_to_std(8,$QKTN_MAX(S2H_W'length,32)
  ),integer_to_std(1,$QKTN_MAX(S2H_W'length,32)),((ext(S2H_ML1,$QKTN_MAX
  (S2H_W'length,32)) + integer_to_std(7,$QKTN_MAX(S2H_W'length,32))) /
   integer_to_std(8,$QKTN_MAX(S2H_W'length,32)))) ;
  constant S2H_SA : integer := it_cond_op((ext(ext(S2H_SL1,$QKTN_MAX($QKTN_MAX
  (S2H_W'length,32),SF_BL'length)) * ext(SF_BL,$QKTN_MAX($QKTN_MAX
  (S2H_W'length,32),SF_BL'length)),$QKTN_MAX($QKTN_MAX(S2H_W'length,32
  ),SF_BL'length))) < integer_to_std(2,$QKTN_MAX($QKTN_MAX(S2H_W'length,32
  ),SF_BL'length)),1,$clog2( (ext(ext(S2H_SL1,$QKTN_MAX($QKTN_MAX
  (S2H_W'length,32),SF_BL'length)) * ext(SF_BL,$QKTN_MAX($QKTN_MAX
  (S2H_W'length,32),SF_BL'length)),$QKTN_MAX($QKTN_MAX(S2H_W'length,32
  ),SF_BL'length))))) ;
  constant S2H_EN_LAST : std_logic_vector(conv_integer((ext(S2H_SL1,$QKTN_MAX
  (S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))) downto 0)
   := shl(ext("1",abs(conv_integer((ext(S2H_SL1,$QKTN_MAX(S2H_W'length,32)) -
   integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))))+1),(ext(S2H_SL1,$QKTN_MAX
  (S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))) ;
end ixc_ptz_port ;
