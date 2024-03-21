architecture module of ixc_gfifo_port is
  type DUMMY8 is array(integer range <>) of std_logic_vector(conv_integer((ext
  (BW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
   downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_CCLKCHK
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_EV_WOR_START
    port (
    A : in std_logic := 'X' ) ;
  end component ;

  component ixc_bind
    generic (
      W : integer := 1
    ) ;
    port (
      L : inout std_logic_vector((W - 1) downto 0) := (others => 'X') ;
    DUMMY0 : inout std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal enq : std_logic ;
  signal CLBreqWhileFull : std_logic ;
  signal DUMMY1 : std_logic ;
  signal en : std_logic ;
  attribute _2_state_ of en: signal is 1 ;
  signal ack : std_logic ;
  attribute _2_state_ of ack: signal is 1 ;
  signal odata : std_logic_vector(conv_integer((ext(DW,$QKTN_MAX(DW'length,32))
   - integer_to_std(1,$QKTN_MAX(DW'length,32)))) downto 0) ;
  attribute _2_state_ of odata: signal is 1 ;
  signal oreq : std_logic ;
  attribute _2_state_ of oreq: signal is 1 ;
  signal ocbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of ocbid: signal is 1 ;
  signal xcbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of xcbid: signal is 1 ;
  signal olen : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of olen: signal is 1 ;
  signal xlen : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of xlen: signal is 1 ;
  signal sel : std_logic_vector(conv_integer(SEL1) downto 0) ;
  attribute _2_state_ of sel: signal is 1 ;
  signal xdata : std_logic_vector(conv_integer((ext(XW,$QKTN_MAX(32,DW'length))
   - integer_to_std(1,$QKTN_MAX(32,DW'length)))) downto 0) ;
  attribute _2_state_ of xdata: signal is 1 ;
  signal _zzLB : DUMMY8(0 to conv_integer((ext(BUFL,$QKTN_MAX(BUFL'length,32)) -
   integer_to_std(1,$QKTN_MAX(BUFL'length,32))))) ;
  attribute _2_state_ of _zzLB: signal is 1 ;
  signal i : integer ;
  signal ireqR : std_logic ;
  attribute _2_state_ of ireqR: signal is 1 ;
  -- quickturn fast_clock fclk
  -- quickturn no_hardmacro _zzLB

begin
  CGFfull_DUMMY0 <= CGFfull;
  CLBrd_DUMMY1 <= CLBrd;
  CLBwr_DUMMY2 <= CLBwr;
  CLBfull_DUMMY3 <= CLBfull;
  enq <= ((ireq xor ireqR) and not(DUMMY0)) ;
  CLBreqWhileFull <= (enq and CLBfull_DUMMY3) ;
  DUMMY1 <= '1' when CLBreqWhileFull = '1' else 'Z' ;
  cchk : Q_CCLKCHK
    port map (
       ireq
    ) ;
  tkout <= boolean_to_std(oreq /= ack) ;
  CGFcbid <= xcbid when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZZZZZZZZZ")
   ;
  CGFlen <= xlen when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZ") ;
  CGFidata(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
  (1,$QKTN_MAX(32,DW'length)))) downto 0) <= ext(xdata,abs(conv_integer((ext
  (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1)
   when (en)='1' else ext(it_multiple_concat(std_logic'('Z'),conv_integer(XW)
  ),abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
  (1,$QKTN_MAX(32,DW'length)))))+1) ;

  process --:o408
  (*)
    variable xdata_DUMMY4 : std_logic_vector(conv_integer((ext(XW,$QKTN_MAX
    (32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))) downto 0) ;
  begin
    xdata_DUMMY4 := xdata;
    if (ext(DW,$QKTN_MAX(DW'length,32)) <= integer_to_std(512,$QKTN_MAX
    (DW'length,32))) then
      xdata_DUMMY4 := ext(odata,abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)
      ) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1) ;
    else
      xdata_DUMMY4 := ext
      ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",abs
      (conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
      (1,$QKTN_MAX(32,DW'length)))))+1) ;
      for i in 0 to integer'PRED(conv_integer(SEL1)) loop --:o413
        xdata_DUMMY4 := ext(ext(ext(xdata_DUMMY4,$QKTN_MAX(abs(conv_integer((ext
        (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))
        )))+1,512)) or it_cond_op((sel(i))='1',ext(odata((i * 512)+(512-1)
         downto (i * 512)),$QKTN_MAX(abs(conv_integer((ext(XW,$QKTN_MAX
        (32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1,512)
        ),ext
        ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",$QKTN_MAX
        (abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
        (1,$QKTN_MAX(32,DW'length)))))+1,512))),abs(conv_integer((ext
        (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))
        )))+1),abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) -
         integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1) ;
      end loop;
      xdata_DUMMY4 := ext(ext(ext(xdata_DUMMY4,$QKTN_MAX(abs(conv_integer((ext
      (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))))
      )+1,$QKTN_MAX(abs((conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))))-(conv_integer((ext(ext
      (SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std(512,$QKTN_MAX(DW'length,32
      )),$QKTN_MAX(DW'length,32))))))+1,512))) or it_cond_op((sel(conv_integer
      (SEL1)))='1',ext(odata(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))) downto conv_integer((ext(ext
      (SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std(512,$QKTN_MAX(DW'length,32
      )),$QKTN_MAX(DW'length,32))))),$QKTN_MAX(abs(conv_integer((ext
      (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))))
      )+1,$QKTN_MAX(abs((conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))))-(conv_integer((ext(ext
      (SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std(512,$QKTN_MAX(DW'length,32
      )),$QKTN_MAX(DW'length,32))))))+1,512))),ext
      ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",$QKTN_MAX
      (abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
      (1,$QKTN_MAX(32,DW'length)))))+1,$QKTN_MAX(abs((conv_integer((ext
      (DW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )-(conv_integer((ext(ext(SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std
      (512,$QKTN_MAX(DW'length,32)),$QKTN_MAX(DW'length,32))))))+1,512)))),abs
      (conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
      (1,$QKTN_MAX(32,DW'length)))))+1),abs(conv_integer((ext(XW,$QKTN_MAX
      (32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1) ;
    end if;
    xdata <= transport xdata_DUMMY4;
  end process ;
  Generate1 : if genblk1 : (ext(DW,$QKTN_MAX(DW'length,32)) <= integer_to_std
  (512,$QKTN_MAX(DW'length,32))) generate
  begin

    process --:o442
    (*)
    begin
      xcbid <= ocbid ;
      xlen <= olen ;
    end process ;

    process --:o446
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (DUMMY0 = '1') then
          ack <= ireq ;
          en <= '0' ;
        elsif (((((tkout)='1' and (not(tkin))='1') and (not(Rtkin))='1') and 
        (not(CGFfull_DUMMY0))='1')) then
          en <= '1' ;
          ack <= oreq ;
        else
          en <= '0' ;
        end if;
      end if ;
    end process ;
  else DUMMY9 : generate
  begin

    process --:o460
      variable xlen_DUMMY5 : std_logic_vector(11 downto 0) ;
      variable sel_DUMMY6 : std_logic_vector(conv_integer(SEL1) downto 0) ;
    begin
      wait until (fclk'event and fclk = '1') ;
      if (DUMMY0 = '1') then
        ack <= ireq ;
        en <= '0' ;
      elsif (((((tkout)='1' and (not(tkin))='1') and (not(Rtkin))='1') and (not
      (CGFfull_DUMMY0))='1')) then
        xlen_DUMMY5 := olen ;
        xcbid <= ocbid ;
        sel_DUMMY6 := ext("1",abs(conv_integer(SEL1))+1) ;
        en <= '1' ;
        while( ext(xlen_DUMMY5,32) > "00000000000000000000000000010000" ) loop
         --:o470
          wait until (fclk'event and fclk = '1') ;
          if (not(CGFfull_DUMMY0) = '1') then
            xlen_DUMMY5 := ext((ext(xlen_DUMMY5,32) -
             "00000000000000000000000000010000"),12) ;
            sel_DUMMY6 := shl(sel_DUMMY6,integer_to_std(1,32)) ;
            xcbid <= std_logic_vector'("11111111111111111111") ;
          end if;
        end loop;
        ack <= oreq ;
      else
        en <= '0' ;
      end if;
      xlen <= transport xlen_DUMMY5;
      sel <= sel_DUMMY6;
    end process ;
  end generate ;

  process --:o487
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if ((CLBfull_DUMMY3 = '0')) then
        ireqR <= ireq ;
      end if;
    end if ;
  end process ;
  CLBreq <= '1' when (enq)='1' else 'Z' ;
  CGFtsReq <= '1' when ((ext(enq,USETIME'length) and ext(USETIME,USETIME'length)
  )/="0") else 'Z' ;
  qi : Q_EV_WOR_START
    port map (
       CLBreqWhileFull
    ) ;
  Generate2 : if genblk2 : (SHARE = 0) generate
  begin

    process --:o500
    (*)
      variable _zzLB_DUMMY7 : DUMMY8(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32))))) ;
      constant DUMMY10 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY11 : std_logic_vector(1 to DUMMY10+1) ;
    begin
      _zzLB_DUMMY7 := _zzLB;
      _zzLB_DUMMY7(conv_integer(CLBwr_DUMMY2((LBADW - 1) downto 0))) := ext
      (std_logic_vector'(ireq & idata),abs(conv_integer((ext(BW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY11 := ext(_zzLB_DUMMY7(conv_integer(CLBrd_DUMMY1((LBADW - 1) downto 0
      ))),abs(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+2) ;
      odata <= DUMMY11(2 to DUMMY10+1) ;
      oreq <= DUMMY11(1) ;
      ocbid <= cbid ;
      olen <= len ;
      _zzLB <= transport _zzLB_DUMMY7;
    end process ;
  elsif DUMMY12 : (SHARE = 1) generate
  begin

    process --:o507
    (*)
      variable _zzLB_DUMMY8 : DUMMY8(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32))))) ;
      constant DUMMY13 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY14 : std_logic_vector(1 to DUMMY13+13) ;
    begin
      _zzLB_DUMMY8 := _zzLB;
      _zzLB_DUMMY8(conv_integer(CLBwr_DUMMY2((LBADW - 1) downto 0))) := ext
      (std_logic_vector'(ireq & idata & len),abs(conv_integer((ext(BW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY14 := ext(_zzLB_DUMMY8(conv_integer(CLBrd_DUMMY1((LBADW - 1) downto 0
      ))),abs(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+14) ;
      olen <= DUMMY14(DUMMY13+2 to DUMMY13+13) ;
      odata <= DUMMY14(2 to DUMMY13+1) ;
      oreq <= DUMMY14(1) ;
      ocbid <= cbid ;
      _zzLB <= transport _zzLB_DUMMY8;
    end process ;
  elsif DUMMY15 : (SHARE = 2) generate
  begin

    process --:o513
    (*)
      variable _zzLB_DUMMY9 : DUMMY8(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32))))) ;
      constant DUMMY16 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY17 : std_logic_vector(1 to DUMMY16+21) ;
    begin
      _zzLB_DUMMY9 := _zzLB;
      _zzLB_DUMMY9(conv_integer(CLBwr_DUMMY2((LBADW - 1) downto 0))) := ext
      (std_logic_vector'(ireq & idata & cbid),abs(conv_integer((ext(BW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1) ;
      DUMMY17 := ext(_zzLB_DUMMY9(conv_integer(CLBrd_DUMMY1((LBADW - 1) downto 0
      ))),abs(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+22) ;
      ocbid <= DUMMY17(DUMMY16+2 to DUMMY16+21) ;
      odata <= DUMMY17(2 to DUMMY16+1) ;
      oreq <= DUMMY17(1) ;
      olen <= len ;
      _zzLB <= transport _zzLB_DUMMY9;
    end process ;
  else DUMMY18 : generate
  begin

    process --:o519
    (*)
      variable _zzLB_DUMMY10 : DUMMY8(0 to conv_integer((ext(BUFL,$QKTN_MAX
      (BUFL'length,32)) - integer_to_std(1,$QKTN_MAX(BUFL'length,32))))) ;
      constant DUMMY19 : integer := abs(conv_integer((ext(DW,$QKTN_MAX
      (DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32)))))+1 ;
      variable DUMMY20 : std_logic_vector(1 to DUMMY19+33) ;
    begin
      _zzLB_DUMMY10 := _zzLB;
      _zzLB_DUMMY10(conv_integer(CLBwr_DUMMY2((LBADW - 1) downto 0))) := ext
      (std_logic_vector'(ireq & idata & cbid & len),abs(conv_integer((ext
      (BW,$QKTN_MAX(DW'length,32)) - integer_to_std(1,$QKTN_MAX(DW'length,32))))
      )+1) ;
      DUMMY20 := ext(_zzLB_DUMMY10(conv_integer(CLBrd_DUMMY1((LBADW - 1) downto
       0))),abs(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) - integer_to_std
      (1,$QKTN_MAX(DW'length,32)))))+34) ;
      olen <= DUMMY20(DUMMY19+22 to DUMMY19+33) ;
      ocbid <= DUMMY20(DUMMY19+2 to DUMMY19+21) ;
      odata <= DUMMY20(2 to DUMMY19+1) ;
      oreq <= DUMMY20(1) ;
      _zzLB <= transport _zzLB_DUMMY10;
    end process ;
  end generate ;
  Generate3 : if genblk3 : ((IS_SV_CHANNEL)/=0) generate
    signal DUMMY2 : std_logic ;
    signal DUMMY3 : std_logic ;
    signal DUMMY4 : std_logic ;
    signal DUMMY5 : std_logic_vector(3 downto 0) ;
    signal DUMMY6 : std_logic_vector(3 downto 0) ;
    signal DUMMY7 : std_logic ;
  begin
    b0 : ixc_bind
      port map (
         CGFtsReq
        ,DUMMY2
      ) ;
    b1 : ixc_bind
      port map (
         CGFfull_DUMMY0
        ,DUMMY3
      ) ;
    b2 : ixc_bind
      port map (
         CLBreq
        ,DUMMY4
      ) ;
    b3 : ixc_bind
      generic map(W => 4)
      port map (
         CLBrd_DUMMY1
        ,DUMMY5
      ) ;
    b4 : ixc_bind
      generic map(W => 4)
      port map (
         CLBwr_DUMMY2
        ,DUMMY6
      ) ;
    b5 : ixc_bind
      port map (
         CLBfull_DUMMY3
        ,DUMMY7
      ) ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
