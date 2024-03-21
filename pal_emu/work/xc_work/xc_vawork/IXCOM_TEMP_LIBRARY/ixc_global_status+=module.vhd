architecture module of ixc_global_status is
  type DUMMY2 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic_vector(62 downto 0) ;
  signal gstatus : std_logic_vector(conv_integer(((ext((ext(DEPTH,$QKTN_MAX
  (NUM_CHANNELS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_CHANNELS'length,32)
  )) * integer_to_std(64,$QKTN_MAX(NUM_CHANNELS'length,32)),$QKTN_MAX
  (NUM_CHANNELS'length,32))) - integer_to_std(1,$QKTN_MAX(NUM_CHANNELS'length,32
  )))) downto 0) ;
  signal ixc_gf2_gstatus_buf : DUMMY2(0 to conv_integer((ext(DEPTH,$QKTN_MAX
  (NUM_CHANNELS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_CHANNELS'length,32)
  )))) ;
  attribute _2_state_ of ixc_gf2_gstatus_buf: signal is 1 ;
  signal i : integer ;
  attribute _2_state_ of i: signal is 1 ;
  -- quickturn use_hardmacro_pack ixc_gf2_gstatus_buf

begin
  gstatus <= ext(status,abs(conv_integer(((ext((ext(DEPTH,$QKTN_MAX
  (NUM_CHANNELS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_CHANNELS'length,32)
  )) * integer_to_std(64,$QKTN_MAX(NUM_CHANNELS'length,32)),$QKTN_MAX
  (NUM_CHANNELS'length,32))) - integer_to_std(1,$QKTN_MAX(NUM_CHANNELS'length,32
  )))))+1) ;

  process --:o189
  (*)
  begin
    ixc_gf2_gstatus_buf(0) <= std_logic_vector'(DUMMY1 & DUMMY0) ;
    for i in 1 to integer'PRED(conv_integer(DEPTH)) loop --:o191
      ixc_gf2_gstatus_buf(i) <= gstatus(((i - 1) * 64)+(64-1) downto ((i - 1) *
       64)) ;
    end loop;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
