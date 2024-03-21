architecture module of ixc_gfifo2_port is
  -- quickturn CVASTRPROP MODULE HDLICE ALWAYS_ON TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_FDP0A
    port (
      D : in std_logic := 'X' ;
    Q : out std_logic ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_CCLKCHK
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal reqR : std_logic ;
  signal reqEv : std_logic ;
  signal en : std_logic ;
  signal len64 : std_logic_vector(11 downto 0) ;

begin
  reqEv <= (req xor reqR) ;
  en <= (reqEv and not(DUMMY0)) ;
  len64 <= len when len(0) = '1' else ext((ext(len,32) +
   "00000000000000000000000000000001"),12) ;
  fd : Q_FDP0A
    port map (
       D => req
      ,Q => reqR
    ) ;
  Generate1 : if genblk1 : (((ext(SHARE_FLAG,SHARE_FLAG'length) and ext
  ("1",SHARE_FLAG'length))/="0")) generate
    constant LG_PACKET_WORDS : integer := $clog2( (ext(PACKET_WORDS,$QKTN_MAX
    (DATA_WIDTH'length,32)) + integer_to_std(1,$QKTN_MAX(DATA_WIDTH'length,32)))
    ) ;
    signal pktWords : std_logic_vector((LG_PACKET_WORDS - 1) downto 0) ;
  begin
    pktWords <= ext(ext((ext(len,$QKTN_MAX(abs((LG_PACKET_WORDS - 1))+1,32)) +
     integer_to_std(2,$QKTN_MAX(abs((LG_PACKET_WORDS - 1))+1,32))) /
     integer_to_std(2,$QKTN_MAX(abs((LG_PACKET_WORDS - 1))+1,32)),abs(
    (LG_PACKET_WORDS - 1))+1),abs((LG_PACKET_WORDS - 1))+1) ;
    pktEn <= ext(not(shl(std_logic_vector'(abs(conv_integer((ext
    (PACKET_WORDS,$QKTN_MAX(DATA_WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
    (DATA_WIDTH'length,32))))) downto 0 => '1'),pktWords)),abs(conv_integer((ext
    (PACKET_WORDS,$QKTN_MAX(DATA_WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
    (DATA_WIDTH'length,32)))))+1) when (en)='1' else integer_to_std(0,abs
    (conv_integer((ext(PACKET_WORDS,$QKTN_MAX(DATA_WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(DATA_WIDTH'length,32)))))+1) ;
  else DUMMY1 : generate
  begin
    pktEn <= ext(it_multiple_concat(en,conv_integer(PACKET_WORDS)),abs
    (conv_integer((ext(PACKET_WORDS,$QKTN_MAX(DATA_WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(DATA_WIDTH'length,32)))))+1) ;
  end generate ;
  pktData <= ext(std_logic_vector'(data & len64 & cbid),abs(conv_integer(((ext
  (ext(PACKET_WORDS,$QKTN_MAX(DATA_WIDTH'length,32)) * integer_to_std
  (64,$QKTN_MAX(DATA_WIDTH'length,32)),$QKTN_MAX(DATA_WIDTH'length,32))) -
   integer_to_std(1,$QKTN_MAX(DATA_WIDTH'length,32)))))+1) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
  cchk : Q_CCLKCHK
    port map (
       req
    ) ;
end module;
