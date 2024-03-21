architecture module of ixc_1xbufsrc is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_MPCLK1P
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component Q_CLKDRV
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component Q_MPCLKFAST
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component Q_CLKSRC
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component buf
    port(Z : out std_logic ; A : in std_logic) ;
  end component ;
  signal DUMMY0 : std_logic ;

begin
  b0 : buf port map (cout,cin) ;
  b1 : buf port map (DUMMY0,cin) ;
  m : Q_MPCLK1P
    port map (
       cout
    ) ;
  c : Q_CLKDRV
    port map (
       cout
    ) ;
  f : Q_MPCLKFAST
    port map (
       cout
    ) ;
  s : Q_CLKSRC
    port map (
       cout
    ) ;
  n : Q_MPCLK1P
    port map (
       cin
    ) ;
end module;
