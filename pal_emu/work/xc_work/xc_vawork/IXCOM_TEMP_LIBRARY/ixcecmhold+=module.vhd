architecture module of ixcEcmHold is
  type DUMMY8 is array(integer range <>) of std_logic_vector(255 downto 0) ;
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
  signal DUMMY4 : std_logic ;
  signal DUMMY5 : std_logic_vector(63 downto 0) ;
  signal DUMMY6 : std_logic ;
  signal DUMMY7 : std_logic ;
  signal holdEcm : std_logic ;
  attribute _2_state_ of holdEcm: signal is 1 ;
  signal hc : std_logic ;
  attribute _2_state_ of hc: signal is 1 ;
  signal hs : std_logic ;
  attribute _2_state_ of hs: signal is 1 ;
  signal ecmTs : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref ecmTs
  attribute _2_state_ of ecmTs: signal is 1 ;
  signal ecmTsP : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of ecmTsP: signal is 1 ;
  signal ctrl : DUMMY8(0 to 3) ;
  attribute _2_state_ of ctrl: signal is 1 ;
  signal ctrlR : std_logic_vector(255 downto 0) ;
  attribute _2_state_ of ctrlR: signal is 1 ;
  signal ctrlW : std_logic_vector(255 downto 0) ;
  attribute _2_state_ of ctrlW: signal is 1 ;
  signal ctrlEv : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of ctrlEv: signal is 1 ;
  signal ctrlEvP : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of ctrlEvP: signal is 1 ;
  signal newCtrl : std_logic ;
  attribute _2_state_ of newCtrl: signal is 1 ;
  signal cmdC : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of cmdC: signal is 1 ;
  signal cmdR : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of cmdR: signal is 1 ;
  signal cmdCnt : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of cmdCnt: signal is 1 ;
  signal cmdCntP : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of cmdCntP: signal is 1 ;
  signal argTc : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of argTc: signal is 1 ;
  signal argTs : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of argTs: signal is 1 ;
  signal cRet : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of cRet: signal is 1 ;
  signal newCmd : std_logic ;
  attribute _2_state_ of newCmd: signal is 1 ;
  signal busyOn : std_logic ;
  attribute _2_state_ of busyOn: signal is 1 ;
  signal busyCnt : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of busyCnt: signal is 1 ;
  signal syncId : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of syncId: signal is 1 ;
  signal syncIdP : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of syncIdP: signal is 1 ;
  signal newSync : std_logic ;
  attribute _2_state_ of newSync: signal is 1 ;
  signal holdEcmD : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of holdEcmD: signal is 1 ;
  signal holdEcmBusy : std_logic ;
  attribute _2_state_ of holdEcmBusy: signal is 1 ;
  signal sdlStopRply : std_logic ;
  attribute _2_state_ of sdlStopRply: signal is 1 ;
  signal simTime : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of simTime: signal is 1 ;
  signal _zyL692_meState0 : std_logic_vector(0 downto 0) ;
  signal _zyL739_meState1 : std_logic_vector(0 downto 0) ;
  -- quickturn keep_net _zyL692_meState0
  -- quickturn keep_net _zyL739_meState1
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack ctrl

begin
  DUMMY4 <= '1' when (holdEcm)='1' else 'Z' ;
  DUMMY6 <= '1' when (busyOn)='1' else 'Z' ;

  process --:o50
  (uclk)
  begin
    if (uclk'event and uclk = '1') then
      ctrlR <= ctrl(1) ;
    end if ;
  end process ;

  process --:o53
  (uclk)
  begin
    if (uclk'event and uclk = '1') then
      ctrl(0) <= ctrlW ;
    end if ;
  end process ;

  process --:o56
  (*)
  begin
    ctrlEv <= std_logic_vector'(ctrlR(192) & ctrlR(136)) ;
  end process ;

  process --:o61
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      sdlStopRply <= DUMMY7 ;
    end if ;
  end process ;

  process --:o64
  (*)
  begin
    simTime <= DUMMY5 ;
  end process ;

  process --:o67
  (*)
    variable ecmTs_DUMMY0 : std_logic_vector(63 downto 0) ;
    variable hc_DUMMY1 : std_logic ;
    variable hs_DUMMY2 : std_logic ;
  begin
    ecmTs_DUMMY0 := ecmTs;
    hc_DUMMY1 := hc;
    hs_DUMMY2 := hs;
    ecmTs_DUMMY0 := it_cond_op((DUMMY2)='1',(ecmTsP + std_logic_vector'
    ("0000000000000000000000000000000000000000000000000000000000000001")),ecmTsP
    ) ;
    ctrlW(0+(64-1) downto 0) <= cRet ;
    ctrlW(64+(64-1) downto 64) <= ecmTs_DUMMY0 ;
    ctrlW(128+(64-1) downto 128) <= simTime ;
    hc_DUMMY1 := boolean_to_std(((cmdR(1))='1' and ecmTs_DUMMY0 >= argTc)) ;
    hs_DUMMY2 := boolean_to_std(((cmdR(2))='1' and simTime >= argTs)) ;
    holdEcm <= (((cmdC(0) or hc_DUMMY1) or hs_DUMMY2) or sdlStopRply) ;
    ecmTs <= transport ecmTs_DUMMY0;
    hc <= hc_DUMMY1;
    hs <= hs_DUMMY2;
  end process ;

  process --:o78
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      ecmTsP <= ecmTs ;
      ctrlEvP <= ctrlEv ;
    end if ;
  end process ;

  process --:o84
  (*)
    variable newCtrl_DUMMY3 : std_logic ;
  begin
    newCtrl_DUMMY3 := newCtrl;
    newCmd <= boolean_to_std(cmdCnt /= cmdCntP) ;
    newSync <= boolean_to_std(syncId /= syncIdP) ;
    newCtrl_DUMMY3 := boolean_to_std(ctrlEv /= ctrlEvP) ;
    busyOn <= boolean_to_std(((newCtrl_DUMMY3)='1' or (busyCnt)/="0" or (
    (holdEcmBusy)='1' and (DUMMY0 = '0')))) ;
    newCtrl <= transport newCtrl_DUMMY3;
  end process ;

  process --:o92
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      busyCnt <= std_logic_vector'(busyCnt(6 downto 0) & newCtrl) ;
    end if ;
  end process ;

  process --:o95
  (fclk)
    variable DUMMY9 : std_logic ;
  begin
    if (fclk'event and fclk = '1') then
      DUMMY9 := '1' ;

      case _zyL692_meState0 is
        when  "0"  =>
          if (newCmd = '1') then
            _zyL692_meState0 <= "1" ;
            DUMMY9 := '0' ;
          end if;
          if (DUMMY9 = '1') then
            _zyL692_meState0 <= "0" ;
          end if;
        when  "1"  =>
          if (((cmdC(0))='1' and (DUMMY0)='1' and (DUMMY1)='1')) then
            _zyL692_meState0 <= "1" ;
            DUMMY9 := '0' ;
          end if;
          if (DUMMY9 = '1') then
            cmdCntP <= cmdCnt ;
            cRet(15 downto 8) <= cmdCnt ;
            cmdR <= cmdC ;
            argTc <= ctrlR(0+(64-1) downto 0) ;
            argTs <= ctrlR(64+(64-1) downto 64) ;
            _zyL692_meState0 <= "0" ;
          end if;
        when others => null ;
      end case;
    end if ;
  end process ;

  process --:o144
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      cRet(0) <= it_cond_op((DUMMY0)='1',not(DUMMY1),holdEcmD(3)) ;
      cRet(1) <= DUMMY3 ;
      cRet(2) <= not(DUMMY1) ;
      cRet(3) <= sdlStopRply ;
      ( cmdCnt(7),cmdCnt(6),cmdCnt(5),cmdCnt(4),cmdCnt(3),cmdCnt(2),cmdCnt(1
      ),cmdCnt(0),cmdC(7),cmdC(6),cmdC(5),cmdC(4),cmdC(3),cmdC(2),cmdC(1),cmdC(0
      ) ) <= ext(ctrlR(128+(64-1) downto 128),16) ;
    end if ;
  end process ;

  process --:o153
  (fclk)
    variable holdEcmD_DUMMY4 : std_logic_vector(3 downto 0) ;
  begin
    if (fclk'event and fclk = '1') then
      if (((DUMMY0)='1' or (holdEcm = '0'))) then
        holdEcmD_DUMMY4 := std_logic_vector'("0000") ;
        holdEcmBusy <= '0' ;
      else
        if ((holdEcmD_DUMMY4(3) = '0')) then
          holdEcmD_DUMMY4 := ext((ext(holdEcmD_DUMMY4,32) + std_logic_vector'
          ("00000000000000000000000000000001")),4) ;
          holdEcmBusy <= '1' ;
        else
          holdEcmBusy <= '0' ;
        end if;
      end if;
    end if ;
    holdEcmD <= transport holdEcmD_DUMMY4;
  end process ;

  process --:o174
  (fclk)
    variable DUMMY10 : std_logic ;
    variable syncId_DUMMY5 : std_logic_vector(7 downto 0) ;
  begin
    if (fclk'event and fclk = '1') then
      DUMMY10 := '1' ;

      case _zyL739_meState1 is
        when  "0"  =>
          if (newSync = '1') then
            _zyL739_meState1 <= "1" ;
            DUMMY10 := '0' ;
          end if;
          if (DUMMY10 = '1') then
            syncId_DUMMY5 := ext(ctrlR(192+(64-1) downto 192),8) ;
          end if;
          if (DUMMY10 = '1') then
            _zyL739_meState1 <= "0" ;
          end if;
        when  "1"  =>
          syncIdP <= syncId_DUMMY5 ;
          if ((DUMMY3 = '0')) then
            _zyL739_meState1 <= "1" ;
            DUMMY10 := '0' ;
          end if;
          if (DUMMY10 = '1') then
            ctrlW(192+(64-1) downto 192) <= ext(syncId_DUMMY5,64) ;
            syncId_DUMMY5 := ext(ctrlR(192+(64-1) downto 192),8) ;
            _zyL739_meState1 <= "0" ;
          end if;
        when others => null ;
      end case;
    end if ;
    syncId <= transport syncId_DUMMY5;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
  ukg : ixc_uClkGen
    port map (
       uclk
    ) ;
end module;
