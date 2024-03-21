architecture module of ixc_capR is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal fclk : std_logic ;
  signal enR : std_logic ;
  attribute _2_state_ of enR: signal is 1 ;
  -- quickturn fast_clock fclk

begin

  process --:o1984
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      enR <= en ;
    end if ;
  end process ;

  process --:o1990
  (*)
  begin
    if (en /= enR) then
      cap <= '0' ;
    elsif (ev = '1') then
      cap <= '1' ;
    end if;
  end process ;
end module;
