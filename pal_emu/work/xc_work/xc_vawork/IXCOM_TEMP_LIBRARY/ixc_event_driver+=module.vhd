architecture module of ixc_event_driver is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal _zzsR : std_logic_vector((WIDTH - 1) downto 0) ;
  attribute _2_state_ of _zzsR: signal is 1 ;
  signal _zzdR : std_logic ;
  attribute _2_state_ of _zzdR: signal is 1 ;
  -- quickturn fast_clock fclk

begin

  process --:o3441
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      _zzsR <= ext(sI,abs((WIDTH - 1))+1) ;
      _zzdR <= d ;
    end if ;
  end process ;
  d <= not(_zzdR) when ext(_zzsR,abs((WIDTH - 1))+1) /= ext(sI,abs((WIDTH - 1)
  )+1) else 'Z' ;
  sR <= ext(_zzsR,abs((WIDTH - 1))+1) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
