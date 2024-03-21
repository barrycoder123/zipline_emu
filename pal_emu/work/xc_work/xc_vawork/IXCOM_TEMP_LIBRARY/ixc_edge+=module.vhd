architecture module of ixc_edge is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal _zzsr : std_logic ;
  attribute _2_state_ of _zzsr: signal is 1 ;
  -- quickturn fast_clock fclk

begin

  process --:o2716
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY0 = '1') then
        _zzsr <= s ;
      end if;
    end if ;
  end process ;
  ev <= (DUMMY0 and boolean_to_std(((DIR = 0 and ((s)='1' and (not(_zzsr))='1'))
   or (DIR = 1 and ((not(s))='1' and (_zzsr)='1')) or (DIR = 2 and ((s xor _zzsr
  )='1'))))) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
