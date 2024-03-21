architecture module of ixc_error is
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
  signal DUMMY0 : std_logic_vector(63 downto 0) ;
  signal errVal : std_logic_vector((SIZE - 1) downto 0) ;
  attribute _2_state_ of errVal: signal is 1 ;
  signal errTime : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of errTime: signal is 1 ;

  procedure fsmError ( variable errVal  : inout std_logic_vector((SIZE - 1)
   downto 0);  signal errCond  : in std_logic;  signal simTime  : in
   std_logic_vector(63 downto 0);  variable errTime  : out std_logic_vector(63
   downto 0)) is
  begin
    if (((errCond)='1' and (and_reduce(errVal) = '0'))) then
      if (ext(errVal,$QKTN_MAX(abs((SIZE - 1))+1,32)) = integer_to_std
      (0,$QKTN_MAX(abs((SIZE - 1))+1,32))) then
        errTime := simTime ;
      end if;
      errVal := (ext(errVal,abs((SIZE - 1))+1) + ext("1",abs((SIZE - 1))+1)) ;
    end if;
  end fsmError;
  -- quickturn fast_clock fclk

begin
  Generate1 : if genblk1 : ((UCLK_COND)/=0) generate
  begin
    uckg : ixc_uClkGen
      port map (
         uClk
      ) ;
  end generate ;
  Generate2 : if genblk2 : ((UCLK_COND)/=0) generate
  begin

    process --:o157
    (uClk)
      variable errVal_DUMMY0 : std_logic_vector((SIZE - 1) downto 0) ;
    begin
      if (uClk'event and uClk = '1') then
        fsmError(errVal_DUMMY0,errCond,DUMMY0,errTime) ;
      end if ;
      errVal <= transport errVal_DUMMY0;
    end process ;
  else DUMMY1 : generate
  begin

    process --:o157
    (fclk)
      variable errVal_DUMMY1 : std_logic_vector((SIZE - 1) downto 0) ;
    begin
      if (fclk'event and fclk = '1') then
        fsmError(errVal_DUMMY1,errCond,DUMMY0,errTime) ;
      end if ;
      errVal <= transport errVal_DUMMY1;
    end process ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
