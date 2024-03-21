architecture module of ixc_mdrOn is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic_vector((WIDTH - 1) downto 0) ;
  attribute _2_state_ of DUMMY0: signal is 1 ;
  -- quickturn fast_clock fclk

begin

  process --:o3117
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      DUMMY0 <= ext(en,abs((WIDTH - 1))+1) ;
    end if ;
  end process ;
  enNxt <= not(en) ;
  drOn <= (ext(DUMMY0,abs((WIDTH - 1))+1) xor ext(en,abs((WIDTH - 1))+1)) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
