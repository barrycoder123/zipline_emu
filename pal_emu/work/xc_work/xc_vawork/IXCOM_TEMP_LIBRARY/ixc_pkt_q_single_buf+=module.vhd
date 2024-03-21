architecture module of ixc_pkt_q_single_buf is
  -- quickturn always_on
  type DUMMY0 is array(integer range <>) of std_logic_vector((512 - 1) downto 0)
   ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_uClkGen
    port (
    uclk : out std_logic ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal uClk : std_logic ;
  signal ixc_gf2_pkt_buf : DUMMY0(0 to conv_integer((ext(BUF_SIZE,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) ;
  attribute _2_state_ of ixc_gf2_pkt_buf: signal is 1 ;
  signal wptr : std_logic_vector(((ADDR_SIZE + LOG_NUM_WORDS_PER_FCLK) - 1)
   downto 0) ;
  attribute _2_state_ of wptr: signal is 1 ;
  signal i : integer ;
  attribute _2_state_ of i: signal is 1 ;
  signal pushCtlWord : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pushCtlWord: signal is 1 ;
  -- quickturn use_hardmacro_pack ixc_gf2_pkt_buf

begin
  uckg : ixc_uClkGen
    port map (
       uClk
    ) ;

  process --:o1200
  (*)
    variable wptr_DUMMY0 : std_logic_vector(((ADDR_SIZE + LOG_NUM_WORDS_PER_FCLK
    ) - 1) downto 0) ;
  begin
    wptr_DUMMY0 := wptr;
    wptr_DUMMY0 := ext(ext(ext(wptrP,$QKTN_MAX($QKTN_MAX(abs(((ADDR_SIZE +
     LOG_NUM_WORDS_PER_FCLK) - 1))+1,abs((ADDR_SIZE - 1))+1),$QKTN_MAX
    (WIDTH'length,32))) * ext(NUM_WORDS_PER_FCLK,$QKTN_MAX($QKTN_MAX(abs((
    (ADDR_SIZE + LOG_NUM_WORDS_PER_FCLK) - 1))+1,abs((ADDR_SIZE - 1))+1
    ),$QKTN_MAX(WIDTH'length,32))),abs(((ADDR_SIZE + LOG_NUM_WORDS_PER_FCLK) - 1
    ))+1),abs(((ADDR_SIZE + LOG_NUM_WORDS_PER_FCLK) - 1))+1) ;
    for i in 0 to integer'PRED(conv_integer(NUM_WORDS_PER_FCLK)) loop --:o1202
      if (wen = '1') then
        ixc_gf2_pkt_buf(conv_integer(wptr_DUMMY0)) <= data((i * 512)+(512-1)
         downto (i * 512)) ;
      end if;
      wptr_DUMMY0 := (ext(wptr_DUMMY0,abs(((ADDR_SIZE + LOG_NUM_WORDS_PER_FCLK)
       - 1))+1) + ext(wen,abs(((ADDR_SIZE + LOG_NUM_WORDS_PER_FCLK) - 1))+1)) ;
    end loop;
    wptr <= transport wptr_DUMMY0;
  end process ;

  process --:o1209
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      pushCtlWord(15 downto 0) <= ext(pushId,16) ;
      pushCtlWord(39 downto 16) <= ext(ext(ext(pushLen,$QKTN_MAX(abs((ADDR_SIZE
       - 1))+1,$QKTN_MAX(WIDTH'length,32))) * ext(NUM_WORDS_PER_FCLK,$QKTN_MAX
      (abs((ADDR_SIZE - 1))+1,$QKTN_MAX(WIDTH'length,32))),24),24) ;
      pushCtlWord(63 downto 40) <= ext(ext(ext(pushAddr,$QKTN_MAX(abs((ADDR_SIZE
       - 1))+1,$QKTN_MAX(WIDTH'length,32))) * ext(NUM_WORDS_PER_FCLK,$QKTN_MAX
      (abs((ADDR_SIZE - 1))+1,$QKTN_MAX(WIDTH'length,32))),24),24) ;
    end if ;
  end process ;

  process --:o1214
  (*)
  begin
    ixc_gf2_pkt_buf(conv_integer((ext(BUF_SIZE,$QKTN_MAX(WIDTH'length,32)) -
     integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) <= ext(pushCtlWord,512) ;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
