architecture module of ixc_nba2BpE is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_EV_WOR_START
    port (
    A : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal xpChgEn : std_logic ;
  signal enL : std_logic_vector((EWIDTH - 1) downto 0) ;
  attribute _2_state_ of enL: signal is 1 ;
  signal DUMMY2 : std_logic_vector((EWIDTH - 1) downto 0) ;
  attribute _2_state_ of DUMMY2: signal is 1 ;
  -- quickturn fast_clock fclk

begin

  process --:o3183
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (not(DUMMY0) = '1') then
        enL <= ext(en,abs((EWIDTH - 1))+1) ;
      end if;
      drOut <= ext(drIn,abs((DWIDTH - 1))+1) ;
    end if ;
  end process ;
  Generate1 : if genblk1 : ((RESET)/=0) generate
  begin
    drOn <= (ext(enL,abs((EWIDTH - 1))+1) and ext(en,abs((EWIDTH - 1))+1)) ;
    xpChgEn <= boolean_to_std(ext(en,abs((EWIDTH - 1))+1) /= ext(enL,abs((EWIDTH
     - 1))+1)) ;
    DUMMY1 <= '1' when (xpChgEn)='1' else 'Z' ;
  else DUMMY3 : generate
  begin

    process --:o3194
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        DUMMY2 <= enL ;
      end if ;
    end process ;
    enNxt <= not(enL) ;
    drOn <= (ext(DUMMY2,abs((EWIDTH - 1))+1) xor ext(enL,abs((EWIDTH - 1))+1)) ;
    xpChgEn <= boolean_to_std(ext(en,abs((EWIDTH - 1))+1) /= ext(enL,abs((EWIDTH
     - 1))+1)) ;
    DUMMY1 <= '1' when (xpChgEn)='1' else 'Z' ;
  end generate ;
  qi : Q_EV_WOR_START
    port map (
       xpChgEn
    ) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
