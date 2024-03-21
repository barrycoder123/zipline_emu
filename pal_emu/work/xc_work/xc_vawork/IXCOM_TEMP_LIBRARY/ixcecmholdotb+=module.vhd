architecture module of ixcEcmHoldOtb is
  type DUMMY7 is array(integer range <>) of std_logic_vector(255 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component ixc_uClkGen
    port (
    uclk : out std_logic ) ;
  end component ;

  signal fclk : std_logic ;
  signal uclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY4 : std_logic_vector(63 downto 0) ;
  signal DUMMY5 : std_logic ;
  signal DUMMY6 : std_logic ;
  signal holdEcm : std_logic ;
  attribute _2_state_ of holdEcm: signal is 1 ;
  signal ecmTs : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of ecmTs: signal is 1 ;
  signal ecmTsP : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of ecmTsP: signal is 1 ;
  signal ctrl : DUMMY7(0 to 3) ;
  attribute _2_state_ of ctrl: signal is 1 ;
  signal ctrlR : std_logic_vector(255 downto 0) ;
  attribute _2_state_ of ctrlR: signal is 1 ;
  signal ctrlW : std_logic_vector(255 downto 0) ;
  attribute _2_state_ of ctrlW: signal is 1 ;
  signal ctrlEv : std_logic ;
  attribute _2_state_ of ctrlEv: signal is 1 ;
  signal ctrlEvP : std_logic ;
  attribute _2_state_ of ctrlEvP: signal is 1 ;
  signal newCtrl : std_logic ;
  attribute _2_state_ of newCtrl: signal is 1 ;
  signal cmdC : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of cmdC: signal is 1 ;
  signal cmdCnt : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of cmdCnt: signal is 1 ;
  signal cmdCntP : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of cmdCntP: signal is 1 ;
  signal cRet : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of cRet: signal is 1 ;
  signal newCmd : std_logic ;
  attribute _2_state_ of newCmd: signal is 1 ;
  signal busyOn : std_logic ;
  attribute _2_state_ of busyOn: signal is 1 ;
  signal busyCnt : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of busyCnt: signal is 1 ;
  signal _zyL831_meState0 : std_logic_vector(0 downto 0) ;
  -- quickturn keep_net _zyL831_meState0
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack ctrl

begin
  DUMMY3 <= '1' when (holdEcm)='1' else 'Z' ;
  DUMMY6 <= '1' when (busyOn)='1' else 'Z' ;

  process --:o35
  (uclk)
  begin
    if (uclk'event and uclk = '1') then
      ctrlR <= ctrl(1) ;
    end if ;
  end process ;

  process --:o38
  (uclk)
  begin
    if (uclk'event and uclk = '1') then
      ctrl(0) <= ctrlW ;
    end if ;
  end process ;

  process --:o41
  (*)
  begin
    ctrlEv <= ctrlR(136) ;
  end process ;

  process --:o46
  (*)
    variable ecmTs_DUMMY0 : std_logic_vector(63 downto 0) ;
  begin
    ecmTs_DUMMY0 := ecmTs;
    ecmTs_DUMMY0 := it_cond_op((DUMMY2)='1',(ecmTsP + std_logic_vector'
    ("0000000000000000000000000000000000000000000000000000000000000001")),ecmTsP
    ) ;
    ctrlW(0+(64-1) downto 0) <= cRet ;
    ctrlW(64+(64-1) downto 64) <= ecmTs_DUMMY0 ;
    ctrlW(128+(64-1) downto 128) <= DUMMY4 ;
    holdEcm <= cmdC(0) ;
    ecmTs <= transport ecmTs_DUMMY0;
  end process ;

  process --:o55
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      ecmTsP <= ecmTs ;
      ctrlEvP <= ctrlEv ;
    end if ;
  end process ;

  process --:o61
  (*)
    variable newCtrl_DUMMY1 : std_logic ;
  begin
    newCtrl_DUMMY1 := newCtrl;
    newCmd <= boolean_to_std(cmdCnt /= cmdCntP) ;
    newCtrl_DUMMY1 := boolean_to_std(ctrlEv /= ctrlEvP) ;
    busyOn <= boolean_to_std(((newCtrl_DUMMY1)='1' or (busyCnt)/="0")) ;
    newCtrl <= transport newCtrl_DUMMY1;
  end process ;

  process --:o68
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      busyCnt <= std_logic_vector'(busyCnt(6 downto 0) & newCtrl) ;
    end if ;
  end process ;

  process --:o71
  (fclk)
    variable DUMMY8 : std_logic ;
  begin
    if (fclk'event and fclk = '1') then
      DUMMY8 := '1' ;

      case _zyL831_meState0 is
        when  "0"  =>
          if (newCmd = '1') then
            _zyL831_meState0 <= "1" ;
            DUMMY8 := '0' ;
          end if;
          if (DUMMY8 = '1') then
            _zyL831_meState0 <= "0" ;
          end if;
        when  "1"  =>
          if (((cmdC(0))='1' and (DUMMY0)='1' and (DUMMY1)='1')) then
            _zyL831_meState0 <= "1" ;
            DUMMY8 := '0' ;
          end if;
          if (DUMMY8 = '1') then
            cmdCntP <= cmdCnt ;
            cRet(15 downto 8) <= cmdCnt ;
            _zyL831_meState0 <= "0" ;
          end if;
        when others => null ;
      end case;
    end if ;
  end process ;

  process --:o117
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      cRet(0) <= '1' ;
      cRet(1) <= '1' ;
      cRet(2) <= DUMMY0 ;
      ( cmdCnt(7),cmdCnt(6),cmdCnt(5),cmdCnt(4),cmdCnt(3),cmdCnt(2),cmdCnt(1
      ),cmdCnt(0),cmdC(7),cmdC(6),cmdC(5),cmdC(4),cmdC(3),cmdC(2),cmdC(1),cmdC(0
      ) ) <= ext(ctrlR(128+(64-1) downto 128),16) ;
    end if ;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
  ukg : ixc_uClkGen
    port map (
       uclk
    ) ;
end module;
