architecture module of axis_tffn is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE

begin

  process --:o1456
  (c,r,s)
  begin
    if (r = '0') then
      q <= '0' ;
    elsif (s = '0') then
      q <= '1' ;
    elsif (c'event and c = '0') then
      if ((e = '1' and d = '1')) then
        q <= not(q) ;
      end if;
    end if ;
  end process ;
end module;
