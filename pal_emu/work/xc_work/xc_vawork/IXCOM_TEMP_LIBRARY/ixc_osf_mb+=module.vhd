architecture module of IXC_OSF_MB is
  type DUMMY0 is array(integer range <>) of std_logic_vector((64 - 1) downto 0)
   ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal wsel : std_logic_vector(conv_integer(NBLK1) downto 0) ;
  signal _zyevMem : DUMMY0(0 to conv_integer((ext(MDEP,$QKTN_MAX(WIDTH'length,32
  )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) ;
  attribute _2_state_ of _zyevMem: signal is 1 ;
  -- quickturn use_hardmacro_pack _zyevMem

begin
  dirty <= or_reduce(wsel) ;
  genblk1 : for idx in 0 to conv_integer(NBLK1) - 1 generate
  begin
    wsel(idx) <= or_reduce(pvecEv((idx * 64)+(EVMEMW-1) downto (idx * 64))) ;
  end generate ;
  wsel(conv_integer(NBLK1)) <= or_reduce(pvecEv(conv_integer((ext
  (WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))) downto conv_integer((ext(ext(NBLK1,$QKTN_MAX
  (WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX
  (WIDTH'length,32)))))) ;

  process --:o36
  (*)
  begin
    _zyevMem(0) <= ext(wsel,64) ;
  end process ;

  process --:o40
  (*)
    variable i : integer := 0 ;
  begin
    for i in 0 to integer'PRED(conv_integer(NBLK1)) loop --:o41
      if (wsel(i) = '1') then
        _zyevMem((i + 1)) <= pvecEv((i * 64)+(EVMEMW-1) downto (i * 64)) ;
      end if;
    end loop;
    if (wsel(conv_integer(NBLK1)) = '1') then
      _zyevMem(conv_integer((ext(NBLK1,$QKTN_MAX(WIDTH'length,32)) +
       integer_to_std(1,$QKTN_MAX(WIDTH'length,32))))) <= ext(pvecEv
      (conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
      (1,$QKTN_MAX(WIDTH'length,32)))) downto conv_integer((ext(ext
      (NBLK1,$QKTN_MAX(WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX
      (WIDTH'length,32)),$QKTN_MAX(WIDTH'length,32))))),64) ;
    end if;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
