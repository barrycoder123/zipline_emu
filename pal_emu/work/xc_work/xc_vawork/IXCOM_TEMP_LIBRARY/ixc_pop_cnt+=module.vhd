architecture module of ixc_pop_cnt is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_pop_cnt
    generic (
      W : std_logic_vector := signed(integer_to_std(127,32)) ;
      LG_W : integer := 7
    ) ;
    port (
      d : in std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
       integer_to_std(1,$QKTN_MAX(W'length,32)))) downto 0) := (others => 'X') ;
    cnt : out std_logic_vector((LG_W - 1) downto 0) ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;


begin
  Generate1 : if genblk1 : (ext(W,$QKTN_MAX(W'length,32)) = integer_to_std
  (1,$QKTN_MAX(W'length,32))) generate
  begin
    cnt <= ext(d(0),abs((LG_W - 1))+1) ;
  elsif DUMMY0 : (ext(W,$QKTN_MAX(W'length,32)) = integer_to_std(2,$QKTN_MAX
  (W'length,32))) generate
  begin
    cnt <= (ext(d(0),abs((LG_W - 1))+1) + ext(d(1),abs((LG_W - 1))+1)) ;
  elsif DUMMY1 : (ext(W,$QKTN_MAX(W'length,32)) = integer_to_std(3,$QKTN_MAX
  (W'length,32))) generate
  begin
    cnt <= ((ext(d(0),abs((LG_W - 1))+1) + ext(d(1),abs((LG_W - 1))+1)) + ext(d
    (2),abs((LG_W - 1))+1)) ;
  elsif DUMMY2 : (ext(W,$QKTN_MAX(W'length,32)) = integer_to_std(4,$QKTN_MAX
  (W'length,32))) generate
  begin
    cnt <= (((ext(d(0),abs((LG_W - 1))+1) + ext(d(1),abs((LG_W - 1))+1)) + ext(d
    (2),abs((LG_W - 1))+1)) + ext(d(3),abs((LG_W - 1))+1)) ;
  else DUMMY3 : generate
    constant W2 : std_logic_vector := ((ext(W,$QKTN_MAX(W'length,32)) +
     integer_to_std(1,$QKTN_MAX(W'length,32))) / integer_to_std(2,$QKTN_MAX
    (W'length,32))) ;
    constant LG_W2 : integer := $clog2( (ext(W2,$QKTN_MAX(W'length,32)) +
     integer_to_std(1,$QKTN_MAX(W'length,32)))) ;
    signal c1 : std_logic_vector((LG_W2 - 1) downto 0) ;
    signal c2 : std_logic_vector((LG_W2 - 1) downto 0) ;
    signal DUMMY4 : std_logic_vector(conv_integer((ext(W2,$QKTN_MAX(W2'length,32
    )) - integer_to_std(1,$QKTN_MAX(W2'length,32)))) downto 0) ;
    signal DUMMY5 : std_logic_vector((LG_W2 - 1) downto 0) ;
    signal DUMMY6 : std_logic_vector(conv_integer((ext((ext(W,$QKTN_MAX
    (W'length,W2'length)) - ext(W2,$QKTN_MAX(W'length,W2'length))),$QKTN_MAX
    ($QKTN_MAX(W'length,W2'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
    (W'length,W2'length),32)))) downto 0) ;
    signal DUMMY7 : std_logic_vector((LG_W2 - 1) downto 0) ;
  begin
    popc1 : ixc_pop_cnt
      generic map(W => W2,LG_W => LG_W2)
      port map (
         DUMMY4
        ,DUMMY5
      ) ;
    DUMMY4 <= ext(d(conv_integer((ext(W2,$QKTN_MAX(W2'length,32)) -
     integer_to_std(1,$QKTN_MAX(W2'length,32)))) downto 0),abs(conv_integer((ext
    (W2,$QKTN_MAX(W2'length,32)) - integer_to_std(1,$QKTN_MAX(W2'length,32))))
    )+1) ;
    c1 <= ext(DUMMY5,abs((LG_W2 - 1))+1) ;
    popc2 : ixc_pop_cnt
      generic map(W => (ext(W,$QKTN_MAX(W'length,W2'length)) - ext(W2,$QKTN_MAX
      (W'length,W2'length))),LG_W => LG_W2)
      port map (
         DUMMY6
        ,DUMMY7
      ) ;
    DUMMY6 <= ext(d(conv_integer((ext(W,$QKTN_MAX(W'length,32)) - integer_to_std
    (1,$QKTN_MAX(W'length,32)))) downto conv_integer(W2)),abs(conv_integer(((ext
    (W,$QKTN_MAX($QKTN_MAX(W'length,W2'length),32)) - ext(W2,$QKTN_MAX($QKTN_MAX
    (W'length,W2'length),32))) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
    (W'length,W2'length),32)))))+1) ;
    c2 <= ext(DUMMY7,abs((LG_W2 - 1))+1) ;
    cnt <= ext(ext(ext(c1,$QKTN_MAX(abs((LG_W - 1))+1,abs((LG_W2 - 1))+1)) + ext
    (c2,$QKTN_MAX(abs((LG_W - 1))+1,abs((LG_W2 - 1))+1)),abs((LG_W - 1))+1),abs(
    (LG_W - 1))+1) ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
