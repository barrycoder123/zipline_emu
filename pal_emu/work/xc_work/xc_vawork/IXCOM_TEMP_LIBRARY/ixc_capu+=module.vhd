architecture module of ixc_capU is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_LPULSE
    port (
      A : in std_logic := 'X' ;
      Z : out std_logic ;
    S : in std_logic := 'X' ) ;
  end component ;

  component Q_EV_WOR_START
    port (
    A : in std_logic := 'X' ) ;
  end component ;

  component Q_EVDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal xpenL : std_logic ;
  signal capL : std_logic ;
  signal evCtrl : std_logic ;
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal s : std_logic ;
  attribute _2_state_ of s: signal is 1 ;
  signal sO : std_logic ;
  attribute _2_state_ of sO: signal is 1 ;
  signal enO : std_logic ;
  attribute _2_state_ of enO: signal is 1 ;
  signal rstO : std_logic ;
  attribute _2_state_ of rstO: signal is 1 ;
  signal capD : std_logic ;
  attribute _2_state_ of capD: signal is 1 ;
  -- quickturn keep_net s
  -- quickturn fast_clock fclk

begin
  Generate1 : if genblk1 : (ext(RTL,$QKTN_MAX(RTL'length,32)) >= integer_to_std
  (3,$QKTN_MAX(RTL'length,32))) generate
  begin

    process --:o114
    (*)
    begin
      s <= '0' ;
    end process ;
  elsif DUMMY1 : ((ASYNC /= 0 and ext(RTL,$QKTN_MAX(RTL'length,32)) =
   integer_to_std(0,$QKTN_MAX(RTL'length,32)))) generate
  begin

    process --:o119
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        sO <= s ;
        enO <= en ;
        rstO <= rst ;
      end if ;
    end process ;

    process --:o125
    (*)
    begin
      if (((evCtrl)='1' and ((sO = enO and sO = rstO) or (sO = en and sO = rst))
      )) then
        s <= not(sO) ;
      end if;
    end process ;
  else DUMMY2 : generate
    signal pclk : std_logic ;
  begin
    ip : Q_LPULSE
      port map (
         evCtrl
        ,pclk
      ) ;

    process --:o132
    (pclk)
    begin
      if (pclk'event and pclk = '1') then
        if (xpenL = '1') then
          s <= not(s) ;
        end if;
      end if ;
    end process ;
  end generate ;
  Generate2 : if genblk2 : (ext(RTL,$QKTN_MAX(RTL'length,32)) = integer_to_std
  (4,$QKTN_MAX(RTL'length,32))) generate
  begin
    xpenL <= '0' ;
    xpen <= evCtrl ;
    xpsn <= '0' ;
    cap <= capD ;

    process --:o145
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        capD <= evCtrl ;
      end if ;
    end process ;
    evCtrl <= (not(capD) and ev) ;
    DUMMY0 <= '1' when (evCtrl)='1' else 'Z' ;
    qi : Q_EV_WOR_START
      port map (
         evCtrl
      ) ;
  elsif DUMMY3 : (ext(RTL,$QKTN_MAX(RTL'length,32)) = integer_to_std(3,$QKTN_MAX
  (RTL'length,32))) generate
  begin
    xpenL <= '0' ;
    xpen <= '0' ;
    xpsn <= '0' ;
    cap <= ev ;
  elsif DUMMY4 : (ext(RTL,$QKTN_MAX(RTL'length,32)) = integer_to_std(2,$QKTN_MAX
  (RTL'length,32))) generate
  begin
    xpenL <= (boolean_to_std(s = rst) and boolean_to_std(s = en)) ;
    xpen <= capL ;
    xpsn <= s ;
    cap <= capD ;
    capL <= (boolean_to_std(s /= rst) and boolean_to_std(s /= en)) ;

    process --:o168
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        capD <= capL ;
      end if ;
    end process ;
    evCtrl <= (not(capD) and ev) ;
    DUMMY0 <= '1' when (capL)='1' else 'Z' ;
    qi : Q_EV_WOR_START
      port map (
         capL
      ) ;
  elsif DUMMY5 : (ext(RTL,$QKTN_MAX(RTL'length,32)) = integer_to_std(1,$QKTN_MAX
  (RTL'length,32))) generate
  begin
    xpenL <= (boolean_to_std(s = rst) and boolean_to_std(s = en)) ;
    xpen <= xpenL ;
    xpsn <= s ;
    capRtl : Q_EVDECT
      port map (
         cap
        ,s
        ,std_logic'('1')
      ) ;
    evCtrl <= ev ;
  else DUMMY6 : generate
  begin
    xpenL <= (boolean_to_std(s = rst) and boolean_to_std(s = en)) ;
    xpen <= xpenL ;
    xpsn <= not(s) when (xpenL)='1' else s ;
    evCtrl <= ev ;
    Generate3 : if genblk1 : ((NO_CAP = 0)) generate
    begin
      cap <= (boolean_to_std(s /= rst) and boolean_to_std(s /= en)) ;
      DUMMY0 <= '1' when (cap)='1' else 'Z' ;
      qi : Q_EV_WOR_START
        port map (
           cap
        ) ;
    end generate ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
