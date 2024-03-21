architecture module of axis_eclk is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal DUMMY0 : std_logic ;

begin

  process --:o2671
  (**) -- always_comb
  begin
    $axis_pulse( pclk, DUMMY0);
  end process ;
end module;
