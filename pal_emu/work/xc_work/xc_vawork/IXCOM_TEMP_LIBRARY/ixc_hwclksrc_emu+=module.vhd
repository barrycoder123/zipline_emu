architecture module of ixc_hwclksrc_emu is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_FCLK
    port (
      fClk : out std_logic ;
    level : in std_logic := 'X' ) ;
  end component ;

  component Q_UCCLK
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component Q_CLKDRV
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component Q_CLKSRC
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component ixc_frequency
    generic (
      FREQ : integer := (-1) ;
      BFREQ : integer := (-1) ;
      DUMMY0 : integer := (-1)
    ) ;
    port (
      clk : in std_logic := 'X' ;
    clkBase : in std_logic := 'X' ) ;
  end component ;

  component buf
    port(Z : out std_logic ; A : in std_logic) ;
  end component ;
  signal fclk : std_logic ;
  signal DUMMY1 : std_logic ;
  signal clkOn : std_logic ;
  signal c05xOn : std_logic ;
  attribute _2_state_ of c05xOn: signal is 1 ;
  signal DUMMY0 : std_logic ;
  attribute _2_state_ of DUMMY0: signal is 1 ;
  signal DUMMY2 : std_logic ;
  attribute _2_state_ of DUMMY2: signal is 1 ;
  -- quickturn fast_clock fclk

begin
  clkOn <= ((DUMMY0 and en) and not(DUMMY2)) ;

  process --:o1579
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (clkOn = '1') then
        cout <= not(cout) ;
        c05xOn <= '1' ;
      else
        c05xOn <= '0' ;
      end if;
    end if ;
  end process ;
  Generate1 : if genblk1 : ((CAKE05X)/=0) generate
  begin
    mf : Q_FCLK
      port map (
         c05x
        ,c05xOn
      ) ;
    mfu : Q_UCCLK
      port map (
         c05x
      ) ;
    mfd : Q_CLKDRV
      port map (
         c05x
      ) ;
    mfs : Q_CLKSRC
      port map (
         c05x
      ) ;
    info : ixc_frequency
      generic map(FREQ => 2,BFREQ => 1,DUMMY0 => 7)
      port map (
         c05x
        ,cout
      ) ;
  else DUMMY3 : generate
  begin
    c05x <= '0' ;
  end generate ;
  _UnNamed_Inst_27 : buf port map (DUMMY1,clkOn) ;
  mu : Q_UCCLK
    port map (
       cout
    ) ;
  md : Q_CLKDRV
    port map (
       cout
    ) ;
  ms : Q_CLKSRC
    port map (
       cout
    ) ;
end module;