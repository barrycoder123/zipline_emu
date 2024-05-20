ARCHITECTURE module OF ixc_gfifo_port_1 IS
  TYPE DUMMY8 IS ARRAY(integer RANGE <>) OF std_logic_vector(conv_integer((ext
  (BW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
   DOWNTO 0) ;
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT Q_CCLKCHK
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_EV_WOR_START
    PORT (
    A : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT ixc_bind
    GENERIC (
      W : integer := 1
    ) ;
    PORT (
      L : INOUT std_logic_vector((W - 1) DOWNTO 0) := (OTHERS => 'X') ;
    DUMMY0 : INOUT std_logic_vector((W - 1) DOWNTO 0) := (OTHERS => 'X') ) ;
  END COMPONENT ;

  COMPONENT Q_NOT_TOUCH
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  SIGNAL fclk : std_logic ;
  SIGNAL DUMMY0 : std_logic ;
  SIGNAL enq : std_logic ;
  SIGNAL CLBreqWhileFull : std_logic ;
  SIGNAL DUMMY1 : std_logic ;
  SIGNAL en : std_logic ;
  ATTRIBUTE _2_state_ OF en: SIGNAL IS 1 ;
  SIGNAL ack : std_logic ;
  ATTRIBUTE _2_state_ OF ack: SIGNAL IS 1 ;
  SIGNAL odata : std_logic_vector(conv_integer((ext(DW,$QKTN_MAX(DW'length,32))
   - integer_to_std(1,$QKTN_MAX(DW'length,32)))) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF odata: SIGNAL IS 1 ;
  SIGNAL oreq : std_logic ;
  ATTRIBUTE _2_state_ OF oreq: SIGNAL IS 1 ;
  SIGNAL ocbid : std_logic_vector(19 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF ocbid: SIGNAL IS 1 ;
  SIGNAL xcbid : std_logic_vector(19 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF xcbid: SIGNAL IS 1 ;
  SIGNAL olen : std_logic_vector(11 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF olen: SIGNAL IS 1 ;
  SIGNAL xlen : std_logic_vector(11 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF xlen: SIGNAL IS 1 ;
  SIGNAL sel : std_logic_vector(conv_integer(SEL1) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF sel: SIGNAL IS 1 ;
  SIGNAL xdata : std_logic_vector(conv_integer((ext(XW,$QKTN_MAX(32,DW'length))
   - integer_to_std(1,$QKTN_MAX(32,DW'length)))) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF xdata: SIGNAL IS 1 ;
  SIGNAL _zzLB : DUMMY8(0 TO conv_integer((ext(BUFL,$QKTN_MAX(BUFL'length,32)) -
   integer_to_std(1,$QKTN_MAX(BUFL'length,32))))) ;
  ATTRIBUTE _2_state_ OF _zzLB: SIGNAL IS 1 ;
  SIGNAL i : integer ;
  SIGNAL ireqR : std_logic ;
  ATTRIBUTE _2_state_ OF ireqR: SIGNAL IS 1 ;
  --  quickturn fast_clock fclk
  --  quickturn no_hardmacro _zzLB

BEGIN
  CGFfull_DUMMY0 <= CGFfull;
  CLBrd_DUMMY1 <= CLBrd;
  CLBwr_DUMMY2 <= CLBwr;
  CLBfull_DUMMY3 <= CLBfull;
  enq <= ((ireq XOR ireqR) AND NOT(DUMMY0)) ;
  CLBreqWhileFull <= (enq AND CLBfull_DUMMY3) ;
  DUMMY1 <= '1' WHEN CLBreqWhileFull = '1' ELSE 'Z' ;
  cchk : Q_CCLKCHK
    PORT MAP (
       ireq
    ) ;
  tkout <= boolean_to_std(oreq /= ack) ;
  CGFcbid <= xcbid WHEN (en)='1' ELSE std_logic_vector'("ZZZZZZZZZZZZZZZZZZZZ")
   ;
  CGFlen <= xlen WHEN (en)='1' ELSE std_logic_vector'("ZZZZZZZZZZZZ") ;
  CGFidata(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
  (1,$QKTN_MAX(32,DW'length)))) DOWNTO 0) <= ext(xdata,ABS(conv_integer((ext
  (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1)
   WHEN (en)='1' ELSE ext(it_multiple_concat(std_logic'('Z'),conv_integer(XW)
  ),ABS(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
  (1,$QKTN_MAX(32,DW'length)))))+1) ;

  PROCESS --:o408
  (*)
    VARIABLE xdata_DUMMY4 : std_logic_vector(conv_integer((ext(XW,$QKTN_MAX
    (32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))) DOWNTO 0) ;
  BEGIN
    xdata_DUMMY4 := xdata;
    IF (ext(DW,$QKTN_MAX(DW'length,32)) <= integer_to_std(512,$QKTN_MAX
    (DW'length,32))) THEN
      xdata_DUMMY4 := ext(odata,ABS(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)
      ) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1) ;
    ELSE
      xdata_DUMMY4 := ext
      ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",ABS
      (conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
      (1,$QKTN_MAX(32,DW'length)))))+1) ;
      FOR i IN 0 TO integer'PRED(conv_integer(SEL1)) LOOP --:o413
        xdata_DUMMY4 := ext(ext(ext(xdata_DUMMY4,$QKTN_MAX(ABS(conv_integer((ext
        (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))
        )))+1,512)) OR it_cond_op((sel(i))='1',ext(odata((i * 512)+(512-1)
         DOWNTO (i * 512)),$QKTN_MAX(ABS(conv_integer((ext(XW,$QKTN_MAX
        (32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1,512)
        ),ext
        ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",$QKTN_MAX
        (ABS(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
        (1,$QKTN_MAX(32,DW'length)))))+1,512))),ABS(conv_integer((ext
        (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))
        )))+1),ABS(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) -
         integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1) ;
      END LOOP;
      xdata_DUMMY4 := ext(ext(ext(xdata_DUMMY4,$QKTN_MAX(ABS(conv_integer((ext
      (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))))
      )+1,$QKTN_MAX(ABS((conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))))-(conv_integer((ext(ext
      (SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std(512,$QKTN_MAX(DW'length,32
      )),$QKTN_MAX(DW'length,32))))))+1,512))) OR it_cond_op((sel(conv_integer
      (SEL1)))='1',ext(odata(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))) DOWNTO conv_integer((ext(ext
      (SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std(512,$QKTN_MAX(DW'length,32
      )),$QKTN_MAX(DW'length,32))))),$QKTN_MAX(ABS(conv_integer((ext
      (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))))
      )+1,$QKTN_MAX(ABS((conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))))-(conv_integer((ext(ext
      (SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std(512,$QKTN_MAX(DW'length,32
      )),$QKTN_MAX(DW'length,32))))))+1,512))),ext
      ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",$QKTN_MAX
      (ABS(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
      (1,$QKTN_MAX(32,DW'length)))))+1,$QKTN_MAX(ABS((conv_integer((ext
      (DW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )-(conv_integer((ext(ext(SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std
      (512,$QKTN_MAX(DW'length,32)),$QKTN_MAX(DW'length,32))))))+1,512)))),ABS
      (conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
      (1,$QKTN_MAX(32,DW'length)))))+1),ABS(conv_integer((ext(XW,$QKTN_MAX
      (32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1) ;
    END IF;
    xdata <= TRANSPORT xdata_DUMMY4;
  END PROCESS ;
  Generate1 : IF genblk1 : (ext(DW,$QKTN_MAX(DW'length,32)) <= integer_to_std
  (512,$QKTN_MAX(DW'length,32))) GENERATE
  BEGIN

    PROCESS --:o442
    (*)
    BEGIN
      xcbid <= ocbid ;
      xlen <= olen ;
    END PROCESS ;

    PROCESS --:o446
    (fclk)
    BEGIN
      IF (fclk'event AND fclk = '1') THEN
        IF (DUMMY0 = '1') THEN
          ack <= ireq ;
          en <= '0' ;
        ELSIF (((((tkout)='1' AND (NOT(tkin))='1') AND (NOT(Rtkin))='1') AND 
        (NOT(CGFfull_DUMMY0))='1')) THEN
          en <= '1' ;
          ack <= oreq ;
        ELSE
          en <= '0' ;
        END IF;
      END IF ;
    END PROCESS ;
  ELSE DUMMY9 : GENERATE
  BEGIN

    PROCESS --:o460
      VARIABLE xlen_DUMMY5 : std_logic_vector(11 DOWNTO 0) ;
      VARIABLE sel_DUMMY6 : std_logic_vector(conv_integer(SEL1) DOWNTO 0) ;
    BEGIN
      WAIT UNTIL (fclk'event AND fclk = '1') ;
      IF (DUMMY0 = '1') THEN
        ack <= ireq ;
        en <= '0' ;
      ELSIF (((((tkout)='1' AND (NOT(tkin))='1') AND (NOT(Rtkin))='1') AND (NOT
      (CGFfull_DUMMY0))='1')) THEN
        xlen_DUMMY5 := olen ;
        xcbid <= ocbid ;
        sel_DUMMY6 := ext("1",ABS(conv_integer(SEL1))+1) ;
        en <= '1' ;
        WHILE( ext(xlen_DUMMY5,32) > "00000000000000000000000000010000" ) LOOP
         --:o470
          WAIT UNTIL (fclk'event AND fclk = '1') ;
          IF (NOT(CGFfull_DUMMY0) = '1') THEN
            xlen_DUMMY5 := ext((ext(xlen_DUMMY5,32) -
             "00000000000000000000000000010000"),12) ;
            sel_DUMMY6 := shl(sel_DUMMY6,integer_to_std(1,32)) ;
            xcbid <= std_logic_vector'("11111111111111111111") ;
          END IF;
        END LOOP;
        ack <= oreq ;
      ELSE
        en <= '0' ;
      END IF;
      xlen <= TRANSPORT xlen_DUMMY5;
      sel <= sel_DUMMY6;
    END PROCESS ;
  END GENERATE ;

  PROCESS --:o487
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF ((CLBfull_DUMMY3 = '0')) THEN
        ireqR <= ireq ;
      END IF;
    END IF ;
  END PROCESS ;
  CLBreq <= '1' WHEN (enq)='1' ELSE 'Z' ;
  CGFtsReq <= '1' WHEN ((ext(enq,USETIME'length) AND ext(USETIME,USETIME'length)
  )/="0") ELSE 'Z' ;
  qi : Q_EV_WOR_START
    PORT MAP (
       CLBreqWhileFull
    ) ;
  Generate2 : IF genblk2 : (SHARE = 0) GENERATE
  BEGIN

    PROCESS --:o500
    (*)
      VARIABLE _zzLB_DUMMY7 : DUMMY8(0 TO conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32))))) ;
      CONSTANT DUMMY10 : integer := ABS(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      VARIABLE DUMMY11 : std_logic_vector(1 TO DUMMY10+1) ;
    BEGIN
      _zzLB_DUMMY7 := _zzLB;
      _zzLB_DUMMY7(conv_integer(CLBwr_DUMMY2((LBADW - 1) DOWNTO 0))) := ext
      (std_logic_vector'(ireq & idata),ABS(conv_integer((ext(BW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY11 := ext(_zzLB_DUMMY7(conv_integer(CLBrd_DUMMY1((LBADW - 1) DOWNTO 0
      ))),ABS(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+2) ;
      odata <= DUMMY11(2 TO DUMMY10+1) ;
      oreq <= DUMMY11(1) ;
      ocbid <= cbid ;
      olen <= len ;
      _zzLB <= TRANSPORT _zzLB_DUMMY7;
    END PROCESS ;
  ELSIF DUMMY12 : (SHARE = 1) GENERATE
  BEGIN

    PROCESS --:o507
    (*)
      VARIABLE _zzLB_DUMMY8 : DUMMY8(0 TO conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32))))) ;
      CONSTANT DUMMY13 : integer := ABS(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      VARIABLE DUMMY14 : std_logic_vector(1 TO DUMMY13+13) ;
    BEGIN
      _zzLB_DUMMY8 := _zzLB;
      _zzLB_DUMMY8(conv_integer(CLBwr_DUMMY2((LBADW - 1) DOWNTO 0))) := ext
      (std_logic_vector'(ireq & idata & len),ABS(conv_integer((ext(BW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY14 := ext(_zzLB_DUMMY8(conv_integer(CLBrd_DUMMY1((LBADW - 1) DOWNTO 0
      ))),ABS(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+14) ;
      olen <= DUMMY14(DUMMY13+2 TO DUMMY13+13) ;
      odata <= DUMMY14(2 TO DUMMY13+1) ;
      oreq <= DUMMY14(1) ;
      ocbid <= cbid ;
      _zzLB <= TRANSPORT _zzLB_DUMMY8;
    END PROCESS ;
  ELSIF DUMMY15 : (SHARE = 2) GENERATE
  BEGIN

    PROCESS --:o513
    (*)
      VARIABLE _zzLB_DUMMY9 : DUMMY8(0 TO conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32))))) ;
      CONSTANT DUMMY16 : integer := ABS(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      VARIABLE DUMMY17 : std_logic_vector(1 TO DUMMY16+21) ;
    BEGIN
      _zzLB_DUMMY9 := _zzLB;
      _zzLB_DUMMY9(conv_integer(CLBwr_DUMMY2((LBADW - 1) DOWNTO 0))) := ext
      (std_logic_vector'(ireq & idata & cbid),ABS(conv_integer((ext(BW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY17 := ext(_zzLB_DUMMY9(conv_integer(CLBrd_DUMMY1((LBADW - 1) DOWNTO 0
      ))),ABS(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+22) ;
      ocbid <= DUMMY17(DUMMY16+2 TO DUMMY16+21) ;
      odata <= DUMMY17(2 TO DUMMY16+1) ;
      oreq <= DUMMY17(1) ;
      olen <= len ;
      _zzLB <= TRANSPORT _zzLB_DUMMY9;
    END PROCESS ;
  ELSE DUMMY18 : GENERATE
  BEGIN

    PROCESS --:o519
    (*)
      VARIABLE _zzLB_DUMMY10 : DUMMY8(0 TO conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32))))) ;
      CONSTANT DUMMY19 : integer := ABS(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      VARIABLE DUMMY20 : std_logic_vector(1 TO DUMMY19+33) ;
    BEGIN
      _zzLB_DUMMY10 := _zzLB;
      _zzLB_DUMMY10(conv_integer(CLBwr_DUMMY2((LBADW - 1) DOWNTO 0))) := ext
      (std_logic_vector'(ireq & idata & cbid & len),ABS(conv_integer((ext
      (BW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )+1) ;
      DUMMY20 := ext(_zzLB_DUMMY10(conv_integer(CLBrd_DUMMY1((LBADW - 1) DOWNTO
       0))),ABS(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+34) ;
      olen <= DUMMY20(DUMMY19+22 TO DUMMY19+33) ;
      ocbid <= DUMMY20(DUMMY19+2 TO DUMMY19+21) ;
      odata <= DUMMY20(2 TO DUMMY19+1) ;
      oreq <= DUMMY20(1) ;
      _zzLB <= TRANSPORT _zzLB_DUMMY10;
    END PROCESS ;
  END GENERATE ;
  Generate3 : IF genblk3 : ((IS_SV_CHANNEL)/=0) GENERATE
    SIGNAL DUMMY2 : std_logic ;
    SIGNAL DUMMY3 : std_logic ;
    SIGNAL DUMMY4 : std_logic ;
    SIGNAL DUMMY5 : std_logic_vector(3 DOWNTO 0) ;
    SIGNAL DUMMY6 : std_logic_vector(3 DOWNTO 0) ;
    SIGNAL DUMMY7 : std_logic ;
  BEGIN
    b0 : ixc_bind
      PORT MAP (
         CGFtsReq
        ,DUMMY2
      ) ;
    b1 : ixc_bind
      PORT MAP (
         CGFfull_DUMMY0
        ,DUMMY3
      ) ;
    b2 : ixc_bind
      PORT MAP (
         CLBreq
        ,DUMMY4
      ) ;
    b3 : ixc_bind
      GENERIC MAP(W => 4)
      PORT MAP (
         CLBrd_DUMMY1
        ,DUMMY5
      ) ;
    b4 : ixc_bind
      GENERIC MAP(W => 4)
      PORT MAP (
         CLBwr_DUMMY2
        ,DUMMY6
      ) ;
    b5 : ixc_bind
      PORT MAP (
         CLBfull_DUMMY3
        ,DUMMY7
      ) ;
  END GENERATE ;
  _zzqnthw : Q_NOT_TOUCH
     ;
END module;