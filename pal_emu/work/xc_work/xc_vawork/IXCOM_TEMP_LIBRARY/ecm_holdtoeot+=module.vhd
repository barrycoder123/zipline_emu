architecture module of ecm_holdToEOT is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  -- quickturn fast_clock fclk

begin

  process --:o2749
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY0 = '1') then
        evh <= '0' ;
      elsif (ev = '1') then
        evh <= '1' ;
      end if;
    end if ;
  end process ;
end module;
