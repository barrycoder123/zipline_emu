architecture module of ixc_context_4s_read is
  type DUMMY0 is array(integer range <>) of std_logic_vector((MEMWIDTH - 1)
   downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal rdata_abval : std_logic_vector(conv_integer((ext(WIDTH4S,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   ;
  attribute _2_state_ of rdata_abval: signal is 1 ;
  signal _zymem : DUMMY0(0 to conv_integer((ext(MEMDEPTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) ;
  attribute _2_state_ of _zymem: signal is 1 ;
  -- quickturn use_hardmacro_pack _zymem

begin
  genblk1 : for i in 0 to conv_integer((ext(MEMDEPTH,$QKTN_MAX(WIDTH'length,32))
   - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) - 1 generate
  begin
    _zymem(i) <= ext(rdata_abval((((i + 1) * MEMWIDTH) - 1) downto (i * MEMWIDTH
    )),abs((MEMWIDTH - 1))+1) ;
  end generate ;
  _zymem(conv_integer((ext(MEMDEPTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
  (1,$QKTN_MAX(WIDTH'length,32))))) <= ext(rdata_abval(conv_integer((ext
  (WIDTH4S,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))) downto conv_integer((ext((ext(MEMDEPTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32))) *
   integer_to_std(MEMWIDTH,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX(WIDTH'length,32
  ))))),abs((MEMWIDTH - 1))+1) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
