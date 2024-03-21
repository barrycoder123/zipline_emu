ARCHITECTURE module OF ixc_rforce_1024 IS
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT Q_REGFORCE
    PORT (
      Q : IN std_logic := 'X' ;
      A : IN std_logic := 'X' ;
    E : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_RELEASE_WEAK
    PORT (
      Q : IN std_logic := 'X' ;
    E : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_NOT_TOUCH
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  SIGNAL fclk : std_logic ;
  SIGNAL fen : std_logic ;
  SIGNAL ren : std_logic ;
  SIGNAL _zzenr : std_logic ;
  ATTRIBUTE _2_state_ OF _zzenr: SIGNAL IS 1 ;
  SIGNAL DUMMY0 : std_logic ;
  ATTRIBUTE _2_state_ OF DUMMY0: SIGNAL IS 1 ;
  --  quickturn fast_clock fclk

BEGIN
  fen <= (NOT(_zzenr) AND en) ;
  ren <= (_zzenr AND NOT(en)) ;

  PROCESS --:o3354
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (DUMMY0 = '1') THEN
        _zzenr <= NOT(en) ;
      ELSE
        _zzenr <= en ;
      END IF;
    END IF ;
  END PROCESS ;
  genblk1 : FOR i IN 0 TO conv_integer(W) - 1 GENERATE
  BEGIN
    rfrc : Q_REGFORCE
      PORT MAP (
         Q => L(i)
        ,A => V(i)
        ,E => fen
      ) ;
    rrel : Q_RELEASE_WEAK
      PORT MAP (
         Q => L(i)
        ,E => ren
      ) ;
  END GENERATE ;
  _zzqnthw : Q_NOT_TOUCH
     ;
END module;