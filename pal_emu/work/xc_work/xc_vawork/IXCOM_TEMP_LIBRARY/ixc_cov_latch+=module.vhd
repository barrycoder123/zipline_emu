architecture module of ixc_cov_latch is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;


begin
  FL : for i in 0 to conv_integer(WIDTH) - 1 generate
  begin
    Generate1 : if RT : ((USE_RESET)/=0) generate
    begin

      process --:o3470
      (*)
      begin
        if (rst = '1') then
          cout(i) <= '0' ;
        elsif (cin(i) = '1') then
          cout(i) <= '1' ;
        end if;
      end process ;
    else RF : generate
    begin

      process --:o3479
      (*)
      begin
        if (cin(i) = '1') then
          cout(i) <= '1' ;
        end if;
      end process ;
    end generate ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
