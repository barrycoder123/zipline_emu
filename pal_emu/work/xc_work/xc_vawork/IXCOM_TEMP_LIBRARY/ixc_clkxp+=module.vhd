architecture module of ixc_clkXp is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  signal fclk : std_logic ;
  signal rtlClkL : std_logic ;
  signal _zzRtlR : std_logic ;
  attribute _2_state_ of _zzRtlR: signal is 1 ;
  signal _zzClkV : std_logic ;
  attribute _2_state_ of _zzClkV: signal is 1 ;
  signal _zzClkR : std_logic ;
  attribute _2_state_ of _zzClkR: signal is 1 ;
  signal DUMMY0 : std_logic ;
  attribute _2_state_ of DUMMY0: signal is 1 ;
  signal DUMMY1 : std_logic ;
  attribute _2_state_ of DUMMY1: signal is 1 ;
  signal DUMMY2 : std_logic ;
  attribute _2_state_ of DUMMY2: signal is 1 ;
  -- quickturn fast_clock fclk

begin
  rtlClkL <= rtlClk when DUMMY2 = '1' else _zzRtlR ;

  process --:o1513
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      _zzRtlR <= rtlClkL ;
    end if ;
  end process ;

  process --:o1517
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      _zzClkR <= _zzClkV ;
    end if ;
  end process ;

  process --:o1521
  (*)
  begin
    _zzClkV <= it_cond_op((((rtlClkL xor _zzRtlR)='1') or (DUMMY0)='1'),not
    (_zzClkR),_zzClkR) ;
    PeEn <= (not(rtlClkL) and DUMMY1) ;
    NeEn <= (rtlClkL and DUMMY1) ;
  end process ;

  process --:o1527
  (**) -- always_comb
  begin
    $axis_pulse( clk, _zzClkV);
  end process ;
end module;
