ARCHITECTURE module OF ixc_mem_call_0_0 IS
  TYPE DUMMY4 IS ARRAY(integer RANGE <>) OF std_logic_vector(S2HMEMW1 DOWNTO 0)
   ;
  TYPE DUMMY5 IS ARRAY(integer RANGE <>) OF std_logic_vector(H2SMEMW1 DOWNTO 0)
   ;
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT ixc_osf1_evcap
    PORT (
      pvec : IN std_logic := 'X' ;
    pvecEvO : OUT std_logic ) ;
  END COMPONENT ;

  COMPONENT ixc_osf_evcap
    PORT (
      pvec : IN std_logic := 'X' ;
    pvecEvO : OUT std_logic ) ;
  END COMPONENT ;

  COMPONENT Q_CCLKCHK
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_NOT_TOUCH
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  SIGNAL fclk : std_logic ;
  SIGNAL callEvent : std_logic ;
  SIGNAL DUMMY2 : std_logic ;
  SIGNAL DUMMY3 : std_logic ;
  SIGNAL DUMMY0 : std_logic ;
  ATTRIBUTE _2_state_ OF DUMMY0: SIGNAL IS 1 ;
  SIGNAL DUMMY1 : std_logic ;
  ATTRIBUTE _2_state_ OF DUMMY1: SIGNAL IS 1 ;
  SIGNAL osfBusy : std_logic ;
  ATTRIBUTE _2_state_ OF osfBusy: SIGNAL IS 1 ;
  SIGNAL isfBusy : std_logic ;
  ATTRIBUTE _2_state_ OF isfBusy: SIGNAL IS 1 ;
  SIGNAL _zys2hmem : DUMMY4(0 TO conv_integer((ext(S2HMDEP,$QKTN_MAX
  (S2HDW'length,32)) - integer_to_std(1,$QKTN_MAX(S2HDW'length,32))))) ;
  ATTRIBUTE _2_state_ OF _zys2hmem: SIGNAL IS 1 ;
  SIGNAL s2hmport : std_logic_vector(S2HMEMW1 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF s2hmport: SIGNAL IS 1 ;
  SIGNAL s2hxtail : std_logic_vector(S2HMEMW1 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF s2hxtail: SIGNAL IS 1 ;
  SIGNAL s2hmark : std_logic ;
  ATTRIBUTE _2_state_ OF s2hmark: SIGNAL IS 1 ;
  SIGNAL s2hmarkN : std_logic ;
  ATTRIBUTE _2_state_ OF s2hmarkN: SIGNAL IS 1 ;
  SIGNAL ns2hd : std_logic ;
  ATTRIBUTE _2_state_ OF ns2hd: SIGNAL IS 1 ;
  SIGNAL _zyh2smem : DUMMY5(0 TO conv_integer(((ext(H2SMDEP,$QKTN_MAX
  (H2SDW'length,32)) + integer_to_std(NEEDLTID,$QKTN_MAX(H2SDW'length,32))) -
   integer_to_std(1,$QKTN_MAX(H2SDW'length,32))))) ;
  ATTRIBUTE _2_state_ OF _zyh2smem: SIGNAL IS 1 ;
  SIGNAL h2smport : std_logic_vector(H2SMEMW1 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF h2smport: SIGNAL IS 1 ;
  SIGNAL nh2sd : std_logic ;
  ATTRIBUTE _2_state_ OF nh2sd: SIGNAL IS 1 ;
  SIGNAL h2s_notifyOv : std_logic ;
  ATTRIBUTE _2_state_ OF h2s_notifyOv: SIGNAL IS 1 ;
  SIGNAL wptr : std_logic_vector((WPTRWID - 1) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF wptr: SIGNAL IS 1 ;
  SIGNAL rptr : std_logic_vector((RPTRWID - 1) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF rptr: SIGNAL IS 1 ;
  SIGNAL h2sstate : std_logic_vector(1 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF h2sstate: SIGNAL IS 1 ;
  SIGNAL s2hstate : std_logic_vector(1 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF s2hstate: SIGNAL IS 1 ;
  --  quickturn fast_clock fclk
  --  quickturn use_hardmacro_pack _zys2hmem
  --  quickturn use_hardmacro_pack _zyh2smem

BEGIN
  Generate1 : IF genblk1 : ((ISSVA)/=0) GENERATE
  BEGIN
    osfevcap : ixc_osf1_evcap
      PORT MAP (
         h2s_notify
        ,to_osf
      ) ;
  ELSE DUMMY6 : GENERATE
  BEGIN
    osfevcap : ixc_osf_evcap
      PORT MAP (
         h2s_notify
        ,to_osf
      ) ;
  END GENERATE ;
  s2h_notify <= from_isf ;
  Generate2 : IF genblk2 : (ext(H2SDW,$QKTN_MAX(H2SDW'length,32)) >
   integer_to_std(0,$QKTN_MAX(H2SDW'length,32))) GENERATE
  BEGIN
    Generate3 : IF genblk1 : (ext(H2SMDEP,$QKTN_MAX(H2SDW'length,32)) =
     integer_to_std(1,$QKTN_MAX(H2SDW'length,32))) GENERATE
    BEGIN

      PROCESS --:o1639
      (*)
      BEGIN
        _zyh2smem(0) <= ext(h2s_data,ABS(H2SMEMW1)+1) ;
      END PROCESS ;
    ELSE DUMMY7 : GENERATE
    BEGIN
      DUMMY2 <= '1' WHEN ((nh2sd)='1' OR (osfBusy)='1') ELSE 'Z' ;

      PROCESS --:o1647
      (fclk)
        VARIABLE DUMMY8 : std_logic_vector(0 TO 31) ;
      BEGIN
        IF (fclk'event AND fclk = '1') THEN
          DUMMY8 := ext(h2sstate,32);

          CASE DUMMY8  IS
            WHEN integer_to_std(ST_IDLE,32) =>
              IF (DUMMY0 = '1') THEN
                h2sstate <= integer_to_std(ST_ACTIVE,2) ;
              END IF;
            WHEN integer_to_std(ST_ACTIVE,32) =>
              IF (nh2sd = '1') THEN
                osfBusy <= '1' ;
                h2sstate <= integer_to_std(ST_MRDWR,2) ;
                wptr <= integer_to_std(0,ABS((WPTRWID - 1))+1) ;
              END IF;
            WHEN integer_to_std(ST_MRDWR,32) =>
              IF (ext(wptr,$QKTN_MAX(ABS((WPTRWID - 1))+1,$QKTN_MAX
              (H2SDW'length,32))) = ext(H2SNBLK1,$QKTN_MAX(ABS((WPTRWID - 1)
              )+1,$QKTN_MAX(H2SDW'length,32)))) THEN
                osfBusy <= '0' ;
                h2sstate <= integer_to_std(ST_IDLE,2) ;
              ELSE
                wptr <= ext(ext(ext(wptr,$QKTN_MAX(ABS((WPTRWID - 1))+1,32)) +
                 integer_to_std(1,$QKTN_MAX(ABS((WPTRWID - 1))+1,32)),ABS(
                (WPTRWID - 1))+1),ABS((WPTRWID - 1))+1) ;
              END IF;
            WHEN OTHERS => NULL ;
          END CASE;
          h2s_notifyOv <= h2s_notify ;
        END IF ;
      END PROCESS ;

      PROCESS --:o1672
      (*)
      BEGIN
        _zyh2smem(conv_integer(wptr)) <= h2smport ;
      END PROCESS ;

      PROCESS --:o1676
      (*)
      BEGIN
        nh2sd <= boolean_to_std(h2s_notify /= h2s_notifyOv) ;
      END PROCESS ;

      PROCESS --:o1680
      (*)
        VARIABLE h2smport_DUMMY0 : std_logic_vector(H2SMEMW1 DOWNTO 0) ;
        VARIABLE i : integer := 0 ;
      BEGIN
        h2smport_DUMMY0 := h2smport;
        h2smport_DUMMY0 := ext("00000000000000000000000000000000",ABS(H2SMEMW1
        )+1) ;
        FOR i IN 0 TO integer'PRED(conv_integer(H2SNBLK1)) LOOP --:o1682
          h2smport_DUMMY0 := ext(ext(ext(h2smport_DUMMY0,$QKTN_MAX(ABS(H2SMEMW1
          )+1,$QKTN_MAX((H2SMEMW),32))) OR it_cond_op(ext(wptr,$QKTN_MAX(ABS(
          (WPTRWID - 1))+1,32)) = integer_to_std(i,$QKTN_MAX(ABS((WPTRWID - 1)
          )+1,32)),ext(h2s_data((i * H2SMEMW)+(H2SMEMW-1) DOWNTO (i * H2SMEMW)
          ),$QKTN_MAX(ABS(H2SMEMW1)+1,$QKTN_MAX((H2SMEMW),32))),ext
          ("00000000000000000000000000000000",$QKTN_MAX(ABS(H2SMEMW1
          )+1,$QKTN_MAX((H2SMEMW),32)))),ABS(H2SMEMW1)+1),ABS(H2SMEMW1)+1) ;
        END LOOP;
        h2smport_DUMMY0 := ext(ext(ext(h2smport_DUMMY0,$QKTN_MAX(ABS(H2SMEMW1
        )+1,$QKTN_MAX(ABS((conv_integer(H2SDW1))-(conv_integer((ext(ext
        (H2SNBLK1,$QKTN_MAX(H2SDW'length,32)) * integer_to_std(H2SMEMW,$QKTN_MAX
        (H2SDW'length,32)),$QKTN_MAX(H2SDW'length,32))))))+1,32))) OR it_cond_op
        (ext(wptr,$QKTN_MAX(ABS((WPTRWID - 1))+1,$QKTN_MAX(H2SDW'length,32))) =
         ext(H2SNBLK1,$QKTN_MAX(ABS((WPTRWID - 1))+1,$QKTN_MAX(H2SDW'length,32))
        ),ext(h2s_data(conv_integer(H2SDW1) DOWNTO conv_integer((ext(ext
        (H2SNBLK1,$QKTN_MAX(H2SDW'length,32)) * integer_to_std(H2SMEMW,$QKTN_MAX
        (H2SDW'length,32)),$QKTN_MAX(H2SDW'length,32))))),$QKTN_MAX(ABS(H2SMEMW1
        )+1,$QKTN_MAX(ABS((conv_integer(H2SDW1))-(conv_integer((ext(ext
        (H2SNBLK1,$QKTN_MAX(H2SDW'length,32)) * integer_to_std(H2SMEMW,$QKTN_MAX
        (H2SDW'length,32)),$QKTN_MAX(H2SDW'length,32))))))+1,32))),ext
        ("00000000000000000000000000000000",$QKTN_MAX(ABS(H2SMEMW1)+1,$QKTN_MAX
        (ABS((conv_integer(H2SDW1))-(conv_integer((ext(ext(H2SNBLK1,$QKTN_MAX
        (H2SDW'length,32)) * integer_to_std(H2SMEMW,$QKTN_MAX(H2SDW'length,32)
        ),$QKTN_MAX(H2SDW'length,32))))))+1,32)))),ABS(H2SMEMW1)+1),ABS(H2SMEMW1
        )+1) ;
        h2smport <= TRANSPORT h2smport_DUMMY0;
      END PROCESS ;
    END GENERATE ;
  END GENERATE ;
  Generate4 : IF genblk3 : (NEEDLTID > 0) GENERATE
  BEGIN

    PROCESS --:o1694
    (*)
    BEGIN
      _zyh2smem(conv_integer(H2SMDEP)) <= ext(std_logic_vector'((ext
      (maid,$QKTN_MAX(ABS(conv_integer(MAIDW1))+1,16)) OR ext
      ("0000000000000000",$QKTN_MAX(ABS(conv_integer(MAIDW1))+1,16))) & (ext
      (ltid,$QKTN_MAX(ABS(conv_integer(LTIDW1))+1,16)) OR ext
      ("0000000000000000",$QKTN_MAX(ABS(conv_integer(LTIDW1))+1,16)))),ABS
      (H2SMEMW1)+1) ;
    END PROCESS ;
  END GENERATE ;
  Generate5 : IF genblk4 : (ext(S2HDW,$QKTN_MAX(S2HDW'length,32)) >
   integer_to_std(0,$QKTN_MAX(S2HDW'length,32))) GENERATE
  BEGIN
    Generate6 : IF genblk1 : (ext(S2HMDEP,$QKTN_MAX(S2HDW'length,32)) =
     integer_to_std(1,$QKTN_MAX(S2HDW'length,32))) GENERATE
    BEGIN

      PROCESS --:o1704
      (*)
      BEGIN
        s2h_data <= ext(_zys2hmem(0),ABS(conv_integer(S2HDW1))+1) ;
      END PROCESS ;
    ELSE DUMMY9 : GENERATE
    BEGIN
      DUMMY3 <= '1' WHEN ((ns2hd)='1' OR (isfBusy)='1') ELSE 'Z' ;

      PROCESS --:o1712
      (fclk)
        VARIABLE DUMMY10 : std_logic_vector(0 TO 31) ;
      BEGIN
        IF (fclk'event AND fclk = '1') THEN
          DUMMY10 := ext(s2hstate,32);

          CASE DUMMY10  IS
            WHEN integer_to_std(ST_IDLE,32) =>
              IF (ns2hd = '1') THEN
                isfBusy <= '1' ;
                s2hstate <= integer_to_std(ST_ACTIVE,2) ;
              END IF;
              rptr <= integer_to_std(0,ABS((RPTRWID - 1))+1) ;
            WHEN integer_to_std(ST_ACTIVE,32) =>
              isfBusy <= '1' ;
              s2hstate <= integer_to_std(ST_MRDWR,2) ;
              rptr <= integer_to_std(0,ABS((RPTRWID - 1))+1) ;
            WHEN integer_to_std(ST_MRDWR,32) =>
              IF (ext(rptr,$QKTN_MAX(ABS((RPTRWID - 1))+1,$QKTN_MAX
              (S2HDW'length,32))) = ext(S2HNBLK1,$QKTN_MAX(ABS((RPTRWID - 1)
              )+1,$QKTN_MAX(S2HDW'length,32)))) THEN
                isfBusy <= '0' ;
                s2hstate <= integer_to_std(ST_IDLE,2) ;
                rptr <= fxt(ext(ext(S2HMDEP,$QKTN_MAX(ABS((RPTRWID - 1)
                )+1,$QKTN_MAX(S2HDW'length,32))) - integer_to_std(1,$QKTN_MAX
                (ABS((RPTRWID - 1))+1,$QKTN_MAX(S2HDW'length,32))),ABS((RPTRWID
                 - 1))+1),ABS((RPTRWID - 1))+1) ;
              ELSE
                rptr <= ext(ext(ext(rptr,$QKTN_MAX(ABS((RPTRWID - 1))+1,32)) +
                 integer_to_std(1,$QKTN_MAX(ABS((RPTRWID - 1))+1,32)),ABS(
                (RPTRWID - 1))+1),ABS((RPTRWID - 1))+1) ;
              END IF;
            WHEN OTHERS => NULL ;
          END CASE;
          s2hmark <= s2hmarkN ;
        END IF ;
      END PROCESS ;

      PROCESS --:o1740
      (*)
        VARIABLE s2hxtail_DUMMY1 : std_logic_vector(S2HMEMW1 DOWNTO 0) ;
        VARIABLE ns2hd_DUMMY2 : std_logic ;
      BEGIN
        s2hxtail_DUMMY1 := s2hxtail;
        ns2hd_DUMMY2 := ns2hd;
        s2hxtail_DUMMY1 := _zys2hmem(conv_integer((ext(S2HMDEP,$QKTN_MAX
        (S2HDW'length,32)) - integer_to_std(1,$QKTN_MAX(S2HDW'length,32))))) ;
        ns2hd_DUMMY2 := boolean_to_std(s2hxtail_DUMMY1(S2HMEMW1) /= s2hmark) ;
        IF (ns2hd_DUMMY2 = '1') THEN
          s2hmarkN <= s2hxtail_DUMMY1(S2HMEMW1) ;
        ELSE
          s2hmarkN <= s2hmark ;
        END IF;
        s2hxtail <= TRANSPORT s2hxtail_DUMMY1;
        ns2hd <= ns2hd_DUMMY2;
      END PROCESS ;

      PROCESS --:o1750
      (*)
      BEGIN
        s2hmport <= _zys2hmem(conv_integer(rptr)) ;
      END PROCESS ;

      PROCESS --:o1754
      (*)
        VARIABLE i : integer := 0 ;
      BEGIN
        FOR i IN 0 TO integer'PRED(conv_integer(S2HNBLK1)) LOOP --:o1755
          IF (ext(rptr,$QKTN_MAX(ABS((RPTRWID - 1))+1,32)) = integer_to_std
          (i,$QKTN_MAX(ABS((RPTRWID - 1))+1,32))) THEN
            s2h_data((i * S2HMEMW)+(S2HMEMW-1) DOWNTO (i * S2HMEMW)) <= ext
            (s2hmport,(S2HMEMW)) ;
          END IF;
        END LOOP;
        IF (ext(rptr,$QKTN_MAX(ABS((RPTRWID - 1))+1,$QKTN_MAX(S2HDW'length,32)))
         = ext(S2HNBLK1,$QKTN_MAX(ABS((RPTRWID - 1))+1,$QKTN_MAX(S2HDW'length,32
        )))) THEN
          s2h_data(conv_integer(S2HDW1) DOWNTO conv_integer((ext(ext
          (S2HNBLK1,$QKTN_MAX(S2HDW'length,32)) * integer_to_std
          (S2HMEMW,$QKTN_MAX(S2HDW'length,32)),$QKTN_MAX(S2HDW'length,32))))) <=
           ext(s2hmport,ABS((conv_integer(S2HDW1))-(conv_integer((ext(ext
          (S2HNBLK1,$QKTN_MAX(S2HDW'length,32)) * integer_to_std
          (S2HMEMW,$QKTN_MAX(S2HDW'length,32)),$QKTN_MAX(S2HDW'length,32))))))+1
          ) ;
        END IF;
      END PROCESS ;
    END GENERATE ;
  END GENERATE ;
  cchk : Q_CCLKCHK
    PORT MAP (
       h2s_notify
    ) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
END module;