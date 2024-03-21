architecture module of ixc_gfifo_cico is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_gfifo_cico
    generic (
      N : std_logic_vector := signed(integer_to_std(16,32))
    ) ;
    port (
      ci : out std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
       integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0) ;
      co : in std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
       integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0) := (others => 'X') ;
      GFLock : in std_logic := 'X' ;
    anyReq : out std_logic ) ;
  end component ;

  component ixc_gfifo_pg
    generic (
      R : std_logic_vector := signed(integer_to_std(4,32))
    ) ;
    port (
      so : out std_logic ;
      ci : out std_logic_vector(conv_integer((ext(R,$QKTN_MAX(R'length,32)) -
       integer_to_std(1,$QKTN_MAX(R'length,32)))) downto 0) ;
      co : in std_logic_vector(conv_integer((ext(R,$QKTN_MAX(R'length,32)) -
       integer_to_std(1,$QKTN_MAX(R'length,32)))) downto 0) := (others => 'X') ;
    si : in std_logic := 'X' ) ;
  end component ;

  signal so : std_logic_vector(conv_integer(M) downto 0) ;
  signal si : std_logic_vector(conv_integer(M) downto 0) ;

begin
  Generate1 : if genblk1 : (ext(N,$QKTN_MAX(N'length,32)) > integer_to_std
  (4,$QKTN_MAX(N'length,32))) generate
    signal DUMMY0 : std_logic_vector(conv_integer((ext((ext(M,$QKTN_MAX
    (M'length,32)) + integer_to_std(1,$QKTN_MAX(M'length,32))),$QKTN_MAX
    (M'length,32)) - integer_to_std(1,$QKTN_MAX(M'length,32)))) downto 0) ;
    signal DUMMY1 : std_logic_vector(conv_integer((ext((ext(M,$QKTN_MAX
    (M'length,32)) + integer_to_std(1,$QKTN_MAX(M'length,32))),$QKTN_MAX
    (M'length,32)) - integer_to_std(1,$QKTN_MAX(M'length,32)))) downto 0) ;
  begin
    nl : ixc_gfifo_cico
      generic map(N => (ext(M,$QKTN_MAX(M'length,32)) + integer_to_std
      (1,$QKTN_MAX(M'length,32))))
      port map (
         DUMMY0
        ,DUMMY1
        ,GFLock
        ,anyReq
      ) ;
    si <= ext(DUMMY0,abs(conv_integer(M))+1) ;
    DUMMY1 <= ext(so,abs(conv_integer(((ext(M,$QKTN_MAX(M'length,32)) +
     integer_to_std(1,$QKTN_MAX(M'length,32))) - integer_to_std(1,$QKTN_MAX
    (M'length,32)))))+1) ;
  else DUMMY2 : generate
  begin
    si(0) <= '0' ;
    anyReq <= (so(0) and not(GFLock)) ;
  end generate ;
  genblk2 : for i in 0 to conv_integer(M) - 1 generate
  begin
    pgx : ixc_gfifo_pg
      generic map(R => integer_to_std(4,32))
      port map (
         so(i)
        ,ci((i * 4)+(G-1) downto (i * 4))
        ,co((i * 4)+(G-1) downto (i * 4))
        ,si(i)
      ) ;
  end generate ;
  Generate2 : if genblk3 : ((R)/="0") generate
    signal DUMMY3 : std_logic_vector(conv_integer((ext(R,$QKTN_MAX(N'length,32))
     - integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0) ;
    signal DUMMY4 : std_logic_vector(conv_integer((ext(R,$QKTN_MAX(N'length,32))
     - integer_to_std(1,$QKTN_MAX(N'length,32)))) downto 0) ;
  begin
    pgr : ixc_gfifo_pg
      generic map(R => R)
      port map (
         so(conv_integer(M))
        ,DUMMY3
        ,DUMMY4
        ,si(conv_integer(M))
      ) ;
    ci(conv_integer((ext(N,$QKTN_MAX(N'length,32)) - integer_to_std(1,$QKTN_MAX
    (N'length,32)))) downto conv_integer((ext(ext(M,$QKTN_MAX(N'length,32)) *
     integer_to_std(4,$QKTN_MAX(N'length,32)),$QKTN_MAX(N'length,32))))) <= ext
    (DUMMY3,abs((conv_integer((ext(N,$QKTN_MAX(N'length,32)) - integer_to_std
    (1,$QKTN_MAX(N'length,32)))))-(conv_integer((ext(ext(M,$QKTN_MAX(N'length,32
    )) * integer_to_std(4,$QKTN_MAX(N'length,32)),$QKTN_MAX(N'length,32))))))+1)
     ;
    DUMMY4 <= ext(co(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
     integer_to_std(1,$QKTN_MAX(N'length,32)))) downto conv_integer((ext(ext
    (M,$QKTN_MAX(N'length,32)) * integer_to_std(4,$QKTN_MAX(N'length,32)
    ),$QKTN_MAX(N'length,32))))),abs(conv_integer((ext(R,$QKTN_MAX(N'length,32))
     - integer_to_std(1,$QKTN_MAX(N'length,32)))))+1) ;
  end generate ;
end module;
