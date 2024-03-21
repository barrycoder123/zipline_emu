architecture module of ixc_ev is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal _zzsr : std_logic_vector((W - 1) downto 0) ;
  attribute _2_state_ of _zzsr: signal is 1 ;
  -- quickturn fast_clock fclk

begin

  process --:o2692
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY0 = '1') then
        _zzsr <= ext(s,abs((W - 1))+1) ;
      end if;
    end if ;
  end process ;
  ev <= (DUMMY0 and boolean_to_std(ext(_zzsr,abs((W - 1))+1) /= ext(s,abs((W - 1
  ))+1))) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
