architecture module of IXC_OSF is
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

  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal fclk : std_logic ;
  signal _zyevPio : std_logic_vector(0 downto 0) ;
  -- quickturn external_ref _zyevPio
  signal _zyPOEv : std_logic ;
  -- quickturn external_ref _zyPOEv
  signal osfTbc : std_logic ;
  -- quickturn external_ref osfTbc
  signal dummyin : std_logic ;
  signal dummyout : std_logic ;
  signal DUMMY0 : std_logic ;
  -- quickturn external_ref DUMMY0
  signal pvecEv : std_logic_vector(0 downto 0) ;
  -- quickturn external_ref pvecEv
  attribute _2_state_ of pvecEv: signal is 1 ;
  signal DUMMY1 :  std_logic ;
  signal DUMMY2 :  std_logic ;
  -- quickturn no_hardmacro _zyevPio
  -- quickturn preserve _zyevPio
  -- quickturn preserve _zyPOEv
  -- quickturn preserve osfTbc
  -- quickturn preserve DUMMY0
  -- quickturn fast_clock fclk

begin
  _zyPOEv <= or_reduce(_zyevPio) ;
  _UnNamed_Inst_0 : Q_RDN port map (osfTbc) ;
  tbcx : axis_tbcall
    generic map(level => 0,anyEdge => 0,BP => 1)
    port map (
       osfTbc
      ,DUMMY1
      ,DUMMY0
      ,DUMMY2
    ) ;
  DUMMY1 <= std_logic'('0') ;
  DUMMY2 <= '0' ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       _zyevPio
      ,pvecEv
    ) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
