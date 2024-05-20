architecture module of IXC_SV_GFIFO_VXE_256 is
  type DUMMY10 is array(integer range <>) of std_logic_vector(255 downto 0) ;
  type DUMMY11 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  type DUMMY12 is array(integer range <>) of std_logic_vector(64 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component axis_tbcall
    generic (
      level : integer := 0 ;
      anyEdge : integer := 0 ;
      BP : integer := 0
    ) ;
    port (
      s : in std_logic := 'X' ;
      taskcall : in std_logic := 'X' ;
      so : out std_logic ;
    pui : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal DUMMY0 : std_logic ;
  signal hasMultiLevelGFIFO : std_logic ;
  signal fclk : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic_vector(63 downto 0) ;
  signal DUMMY5 : std_logic ;
  signal DUMMY6 : std_logic ;
  signal DUMMY4 : std_logic ;
  signal GFreq : std_logic ;
  -- quickturn external_ref GFreq
  signal GFcbid : std_logic_vector(19 downto 0) ;
  -- quickturn external_ref GFcbid
  signal GFlen : std_logic_vector(11 downto 0) ;
  -- quickturn external_ref GFlen
  signal GFidata : std_logic_vector(511 downto 0) ;
  -- quickturn external_ref GFidata
  signal GFtsReq : std_logic ;
  -- quickturn external_ref GFtsReq
  signal GFfull : std_logic ;
  -- quickturn external_ref GFfull
  signal LBreq : std_logic ;
  -- quickturn external_ref LBreq
  signal LBempty : std_logic ;
  signal LBfull : std_logic ;
  -- quickturn external_ref LBfull
  signal DUMMY7 : std_logic ;
  signal DUMMY9 : std_logic ;
  signal flushTbc : std_logic ;
  -- quickturn external_ref flushTbc
  signal timeStampPkt : std_logic_vector(63 downto 0) ;
  signal DUMMY13 : std_logic ;
  -- quickturn external_ref DUMMY13
  signal svGFbusy1 : std_logic ;
  signal svGFbusy2 : std_logic ;
  signal GFtsAdd : std_logic ;
  attribute _2_state_ of GFtsAdd: signal is 1 ;
  signal LBrd : std_logic_vector(3 downto 0) ;
  -- quickturn external_ref LBrd
  signal LBwr : std_logic_vector(3 downto 0) ;
  -- quickturn external_ref LBwr
  signal LBwrI : std_logic_vector(3 downto 0) ;
  signal LBfill : std_logic_vector(3 downto 0) ;
  signal argLen : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of argLen: signal is 1 ;
  signal wLen : std_logic_vector(18 downto 0) ;
  attribute _2_state_ of wLen: signal is 1 ;
  signal rLen : std_logic_vector(17 downto 0) ;
  attribute _2_state_ of rLen: signal is 1 ;
  signal wSync : std_logic ;
  attribute _2_state_ of wSync: signal is 1 ;
  signal rSync : std_logic ;
  attribute _2_state_ of rSync: signal is 1 ;
  signal ixc_gfm_ofifo : DUMMY10(0 to 32767) ;
  attribute _2_state_ of ixc_gfm_ofifo: signal is 1 ;
  signal xdata : std_logic_vector(543 downto 0) ;
  attribute _2_state_ of xdata: signal is 1 ;
  signal wrtCnt : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of wrtCnt: signal is 1 ;
  signal wrtCntD : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of wrtCntD: signal is 1 ;
  signal ixc_gfm_ctl : DUMMY11(0 to 3) ;
  attribute _2_state_ of ixc_gfm_ctl: signal is 1 ;
  signal ixc_gfm_ack : DUMMY11(0 downto 0) ;
  attribute _2_state_ of ixc_gfm_ack: signal is 1 ;
  signal DUMMY8 : std_logic ;
  signal ackId : std_logic_vector(7 downto 0) ;
  signal ackIdNew : std_logic_vector(7 downto 0) ;
  signal ackClk : std_logic ;
  signal ackLen : std_logic_vector(17 downto 0) ;
  signal ofifoAddr0 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr0: signal is 1 ;
  signal ofifoAddr0N : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr0N: signal is 1 ;
  signal ofifoAddr1 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr1: signal is 1 ;
  signal ofifoAddr1N : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr1N: signal is 1 ;
  signal ofifoAddr2 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr2: signal is 1 ;
  signal ofifoAddr2N : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr2N: signal is 1 ;
  signal ofifoData : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of ofifoData: signal is 1 ;
  signal ofifoDataN : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of ofifoDataN: signal is 1 ;
  signal writeLen : std_logic_vector(5 downto 0) ;
  attribute _2_state_ of writeLen: signal is 1 ;
  signal reqD : std_logic ;
  attribute _2_state_ of reqD: signal is 1 ;
  signal GFfullD : std_logic ;
  attribute _2_state_ of GFfullD: signal is 1 ;
  signal oFill : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of oFill: signal is 1 ;
  signal oFillN : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of oFillN: signal is 1 ;
  signal ofifoWptr : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoWptr: signal is 1 ;
  signal ofifoWptrN : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoWptrN: signal is 1 ;
  signal shiftCount : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of shiftCount: signal is 1 ;
  signal shiftedXdata : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of shiftedXdata: signal is 1 ;
  signal TsBuf : DUMMY12(0 to 7) ;
  signal gfTsReqO : std_logic ;
  signal gfTsValO : std_logic_vector(63 downto 0) ;
  signal gfTsEn : std_logic ;
  signal DUMMY14 :  std_logic ;
  signal DUMMY15 :  std_logic ;
  -- quickturn keep_net GFtsReq
  -- quickturn preserve flushTbc
  -- quickturn preserve DUMMY13
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack ixc_gfm_ofifo
  -- quickturn use_hardmacro_pack ixc_gfm_ctl
  -- quickturn use_hardmacro_pack ixc_gfm_ack
  -- quickturn no_hardmacro TsBuf

begin
  Generate1 : for GenerateIndex in 19 downto 0 generate
    _UnNamed_Inst_36 : Q_RDN port map (GFcbid(GenerateIndex)) ;
  end generate;
  Generate2 : for GenerateIndex in 11 downto 0 generate
    _UnNamed_Inst_37 : Q_RDN port map (GFlen(GenerateIndex)) ;
  end generate;
  Generate3 : for GenerateIndex in 511 downto 0 generate
    _UnNamed_Inst_38 : Q_RDN port map (GFidata(GenerateIndex)) ;
  end generate;
  DUMMY0 <= '1' ;
  _UnNamed_Inst_2 : Q_RDN port map (LBreq) ;
  _UnNamed_Inst_3 : Q_RDN port map (GFtsReq) ;
  DUMMY9 <= '1' when ackIdNew /= ackId else 'Z' ;
  GFfull <= boolean_to_std(ext(wLen,32) > std_logic_vector'
  ("00000000000000111111000000000000")) ;
  tbcx : axis_tbcall
    generic map(level => 0,anyEdge => 0,BP => 1)
    port map (
       flushTbc
      ,DUMMY14
      ,DUMMY13
      ,DUMMY15
    ) ;
  DUMMY14 <= std_logic'('0') ;
  DUMMY15 <= '0' ;
  timeStampPkt <= std_logic_vector'(gfTsValO(55 downto 24) & std_logic'('1') &
   xor_reduce(gfTsValO(55 downto 48)) & xor_reduce(gfTsValO(47 downto 40)) &
   xor_reduce(gfTsValO(39 downto 32)) & xor_reduce(gfTsValO(31 downto 24)) &
   xor_reduce(gfTsValO(23 downto 16)) & xor_reduce(gfTsValO(15 downto 8)) &
   xor_reduce(gfTsValO(7 downto 0)) & gfTsValO(23 downto 0)) ;
  GFidata(31 downto 0) <= "00000000000000000000000000000000" when (GFtsAdd)='1'
   else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" ;
  GFcbid <= "11111111111111111110" when (GFtsAdd)='1' else std_logic_vector'
  ("ZZZZZZZZZZZZZZZZZZZZ") ;
  GFlen <= "000000000001" when (GFtsAdd)='1' else std_logic_vector'
  ("ZZZZZZZZZZZZ") ;
  LBempty <= boolean_to_std(ext(LBfill,32) = std_logic_vector'
  ("00000000000000000000000000000000")) ;
  LBfull <= boolean_to_std(ext(LBfill,32) = std_logic_vector'
  ("00000000000000000000000000000100")) ;
  DUMMY6 <= '1' when (GFfull)='1' else 'Z' ;
  DUMMY4 <= '1' when ((svGFbusy1)='1' or (svGFbusy2)='1') else 'Z' ;

  process --:o98
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      wrtCntD <= wrtCnt ;
    end if ;
  end process ;

  process --:o101
  (*)
    variable DUMMY16 : std_logic_vector(1 to 26) ;
  begin
    DUMMY16 := ext(ixc_gfm_ack(0),26) ;
    ackIdNew <= DUMMY16(19 to 26) ;
    ackLen <= DUMMY16(1 to 18) ;
  end process ;

  process --:o106
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (ackIdNew /= ackId) then
        ackClk <= '1' ;
        ackId <= ackIdNew ;
      else
        ackClk <= '0' ;
      end if;
    end if ;
  end process ;

  process --:o119
  (*)
  begin
    ixc_gfm_ctl(0) <= std_logic_vector'(wrtCntD(62 downto 0) & DUMMY4) ;
    ixc_gfm_ctl(1) <= rdCnt ;
    ixc_gfm_ctl(2) <= ext(std_logic_vector'(DUMMY3 & DUMMY8),64) ;
    ixc_gfm_ctl(3) <= ext(ackId,64) ;
  end process ;

  process --:o127
  (ackClk)
  begin
    if (ackClk'event and ackClk = '1') then
      rLen <= ackLen ;
      wSync <= not(wSync) ;
    end if ;
  end process ;

  process --:o133
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY1 = '1') then
        reqD <= '0' ;
        GFfullD <= '0' ;
      else
        if (hasMultiLevelGFIFO = '1') then
          reqD <= (GFreq and not(GFfullD)) ;
        else
          reqD <= (GFreq and not(GFfull)) ;
        end if;
        GFfullD <= GFfull ;
      end if;
    end if ;
  end process ;

  process --:o154
  (fclk)
    variable wLen_DUMMY0 : std_logic_vector(18 downto 0) ;
    variable rSync_DUMMY1 : std_logic ;
    variable argLen_DUMMY2 : std_logic_vector(11 downto 0) ;
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY1 = '1') then
        wrtCnt <= std_logic_vector'
        ("0000000000000000000000000000000000000000000000000000000000000000") ;
        xdata <= it_multiple_concat(std_logic'('0'),544) ;
        writeLen <= std_logic_vector'("000000") ;
        wLen_DUMMY0 := std_logic_vector'("0000000000000000000") ;
        rSync_DUMMY1 := '0' ;
      else
        if (((DUMMY2)='1' and (LBempty)='1' and (not(LBreq))='1')) then
          wLen_DUMMY0 := std_logic_vector'("0000000000000000000") ;
          rSync_DUMMY1 := wSync ;
        elsif (rSync_DUMMY1 /= wSync) then
          if (wLen_DUMMY0 >= ext(rLen,19)) then
            wLen_DUMMY0 := (wLen_DUMMY0 - ext(rLen,19)) ;
          end if;
          rSync_DUMMY1 := wSync ;
        end if;
        if (((((reqD)='1' or (GFtsAdd)='1') and (DUMMY7 = '0')) and GFcbid /=
         std_logic_vector'("11111111111111111101"))) then
          if (GFcbid /= std_logic_vector'("11111111111111111111")) then
            xdata <= it_cond_op(GFcbid = std_logic_vector'
            ("11111111111111111110"),ext(timeStampPkt,544),std_logic_vector'
            (GFidata & GFlen & GFcbid)) ;
            argLen_DUMMY2 := GFlen ;
            wLen_DUMMY0 := ext(((ext(wLen_DUMMY0,32) + ext(argLen_DUMMY2,32)) +
             std_logic_vector'("00000000000000000000000000000001")),19) ;
            writeLen <= ext((it_cond_op(ext(GFlen,32) > std_logic_vector'
            ("00000000000000000000000000010000"),std_logic_vector'
            ("00000000000000000000000000010000"),ext(GFlen,32)) +
             std_logic_vector'("00000000000000000000000000000001")),6) ;
          else
            xdata <= std_logic_vector'(std_logic_vector'
            ("00000000000000000000000000000000") & GFidata) ;
            writeLen <= ext(it_cond_op(ext(GFlen,32) > std_logic_vector'
            ("00000000000000000000000000010000"),std_logic_vector'
            ("00000000000000000000000000010000"),ext(GFlen,32)),6) ;
          end if;
          if (ext(GFlen,32) <= std_logic_vector'
          ("00000000000000000000000000010000")) then
            wrtCnt <= ((wrtCnt + ext(argLen_DUMMY2,64)) + std_logic_vector'
            ("0000000000000000000000000000000000000000000000000000000000000001")
            ) ;
          end if;
        else
          xdata <= it_multiple_concat(std_logic'('0'),544) ;
          writeLen <= std_logic_vector'("000000") ;
        end if;
      end if;
    end if ;
    wLen <= transport wLen_DUMMY0;
    rSync <= rSync_DUMMY1;
    argLen <= argLen_DUMMY2;
  end process ;

  process --:o210
  (*)
    variable shiftCount_DUMMY3 : std_logic_vector(7 downto 0) ;
    variable shiftedXdata_DUMMY4 : std_logic_vector(767 downto 0) ;
    variable oFillN_DUMMY5 : std_logic_vector(4 downto 0) ;
  begin
    shiftCount_DUMMY3 := shiftCount;
    shiftedXdata_DUMMY4 := shiftedXdata;
    oFillN_DUMMY5 := oFillN;
    ofifoAddr0N <= ofifoWptr ;
    ofifoAddr1N <= ext((ext(ofifoWptr,32) + std_logic_vector'
    ("00000000000000000000000000000001")),15) ;
    ofifoAddr2N <= ext((ext(ofifoWptr,32) + std_logic_vector'
    ("00000000000000000000000000000010")),15) ;
    shiftCount_DUMMY3 := std_logic_vector'(oFill(2 downto 0) & std_logic_vector'
    ("00000")) ;
    shiftedXdata_DUMMY4 := shl(ext(xdata,768),shiftCount_DUMMY3) ;
    if (DUMMY1 = '1') then
      ofifoDataN <= it_multiple_concat(std_logic'('0'),768) ;
    elsif (oFill(4 downto 3) = std_logic_vector'("11")) then
      ofifoDataN <= shiftedXdata_DUMMY4 ;
    elsif (oFill(4 downto 3) = std_logic_vector'("10")) then
      ofifoDataN <= (shiftedXdata_DUMMY4 or std_logic_vector'(it_multiple_concat
      (std_logic'('0'),512) & ofifoData(512+(256-1) downto 512))) ;
    elsif (oFill(4 downto 3) = std_logic_vector'("01")) then
      ofifoDataN <= (shiftedXdata_DUMMY4 or std_logic_vector'(it_multiple_concat
      (std_logic'('0'),512) & ofifoData(256+(256-1) downto 256))) ;
    else
      ofifoDataN <= (shiftedXdata_DUMMY4 or std_logic_vector'(it_multiple_concat
      (std_logic'('0'),512) & ofifoData(0+(256-1) downto 0))) ;
    end if;
    oFillN_DUMMY5 := ext((ext(oFill(2 downto 0),6) + writeLen),5) ;
    ofifoWptrN <= (ofifoWptr + ext(oFillN_DUMMY5(4 downto 3),15)) ;
    shiftCount <= transport shiftCount_DUMMY3;
    shiftedXdata <= shiftedXdata_DUMMY4;
    oFillN <= oFillN_DUMMY5;
  end process ;

  process --:o244
  (*)
  begin
    ixc_gfm_ofifo(conv_integer(ofifoAddr0N)) <= ofifoDataN(0+(256-1) downto 0) ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr1N)) <= ofifoDataN(256+(256-1) downto
     256) ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr2N)) <= ofifoDataN(512+(256-1) downto
     512) ;
  end process ;

  process --:o251
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY1 = '1') then
        ofifoWptr <= std_logic_vector'("000000000000000") ;
        ofifoAddr0 <= std_logic_vector'("000000000000000") ;
        ofifoAddr1 <= std_logic_vector'("000000000000001") ;
        ofifoAddr2 <= std_logic_vector'("000000000000010") ;
        ofifoData <= it_multiple_concat(std_logic'('0'),768) ;
        oFill <= std_logic_vector'("00000") ;
      else
        ofifoWptr <= ofifoWptrN ;
        ofifoAddr0 <= ofifoAddr0N ;
        ofifoAddr1 <= ofifoAddr1N ;
        ofifoAddr2 <= ofifoAddr2N ;
        ofifoData <= ofifoDataN ;
        oFill <= oFillN ;
      end if;
    end if ;
  end process ;

  process --:o273
  (*)
    variable TsBuf_DUMMY6 : DUMMY12(0 to 7) ;
    variable DUMMY17 : std_logic_vector(1 to 65) ;
  begin
    TsBuf_DUMMY6 := TsBuf;
    TsBuf_DUMMY6(conv_integer(LBwr)) := std_logic_vector'(GFtsReq & DUMMY3) ;
    DUMMY17 := TsBuf_DUMMY6(conv_integer(LBrd)) ;
    gfTsValO <= DUMMY17(2 to 65) ;
    gfTsReqO <= DUMMY17(1) ;
    TsBuf <= transport TsBuf_DUMMY6;
  end process ;

  process --:o279
  (*)
  begin
    if ((((LBreq)='1' and (LBempty)='1') or (gfTsEn)='1')) then
      GFtsAdd <= gfTsReqO ;
    else
      GFtsAdd <= '0' ;
    end if;
  end process ;

  process --:o291
  (fclk)
    variable LBwrI_DUMMY7 : std_logic_vector(3 downto 0) ;
    variable LBrd_DUMMY8 : std_logic_vector(3 downto 0) ;
    variable LBfill_DUMMY9 : std_logic_vector(3 downto 0) ;
    variable gfTsEn_DUMMY10 : std_logic ;
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY1 = '1') then
        LBwrI_DUMMY7 := "0000" ;
        LBrd_DUMMY8 := "0000" ;
        LBfill_DUMMY9 := "0000" ;
        gfTsEn_DUMMY10 := '0' ;
      else
        if (((LBreq)='1' and (not(LBfull))='1')) then
          LBwrI_DUMMY7 := ext(it_cond_op((ext(LBwrI_DUMMY7,32) +
           std_logic_vector'("00000000000000000000000000000001")) =
           std_logic_vector'("00000000000000000000000000000100"
          ),std_logic_vector'("00000000000000000000000000000000"),(ext
          (LBwrI_DUMMY7,32) + std_logic_vector'
          ("00000000000000000000000000000001"))),4) ;
          LBfill_DUMMY9 := ext((ext(LBfill_DUMMY9,32) + std_logic_vector'
          ("00000000000000000000000000000001")),4) ;
        end if;
        if ((((not(GFreq))='1' and (not(LBempty))='1') and (not(gfTsEn_DUMMY10)
        )='1')) then
          LBrd_DUMMY8 := ext(it_cond_op((ext(LBrd_DUMMY8,32) + std_logic_vector'
          ("00000000000000000000000000000001")) = std_logic_vector'
          ("00000000000000000000000000000100"),std_logic_vector'
          ("00000000000000000000000000000000"),(ext(LBrd_DUMMY8,32) +
           std_logic_vector'("00000000000000000000000000000001"))),4) ;
          LBfill_DUMMY9 := ext((ext(LBfill_DUMMY9,32) - std_logic_vector'
          ("00000000000000000000000000000001")),4) ;
          gfTsEn_DUMMY10 := '1' ;
        else
          gfTsEn_DUMMY10 := '0' ;
        end if;
      end if;
    end if ;
    LBwrI <= transport LBwrI_DUMMY7;
    LBrd <= LBrd_DUMMY8;
    LBfill <= LBfill_DUMMY9;
    gfTsEn <= gfTsEn_DUMMY10;
  end process ;

  process --:o320
  (*)
  begin
    LBwr <= ext(it_cond_op((LBfull)='1',std_logic_vector'
    ("00000000000000000000000000000100"),ext(LBwrI,32)),4) ;
  end process ;

  process --:o323
  (*)
  begin
    svGFbusy1 <= not(LBempty) ;
  end process ;

  process --:o326
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      svGFbusy2 <= svGFbusy1 ;
    end if ;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
