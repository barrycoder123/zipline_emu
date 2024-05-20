ARCHITECTURE module OF ixc_sfifo_port_136_0 IS
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT Q_NOT_TOUCH
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  SIGNAL fclk : std_logic ;
  SIGNAL DUMMY0 : std_logic ;
  SIGNAL fenN : std_logic ;
  ATTRIBUTE _2_state_ OF fenN: SIGNAL IS 1 ;
  SIGNAL callr : std_logic ;
  ATTRIBUTE _2_state_ OF callr: SIGNAL IS 1 ;
  SIGNAL callrN : std_logic ;
  ATTRIBUTE _2_state_ OF callrN: SIGNAL IS 1 ;
  SIGNAL argl : std_logic_vector(15 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF argl: SIGNAL IS 1 ;
  SIGNAL arglN : std_logic_vector(15 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF arglN: SIGNAL IS 1 ;
  SIGNAL lden : std_logic_vector(conv_integer(IARGPL1) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF lden: SIGNAL IS 1 ;
  SIGNAL ldenN : std_logic_vector(conv_integer(IARGPL1) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF ldenN: SIGNAL IS 1 ;
  SIGNAL i : integer ;
  SIGNAL oargB : std_logic_vector((512 - 1) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF oargB: SIGNAL IS 1 ;
  SIGNAL oen : std_logic ;
  ATTRIBUTE _2_state_ OF oen: SIGNAL IS 1 ;
  SIGNAL opktl : std_logic_vector(15 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF opktl: SIGNAL IS 1 ;
  SIGNAL sten : std_logic_vector(conv_integer(OARGPL1) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF sten: SIGNAL IS 1 ;
  SIGNAL wlen : std_logic_vector(3 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF wlen: SIGNAL IS 1 ;
  SIGNAL oState : std_logic ;
  ATTRIBUTE _2_state_ OF oState: SIGNAL IS 1 ;
  --  quickturn fast_clock fclk

BEGIN

  PROCESS --:o954
  (**) --  always_comb
  BEGIN
    $axis_pulse( call, callr);
  END PROCESS ;

  PROCESS --:o961
  (*)
  BEGIN
    FOR i IN 0 TO integer'PRED(conv_integer(IARGPL1)) LOOP --:o962
      IF (lden(i) = '1') THEN
        iarg((i * 512)+(512-1) DOWNTO (i * 512)) <= CiData ;
      END IF;
    END LOOP;
    IF (lden(conv_integer(IARGPL1)) = '1') THEN
      iarg(conv_integer(IARGW1) DOWNTO conv_integer((ext(ext(IARGPL1,$QKTN_MAX
      (IARGW'length,32)) * integer_to_std(512,$QKTN_MAX(IARGW'length,32)
      ),$QKTN_MAX(IARGW'length,32))))) <= ext(CiData,ABS((conv_integer(IARGW1))-
      (conv_integer((ext(ext(IARGPL1,$QKTN_MAX(IARGW'length,32)) *
       integer_to_std(512,$QKTN_MAX(IARGW'length,32)),$QKTN_MAX(IARGW'length,32)
      )))))+1) ;
    END IF;
  END PROCESS ;

  PROCESS --:o968
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      callr <= callrN ;
      argl <= arglN ;
      lden <= ldenN ;
      fen <= fenN ;
    END IF ;
  END PROCESS ;

  PROCESS --:o978
  (*)
  BEGIN
    IF (argl /= "0000000000000000") THEN
      IF (ext(argl,32) > "00000000000000000000000000000001") THEN
        arglN <= ext((ext(argl,32) - "00000000000000000000000000000001"),16) ;
        ldenN <= shl(lden,integer_to_std(1,32)) ;
        callrN <= callr ;
        fenN <= '0' ;
      ELSE
        arglN <= "0000000000000000" ;
        ldenN <= ext("1",ABS(conv_integer(IARGPL1))+1) ;
        callrN <= NOT(callr) ;
        fenN <= '1' ;
      END IF;
    ELSE
      IF ((CtId = tid AND (DUMMY0 = '0'))) THEN
        arglN <= fxt(IARGPL1,16) ;
        ldenN <= ext(ext(it_cond_op((IARGPL1)/="0",ext("10",$QKTN_MAX(ABS
        (conv_integer(IARGPL1))+1,2)),ext("1",$QKTN_MAX(ABS(conv_integer(IARGPL1
        ))+1,2))),ABS(conv_integer(IARGPL1))+1),ABS(conv_integer(IARGPL1))+1) ;
        callrN <= it_cond_op((IARGPL1)/="0",callr,NOT(callr)) ;
        fenN <= boolean_to_std(ext(IARGPL1,$QKTN_MAX(IARGW'length,32)) =
         integer_to_std(0,$QKTN_MAX(IARGW'length,32))) ;
      ELSE
        arglN <= "0000000000000000" ;
        ldenN <= ext("1",ABS(conv_integer(IARGPL1))+1) ;
        callrN <= callr ;
        fenN <= '0' ;
      END IF;
    END IF;
  END PROCESS ;
  Generate1 : IF genblk1 : ((OARGPL)/="0") GENERATE
  BEGIN
    CoData <= oargB WHEN (oen)='1' ELSE std_logic_vector'
    ("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"
    ) ;
    CoDataEn <= '1' WHEN (oen)='1' ELSE 'Z' ;
    CoDataLen <= wlen WHEN (oen)='1' ELSE std_logic_vector'("ZZZZ") ;

    PROCESS --:o1021
    (*)
      VARIABLE oargB_DUMMY0 : std_logic_vector((512 - 1) DOWNTO 0) ;
    BEGIN
      oargB_DUMMY0 := oargB;
      oargB_DUMMY0 := std_logic_vector'
      ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      ) ;
      IF (ext(OARGPL,$QKTN_MAX(OARGW'length,32)) /= integer_to_std(0,$QKTN_MAX
      (OARGW'length,32))) THEN
        FOR i IN 0 TO integer'PRED(conv_integer(OARGPL1)) LOOP --:o1024
          oargB_DUMMY0 := (oargB_DUMMY0 OR it_cond_op((sten(i))='1',oarg((i *
           512)+(512-1) DOWNTO (i * 512)),std_logic_vector'
          ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
          ))) ;
        END LOOP;
        oargB_DUMMY0 := ext(ext(ext(oargB_DUMMY0,$QKTN_MAX(ABS((conv_integer
        (OARGW1))-(conv_integer((ext(ext(OARGPL1,$QKTN_MAX(OARGW'length,32)) *
         integer_to_std(512,$QKTN_MAX(OARGW'length,32)),$QKTN_MAX
        (OARGW'length,32))))))+1,512)) OR it_cond_op((sten(conv_integer(OARGPL1)
        ))='1',ext(oarg(conv_integer(OARGW1) DOWNTO conv_integer((ext(ext
        (OARGPL1,$QKTN_MAX(OARGW'length,32)) * integer_to_std(512,$QKTN_MAX
        (OARGW'length,32)),$QKTN_MAX(OARGW'length,32))))),$QKTN_MAX(ABS(
        (conv_integer(OARGW1))-(conv_integer((ext(ext(OARGPL1,$QKTN_MAX
        (OARGW'length,32)) * integer_to_std(512,$QKTN_MAX(OARGW'length,32)
        ),$QKTN_MAX(OARGW'length,32))))))+1,512)),ext
        ("00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"        ,$QKTN_MAX(ABS((conv_integer(OARGW1))-(conv_integer((ext(ext
        (OARGPL1,$QKTN_MAX(OARGW'length,32)) * integer_to_std(512,$QKTN_MAX
        (OARGW'length,32)),$QKTN_MAX(OARGW'length,32))))))+1,512))),512),512) ;
      END IF;
      oargB <= TRANSPORT oargB_DUMMY0;
    END PROCESS ;

    PROCESS --:o1031
    (fclk)
      VARIABLE sten_DUMMY1 : std_logic_vector(conv_integer(OARGPL1) DOWNTO 0) ;
      VARIABLE opktl_DUMMY2 : std_logic_vector(15 DOWNTO 0) ;
    BEGIN
      IF (fclk'event AND fclk = '1') THEN

        CASE oState IS
          WHEN  '0'  =>
            IF (fenN = '1') THEN
              oen <= '1' ;
              sten_DUMMY1 := integer_to_std(1,ABS(conv_integer(OARGPL1))+1) ;
              IF (OARGPL1 /= "0") THEN
                wlen <= "1000" ;
                oState <= '1' ;
                opktl_DUMMY2 := fxt(ext(ext(OARGPL1,$QKTN_MAX(OARGW'length,32))
                 - integer_to_std(1,$QKTN_MAX(OARGW'length,32)),16),16) ;
              ELSE
                wlen <= fxt(OFWLEN,4) ;
              END IF;
            ELSE
              sten_DUMMY1 := integer_to_std(0,ABS(conv_integer(OARGPL1))+1) ;
              oen <= '0' ;
            END IF;
          WHEN  '1'  =>
            sten_DUMMY1 := shl(sten_DUMMY1,integer_to_std(1,32)) ;
            IF (opktl_DUMMY2 /= "0000000000000000") THEN
              opktl_DUMMY2 := ext((ext(opktl_DUMMY2,32) -
               "00000000000000000000000000000001"),16) ;
              wlen <= "1000" ;
            ELSE
              oState <= '0' ;
              wlen <= fxt(OFWLEN,4) ;
            END IF;
          WHEN OTHERS => NULL ;
        END CASE;
      END IF ;
      sten <= TRANSPORT sten_DUMMY1;
      opktl <= opktl_DUMMY2;
    END PROCESS ;
  END GENERATE ;
  _zzqnthw : Q_NOT_TOUCH
     ;
END module;