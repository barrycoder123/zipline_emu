ARCHITECTURE module OF IXC_OSF_MB_20 IS
  TYPE DUMMY0 IS ARRAY(integer RANGE <>) OF std_logic_vector((64 - 1) DOWNTO 0)
   ;
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT Q_NOT_TOUCH
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  SIGNAL wsel : std_logic_vector(conv_integer(NBLK1) DOWNTO 0) ;
  SIGNAL _zyevMem : DUMMY0(0 TO conv_integer((ext(MDEP,$QKTN_MAX(WIDTH'length,32
  )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) ;
  ATTRIBUTE _2_state_ OF _zyevMem: SIGNAL IS 1 ;
  --  quickturn use_hardmacro_pack _zyevMem

BEGIN
  dirty <= or_reduce(wsel) ;
  genblk1 : FOR idx IN 0 TO conv_integer(NBLK1) - 1 GENERATE
  BEGIN
    wsel(idx) <= or_reduce(pvecEv((idx * 64)+(EVMEMW-1) DOWNTO (idx * 64))) ;
  END GENERATE ;
  wsel(conv_integer(NBLK1)) <= or_reduce(pvecEv(conv_integer((ext
  (WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))) DOWNTO conv_integer((ext(ext(NBLK1,$QKTN_MAX
  (WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX
  (WIDTH'length,32)))))) ;

  PROCESS --:o36
  (*)
  BEGIN
    _zyevMem(0) <= ext(wsel,64) ;
  END PROCESS ;

  PROCESS --:o40
  (*)
    VARIABLE i : integer := 0 ;
  BEGIN
    FOR i IN 0 TO integer'PRED(conv_integer(NBLK1)) LOOP --:o41
      IF (wsel(i) = '1') THEN
        _zyevMem((i + 1)) <= pvecEv((i * 64)+(EVMEMW-1) DOWNTO (i * 64)) ;
      END IF;
    END LOOP;
    IF (wsel(conv_integer(NBLK1)) = '1') THEN
      _zyevMem(conv_integer((ext(NBLK1,$QKTN_MAX(WIDTH'length,32)) +
       integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) <= ext(pvecEv
      (conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
      (1,$QKTN_MAX(WIDTH'length,32)))) DOWNTO conv_integer((ext(ext
      (NBLK1,$QKTN_MAX(WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX
      (WIDTH'length,32)),$QKTN_MAX(WIDTH'length,32))))),64) ;
    END IF;
  END PROCESS ;
  _zzqnthw : Q_NOT_TOUCH
     ;
END module;