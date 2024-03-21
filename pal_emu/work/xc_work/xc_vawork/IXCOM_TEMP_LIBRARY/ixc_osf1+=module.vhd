architecture module of IXC_OSF1 is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component axis_tbcall
    generic (
      level : integer := 0 ;
      anyEdge : integer := 0 ;
      BP : integer := 0
    ) ;
    port (
      s : in std_logic := 'X' ;
      taskcall : in std_logic := 'X' ;
      so : out std_logic ;
    pui : in std_logic := 'X' ) ;
  end component ;

  component ixc_osfTbc_buf
    port (
      osfTbcO : out std_logic ;
    osfTbcI : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component IXC_OSF_MB
    generic (
      WIDTH : std_logic_vector := signed(integer_to_std(1984,32))
    ) ;
    port (
      pvecEv : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
       0) := (others => 'X') ;
    dirty : out std_logic ) ;
  end component ;

  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal fclk : std_logic ;
  signal osfTbc : std_logic ;
  signal dummyin : std_logic ;
  signal dummyout : std_logic ;
  signal osfTbcB : std_logic ;
  -- quickturn external_ref osfTbcB
  signal DUMMY0 : std_logic ;
  -- quickturn external_ref DUMMY0
  signal pvecEv : std_logic_vector(19 downto 0) ;
  -- quickturn external_ref pvecEv
  attribute _2_state_ of pvecEv: signal is 1 ;
  signal _zyMBEv : std_logic_vector(0 downto 0) ;
  -- quickturn external_ref _zyMBEv
  attribute _2_state_ of _zyMBEv: signal is 1 ;
  signal DUMMY1 :  std_logic ;
  signal DUMMY2 :  std_logic ;
  -- quickturn preserve osfTbcB
  -- quickturn no_hardmacro _zyMBEv
  -- quickturn preserve _zyMBEv
  -- quickturn preserve DUMMY0
  -- quickturn fast_clock fclk

begin
  _UnNamed_Inst_1 : Q_RDN port map (osfTbc) ;
  tbcx : axis_tbcall
    generic map(level => 1,anyEdge => 0,BP => 1)
    port map (
       osfTbcB
      ,DUMMY1
      ,DUMMY0
      ,DUMMY2
    ) ;
  DUMMY1 <= std_logic'('0') ;
  DUMMY2 <= '0' ;
  us : ixc_osfTbc_buf
    port map (
       osfTbcB
      ,osfTbc
    ) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
  OMB_0 : IXC_OSF_MB
    generic map(WIDTH => integer_to_std(20,32))
    port map (
       pvecEv
      ,_zyMBEv(0)
    ) ;
end module;
