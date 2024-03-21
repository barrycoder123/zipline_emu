architecture module of ixc_q_poll_ctrl is
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
  signal GFLock : std_logic ;
  signal DUMMY2 : std_logic ;
  signal ackEn : std_logic ;
  attribute _2_state_ of ackEn: signal is 1 ;
  signal reqId : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of reqId: signal is 1 ;
  signal ackId : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of ackId: signal is 1 ;
  signal ixc_gf2_ack_buf : DUMMY3(0 to 3) ;
  attribute _2_state_ of ixc_gf2_ack_buf: signal is 1 ;
  signal pollState : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of pollState: signal is 1 ;

  procedure fsmPollEn ( signal GFReset  : in std_logic;  variable GFLock  : in
   std_logic;  signal pollState  : inout std_logic_vector(1 downto 0);  signal
   pollReq  : in std_logic;  signal reqId  : inout std_logic_vector(7 downto 0);
    variable ackId  : in std_logic_vector(7 downto 0);  signal pollEn  : out
   std_logic) is
    variable DUMMY4 : std_logic_vector(0 to 31) ;
  begin
    if (GFReset = '1') then
      reqId <= "00000000" ;
      pollEn <= '0' ;
      pollState <= "00" ;
    elsif ((GFLock = '0')) then
      DUMMY4 := ext(pollState,32);

      case DUMMY4  is
        when  "00000000000000000000000000000000"  =>
          if (pollReq = '1') then
            reqId <= ext((ext(reqId,32) + "00000000000000000000000000000001"),8)
             ;
            pollEn <= '1' ;
            pollState <= "01" ;
          end if;
        when  "00000000000000000000000000000001"  =>
          if (ackId = reqId) then
            pollEn <= '0' ;
            pollState <= "10" ;
          end if;
        when  "00000000000000000000000000000010"  =>
          pollState <= "00" ;
        when others => null ;
      end case;
    end if;
  end fsmPollEn;
  -- quickturn use_hardmacro_pack ixc_gf2_ack_buf
  -- quickturn fast_clock fclk

begin
  DUMMY0 <= '1' ;
  GFLock <= '0' ;
  DUMMY2 <= '1' when ackEn = '1' else 'Z' ;
  reqId0 <= reqId(0) ;

  process --:o230
  (*)
    variable ackId_DUMMY0 : std_logic_vector(7 downto 0) ;
  begin
    ackId_DUMMY0 := ackId;
    ackId_DUMMY0 := ext(ixc_gf2_ack_buf(0),8) ;
    ackEn <= boolean_to_std((ackId_DUMMY0 = reqId and ext(pollState,32) =
     "00000000000000000000000000000001")) ;
    ackId <= transport ackId_DUMMY0;
  end process ;
  Generate1 : if genblk1 : ((IS_PTM)='1') generate
  begin
    uckg : ixc_uClkGen
      port map (
         uClk
      ) ;
  end generate ;
  Generate2 : if genblk2 : ((IS_PTM)='1') generate
  begin

    process --:o238
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        fsmPollEn(DUMMY1,GFLock,pollState,pollReq,reqId,ackId,pollEn) ;
      end if ;
    end process ;
  else DUMMY5 : generate
  begin

    process --:o238
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        fsmPollEn(DUMMY1,GFLock,pollState,pollReq,reqId,ackId,pollEn) ;
      end if ;
    end process ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
