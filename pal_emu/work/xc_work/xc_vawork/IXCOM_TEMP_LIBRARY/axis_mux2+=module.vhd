architecture module of axis_mux2 is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE

begin
  DUMMY1 <= (((in1 and not(sel)) or (in2 and sel)) or (in1 and in2)) ;
end module;
