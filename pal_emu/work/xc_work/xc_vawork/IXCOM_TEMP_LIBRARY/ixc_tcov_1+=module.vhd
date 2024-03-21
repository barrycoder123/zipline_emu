architecture module of ixc_tcov_1 is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_NOFV TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal DUMMY0 : std_logic ;
  signal _zy_tcov_rout : std_logic_vector(0 to conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) ;
  attribute _2_state_ of _zy_tcov_rout: signal is 1 ;
  signal _zy_tcov_fout : std_logic_vector(0 to conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) ;
  attribute _2_state_ of _zy_tcov_fout: signal is 1 ;
  -- quickturn keep_net _zy_tcov_rout
  -- quickturn keep_net _zy_tcov_fout

begin
  genblk1 : for ii in 0 to conv_integer(WIDTH) - 1 generate
  begin

    process --:o1663
    (din(ii),DUMMY0)
    begin
      if (DUMMY0 = '1') then
        _zy_tcov_rout(ii) <= '0' ;
      elsif (din(ii)'event and din(ii) = '1') then
        _zy_tcov_rout(ii) <= '1' ;
      end if ;
    end process ;

    process --:o1669
    (din(ii),DUMMY0)
    begin
      if (DUMMY0 = '1') then
        _zy_tcov_fout(ii) <= '0' ;
      elsif (din(ii)'event and din(ii) = '0') then
        _zy_tcov_fout(ii) <= '1' ;
      end if ;
    end process ;
  end generate ;
end module;
