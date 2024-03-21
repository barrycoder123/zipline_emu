architecture module of ixc_capLoopXp is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;

begin
  DUMMY0 <= '1' when (en)='1' else 'Z' ;
  bClk <= DUMMY1 ;
  bcLatchEn <= DUMMY2 ;
  bpHalt <= DUMMY3 ;
end module;
