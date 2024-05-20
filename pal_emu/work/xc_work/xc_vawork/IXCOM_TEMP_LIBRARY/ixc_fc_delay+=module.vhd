architecture module of ixc_fc_delay is
  -- quickturn CVASTRPROP MODULE HDLICE ALWAYS_ON TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal DUMMY0 : std_logic ;
  signal _zz_Q : std_logic_vector((WIDTH - 1) downto 0) ;
  attribute _2_state_ of _zz_Q: signal is 1 ;

begin

  process --:o1728
  (DUMMY0)
  begin
    if (DUMMY0'event and DUMMY0 = '1') then
      _zz_Q <= ext(D,abs((WIDTH - 1))+1) ;
    end if ;
  end process ;
  Q <= ext(_zz_Q,abs((WIDTH - 1))+1) ;
end module;
