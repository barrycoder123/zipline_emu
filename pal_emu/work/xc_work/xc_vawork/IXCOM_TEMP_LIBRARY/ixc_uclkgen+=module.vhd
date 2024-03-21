architecture module of ixc_uClkGen is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal DUMMY0 : std_logic ;

begin

  process --:o1701
  (**) -- always_comb
  begin
    $axis_pulse( uclk, DUMMY0);
  end process ;
end module;
