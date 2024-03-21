architecture module of ixc_dist_sfifo_port is
  type DUMMY0 is array(integer range <>) of std_logic_vector((IFIFO_WORD_SIZE -
   1) downto 0) ;
  type DUMMY1 is array(integer range <>) of std_logic_vector((OFIFO_WORD_SIZE -
   1) downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal callr : std_logic ;
  attribute _2_state_ of callr: signal is 1 ;
  signal ififo : DUMMY0(conv_integer((ext(CAPACITY,$QKTN_MAX(CAPACITY'length,32)
  ) - integer_to_std(1,$QKTN_MAX(CAPACITY'length,32)))) downto 0) ;
  attribute _2_state_ of ififo: signal is 1 ;
  signal iptr : std_logic_vector((LOG2_CAPACITY - 1) downto 0) ;
  attribute _2_state_ of iptr: signal is 1 ;
  signal idata : std_logic_vector((IFIFO_WORD_SIZE - 1) downto 0) ;
  attribute _2_state_ of idata: signal is 1 ;
  signal ctl : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of ctl: signal is 1 ;
  signal sfifoCount : std_logic_vector(47 downto 0) ;
  attribute _2_state_ of sfifoCount: signal is 1 ;
  signal nmark : std_logic ;
  attribute _2_state_ of nmark: signal is 1 ;
  signal mark : std_logic_vector(conv_integer((ext(CAPACITY,$QKTN_MAX
  (CAPACITY'length,32)) - integer_to_std(1,$QKTN_MAX(CAPACITY'length,32))))
   downto 0) ;
  attribute _2_state_ of mark: signal is 1 ;
  signal active : std_logic ;
  attribute _2_state_ of active: signal is 1 ;
  signal ofifo : DUMMY1(conv_integer((ext(CAPACITY,$QKTN_MAX(CAPACITY'length,32)
  ) - integer_to_std(1,$QKTN_MAX(CAPACITY'length,32)))) downto 0) ;
  attribute _2_state_ of ofifo: signal is 1 ;
  signal optr : std_logic_vector((LOG2_CAPACITY - 1) downto 0) ;
  attribute _2_state_ of optr: signal is 1 ;
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack ififo
  -- quickturn use_hardmacro_pack ofifo

begin

  process --:o1320
  (**) -- always_comb
  begin
    $axis_pulse( call, callr);
  end process ;

  process --:o1324
  (fclk)
    variable active_DUMMY0 : std_logic ;
    variable idata_DUMMY1 : std_logic_vector((IFIFO_WORD_SIZE - 1) downto 0) ;
    variable ctl_DUMMY2 : std_logic_vector(63 downto 0) ;
    variable nmark_DUMMY3 : std_logic ;
  begin
    if (fclk'event and fclk = '1') then
      fen <= '0' ;
      if (active_DUMMY0 = '1') then
        if (sfifoCount = CsfifoCount) then
          callr <= not(callr) ;
          fen <= '1' ;
          active_DUMMY0 := '0' ;
        end if;
      else
        idata_DUMMY1 := ififo(conv_integer(iptr)) ;
        iarg <= ext(idata_DUMMY1(IARGW1 downto 0),abs(IARGW1)+1) ;
        ctl_DUMMY2 := idata_DUMMY1((IFIFO_WORD_SIZE - 1) downto (IFIFO_WORD_SIZE
         - 64)) ;
        nmark_DUMMY3 := ctl_DUMMY2(0) ;
        sfifoCount <= ctl_DUMMY2(48 downto 1) ;
        active_DUMMY0 := boolean_to_std(nmark_DUMMY3 /= mark(conv_integer(iptr))
        ) ;
        if (active_DUMMY0 = '1') then
          mark(conv_integer(iptr)) <= nmark_DUMMY3 ;
          iptr <= ext(ext(ext(iptr,$QKTN_MAX(abs((LOG2_CAPACITY - 1))+1,32)) +
           integer_to_std(1,$QKTN_MAX(abs((LOG2_CAPACITY - 1))+1,32)),abs(
          (LOG2_CAPACITY - 1))+1),abs((LOG2_CAPACITY - 1))+1) ;
        end if;
      end if;
    end if ;
    active <= transport active_DUMMY0;
    idata <= idata_DUMMY1;
    ctl <= ctl_DUMMY2;
    nmark <= nmark_DUMMY3;
  end process ;

  process --:o1349
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (fen = '1') then
        ofifo(conv_integer(optr)) <= ext(oarg,abs((OFIFO_WORD_SIZE - 1))+1) ;
        optr <= ext(ext(ext(optr,$QKTN_MAX(abs((LOG2_CAPACITY - 1))+1,32)) +
         integer_to_std(1,$QKTN_MAX(abs((LOG2_CAPACITY - 1))+1,32)),abs(
        (LOG2_CAPACITY - 1))+1),abs((LOG2_CAPACITY - 1))+1) ;
      end if;
    end if ;
  end process ;
  CsfifoDone <= '1' when (fen)='1' else 'Z' ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
