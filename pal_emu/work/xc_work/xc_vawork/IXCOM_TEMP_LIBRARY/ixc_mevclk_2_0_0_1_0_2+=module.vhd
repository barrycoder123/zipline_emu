ARCHITECTURE module OF ixc_mevClk_2_0_0_1_0_2 IS
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT Q_EV_WOR_START
    PORT (
    A : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_LPULSE
    PORT (
      A : IN std_logic := 'X' ;
      Z : OUT std_logic ;
    S : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_NOT_TOUCH
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  SIGNAL evs : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0)
   ;
  SIGNAL evOn : std_logic ;
  SIGNAL bEvOn : std_logic ;
  SIGNAL clkOnI : std_logic ;
  SIGNAL clkOn : std_logic ;
  SIGNAL mixOn : std_logic ;
  SIGNAL bEvWait : std_logic ;
  SIGNAL wEvWait : std_logic ;
  SIGNAL fclk : std_logic ;
  SIGNAL DUMMY0 : std_logic ;
  SIGNAL DUMMY1 : std_logic ;
  SIGNAL DUMMY2 : std_logic ;
  SIGNAL holdF : std_logic ;
  SIGNAL bwEn : std_logic ;
  SIGNAL ensD : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0)
   ;
  ATTRIBUTE _2_state_ OF ensD: SIGNAL IS 1 ;
  SIGNAL wEvOn : std_logic ;
  ATTRIBUTE _2_state_ OF wEvOn: SIGNAL IS 1 ;
  SIGNAL loopOn : std_logic ;
  ATTRIBUTE _2_state_ OF loopOn: SIGNAL IS 1 ;
  SIGNAL bEvOnD : std_logic ;
  ATTRIBUTE _2_state_ OF bEvOnD: SIGNAL IS 1 ;
  SIGNAL _zzev : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0)
   ;
  ATTRIBUTE _2_state_ OF _zzev: SIGNAL IS 1 ;
  SIGNAL _zzevp : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO 0)
   ;
  ATTRIBUTE _2_state_ OF _zzevp: SIGNAL IS 1 ;
  SIGNAL bClkHoldD : std_logic ;
  ATTRIBUTE _2_state_ OF bClkHoldD: SIGNAL IS 1 ;
  SIGNAL holdFD : std_logic ;
  ATTRIBUTE _2_state_ OF holdFD: SIGNAL IS 1 ;
  SIGNAL _zzClkOn : std_logic ;
  ATTRIBUTE _2_state_ OF _zzClkOn: SIGNAL IS 1 ;
  --  quickturn fast_clock fclk

BEGIN
  holdF <= it_conv_std_logic(((integer_to_std(HOLD,32) AND ext(DUMMY7,32)) AND
   ext(DUMMY1,32)) OR ext(bClkHoldD,32)) ;
  bwEn <= it_conv_std_logic(ext(bwOn,32) OR (ext(DUMMY7,32) AND integer_to_std
  (HOLD,32))) ;
  genblk1 : FOR i IN 0 TO conv_integer(WIDTH) - 1 GENERATE
  BEGIN
    Generate1 : IF genblk1 : ((IS_EDGED(i))='1') GENERATE
    BEGIN
      Generate2 : IF genblk1 : ((POLARITY(i))='1') GENERATE
      BEGIN

        PROCESS --:o3007
        (clks(i))
        BEGIN
          IF (clks(i)'event AND clks(i) = '0') THEN
            _zzev(i) <= NOT(_zzev(i)) ;
          END IF ;
        END PROCESS ;
      ELSE DUMMY8 : GENERATE
      BEGIN

        PROCESS --:o3009
        (clks(i))
        BEGIN
          IF (clks(i)'event AND clks(i) = '1') THEN
            _zzev(i) <= NOT(_zzev(i)) ;
          END IF ;
        END PROCESS ;
      END GENERATE ;

      PROCESS --:o3011
      (fclk)
      BEGIN
        IF (fclk'event AND fclk = '1') THEN
          IF (DUMMY1 = '1') THEN
            _zzevp(i) <= _zzev(i) ;
          END IF;
        END IF ;
      END PROCESS ;
      evs(i) <= (DUMMY1 AND (_zzev(i) XOR _zzevp(i))) ;
    ELSE DUMMY9 : GENERATE
    BEGIN
      Generate3 : IF genblk1 : ((POLARITY(i))='1') GENERATE
      BEGIN
        evs(i) <= (DUMMY1 AND clks(i)) ;
      ELSE DUMMY10 : GENERATE
      BEGIN

        PROCESS --:o3017
        (fclk)
        BEGIN
          IF (fclk'event AND fclk = '1') THEN
            IF (DUMMY1 = '1') THEN
              _zzev(i) <= clks(i) ;
            END IF;
          END IF ;
        END PROCESS ;
        evs(i) <= (DUMMY1 AND (_zzev(i) XOR clks(i))) ;
      END GENERATE ;
    END GENERATE ;
  END GENERATE ;

  PROCESS --:o3024
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      ensD <= ext(ens,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
       integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
    END IF ;
  END PROCESS ;
  evOn <= or_reduce((((ext(evs,ABS(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) AND
   ext(ensD,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)) AND NOT(ext(DMS,ABS
  (conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
  (1,$QKTN_MAX(WIDTH'length,32)))))+1))) AND NOT(ext(WAIT_EV,ABS(conv_integer(
  (ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))))+1)))) ;
  bEvOn <= or_reduce(((((ext(evs,ABS(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) AND
   ext(ens,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)) AND ext(ensD,ABS
  (conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
  (1,$QKTN_MAX(WIDTH'length,32)))))+1)) AND ext(DMS,ABS(conv_integer((ext
  (WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))))+1)) AND NOT(ext(WAIT_EV,ABS(conv_integer((ext
  (WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))))+1)))) ;
  bEvWait <= bEvOn ;
  mixOn <= or_reduce((((ext(evs,ABS(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) AND
   ext(ensD,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)) AND ext(DM,ABS
  (conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
  (1,$QKTN_MAX(WIDTH'length,32)))))+1)) AND NOT(ext(WAIT_EV,ABS(conv_integer(
  (ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))))+1)))) ;
  wEvWait <= or_reduce(((ext(evs,ABS(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) AND
   ext(ens,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)) AND ext(WAIT_EV,ABS
  (conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
  (1,$QKTN_MAX(WIDTH'length,32)))))+1))) ;
  Generate4 : IF genblk2 : ((WAIT_EV)/="0") GENERATE
  BEGIN

    PROCESS --:o3042
    (fclk)
    BEGIN
      IF (fclk'event AND fclk = '1') THEN
        wEvOn <= wEvWait ;
      END IF ;
    END PROCESS ;
  ELSE DUMMY11 : GENERATE
  BEGIN

    PROCESS --:o3044
    (*)
    BEGIN
      wEvOn <= '0' ;
    END PROCESS ;
  END GENERATE ;
  Generate5 : IF genblk3 : ((DUMMY3)/="0") GENERATE
  BEGIN

    PROCESS --:o3048
    (fclk)
    BEGIN
      IF (fclk'event AND fclk = '1') THEN
        loopOn <= DUMMY5 ;
      END IF ;
    END PROCESS ;
  ELSE DUMMY12 : GENERATE
  BEGIN

    PROCESS --:o3050
    (*)
    BEGIN
      loopOn <= '0' ;
    END PROCESS ;
  END GENERATE ;
  Generate6 : IF genblk4 : (((ext(DMS,ABS(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) AND
   NOT(ext(WAIT_EV,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)))/="0")) GENERATE
  BEGIN

    PROCESS --:o3054
    (fclk)
    BEGIN
      IF (fclk'event AND fclk = '1') THEN
        IF (NOT(DUMMY1) = '1') THEN
          bEvOnD <= '0' ;
        ELSE
          bEvOnD <= bEvOn ;
        END IF;
      END IF ;
    END PROCESS ;
    clkOnI <= (((evOn AND NOT(mixOn)) OR bEvOnD) OR wEvOn) ;
  ELSE DUMMY13 : GENERATE
  BEGIN
    clkOnI <= (evOn OR wEvOn) ;
  END GENERATE ;

  PROCESS --:o3066
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      bClkHoldD <= DUMMY2 ;
    END IF ;
  END PROCESS ;

  PROCESS --:o3070
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      holdFD <= holdF ;
    END IF ;
  END PROCESS ;

  PROCESS --:o3073
  (*)
  BEGIN
    IF (((clkOnI)='1' OR (loopOn)='1')) THEN
      _zzClkOn <= '1' ;
    ELSIF (NOT(holdFD) = '1') THEN
      _zzClkOn <= '0' ;
    END IF;
  END PROCESS ;
  clkOn <= (NOT(holdF) AND _zzClkOn) ;
  active <= (clkOnI OR _zzClkOn) ;
  busy <= loopOn ;
  bwOn <= it_conv_std_logic((ext(bEvWait,DUMMY3'length) OR ext
  (wEvWait,DUMMY3'length)) OR (ext(DUMMY3,DUMMY3'length) AND ext
  (DUMMY5,DUMMY3'length))) ;
  DUMMY0 <= '1' WHEN (bwEn)='1' ELSE 'Z' ;
  Generate7 : IF genblk5 : (((ext(DMS,ABS(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) AND
   NOT(ext(WAIT_EV,ABS(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)))/="0")) GENERATE
  BEGIN
    qi1 : Q_EV_WOR_START
      PORT MAP (
         bEvWait
      ) ;
  END GENERATE ;
  Generate8 : IF genblk6 : ((WAIT_EV)/="0") GENERATE
  BEGIN
    qi2 : Q_EV_WOR_START
      PORT MAP (
         wEvWait
      ) ;
  END GENERATE ;
  Generate9 : IF genblk7 : ((DUMMY3)/="0") GENERATE
  BEGIN
    qi3 : Q_EV_WOR_START
      PORT MAP (
         DUMMY5
      ) ;
  END GENERATE ;
  Generate10 : IF genblk8 : ((HOLD)/=0) GENERATE
  BEGIN
    qi4 : Q_EV_WOR_START
      PORT MAP (
         DUMMY7
      ) ;
  END GENERATE ;
  p0 : Q_LPULSE
    PORT MAP (
       Z => xclk
      ,A => clkOn
    ) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
END module;