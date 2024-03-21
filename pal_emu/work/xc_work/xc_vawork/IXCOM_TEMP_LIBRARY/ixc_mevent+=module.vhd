architecture module of ixc_mevent is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_LPULSE
    port (
      A : in std_logic := 'X' ;
      Z : out std_logic ;
    S : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal evs : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   ;
  signal lev : std_logic ;
  signal DUMMY0 : std_logic ;
  signal fclk : std_logic ;
  signal clkr : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   ;
  attribute _2_state_ of clkr: signal is 1 ;
  -- quickturn fast_clock fclk

begin

  process --:o2919
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY0 = '1') then
        clkr <= ext(clks,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
         - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      end if;
    end if ;
  end process ;
  genblk1 : for i in 0 to conv_integer(WIDTH) - 1 generate
  begin
    Generate1 : if ((IS_EDGED(i))='1') generate
      Generate2 : if genblk1 : ((POLARITY(i))='1') generate
      begin
        evs(i) <= (DUMMY0 and (not(clkr(i)) and clks(i))) ;
      else DUMMY1 : generate
      begin
        evs(i) <= (DUMMY0 and (clkr(i) and not(clks(i)))) ;
      end generate ;
    else DUMMY2 : generate
    begin
      evs(i) <= (DUMMY0 and (clkr(i) xor clks(i))) ;
    end generate ;
  end generate ;
  lev <= or_reduce(evs) ;
  Generate3 : if genblk2 : (PULSE = 2) generate
  begin
    ev <= lev ;
  elsif DUMMY3 : (PULSE = 1) generate
  begin
    p0 : Q_LPULSE
      port map (
         Z => ev
        ,A => lev
      ) ;
  else DUMMY4 : generate
    signal clk : std_logic ;
    signal tg : std_logic ;
    attribute _2_state_ of tg: signal is 1 ;
  begin
    p0 : Q_LPULSE
      port map (
         Z => clk
        ,A => lev
      ) ;

    process --:o2945
    (clk)
    begin
      if (clk'event and clk = '1') then
        tg <= not(tg) ;
      end if ;
    end process ;
    ev <= tg ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
