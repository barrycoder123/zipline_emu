ARCHITECTURE module OF ixc_pio_call_0_0_0_0_1 IS
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT ixc_osf1_evcap
    PORT (
      pvec : IN std_logic := 'X' ;
    pvecEvO : OUT std_logic ) ;
  END COMPONENT ;

  COMPONENT ixc_osf_evcap
    PORT (
      pvec : IN std_logic := 'X' ;
    pvecEvO : OUT std_logic ) ;
  END COMPONENT ;

  COMPONENT Q_CCLKCHK
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  SIGNAL callEvent : std_logic ;

BEGIN
  Generate1 : IF genblk1 : ((ISSVA)/=0) GENERATE
  BEGIN
    osfevcap : ixc_osf1_evcap
      PORT MAP (
         h2s_notify
        ,to_osf
      ) ;
  ELSE DUMMY0 : GENERATE
  BEGIN
    osfevcap : ixc_osf_evcap
      PORT MAP (
         h2s_notify
        ,to_osf
      ) ;
  END GENERATE ;
  s2h_notify <= from_isf ;
  cchk : Q_CCLKCHK
    PORT MAP (
       h2s_notify
    ) ;
END module;