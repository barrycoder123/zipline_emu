architecture module of ixc_dutexcl_h2s_port_sync is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_sampleLT
    generic (
      WIDTH : integer := 1 ;
      ASYNC : integer := 0
    ) ;
    port (
      ov : out std_logic_vector((WIDTH - 1) downto 0) ;
    v : in std_logic_vector((WIDTH - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component Q_EV_WOR_START
    port (
    A : in std_logic := 'X' ) ;
  end component ;

  signal pclk : std_logic ;
  signal holdClkEn : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal hldEn : std_logic ;
  signal fclk : std_logic ;
  signal DUMMY2 : std_logic ;
  signal syncEn : std_logic ;
  signal gfifoReq : std_logic ;
  attribute _2_state_ of gfifoReq: signal is 1 ;
  signal tbsyncToggle : std_logic ;
  attribute _2_state_ of tbsyncToggle: signal is 1 ;
  signal gfifoReqDelayed : std_logic ;
  attribute _2_state_ of gfifoReqDelayed: signal is 1 ;
  signal tbsyncToggleDelayed : std_logic ;
  attribute _2_state_ of tbsyncToggleDelayed: signal is 1 ;
  signal trigR : std_logic := std_logic'('0') ;
  attribute _2_state_ of trigR: signal is 1 ;
  -- quickturn fast_clock fclk

begin
  hldEn <= (holdClkEn and not(DUMMY1)) ;
  ISLT0 : ixc_sampleLT
    generic map(WIDTH => 1,ASYNC => 0)
    port map (
       gfifoReqDelayed
      ,gfifoReq
    ) ;
  ISLT1 : ixc_sampleLT
    generic map(WIDTH => 1,ASYNC => 0)
    port map (
       tbsyncToggleDelayed
      ,tbsyncToggle
    ) ;

  process --:o3551
  (**) -- always_comb
  begin
    $axis_pulse( pclk, h2sPortEvent);
  end process ;

  process --:o3554
  (pclk)
  begin
    if (pclk'event and pclk = '1') then
      if (runModeIsNBRUN = '1') then
        gfifoReq <= not(gfifoReqDelayed) ;
        currentRunModeWasNBRUN <= runModeIsNBRUN ;
      else
        tbsyncToggle <= not(tbsyncToggleDelayed) ;
      end if;
    end if ;
  end process ;
  holdClkEn <= boolean_to_std(gfifoReq /= gfifoReqAck) ;
  DUMMY0 <= '1' when (hldEn)='1' else 'Z' ;
  qei : Q_EV_WOR_START
    port map (
       hldEn
    ) ;

  process --:o3595
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      trigR <= tbsyncToggle ;
    end if ;
  end process ;
  syncEn <= boolean_to_std(trigR /= tbsyncToggle) ;
  DUMMY2 <= '1' when (syncEn)='1' else 'Z' ;
  qsi : Q_EV_WOR_START
    port map (
       syncEn
    ) ;
end module;
