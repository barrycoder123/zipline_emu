architecture module of IXC_SV_SFIFO_VXE_256 is
  type DUMMY5 is array(integer range <>) of std_logic_vector(255 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal fclk : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY6 : std_logic_vector(0 to 63) ;
  signal DUMMY7 : std_logic_vector(21 downto 0) ;
  -- quickturn external_ref DUMMY7
  attribute _2_state_ of DUMMY7: signal is 1 ;
  signal iData : std_logic_vector(511 downto 0) ;
  -- quickturn external_ref iData
  attribute _2_state_ of iData: signal is 1 ;
  signal ixc_gfm_ififo : DUMMY5(0 to 32767) ;
  attribute _2_state_ of ixc_gfm_ififo: signal is 1 ;
  signal ixc_gfm_ofifo : DUMMY5(0 to 32767) ;
  attribute _2_state_ of ixc_gfm_ofifo: signal is 1 ;
  signal wptr : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of wptr: signal is 1 ;
  signal wptrN : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of wptrN: signal is 1 ;
  signal xptr : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of xptr: signal is 1 ;
  signal xptrN : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of xptrN: signal is 1 ;
  signal ififoXdata : std_logic_vector(255 downto 0) ;
  attribute _2_state_ of ififoXdata: signal is 1 ;
  signal ififoXdataFinal : std_logic_vector(255 downto 0) ;
  attribute _2_state_ of ififoXdataFinal: signal is 1 ;
  signal rptr : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of rptr: signal is 1 ;
  signal rptrN : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of rptrN: signal is 1 ;
  signal ififoRaddr0 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ififoRaddr0: signal is 1 ;
  signal ififoRaddr1 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ififoRaddr1: signal is 1 ;
  signal ififoRaddr2 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ififoRaddr2: signal is 1 ;
  signal ififoRdata : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of ififoRdata: signal is 1 ;
  signal rdDelta : std_logic_vector(17 downto 0) ;
  attribute _2_state_ of rdDelta: signal is 1 ;
  signal markBits : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of markBits: signal is 1 ;
  signal markBitsN : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of markBitsN: signal is 1 ;
  signal newMarkBits : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of newMarkBits: signal is 1 ;
  signal newMarkBitsD : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of newMarkBitsD: signal is 1 ;
  signal dataBits : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of dataBits: signal is 1 ;
  signal offset : std_logic_vector(23 downto 0) ;
  attribute _2_state_ of offset: signal is 1 ;
  signal offsetN : std_logic_vector(23 downto 0) ;
  attribute _2_state_ of offsetN: signal is 1 ;
  signal moveForward : std_logic ;
  attribute _2_state_ of moveForward: signal is 1 ;
  signal moveForwardN : std_logic ;
  attribute _2_state_ of moveForwardN: signal is 1 ;
  signal active : std_logic ;
  attribute _2_state_ of active: signal is 1 ;
  signal activeD : std_logic ;
  attribute _2_state_ of activeD: signal is 1 ;
  signal xval : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of xval: signal is 1 ;
  signal nps : std_logic ;
  -- quickturn external_ref nps
  attribute _2_state_ of nps: signal is 1 ;
  signal eob : std_logic ;
  attribute _2_state_ of eob: signal is 1 ;
  signal DUMMY4 : std_logic ;
  signal i : integer ;
  attribute _2_state_ of i: signal is 1 ;
  signal head : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of head: signal is 1 ;
  signal xhead : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of xhead: signal is 1 ;
  signal vhead : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of vhead: signal is 1 ;
  signal pktl : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of pktl: signal is 1 ;
  signal pktlN : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of pktlN: signal is 1 ;
  signal DUMMY8 : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of DUMMY8: signal is 1 ;
  signal vlenN : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of vlenN: signal is 1 ;
  signal rstDone : std_logic ;
  attribute _2_state_ of rstDone: signal is 1 ;
  signal rstDoneD : std_logic ;
  attribute _2_state_ of rstDoneD: signal is 1 ;
  signal rstDoneD2 : std_logic ;
  attribute _2_state_ of rstDoneD2: signal is 1 ;
  signal DUMMY9 : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of DUMMY9: signal is 1 ;
  signal odlyN : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of odlyN: signal is 1 ;
  signal DUMMY10 : std_logic ;
  attribute _2_state_ of DUMMY10: signal is 1 ;
  signal tmpData : std_logic_vector(575 downto 0) ;
  attribute _2_state_ of tmpData: signal is 1 ;
  signal oSt : std_logic ;
  signal oMark : std_logic_vector(255 downto 0) ;
  attribute _2_state_ of oMark: signal is 1 ;
  signal oDataEn : std_logic ;
  -- quickturn external_ref oDataEn
  attribute _2_state_ of oDataEn: signal is 1 ;
  signal oDataLen : std_logic_vector(3 downto 0) ;
  -- quickturn external_ref oDataLen
  attribute _2_state_ of oDataLen: signal is 1 ;
  signal oData : std_logic_vector(511 downto 0) ;
  -- quickturn external_ref oData
  attribute _2_state_ of oData: signal is 1 ;
  signal numRsts : std_logic_vector(31 downto 0) ;
  -- quickturn external_ref numRsts
  attribute _2_state_ of numRsts: signal is 1 ;
  signal ofifoData : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of ofifoData: signal is 1 ;
  signal oFill : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of oFill: signal is 1 ;
  signal ofifoAddr0 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr0: signal is 1 ;
  signal ofifoAddr1 : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of ofifoAddr1: signal is 1 ;
  signal ofifoAddr2 : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of ofifoAddr2: signal is 1 ;
  signal ofifoWptr : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoWptr: signal is 1 ;
  signal shiftCount : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of shiftCount: signal is 1 ;
  signal shiftedOData : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of shiftedOData: signal is 1 ;
  -- quickturn no_hardmacro numRsts
  -- quickturn keep_net numRsts
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack ixc_gfm_ififo
  -- quickturn use_hardmacro_pack ixc_gfm_ofifo

begin
  DUMMY0 <= '1' ;
  DUMMY2 <= '1' when (((newMarkBitsD /= newMarkBits or (moveForward)='1') or 
  (active)='1') or (activeD)='1') else 'Z' ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY6
      ,rdCnt
    ) ;

  process --:o89
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY1 = '1') then
        xptr <= std_logic_vector'("00000000000000000") ;
        wptr <= std_logic_vector'("00000000000000000") ;
        markBits <= std_logic_vector'("0000") ;
        newMarkBitsD <= std_logic_vector'("0000") ;
        moveForward <= '0' ;
        activeD <= '0' ;
      else
        xptr <= xptrN ;
        wptr <= wptrN ;
        markBits <= markBitsN ;
        newMarkBitsD <= newMarkBits ;
        moveForward <= moveForwardN ;
        activeD <= active ;
        if (moveForwardN = '1') then
          ixc_gfm_ififo(conv_integer(xptrN(16 downto 2))) <= ififoXdataFinal ;
        end if;
      end if;
    end if ;
  end process ;

  process --:o115
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY1 = '1') then
        rdCnt <= std_logic_vector'
        ("0000000000000000000000000000000000000000000000000000000000000000") ;
      else
        rdCnt <= (rdCnt + ext(rdDelta,64)) ;
      end if;
    end if ;
  end process ;

  process --:o127
  (*)
    variable ififoXdata_DUMMY0 : std_logic_vector(255 downto 0) ;
    variable xval_DUMMY1 : std_logic_vector(63 downto 0) ;
    variable newMarkBits_DUMMY2 : std_logic_vector(3 downto 0) ;
    variable dataBits_DUMMY3 : std_logic_vector(3 downto 0) ;
  begin
    ififoXdata_DUMMY0 := ififoXdata;
    xval_DUMMY1 := xval;
    newMarkBits_DUMMY2 := newMarkBits;
    dataBits_DUMMY3 := dataBits;
    ififoXdata_DUMMY0 := ixc_gfm_ififo(conv_integer(xptr(16 downto 2))) ;
    xval_DUMMY1 := ext(shr(ififoXdata_DUMMY0,std_logic_vector'(xptr(1 downto 0)
     & std_logic_vector'("000000"))),64) ;
    for i in 0 to 3 loop --:o132
      newMarkBits_DUMMY2(i) := ififoXdata_DUMMY0(conv_integer((shl
      (integer_to_std(i,32),integer_to_std(6,32)) or std_logic_vector'
      ("00000000000000000000000000111111")))) ;
    end loop;
    dataBits_DUMMY3 := xval_DUMMY1(35 downto 32) ;
    if (((newMarkBits_DUMMY2 xor markBits) = std_logic_vector'("1111") and 
    (moveForward = '0') and (DUMMY1 = '0') and (DUMMY4 = '0'))) then
      moveForwardN <= '1' ;
      ififoXdataFinal <= ififoXdata_DUMMY0 ;
      for i in 0 to 3 loop --:o141
        ififoXdataFinal(conv_integer((shl(integer_to_std(i,32),integer_to_std
        (6,32)) or std_logic_vector'("00000000000000000000000000111111")))) <=
         dataBits_DUMMY3(i) ;
      end loop;
    else
      moveForwardN <= '0' ;
    end if;
    if (moveForward = '1') then
      markBitsN <= xval_DUMMY1(3 downto 0) ;
      xptrN <= ext(xval_DUMMY1(63 downto 40),17) ;
      wptrN <= xptr ;
    else
      markBitsN <= markBits ;
      xptrN <= xptr ;
      wptrN <= wptr ;
    end if;
    ififoXdata <= transport ififoXdata_DUMMY0;
    xval <= xval_DUMMY1;
    newMarkBits <= newMarkBits_DUMMY2;
    dataBits <= dataBits_DUMMY3;
  end process ;

  process --:o163
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY1 = '1') then
        rptr <= std_logic_vector'("00000000000000000") ;
        ififoRaddr0 <= std_logic_vector'("000000000000000") ;
        ififoRaddr1 <= std_logic_vector'("000000000000001") ;
        ififoRaddr2 <= std_logic_vector'("000000000000010") ;
        pktl <= std_logic_vector'("0000000000000000") ;
        DUMMY9 <= std_logic_vector'("000000000000") ;
        DUMMY8 <= std_logic_vector'("0000000000") ;
        vhead <= std_logic_vector'
        ("0000000000000000000000000000000000000000000000000000000000000000") ;
      else
        rptr <= rptrN ;
        ififoRaddr0 <= rptrN(16 downto 2) ;
        ififoRaddr1 <= ext((ext(rptrN(16 downto 2),32) + std_logic_vector'
        ("00000000000000000000000000000001")),15) ;
        ififoRaddr2 <= ext((ext(rptrN(16 downto 2),32) + std_logic_vector'
        ("00000000000000000000000000000010")),15) ;
        pktl <= pktlN ;
        DUMMY9 <= odlyN ;
        DUMMY8 <= vlenN ;
        vhead <= head ;
      end if;
    end if ;
  end process ;

  process --:o189
  (*)
    variable ififoRdata_DUMMY4 : std_logic_vector(767 downto 0) ;
    variable tmpData_DUMMY5 : std_logic_vector(575 downto 0) ;
  begin
    ififoRdata_DUMMY4 := ififoRdata;
    tmpData_DUMMY5 := tmpData;
    ififoRdata_DUMMY4(0+(256-1) downto 0) := ixc_gfm_ififo(conv_integer
    (ififoRaddr0)) ;
    ififoRdata_DUMMY4(256+(256-1) downto 256) := ixc_gfm_ififo(conv_integer
    (ififoRaddr1)) ;
    ififoRdata_DUMMY4(512+(256-1) downto 512) := ixc_gfm_ififo(conv_integer
    (ififoRaddr2)) ;
    tmpData_DUMMY5 := ext(shr(ififoRdata_DUMMY4,std_logic_vector'(rptr(1 downto
     0) & std_logic_vector'("000000"))),576) ;
    xhead <= tmpData_DUMMY5(63 downto 0) ;
    iData <= tmpData_DUMMY5(575 downto 64) ;
    ififoRdata <= transport ififoRdata_DUMMY4;
    tmpData <= tmpData_DUMMY5;
  end process ;

  process --:o199
  (*)
    variable DUMMY10_DUMMY6 : std_logic ;
    variable head_DUMMY7 : std_logic_vector(63 downto 0) ;
    variable DUMMY7_DUMMY8 : std_logic_vector(21 downto 0) ;
    variable rptrN_DUMMY9 : std_logic_vector(16 downto 0) ;
    variable vlenN_DUMMY10 : std_logic_vector(9 downto 0) ;
  begin
    DUMMY10_DUMMY6 := DUMMY10;
    head_DUMMY7 := head;
    DUMMY7_DUMMY8 := DUMMY7;
    rptrN_DUMMY9 := rptrN;
    vlenN_DUMMY10 := vlenN;
    odlyN <= DUMMY9 ;
    rstDone <= '0' ;
    DUMMY10_DUMMY6 := boolean_to_std(ext(DUMMY8,32) /= std_logic_vector'
    ("00000000000000000000000000000000")) ;
    head_DUMMY7 := it_cond_op((DUMMY10_DUMMY6)='1',vhead,xhead) ;
    eob <= '0' ;
    nps <= '0' ;
    active <= '0' ;
    if (wptr /= rptr) then
      if ((DUMMY3 = '0')) then
        active <= '1' ;
      end if;
      if ((ext(pktl,32) = std_logic_vector'("00000000000000000000000000000000")
       and ext(DUMMY9,32) = std_logic_vector'("00000000000000000000000000000000"
      ) and (scgGFreq = '0'))) then
        DUMMY7_DUMMY8 := head_DUMMY7(10+(22-1) downto 10) ;
        if (DUMMY7_DUMMY8 = std_logic_vector'("1111111111111111111110")) then
          nps <= '1' ;
          rptrN_DUMMY9 := ext((ext(rptr,32) + std_logic_vector'
          ("00000000000000000000000000000001")),17) ;
        elsif (DUMMY7_DUMMY8 = std_logic_vector'("1111111111111111111111")) then
          nps <= '1' ;
          eob <= '1' ;
          pktlN <= std_logic_vector'("0000000000000000") ;
          vlenN_DUMMY10 := std_logic_vector'("0000000000") ;
          rptrN_DUMMY9 := ext(((ext(rptr,32) + ext(head_DUMMY7(0+(10-1) downto 0
          ),32)) + std_logic_vector'("00000000000000000000000000000001")),17) ;
          odlyN <= std_logic_vector'("000000000000") ;
          rstDone <= head_DUMMY7(61) ;
        elsif (ext(head_DUMMY7(32+(10-1) downto 32),32) > std_logic_vector'
        ("00000000000000000000000000001000")) then
          nps <= '1' ;
          pktlN <= ext((ext(head_DUMMY7(32+(10-1) downto 32),32) -
           std_logic_vector'("00000000000000000000000000001000")),16) ;
          vlenN_DUMMY10 := ext((it_cond_op((DUMMY10_DUMMY6)='1',ext(DUMMY8,32
          ),ext(head_DUMMY7(0+(10-1) downto 0),32)) - std_logic_vector'
          ("00000000000000000000000000001000")),10) ;
          rptrN_DUMMY9 := ext((ext(rptr,32) + std_logic_vector'
          ("00000000000000000000000000001000")),17) ;
          odlyN <= head_DUMMY7(48+(12-1) downto 48) ;
        else
          nps <= '1' ;
          pktlN <= std_logic_vector'("0000000000000000") ;
          vlenN_DUMMY10 := (it_cond_op((DUMMY10_DUMMY6)='1',DUMMY8,head_DUMMY7
          (0+(10-1) downto 0)) - head_DUMMY7(32+(10-1) downto 32)) ;
          rptrN_DUMMY9 := ((rptr + ext(head_DUMMY7(32+(10-1) downto 32),17)) +
           boolean_to_std(ext(vlenN_DUMMY10,32) = std_logic_vector'
          ("00000000000000000000000000000000"),17)) ;
          odlyN <= head_DUMMY7(48+(12-1) downto 48) ;
        end if;
      elsif (ext(pktl,32) /= std_logic_vector'
      ("00000000000000000000000000000000")) then
        DUMMY7_DUMMY8 := std_logic_vector'("1111111111111111111111") ;
        if (ext(pktl,32) > std_logic_vector'("00000000000000000000000000001000")
        ) then
          pktlN <= ext((ext(pktl,32) - std_logic_vector'
          ("00000000000000000000000000001000")),16) ;
          vlenN_DUMMY10 := ext((ext(DUMMY8,32) - std_logic_vector'
          ("00000000000000000000000000001000")),10) ;
          rptrN_DUMMY9 := ext((ext(rptr,32) + std_logic_vector'
          ("00000000000000000000000000001000")),17) ;
        else
          pktlN <= std_logic_vector'("0000000000000000") ;
          vlenN_DUMMY10 := ext((ext(DUMMY8,16) - pktl),10) ;
          rptrN_DUMMY9 := ((rptr + ext(pktl,17)) + boolean_to_std(ext
          (vlenN_DUMMY10,32) = std_logic_vector'
          ("00000000000000000000000000000000"),17)) ;
        end if;
      elsif (ext(DUMMY9,32) /= std_logic_vector'
      ("00000000000000000000000000000000")) then
        DUMMY7_DUMMY8 := std_logic_vector'("1111111111111111111111") ;
        pktlN <= std_logic_vector'("0000000000000000") ;
        vlenN_DUMMY10 := DUMMY8 ;
        rptrN_DUMMY9 := rptr ;
        odlyN <= ext((ext(DUMMY9,32) - std_logic_vector'
        ("00000000000000000000000000000001")),12) ;
      else
        DUMMY7_DUMMY8 := std_logic_vector'("1111111111111111111111") ;
        pktlN <= std_logic_vector'("0000000000000000") ;
        vlenN_DUMMY10 := DUMMY8 ;
        rptrN_DUMMY9 := rptr ;
        odlyN <= std_logic_vector'("000000000000") ;
      end if;
    else
      DUMMY7_DUMMY8 := std_logic_vector'("1111111111111111111111") ;
      pktlN <= std_logic_vector'("0000000000000000") ;
      vlenN_DUMMY10 := std_logic_vector'("0000000000") ;
      rptrN_DUMMY9 := rptr ;
      if (ext(DUMMY9,32) /= std_logic_vector'("00000000000000000000000000000000"
      )) then
        odlyN <= ext((ext(DUMMY9,32) - std_logic_vector'
        ("00000000000000000000000000000001")),12) ;
      end if;
      if ((ext(DUMMY9,32) /= std_logic_vector'
      ("00000000000000000000000000000000") or (scgGFreq)='1')) then
        if ((DUMMY3 = '0')) then
          active <= '1' ;
        end if;
      end if;
    end if;
    rdDelta <= ext(it_cond_op(rptrN_DUMMY9 >= rptr,(ext(rptrN_DUMMY9,32) - ext
    (rptr,32)),(ext(rptrN_DUMMY9,32) + (std_logic_vector'
    ("00000000000000100000000000000000") - ext(rptr,32)))),18) ;
    DUMMY10 <= transport DUMMY10_DUMMY6;
    head <= head_DUMMY7;
    DUMMY7 <= DUMMY7_DUMMY8;
    rptrN <= rptrN_DUMMY9;
    vlenN <= vlenN_DUMMY10;
  end process ;

  process --:o303
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY1 = '1') then
        rstDoneD <= '0' ;
        rstDoneD2 <= '0' ;
      else
        rstDoneD <= rstDone ;
        rstDoneD2 <= rstDoneD ;
      end if;
    end if ;
  end process ;

  process --:o317
  (fclk)
    variable oFill_DUMMY11 : std_logic_vector(3 downto 0) ;
    variable shiftCount_DUMMY12 : std_logic_vector(7 downto 0) ;
    variable shiftedOData_DUMMY13 : std_logic_vector(767 downto 0) ;
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY1 = '1') then
        oSt <= '0' ;
        oMark <= std_logic_vector'
        ("0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
        ) ;
        ofifoWptr <= std_logic_vector'("000000000000001") ;
        ofifoAddr0 <= std_logic_vector'("000000000000001") ;
        ofifoAddr1 <= std_logic_vector'("0000000000000010") ;
        ofifoAddr2 <= std_logic_vector'("0000000000000011") ;
        oFill_DUMMY11 := std_logic_vector'("0000") ;
        ofifoData <= it_multiple_concat(std_logic'('0'),768) ;
        numRsts <= std_logic_vector'("00000000000000000000000000000000") ;
      else
        oMark(62 downto 0) <= rdCnt(62 downto 0) ;
        if (oSt = '0') then
          if (nps = '1') then
            oSt <= '1' ;
            ofifoWptr <= std_logic_vector'("000000000000001") ;
            oFill_DUMMY11 := std_logic_vector'("0000") ;
            ofifoData <= it_multiple_concat(std_logic'('0'),768) ;
          end if;
        else
          if (rstDoneD2 = '1') then
            oSt <= '0' ;
            oMark(63) <= not(oMark(63)) ;
            oMark(127) <= not(oMark(127)) ;
            oMark(191) <= not(oMark(191)) ;
            oMark(255) <= not(oMark(255)) ;
            numRsts <= (numRsts + std_logic_vector'
            ("00000000000000000000000000000001")) ;
          end if;
          ofifoAddr0 <= ofifoWptr ;
          ofifoAddr1 <= ext((ext(ofifoWptr,32) + std_logic_vector'
          ("00000000000000000000000000000001")),16) ;
          ofifoAddr2 <= ext((ext(ofifoWptr,32) + std_logic_vector'
          ("00000000000000000000000000000010")),16) ;
          shiftCount_DUMMY12 := std_logic_vector'(oFill_DUMMY11(1 downto 0) &
           std_logic_vector'("000000")) ;
          shiftedOData_DUMMY13 := shl(ext(oData,768),shiftCount_DUMMY12) ;
          if (oFill_DUMMY11(3 downto 2) = std_logic_vector'("11")) then
            ofifoData <= shiftedOData_DUMMY13 ;
          elsif (oFill_DUMMY11(3 downto 2) = std_logic_vector'("10")) then
            ofifoData <= (shiftedOData_DUMMY13 or std_logic_vector'
            (it_multiple_concat(std_logic'('0'),512) & ofifoData(512+(256-1)
             downto 512))) ;
          elsif (oFill_DUMMY11(3 downto 2) = std_logic_vector'("01")) then
            ofifoData <= (shiftedOData_DUMMY13 or std_logic_vector'
            (it_multiple_concat(std_logic'('0'),512) & ofifoData(256+(256-1)
             downto 256))) ;
          else
            ofifoData <= (shiftedOData_DUMMY13 or std_logic_vector'
            (it_multiple_concat(std_logic'('0'),512) & ofifoData(0+(256-1)
             downto 0))) ;
          end if;
          oFill_DUMMY11 := ext((ext(oFill_DUMMY11(1 downto 0),32) + it_cond_op(
          (oDataEn)='1',ext(oDataLen,32),std_logic_vector'
          ("00000000000000000000000000000000"))),4) ;
          ofifoWptr <= (ofifoWptr + ext(oFill_DUMMY11(3 downto 2),15)) ;
        end if;
      end if;
    end if ;
    oFill <= transport oFill_DUMMY11;
    shiftCount <= shiftCount_DUMMY12;
    shiftedOData <= shiftedOData_DUMMY13;
  end process ;

  process --:o384
  (*)
  begin
    ixc_gfm_ofifo(0) <= oMark ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr0)) <= ofifoData(0+(256-1) downto 0) ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr1)) <= ofifoData(256+(256-1) downto 256)
     ;
    ixc_gfm_ofifo(conv_integer(ofifoAddr2)) <= ofifoData(512+(256-1) downto 512)
     ;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
