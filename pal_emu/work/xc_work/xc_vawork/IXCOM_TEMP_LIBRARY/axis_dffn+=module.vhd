architecture module of axis_dffn is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE

begin

  process --:o1360
  (c,r,s)
  begin
    if (r = '0') then
      q <= '0' ;
    elsif (s = '0') then
      q <= '1' ;
    elsif (c'event and c = '0') then
      if (e = '1') then
        q <= d ;
      end if;
    end if ;
  end process ;
end module;
