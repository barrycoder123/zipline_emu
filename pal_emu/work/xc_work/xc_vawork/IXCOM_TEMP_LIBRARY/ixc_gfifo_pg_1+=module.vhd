ARCHITECTURE module OF ixc_gfifo_pg_1 IS
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT Q_BUF
    PORT (
      Z : OUT std_logic ;
    A : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_OR02
    PORT (
      Z : OUT std_logic ;
      A0 : IN std_logic := 'X' ;
    A1 : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_OR03
    PORT (
      Z : OUT std_logic ;
      A0 : IN std_logic := 'X' ;
      A1 : IN std_logic := 'X' ;
    A2 : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_OR04
    PORT (
      Z : OUT std_logic ;
      A0 : IN std_logic := 'X' ;
      A1 : IN std_logic := 'X' ;
      A2 : IN std_logic := 'X' ;
    A3 : IN std_logic := 'X' ) ;
  END COMPONENT ;


BEGIN
  ix : Q_BUF
    PORT MAP (
       ci(0)
      ,si
    ) ;
  Generate1 : IF genblk1 : (ext(R,$QKTN_MAX(R'length,32)) > integer_to_std
  (1,$QKTN_MAX(R'length,32))) GENERATE
  BEGIN
    ix : Q_OR02
      PORT MAP (
         ci(1)
        ,si
        ,co(0)
      ) ;
  END GENERATE ;
  Generate2 : IF genblk2 : (ext(R,$QKTN_MAX(R'length,32)) > integer_to_std
  (2,$QKTN_MAX(R'length,32))) GENERATE
  BEGIN
    ix : Q_OR03
      PORT MAP (
         ci(2)
        ,si
        ,co(0)
        ,co(1)
      ) ;
  END GENERATE ;
  Generate3 : IF genblk3 : (ext(R,$QKTN_MAX(R'length,32)) > integer_to_std
  (3,$QKTN_MAX(R'length,32))) GENERATE
  BEGIN
    ix : Q_OR04
      PORT MAP (
         ci(3)
        ,si
        ,co(0)
        ,co(1)
        ,co(2)
      ) ;
  END GENERATE ;
  genblk4 : FOR i IN 4 TO conv_integer(R) - 1 GENERATE
  BEGIN
    ci(i) <= or_reduce(std_logic_vector'(si & co((i - 1) DOWNTO 0))) ;
  END GENERATE ;
  Generate4 : IF genblk5 : (ext(R,$QKTN_MAX(R'length,32)) = integer_to_std
  (1,$QKTN_MAX(R'length,32))) GENERATE
  BEGIN
    iy : Q_BUF
      PORT MAP (
         so
        ,co(0)
      ) ;
  ELSIF DUMMY0 : (ext(R,$QKTN_MAX(R'length,32)) = integer_to_std(2,$QKTN_MAX
  (R'length,32))) GENERATE
  BEGIN
    iy : Q_OR02
      PORT MAP (
         so
        ,co(0)
        ,co(1)
      ) ;
  ELSIF DUMMY1 : (ext(R,$QKTN_MAX(R'length,32)) = integer_to_std(3,$QKTN_MAX
  (R'length,32))) GENERATE
  BEGIN
    iy : Q_OR03
      PORT MAP (
         so
        ,co(0)
        ,co(1)
        ,co(2)
      ) ;
  ELSIF DUMMY2 : (ext(R,$QKTN_MAX(R'length,32)) = integer_to_std(4,$QKTN_MAX
  (R'length,32))) GENERATE
  BEGIN
    iy : Q_OR04
      PORT MAP (
         so
        ,co(0)
        ,co(1)
        ,co(2)
        ,co(3)
      ) ;
  ELSE DUMMY3 : GENERATE
  BEGIN
    so <= or_reduce(co) ;
  END GENERATE ;
END module;