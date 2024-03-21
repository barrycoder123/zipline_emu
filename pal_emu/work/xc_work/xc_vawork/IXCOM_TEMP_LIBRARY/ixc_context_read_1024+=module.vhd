ARCHITECTURE module OF ixc_context_read_1024 IS
  TYPE DUMMY0 IS ARRAY(integer RANGE <>) OF std_logic_vector((MEMWIDTH - 1)
   DOWNTO 0) ;
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT Q_NOT_TOUCH
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  SIGNAL _zymem : DUMMY0(0 TO conv_integer((ext(MEMDEPTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) ;
  ATTRIBUTE _2_state_ OF _zymem: SIGNAL IS 1 ;
  --  quickturn use_hardmacro_pack _zymem

BEGIN
  genblk1 : FOR i IN 0 TO conv_integer((ext(MEMDEPTH,$QKTN_MAX(WIDTH'length,32))
   - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) - 1 GENERATE
  BEGIN
    _zymem(i) <= ext(rdata((((i + 1) * MEMWIDTH) - 1) DOWNTO (i * MEMWIDTH)),ABS
    ((MEMWIDTH - 1))+1) ;
  END GENERATE ;
  _zymem(conv_integer((ext(MEMDEPTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
  (1,$QKTN_MAX(WIDTH'length,32))))) <= ext(rdata(conv_integer((ext
  (WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))) DOWNTO conv_integer((ext((ext(MEMDEPTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32))) *
   integer_to_std(MEMWIDTH,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX(WIDTH'length,32
  ))))),ABS((MEMWIDTH - 1))+1) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
END module;