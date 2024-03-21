architecture module of ixc_sampleLT is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal fclk : std_logic ;
  -- quickturn fast_clock fclk

begin

  process --:o3392
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      ov <= v ;
    end if ;
  end process ;
end module;
