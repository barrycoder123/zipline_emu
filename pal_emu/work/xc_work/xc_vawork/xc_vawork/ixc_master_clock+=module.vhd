architecture module of ixc_master_clock is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  component Q_CLKSRC
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component axis_eclk
    generic (
      beh : integer := 1
    ) ;
    port (
      pclk : out std_logic ;
    DUMMY2 : in std_logic := 'X' ) ;
  end component ;

  component ixc_1xbufsrc
    port (
      cout : out std_logic ;
    cin : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic_vector(10 downto 0) ;
  signal DUMMY1 : std_logic ;
  signal _zyiscDelta1 : std_logic_vector(10 downto 0) ;
  signal _zyiscTdM1 : std_logic_vector(10 downto 0) ;
  -- quickturn external_ref _zyiscTdM1
  signal _zyiscVCC1 : std_logic ;
  signal _zyiscEClk1 : std_logic ;
  signal _zyL45_iscTdG2 : std_logic_vector(10 downto 0) ;
  signal clk : std_logic := '0' ;
  signal _zyL45_iscTdL2 : std_logic_vector(9 downto 0) ;
  signal DUMMY2 : std_logic_vector(10 downto 0) ;
  -- quickturn keep_net clk
  -- quickturn keep_net _zyL45_iscTdL2

begin
  _zy_inst_0 : Q_CLKSRC
    port map (
       clk
    ) ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,clk
    ) ;
  _zyiscVCC1 <= '1' ;
  _zziscEClk1_pu : axis_eclk
    generic map(beh => 1)
    port map (
       _zyiscEClk1
      ,_zyiscVCC1
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 11)
    port map (
       _zyiscDelta1
      ,DUMMY0
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 11)
    port map (
       _zyL45_iscTdG2
      ,DUMMY2
    ) ;
  DUMMY2 <= std_logic_vector'(std_logic'('0') & _zyL45_iscTdL2) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 11)
    port map (
       _zyiscTdM1
      ,_zyL45_iscTdG2
    ) ;
  m1 : ixc_1xbufsrc
    port map (
       phi1
      ,DUMMY1
    ) ;

  process --:o38
  (_zyiscEClk1)
    variable _zyL45_iscTdL2_DUMMY0 : std_logic_vector(9 downto 0) ;
  begin
    if (_zyiscEClk1'event and _zyiscEClk1 = '1') then
      if (ext(_zyL45_iscTdL2_DUMMY0,11) = _zyiscDelta1) then
        clk <= not(clk) ;
        _zyL45_iscTdL2_DUMMY0 := "1001110001" ;
      else
        _zyL45_iscTdL2_DUMMY0 := ext((ext(_zyL45_iscTdL2_DUMMY0,11) -
         _zyiscDelta1),10) ;
      end if;
    end if ;
    _zyL45_iscTdL2 <= transport _zyL45_iscTdL2_DUMMY0;
  end process ;
end module;
