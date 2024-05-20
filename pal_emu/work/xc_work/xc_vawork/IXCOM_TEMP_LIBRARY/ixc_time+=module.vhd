architecture module of ixc_time is
  type DUMMY8 is array(integer range <>) of std_logic_vector(63 downto 0) ;
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
  signal VCC : std_logic ;
  signal runClk : std_logic ;
  -- quickturn external_ref runClk
  signal td1 : std_logic_vector(10 downto 0) ;
  signal DUMMY1 : std_logic_vector(63 downto 0) ;
  signal DUMMY2 : std_logic_vector(63 downto 0) ;
  signal DUMMY3 : std_logic_vector(63 downto 0) ;
  signal DUMMY4 : std_logic_vector(63 downto 0) ;
  signal DUMMY7 : std_logic ;
  signal simTime : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref simTime
  signal lastClkTime : std_logic_vector(63 downto 0) ;
  signal nextClkTime : std_logic_vector(63 downto 0) ;
  signal stopEcm : std_logic ;
  -- quickturn external_ref stopEcm
  signal zminT : std_logic ;
  signal lastClkTimeN : std_logic_vector(63 downto 0) ;
  signal nextClkTimeN : std_logic_vector(63 downto 0) ;
  signal mt64 : std_logic_vector(63 downto 0) ;
  signal ps1 : std_logic_vector(71 downto 0) ;
  signal ps0 : std_logic_vector(71 downto 0) ;
  signal c : std_logic ;
  signal stopEcmN : std_logic ;
  signal i : integer ;
  signal _zzcmds : DUMMY8(0 to 3) ;
  signal _zzmiopis : DUMMY8(0 to 3) ;
  signal _zzmiopos : DUMMY8(0 to 3) ;
  signal DUMMY5 : std_logic_vector(63 downto 0) ;
  signal DUMMY6 : std_logic_vector(63 downto 0) ;
  signal DUMMY9 : std_logic_vector(63 downto 0) ;
  -- quickturn keep_net simTime
  -- quickturn keep_net lastClkTime
  -- quickturn keep_net nextClkTime
  -- quickturn no_hardmacro nextClkTimePO
  -- quickturn preserve nextClkTimePO
  -- quickturn keep_net zminT
  -- quickturn use_hardmacro_pack _zzcmds
  -- quickturn use_hardmacro_pack _zzmiopis
  -- quickturn use_hardmacro_pack _zzmiopos

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
  runClk <= boolean_to_std(nextTbTime >= nextClkTime) ;
  delta <= minT when (runClk)='1' else "00000000000" ;
  delta32 <= ext(ScMinT,32) when (runClk)='1' else
   "00000000000000000000000000000000" ;
  nextDutTime <= nextClkTime when (runClk)='1' else nextTbTime ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 64)
    port map (
       nextClkTimePO
      ,DUMMY9
    ) ;
  DUMMY9 <= std_logic_vector'(zminT & nextClkTime(62 downto 0)) ;
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
  (*)
    variable lastClkTimeN_DUMMY0 : std_logic_vector(63 downto 0) ;
    variable mt64_DUMMY1 : std_logic_vector(63 downto 0) ;
    variable ps0_DUMMY2 : std_logic_vector(71 downto 0) ;
    variable ps1_DUMMY3 : std_logic_vector(71 downto 0) ;
    variable c_DUMMY4 : std_logic ;
  begin
    lastClkTimeN_DUMMY0 := lastClkTimeN;
    mt64_DUMMY1 := mt64;
    ps0_DUMMY2 := ps0;
    ps1_DUMMY3 := ps1;
    c_DUMMY4 := c;
    if (runClk = '1') then
      lastClkTimeN_DUMMY0 := nextClkTime ;
    else
      lastClkTimeN_DUMMY0 := lastClkTime ;
    end if;
    mt64_DUMMY1 := ext(ScMinT,64) ;
    for i in 0 to 7 loop --:o74
      ps0_DUMMY2((9 * i)+(9-1) downto (9 * i)) := (ext(lastClkTimeN_DUMMY0((8 *
       i)+(8-1) downto (8 * i)),9) + ext(mt64_DUMMY1((8 * i)+(8-1) downto (8 * i
      )),9)) ;
      ps1_DUMMY3((9 * i)+(9-1) downto (9 * i)) := ((ext(lastClkTimeN_DUMMY0((8 *
       i)+(8-1) downto (8 * i)),9) + ext(mt64_DUMMY1((8 * i)+(8-1) downto (8 * i
      )),9)) + std_logic_vector'("000000001")) ;
    end loop;
    nextClkTimeN(7 downto 0) <= ps0_DUMMY2(7 downto 0) ;
    c_DUMMY4 := ps0_DUMMY2(8) ;
    for i in 1 to 7 loop --:o81
      nextClkTimeN((8 * i)+(8-1) downto (8 * i)) <= it_cond_op((c_DUMMY4
      )='1',ps1_DUMMY3((9 * i)+(8-1) downto (9 * i)),ps0_DUMMY2((9 * i)+(8-1)
       downto (9 * i))) ;
      c_DUMMY4 := it_cond_op((c_DUMMY4)='1',ps1_DUMMY3(((9 * i) + 8)),ps0_DUMMY2
      (((9 * i) + 8))) ;
    end loop;
    stopEcm <= (zminT or boolean_to_std(nextTbTime <= nextClkTime)) ;
    lastClkTimeN <= transport lastClkTimeN_DUMMY0;
    mt64 <= mt64_DUMMY1;
    ps0 <= ps0_DUMMY2;
    ps1 <= ps1_DUMMY3;
    c <= c_DUMMY4;
  end process ;

  process --:o88
  (eClk)
  begin
    if (eClk'event and eClk = '1') then
      zminT <= boolean_to_std(ext(minT,32) = std_logic_vector'
      ("00000000000000000000000000000000")) ;
      simTime <= nextDutTime ;
      lastClkTime <= lastClkTimeN ;
      nextClkTime <= nextClkTimeN ;
    end if ;
  end process ;

  process --:o110
  (*)
  begin
    _zzmiopos(0) <= DUMMY3 ;
    _zzmiopos(1) <= nextClkTimePO ;
    _zzmiopos(2) <= DUMMY4 ;
  end process ;

  process --:o115
  (DUMMY7)
  begin
    if (DUMMY7'event and DUMMY7 = '1') then
      DUMMY5 <= _zzmiopis(0) ;
      DUMMY6 <= _zzmiopis(1) ;
    end if ;
  end process ;

  process --:o120
  (*)
  begin
    _zzcmds(0) <= DUMMY2 ;
    _zzcmds(1) <= DUMMY1 ;
  end process ;
end module;
