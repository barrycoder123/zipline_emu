architecture module of ixc_scg_gfifo_port is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_CCLKCHK
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic_vector(19 downto 0) ;
  signal DUMMY2 : std_logic_vector(11 downto 0) ;
  signal DUMMY3 : std_logic_vector((512 - 1) downto 0) ;
  signal DUMMY4 : std_logic ;
  signal DUMMY5 : std_logic ;
  signal enq : std_logic ;
  signal en : std_logic ;
  attribute _2_state_ of en: signal is 1 ;
  signal ack : std_logic ;
  attribute _2_state_ of ack: signal is 1 ;
  signal xcbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of xcbid: signal is 1 ;
  signal xlen : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of xlen: signal is 1 ;
  signal sel : std_logic_vector(conv_integer(SEL1) downto 0) ;
  attribute _2_state_ of sel: signal is 1 ;
  signal xdata : std_logic_vector(conv_integer((ext(XW,$QKTN_MAX(32,DW'length))
   - integer_to_std(1,$QKTN_MAX(32,DW'length)))) downto 0) ;
  attribute _2_state_ of xdata: signal is 1 ;
  signal i : integer ;
  signal ireqD : std_logic ;
  attribute _2_state_ of ireqD: signal is 1 ;
  -- quickturn fast_clock fclk

begin
  enq <= ((ireq xor ireqD) and not(DUMMY4)) ;
  cchk : Q_CCLKCHK
    port map (
       ireq
    ) ;
  tkout <= boolean_to_std(ireq /= ack) ;
  DUMMY1 <= xcbid when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZZZZZZZZZ") ;
  DUMMY2 <= xlen when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZ") ;
  DUMMY3(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
  (1,$QKTN_MAX(32,DW'length)))) downto 0) <= ext(xdata,abs(conv_integer((ext
  (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1)
   when (en)='1' else ext(it_multiple_concat(std_logic'('Z'),conv_integer(XW)
  ),abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
  (1,$QKTN_MAX(32,DW'length)))))+1) ;

  process --:o842
  (*)
    variable xdata_DUMMY0 : std_logic_vector(conv_integer((ext(XW,$QKTN_MAX
    (32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length)))) downto 0) ;
  begin
    xdata_DUMMY0 := xdata;
    if (ext(DW,$QKTN_MAX(DW'length,32)) <= integer_to_std(512,$QKTN_MAX
    (DW'length,32))) then
      xdata_DUMMY0 := ext(idata,abs(conv_integer((ext(XW,$QKTN_MAX(32,DW'length)
      ) - integer_to_std(1,$QKTN_MAX(32,DW'length)))))+1) ;
    else
      xdata_DUMMY0 := ext
      ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",abs
      (conv_integer((ext(XW,$QKTN_MAX(32,DW'length)) - integer_to_std
      (1,$QKTN_MAX(32,DW'length)))))+1) ;
      for i in 0 to integer'PRED(conv_integer(SEL1)) loop --:o848
        xdata_DUMMY0 := ext(ext(ext(xdata_DUMMY0,$QKTN_MAX(abs(conv_integer((ext
        (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))
        )))+1,512)) or it_cond_op((sel(i))='1',ext(idata((i * 512)+(512-1)
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
      xdata_DUMMY0 := ext(ext(ext(xdata_DUMMY0,$QKTN_MAX(abs(conv_integer((ext
      (XW,$QKTN_MAX(32,DW'length)) - integer_to_std(1,$QKTN_MAX(32,DW'length))))
      )+1,$QKTN_MAX(abs((conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
       integer_to_std(1,$QKTN_MAX(DW'length,32)))))-(conv_integer((ext(ext
      (SEL1,$QKTN_MAX(DW'length,32)) * integer_to_std(512,$QKTN_MAX(DW'length,32
      )),$QKTN_MAX(DW'length,32))))))+1,512))) or it_cond_op((sel(conv_integer
      (SEL1)))='1',ext(idata(conv_integer((ext(DW,$QKTN_MAX(DW'length,32)) -
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
    xdata <= transport xdata_DUMMY0;
  end process ;
  Generate1 : if genblk1 : (ext(DW,$QKTN_MAX(DW'length,32)) <= integer_to_std
  (512,$QKTN_MAX(DW'length,32))) generate
  begin

    process --:o856
    (*)
    begin
      xcbid <= cbid ;
      xlen <= ext(it_cond_op(((DUMMY5)='1' and (len(0) = '0')),(ext(len,32) +
       "00000000000000000000000000000001"),ext(len,32)),12) ;
    end process ;

    process --:o860
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (DUMMY4 = '1') then
          ack <= ireq ;
          en <= '0' ;
        elsif (((tkout)='1' and (not(tkin))='1')) then
          en <= '1' ;
          ack <= ireq ;
        else
          en <= '0' ;
        end if;
      end if ;
    end process ;
  else DUMMY6 : generate
  begin

    process --:o874
      variable xlen_DUMMY1 : std_logic_vector(11 downto 0) ;
      variable sel_DUMMY2 : std_logic_vector(conv_integer(SEL1) downto 0) ;
    begin
      wait until (fclk'event and fclk = '1') ;
      if (DUMMY4 = '1') then
        ack <= ireq ;
        en <= '0' ;
      elsif (((tkout)='1' and (not(tkin))='1')) then
        xcbid <= cbid ;
        xlen_DUMMY1 := ext(it_cond_op(((DUMMY5)='1' and (len(0) = '0')),(ext
        (len,32) + "00000000000000000000000000000001"),ext(len,32)),12) ;
        sel_DUMMY2 := ext("1",abs(conv_integer(SEL1))+1) ;
        en <= '1' ;
        while( ext(xlen_DUMMY1,32) > "00000000000000000000000000010000" ) loop
         --:o884
          wait until (fclk'event and fclk = '1') ;
          xcbid <= std_logic_vector'("11111111111111111111") ;
          xlen_DUMMY1 := ext((ext(xlen_DUMMY1,32) -
           "00000000000000000000000000010000"),12) ;
          sel_DUMMY2 := shl(sel_DUMMY2,integer_to_std(1,32)) ;
        end loop;
        ack <= ireq ;
      else
        en <= '0' ;
      end if;
      xlen <= transport xlen_DUMMY1;
      sel <= sel_DUMMY2;
    end process ;
  end generate ;

  process --:o899
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      ireqD <= ireq ;
    end if ;
  end process ;
  DUMMY0 <= '1' when ((ext(enq,USETIME'length) and ext(USETIME,USETIME'length)
  )/="0") else 'Z' ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
