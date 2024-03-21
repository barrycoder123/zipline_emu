ARCHITECTURE module OF ixc_sample_logic_1_3 IS
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  SIGNAL fclk : std_logic ;
  SIGNAL doSample : std_logic ;
  SIGNAL DUMMY1 : std_logic ;
  SIGNAL _zzsv : DUMMY2((WIDTH - 1) DOWNTO 0) ;
  --  quickturn array_with_packed_dim _zzsv 2 0
  SIGNAL DUMMY0 : std_logic ;
  ATTRIBUTE _2_state_ OF DUMMY0: SIGNAL IS 1 ;
  --  quickturn fast_clock fclk

BEGIN
  Generate1 : IF genblk1 : (RD_TYPE = 3) GENERATE
  BEGIN
    sv <= $__unpack__(ext($__pack__(0,v),ABS((WIDTH - 1))+1)) ;
  ELSIF DUMMY3 : (RD_TYPE = 2) GENERATE
  BEGIN

    PROCESS --:o3968
    (fclk)
    BEGIN
      IF (fclk'event AND fclk = '1') THEN
        IF (DUMMY0 = '1') THEN
          _zzsv <= $__unpack__(ext($__pack__(0,v),ABS((WIDTH - 1))+1)) ;
        END IF;
      END IF ;
    END PROCESS ;
    sv <= $__unpack__(ext($__pack__(0,_zzsv),ABS((WIDTH - 1))+1)) ;
  ELSE DUMMY4 : GENERATE
  BEGIN
    doSample <= (DUMMY0 OR DUMMY1) ;

    PROCESS --:o3978
    (*)
    BEGIN
      IF (doSample = '1') THEN
        _zzsv <= $__unpack__(ext($__pack__(0,v),ABS((WIDTH - 1))+1)) ;
      END IF;
    END PROCESS ;
    sv <= $__unpack__(ext($__pack__(0,_zzsv),ABS((WIDTH - 1))+1)) ;
  END GENERATE ;
END module;