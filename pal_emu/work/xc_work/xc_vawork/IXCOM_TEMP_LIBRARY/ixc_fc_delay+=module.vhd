architecture module of ixc_fc_delay is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal fclk : std_logic ;
  -- quickturn fast_clock fclk

begin

  process --:o1690
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      Q <= ext(D,abs((WIDTH - 1))+1) ;
    end if ;
  end process ;
end module;
