architecture module of ixc_gfifo_merge_port is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal i1reqActive : std_logic ;
  signal i1tgl : std_logic ;
  signal i1reqOV : std_logic ;
  attribute _2_state_ of i1reqOV: signal is 1 ;
  signal i1reqD : std_logic ;
  attribute _2_state_ of i1reqD: signal is 1 ;
  signal mcbid_reg : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of mcbid_reg: signal is 1 ;
  signal mlen_reg : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of mlen_reg: signal is 1 ;
  signal mdata_reg : std_logic_vector(conv_integer((ext(O_DW,$QKTN_MAX($QKTN_MAX
  (I1_DW'length,I2_DW'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (I1_DW'length,I2_DW'length),32)))) downto 0) ;
  attribute _2_state_ of mdata_reg: signal is 1 ;
  -- quickturn fast_clock fclk

begin
  mtgl <= (i1tgl or i2tgl) ;
  i1reqActive <= (i1req xor i1reqOV) ;
  i1tgl <= (i1req xor i1reqD) ;

  process --:o605
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if ((LBfull = '0')) then
        i1reqOV <= i1req ;
      end if;
    end if ;
  end process ;

  process --:o609
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      i1reqD <= i1req ;
    end if ;
  end process ;
  Generate1 : if genblk1 : ((LAST_IN_CHAIN)/=0) generate
    signal mreq_reg : std_logic ;
    attribute _2_state_ of mreq_reg: signal is 1 ;
  begin

    process --:o617
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (mtgl = '1') then
          mreq_reg <= not(mreq_reg) ;
        end if;
      end if ;
    end process ;
    mreq <= not(mreq_reg) when (mtgl)='1' else mreq_reg ;
  else DUMMY0 : generate
  begin
    mreq <= (i1reqActive or i2req) ;
  end generate ;

  process --:o629
  (*)
  begin
    if (i1reqActive = '1') then
      if (ext(i2cbid,32) = "00000000000000000000000000000000") then
        mcbid_reg <= i1cbid ;
      else
        mcbid_reg <= std_logic_vector'("11111111111111111100") ;
      end if;
      mlen_reg <= ext(((ext(i1len,32) + ext(i2len,32)) +
       "00000000000000000000000000000001"),12) ;
    else
      mcbid_reg <= i2cbid ;
      mlen_reg <= i2len ;
    end if;
  end process ;
  mcbid <= mcbid_reg ;
  mlen <= ext((ext(mlen_reg,32) - "00000000000000000000000000000001"),12) when (
  (LAST_IN_CHAIN)/=0 and mcbid_reg /= std_logic_vector'("11111111111111111100"))
   else mlen_reg ;

  process --:o649
  (*)
    variable DUMMY1 : std_logic_vector(0 to 1) ;
  begin
    DUMMY1 := std_logic_vector'(i1reqActive & i2req);

    case DUMMY1  is
      when  "00"  =>
        mdata_reg <= ext(it_multiple_concat(std_logic'('0'),conv_integer(O_DW)
        ),abs(conv_integer((ext(O_DW,$QKTN_MAX($QKTN_MAX
        (I1_DW'length,I2_DW'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
        (I1_DW'length,I2_DW'length),32)))))+1) ;
      when  "01"  =>
        mdata_reg <= ext(i2data,abs(conv_integer((ext(O_DW,$QKTN_MAX($QKTN_MAX
        (I1_DW'length,I2_DW'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
        (I1_DW'length,I2_DW'length),32)))))+1) ;
      when  "10"  =>
        mdata_reg <= ext(std_logic_vector'(i1data & i1len & i1cbid),abs
        (conv_integer((ext(O_DW,$QKTN_MAX($QKTN_MAX(I1_DW'length,I2_DW'length
        ),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX(I1_DW'length,I2_DW'length
        ),32)))))+1) ;
      when  "11"  =>
        mdata_reg <= ext(ext(it_cond_op(ext(I1_DW,$QKTN_MAX(I1_DW'length,32)) =
         integer_to_std(0,$QKTN_MAX(I1_DW'length,32)),ext(std_logic_vector'
        (i2data & i1len & i1cbid),$QKTN_MAX($QKTN_MAX(abs(conv_integer((ext
        (O_DW,$QKTN_MAX($QKTN_MAX(I1_DW'length,I2_DW'length),32)) -
         integer_to_std(1,$QKTN_MAX($QKTN_MAX(I1_DW'length,I2_DW'length),32))))
        )+1,abs(conv_integer(it_cond_op(ext(I2_DW,$QKTN_MAX(I2_DW'length,32)) =
         integer_to_std(0,$QKTN_MAX(I2_DW'length,32)),integer_to_std(0,$QKTN_MAX
        (I2_DW'length,32)),(ext(I2_DW,$QKTN_MAX(I2_DW'length,32)) -
         integer_to_std(1,$QKTN_MAX(I2_DW'length,32))))))+33),abs(conv_integer
        (it_cond_op(ext(I2_DW,$QKTN_MAX(I2_DW'length,32)) = integer_to_std
        (0,$QKTN_MAX(I2_DW'length,32)),integer_to_std(0,$QKTN_MAX
        (I2_DW'length,32)),(ext(I2_DW,$QKTN_MAX(I2_DW'length,32)) -
         integer_to_std(1,$QKTN_MAX(I2_DW'length,32))))))+abs(conv_integer((ext
        (I1_DW,$QKTN_MAX(I1_DW'length,32)) - integer_to_std(1,$QKTN_MAX
        (I1_DW'length,32)))))+34)),ext(std_logic_vector'(i2data & i1data & i1len
         & i1cbid),$QKTN_MAX($QKTN_MAX(abs(conv_integer((ext(O_DW,$QKTN_MAX
        ($QKTN_MAX(I1_DW'length,I2_DW'length),32)) - integer_to_std(1,$QKTN_MAX
        ($QKTN_MAX(I1_DW'length,I2_DW'length),32)))))+1,abs(conv_integer
        (it_cond_op(ext(I2_DW,$QKTN_MAX(I2_DW'length,32)) = integer_to_std
        (0,$QKTN_MAX(I2_DW'length,32)),integer_to_std(0,$QKTN_MAX
        (I2_DW'length,32)),(ext(I2_DW,$QKTN_MAX(I2_DW'length,32)) -
         integer_to_std(1,$QKTN_MAX(I2_DW'length,32))))))+33),abs(conv_integer
        (it_cond_op(ext(I2_DW,$QKTN_MAX(I2_DW'length,32)) = integer_to_std
        (0,$QKTN_MAX(I2_DW'length,32)),integer_to_std(0,$QKTN_MAX
        (I2_DW'length,32)),(ext(I2_DW,$QKTN_MAX(I2_DW'length,32)) -
         integer_to_std(1,$QKTN_MAX(I2_DW'length,32))))))+abs(conv_integer((ext
        (I1_DW,$QKTN_MAX(I1_DW'length,32)) - integer_to_std(1,$QKTN_MAX
        (I1_DW'length,32)))))+34))),abs(conv_integer((ext(O_DW,$QKTN_MAX
        ($QKTN_MAX(I1_DW'length,I2_DW'length),32)) - integer_to_std(1,$QKTN_MAX
        ($QKTN_MAX(I1_DW'length,I2_DW'length),32)))))+1),abs(conv_integer((ext
        (O_DW,$QKTN_MAX($QKTN_MAX(I1_DW'length,I2_DW'length),32)) -
         integer_to_std(1,$QKTN_MAX($QKTN_MAX(I1_DW'length,I2_DW'length),32))))
        )+1) ;
      when others => null ;
    end case;
  end process ;
  mdata <= ext(mdata_reg,abs(conv_integer((ext(O_DW,$QKTN_MAX($QKTN_MAX
  (I1_DW'length,I2_DW'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (I1_DW'length,I2_DW'length),32)))))+1) when not(((LAST_IN_CHAIN)/=0 and mcbid
   /= std_logic_vector'("11111111111111111100"))) else ext
  ("00000000000000000000000000000000",abs(conv_integer((ext(O_DW,$QKTN_MAX
  ($QKTN_MAX(I1_DW'length,I2_DW'length),32)) - integer_to_std(1,$QKTN_MAX
  ($QKTN_MAX(I1_DW'length,I2_DW'length),32)))))+1) when ext(O_DW,$QKTN_MAX
  ($QKTN_MAX(I1_DW'length,I2_DW'length),32)) <= integer_to_std(32,$QKTN_MAX
  ($QKTN_MAX(I1_DW'length,I2_DW'length),32)) else ext(mdata_reg(conv_integer(
  (ext(O_DW,$QKTN_MAX($QKTN_MAX(I1_DW'length,I2_DW'length),32)) - integer_to_std
  (1,$QKTN_MAX($QKTN_MAX(I1_DW'length,I2_DW'length),32)))) downto 32),abs
  (conv_integer((ext(O_DW,$QKTN_MAX($QKTN_MAX(I1_DW'length,I2_DW'length),32)) -
   integer_to_std(1,$QKTN_MAX($QKTN_MAX(I1_DW'length,I2_DW'length),32)))))+1) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
