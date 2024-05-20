ARCHITECTURE module OF ixc_sampleLT_64 IS
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  SIGNAL fclk : std_logic ;
  --  quickturn fast_clock fclk

BEGIN

  PROCESS --:o3392
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      ov <= v ;
    END IF ;
  END PROCESS ;
END module;