architecture module of ixc_sample_logic is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal fclk : std_logic ;
  signal doSample : std_logic ;
  signal DUMMY1 : std_logic ;
  signal _zzsv : DUMMY2((WIDTH - 1) downto 0) ;
  -- quickturn array_with_packed_dim _zzsv 2 0
  signal DUMMY0 : std_logic ;
  attribute _2_state_ of DUMMY0: signal is 1 ;
  -- quickturn fast_clock fclk

begin
  Generate1 : if genblk1 : (RD_TYPE = 3) generate
  begin
    sv <= $__unpack__(ext($__pack__(0,v),abs((WIDTH - 1))+1)) ;
  elsif DUMMY3 : (RD_TYPE = 2) generate
  begin

    process --:o3968
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (DUMMY0 = '1') then
          _zzsv <= $__unpack__(ext($__pack__(0,v),abs((WIDTH - 1))+1)) ;
        end if;
      end if ;
    end process ;
    sv <= $__unpack__(ext($__pack__(0,_zzsv),abs((WIDTH - 1))+1)) ;
  else DUMMY4 : generate
  begin
    doSample <= (DUMMY0 or DUMMY1) ;

    process --:o3978
    (*)
    begin
      if (doSample = '1') then
        _zzsv <= $__unpack__(ext($__pack__(0,v),abs((WIDTH - 1))+1)) ;
      end if;
    end process ;
    sv <= $__unpack__(ext($__pack__(0,_zzsv),abs((WIDTH - 1))+1)) ;
  end generate ;
end module;
