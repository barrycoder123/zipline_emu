architecture module of ixc_pulse_en is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal tg : std_logic ;
  signal _zzSr : std_logic ;
  attribute _2_state_ of _zzSr: signal is 1 ;
  signal _zzTg : std_logic ;
  attribute _2_state_ of _zzTg: signal is 1 ;
  -- quickturn fast_clock fclk

begin

  process --:o3412
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      _zzSr <= s ;
      _zzTg <= tg ;
    end if ;
  end process ;
  tg <= not(_zzTg) when ((en)='1' and ((s xor _zzSr)='1')) else _zzTg ;

  process --:o3419
  (**) -- always_comb
  begin
    $axis_pulse( p, tg);
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
