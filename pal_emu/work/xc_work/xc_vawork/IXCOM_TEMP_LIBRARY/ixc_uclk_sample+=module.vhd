architecture module of ixc_uclk_sample is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_uClkGen
    port (
    uclk : out std_logic ) ;
  end component ;

  signal uClk : std_logic ;
  signal _zzso : std_logic ;
  attribute _2_state_ of _zzso: signal is 1 ;

begin
  ucg : ixc_uClkGen
    port map (
       uClk
    ) ;

  process --:o1376
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      _zzso <= si ;
    end if ;
  end process ;
  so <= _zzso ;
end module;
