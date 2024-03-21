ARCHITECTURE module OF axis_tbcall_BP_1 IS
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT Q_EVDECT
    PORT (
      Q : OUT std_logic ;
      A : IN std_logic := 'X' ;
    OE : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_CCLKCHK
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_PEDECT
    PORT (
      Q : OUT std_logic ;
      A : IN std_logic := 'X' ;
    OE : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_EV_WOR_START
    PORT (
    A : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_LDP0
    PORT (
      Q : OUT std_logic ;
      QN : OUT std_logic ;
      D : IN std_logic := 'X' ;
    G : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_NOT_TOUCH
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  SIGNAL callEvent : std_logic ;
  SIGNAL DUMMY0 : std_logic ;
  SIGNAL DUMMY1 : std_logic ;
  SIGNAL DUMMY2 : std_logic ;
  SIGNAL xen : std_logic ;
  SIGNAL DUMMY3 : std_logic ;
  ATTRIBUTE _2_state_ OF DUMMY3: SIGNAL IS 1 ;

BEGIN
  xen <= (DUMMY3 OR callEvent) ;
  Generate1 : IF genblk1 : ((anyEdge)/=0) GENERATE
  BEGIN
    p : Q_EVDECT
      PORT MAP (
         callEvent
        ,pui
        ,std_logic'('1')
      ) ;
    cchk : Q_CCLKCHK
      PORT MAP (
         pui
      ) ;
  ELSE DUMMY4 : GENERATE
  BEGIN
    p : Q_PEDECT
      PORT MAP (
         callEvent
        ,s
        ,std_logic'('1')
      ) ;
    cchk : Q_CCLKCHK
      PORT MAP (
         s
      ) ;
  END GENERATE ;
  DUMMY0 <= '1' WHEN ((callEvent)='1' AND level = 0) ELSE 'Z' ;
  DUMMY1 <= '1' WHEN ((callEvent)='1' AND level = 1) ELSE 'Z' ;
  DUMMY2 <= '1' WHEN ((callEvent)='1' AND level = 2) ELSE 'Z' ;
  qes : Q_EV_WOR_START
    PORT MAP (
       callEvent
    ) ;
  soV : Q_LDP0
    PORT MAP (
       so
      ,OPEN
      ,callEvent
      ,xen
    ) ;
  soC : Q_NOT_TOUCH
    PORT MAP (
       so
    ) ;
END module;