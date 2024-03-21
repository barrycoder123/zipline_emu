architecture module of ASSERTION is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal FAILURE : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  -- quickturn keep_net FAILURE

begin
  FAILURE <= (DUMMY0 or DUMMY1) ;
end module;
