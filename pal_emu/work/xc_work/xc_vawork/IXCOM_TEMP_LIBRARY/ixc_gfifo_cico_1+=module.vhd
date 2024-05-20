ARCHITECTURE module OF ixc_gfifo_cico_1 IS
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT ixc_gfifo_cico
    GENERIC (
      N : std_logic_vector := signed(integer_to_std(16,32))
    ) ;
    PORT (
      ci : OUT std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
       integer_to_std(1,$QKTN_MAX(N'length,32)))) DOWNTO 0) ;
      co : IN std_logic_vector(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
       integer_to_std(1,$QKTN_MAX(N'length,32)))) DOWNTO 0) := (OTHERS => 'X') ;
      GFLock : IN std_logic := 'X' ;
    anyReq : OUT std_logic ) ;
  END COMPONENT ;

  COMPONENT ixc_gfifo_pg
    GENERIC (
      R : std_logic_vector := signed(integer_to_std(4,32))
    ) ;
    PORT (
      so : OUT std_logic ;
      ci : OUT std_logic_vector(conv_integer((ext(R,$QKTN_MAX(R'length,32)) -
       integer_to_std(1,$QKTN_MAX(R'length,32)))) DOWNTO 0) ;
      co : IN std_logic_vector(conv_integer((ext(R,$QKTN_MAX(R'length,32)) -
       integer_to_std(1,$QKTN_MAX(R'length,32)))) DOWNTO 0) := (OTHERS => 'X') ;
    si : IN std_logic := 'X' ) ;
  END COMPONENT ;

  SIGNAL so : std_logic_vector(conv_integer(M) DOWNTO 0) ;
  SIGNAL si : std_logic_vector(conv_integer(M) DOWNTO 0) ;

BEGIN
  Generate1 : IF genblk1 : (ext(N,$QKTN_MAX(N'length,32)) > integer_to_std
  (4,$QKTN_MAX(N'length,32))) GENERATE
    SIGNAL DUMMY0 : std_logic_vector(conv_integer((ext((ext(M,$QKTN_MAX
    (M'length,32)) + integer_to_std(1,$QKTN_MAX(M'length,32))),$QKTN_MAX
    (M'length,32)) - integer_to_std(1,$QKTN_MAX(M'length,32)))) DOWNTO 0) ;
    SIGNAL DUMMY1 : std_logic_vector(conv_integer((ext((ext(M,$QKTN_MAX
    (M'length,32)) + integer_to_std(1,$QKTN_MAX(M'length,32))),$QKTN_MAX
    (M'length,32)) - integer_to_std(1,$QKTN_MAX(M'length,32)))) DOWNTO 0) ;
  BEGIN
    nl : ixc_gfifo_cico
      GENERIC MAP(N => (ext(M,$QKTN_MAX(M'length,32)) + integer_to_std
      (1,$QKTN_MAX(M'length,32))))
      PORT MAP (
         DUMMY0
        ,DUMMY1
        ,GFLock
        ,anyReq
      ) ;
    si <= ext(DUMMY0,ABS(conv_integer(M))+1) ;
    DUMMY1 <= ext(so,ABS(conv_integer(((ext(M,$QKTN_MAX(M'length,32)) +
     integer_to_std(1,$QKTN_MAX(M'length,32))) - integer_to_std(1,$QKTN_MAX
    (M'length,32)))))+1) ;
  ELSE DUMMY2 : GENERATE
  BEGIN
    si(0) <= '0' ;
    anyReq <= (so(0) AND NOT(GFLock)) ;
  END GENERATE ;
  genblk2 : FOR i IN 0 TO conv_integer(M) - 1 GENERATE
  BEGIN
    pgx : ixc_gfifo_pg
      GENERIC MAP(R => integer_to_std(4,32))
      PORT MAP (
         so(i)
        ,ci((i * 4)+(G-1) DOWNTO (i * 4))
        ,co((i * 4)+(G-1) DOWNTO (i * 4))
        ,si(i)
      ) ;
  END GENERATE ;
  Generate2 : IF genblk3 : ((R)/="0") GENERATE
    SIGNAL DUMMY3 : std_logic_vector(conv_integer((ext(R,$QKTN_MAX(N'length,32))
     - integer_to_std(1,$QKTN_MAX(N'length,32)))) DOWNTO 0) ;
    SIGNAL DUMMY4 : std_logic_vector(conv_integer((ext(R,$QKTN_MAX(N'length,32))
     - integer_to_std(1,$QKTN_MAX(N'length,32)))) DOWNTO 0) ;
  BEGIN
    pgr : ixc_gfifo_pg
      GENERIC MAP(R => R)
      PORT MAP (
         so(conv_integer(M))
        ,DUMMY3
        ,DUMMY4
        ,si(conv_integer(M))
      ) ;
    ci(conv_integer((ext(N,$QKTN_MAX(N'length,32)) - integer_to_std(1,$QKTN_MAX
    (N'length,32)))) DOWNTO conv_integer((ext(ext(M,$QKTN_MAX(N'length,32)) *
     integer_to_std(4,$QKTN_MAX(N'length,32)),$QKTN_MAX(N'length,32))))) <= ext
    (DUMMY3,ABS((conv_integer((ext(N,$QKTN_MAX(N'length,32)) - integer_to_std
    (1,$QKTN_MAX(N'length,32)))))-(conv_integer((ext(ext(M,$QKTN_MAX(N'length,32
    )) * integer_to_std(4,$QKTN_MAX(N'length,32)),$QKTN_MAX(N'length,32))))))+1)
     ;
    DUMMY4 <= ext(co(conv_integer((ext(N,$QKTN_MAX(N'length,32)) -
     integer_to_std(1,$QKTN_MAX(N'length,32)))) DOWNTO conv_integer((ext(ext
    (M,$QKTN_MAX(N'length,32)) * integer_to_std(4,$QKTN_MAX(N'length,32)
    ),$QKTN_MAX(N'length,32))))),ABS(conv_integer((ext(R,$QKTN_MAX(N'length,32))
     - integer_to_std(1,$QKTN_MAX(N'length,32)))))+1) ;
  END GENERATE ;
END module;