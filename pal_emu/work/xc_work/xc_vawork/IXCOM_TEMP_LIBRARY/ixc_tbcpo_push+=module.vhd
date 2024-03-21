architecture module of ixc_tbcpo_push is
  -- quickturn always_on
  type DUMMY3 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE ALWAYS_ON TRUE
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
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal reqId : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of reqId: signal is 1 ;
  signal ackId : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of ackId: signal is 1 ;
  signal ixc_gf2_req_buf : DUMMY3(0 to 1) ;
  attribute _2_state_ of ixc_gf2_req_buf: signal is 1 ;
  signal ixc_gf2_tbcpo_buf : DUMMY3(0 to 1) ;
  attribute _2_state_ of ixc_gf2_tbcpo_buf: signal is 1 ;
  signal pushEn : std_logic ;
  attribute _2_state_ of pushEn: signal is 1 ;
  signal pushAddr : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of pushAddr: signal is 1 ;
  signal pushLen : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of pushLen: signal is 1 ;
  signal pushId : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pushId: signal is 1 ;
  signal pushCtlWord : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pushCtlWord: signal is 1 ;

  procedure fsmTbcPOPush ( signal GFReset  : in std_logic;  signal GFLock  : in
   std_logic;  signal ackId  : inout std_logic_vector(63 downto 0);  variable
   reqId  : in std_logic_vector(63 downto 0);  signal tbcPO  : in std_logic; 
   signal pushEn  : out std_logic;  signal pushId  : out std_logic_vector(63
   downto 0);  signal pushAddr  : out std_logic_vector(7 downto 0);  signal
   pushLen  : out std_logic_vector(7 downto 0)) is
  begin
    if (GFReset = '1') then
      ackId <=
       "0000000000000000000000000000000000000000000000000000000000000000" ;
      pushEn <= '0' ;
      pushId <=
       "0000000000000000000000000000000000000000000000000000000000000000" ;
    elsif ((GFLock = '0')) then
      if (((tbcPO)='1' and reqId /= ackId)) then
        ackId <= reqId ;
        pushEn <= '1' ;
        pushAddr <= "00000000" ;
        pushLen <= "00000001" ;
        pushId <= reqId ;
      else
        pushEn <= '0' ;
      end if;
    end if;
  end fsmTbcPOPush;
  -- quickturn use_hardmacro_pack ixc_gf2_req_buf
  -- quickturn use_hardmacro_pack ixc_gf2_tbcpo_buf
  -- quickturn fast_clock fclk

begin
  uckg : ixc_uClkGen
    port map (
       uClk
    ) ;

  process --:o299
  (*)
  begin
    reqId <= ixc_gf2_req_buf(0) ;
    ixc_gf2_tbcpo_buf(0) <= ext(DUMMY2,64) ;
  end process ;
  Generate1 : if genblk1 : ((IS_PTM)='1') generate
  begin

    process --:o304
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        fsmTbcPOPush
        (DUMMY0,DUMMY1,ackId,reqId,DUMMY2,pushEn,pushId,pushAddr,pushLen) ;
      end if ;
    end process ;
  else DUMMY4 : generate
  begin

    process --:o304
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        fsmTbcPOPush
        (DUMMY0,DUMMY1,ackId,reqId,DUMMY2,pushEn,pushId,pushAddr,pushLen) ;
      end if ;
    end process ;
  end generate ;

  process --:o326
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      pushCtlWord(15 downto 0) <= ext(pushId,16) ;
      pushCtlWord(39 downto 16) <= ext(pushLen,24) ;
      pushCtlWord(63 downto 40) <= ext(pushAddr,24) ;
    end if ;
  end process ;

  process --:o331
  (*)
  begin
    ixc_gf2_tbcpo_buf(1) <= pushCtlWord ;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
