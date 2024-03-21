architecture module of ixc_time is
  type DUMMY7 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
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

  signal DUMMY0 : std_logic_vector(10 downto 0) ;
  signal eClk : std_logic ;
  signal nextTbTime : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref nextTbTime
  signal nextClkTime : std_logic_vector(63 downto 0) ;
  signal nextClkTimePO : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref nextClkTimePO
  signal nextDutTime : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref nextDutTime
  signal delta32 : std_logic_vector(31 downto 0) ;
  -- quickturn external_ref delta32
  signal nextTime : std_logic_vector(63 downto 0) ;
  signal ScMinT : std_logic_vector(10 downto 0) ;
  signal delta : std_logic_vector(10 downto 0) ;
  -- quickturn external_ref delta
  signal minT : std_logic_vector(10 downto 0) ;
  signal deltaTb : std_logic_vector(10 downto 0) ;
  signal noScale : std_logic ;
  signal VCC : std_logic ;
  signal TbEQClk : std_logic ;
  signal TbLTClk : std_logic ;
  signal stopEcm : std_logic ;
  -- quickturn external_ref stopEcm
  signal runClk : std_logic ;
  -- quickturn external_ref runClk
  signal td1 : std_logic_vector(10 downto 0) ;
  signal DUMMY1 : std_logic_vector(63 downto 0) ;
  signal DUMMY2 : std_logic_vector(63 downto 0) ;
  signal DUMMY3 : std_logic_vector(63 downto 0) ;
  signal DUMMY4 : std_logic_vector(63 downto 0) ;
  signal fclk : std_logic ;
  signal simTime : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref simTime
  signal lastClkTime : std_logic_vector(63 downto 0) ;
  signal zminT : std_logic ;
  signal _zzcmds : DUMMY7(0 to 3) ;
  signal _zzmiopis : DUMMY7(0 to 3) ;
  signal _zzmiopos : DUMMY7(0 to 3) ;
  signal DUMMY5 : std_logic_vector(63 downto 0) ;
  signal DUMMY6 : std_logic_vector(63 downto 0) ;
  signal DUMMY8 : std_logic_vector(63 downto 0) ;
  -- quickturn keep_net simTime
  -- quickturn keep_net lastClkTime
  -- quickturn no_hardmacro nextClkTimePO
  -- quickturn preserve nextClkTimePO
  -- quickturn keep_net zminT
  -- quickturn use_hardmacro_pack _zzcmds
  -- quickturn use_hardmacro_pack _zzmiopis
  -- quickturn use_hardmacro_pack _zzmiopos
  -- quickturn fast_clock fclk

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 64)
    port map (
       nextTime
      ,nextDutTime
    ) ;
  VCC <= '1' ;
  ap : axis_eclk
    generic map(beh => 1)
    port map (
       eClk
      ,VCC
    ) ;
  ScMinT <= ext((ext(ext(minT,32) * std_logic_vector'
  ("00000000000000000000000000000001"),32)),11) ;
  noScale <= '1' ;
  nextClkTime <= (lastClkTime + ext(ScMinT,64)) ;
  TbEQClk <= boolean_to_std(nextTbTime = nextClkTime) ;
  TbLTClk <= boolean_to_std(nextTbTime < nextClkTime) ;
  stopEcm <= ((zminT or TbEQClk) or TbLTClk) ;
  runClk <= (TbEQClk or not(TbLTClk)) ;
  deltaTb <= ext((nextTbTime - simTime),11) ;
  delta <= minT when (runClk)='1' else deltaTb when (noScale)='1' else
   "00000000000" ;
  delta32 <= ext(ScMinT,32) when (runClk)='1' else ext(deltaTb,32) when (noScale
  )='1' else "00000000000000000000000000000000" ;
  nextDutTime <= nextClkTime when (runClk)='1' else nextTbTime ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 64)
    port map (
       nextClkTimePO
      ,DUMMY8
    ) ;
  DUMMY8 <= std_logic_vector'(zminT & nextClkTime(62 downto 0)) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 11)
    port map (
       td1
      ,DUMMY0
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 11)
    port map (
       minT
      ,td1
    ) ;

  process --:o66
  (eClk)
  begin
    if (eClk'event and eClk = '1') then
      zminT <= boolean_to_std(ext(minT,32) = std_logic_vector'
      ("00000000000000000000000000000000")) ;
      simTime <= nextDutTime ;
      if (runClk = '1') then
        lastClkTime <= nextClkTime ;
      elsif (noScale = '1') then
        lastClkTime <= nextTbTime ;
      end if;
    end if ;
  end process ;

  process --:o96
  (*)
  begin
    _zzmiopos(0) <= DUMMY3 ;
    _zzmiopos(1) <= nextClkTimePO ;
    _zzmiopos(2) <= DUMMY4 ;
  end process ;

  process --:o102
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      DUMMY5 <= _zzmiopis(0) ;
      DUMMY6 <= _zzmiopis(1) ;
    end if ;
  end process ;

  process --:o107
  (*)
  begin
    _zzcmds(0) <= DUMMY2 ;
    _zzcmds(1) <= DUMMY1 ;
  end process ;
end module;
