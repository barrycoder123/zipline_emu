architecture module of ixc_tcm_chk is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal _zztcR : std_logic ;
  attribute _2_state_ of _zztcR: signal is 1 ;
  signal enR : std_logic ;
  attribute _2_state_ of enR: signal is 1 ;
  signal rstR : std_logic ;
  attribute _2_state_ of rstR: signal is 1 ;
  -- quickturn fast_clock fclk

begin

  process --:o3278
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      enR <= en ;
    end if ;
  end process ;

  process --:o3279
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      rstR <= rst ;
    end if ;
  end process ;

  process --:o3281
  (*)
  begin
    if (rstR /= rst) then
      _zztcR <= '0' ;
    elsif (DUMMY0 = '1') then
      _zztcR <= enR ;
    end if;
  end process ;
  tc <= (_zztcR and en) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
