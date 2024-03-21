architecture module of ifsyn_conns is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY4 : std_logic ;
  signal DUMMY5 : std_logic ;
  signal DUMMY7 : std_logic ;
  signal DUMMY6 : std_logic ;
  signal DUMMY9 : std_logic ;
  signal DUMMY8 : std_logic ;
  signal DUMMY11 : std_logic ;
  signal DUMMY10 : std_logic ;
  signal DUMMY13 : std_logic ;
  signal DUMMY12 : std_logic ;
  signal DUMMY15 : std_logic ;
  signal DUMMY14 : std_logic ;
  signal DUMMY17 : std_logic ;
  signal DUMMY16 : std_logic ;
  signal DUMMY19 : std_logic ;
  signal DUMMY18 : std_logic ;
  signal DUMMY21 : std_logic ;
  signal DUMMY20 : std_logic ;
  signal DUMMY23 : std_logic ;
  signal DUMMY22 : std_logic ;
  signal DUMMY25 : std_logic ;
  signal DUMMY24 : std_logic ;
  signal DUMMY27 : std_logic ;
  signal DUMMY26 : std_logic ;
  signal DUMMY29 : std_logic ;
  signal DUMMY28 : std_logic ;
  signal DUMMY31 : std_logic ;
  signal DUMMY30 : std_logic ;
  signal DUMMY33 : std_logic ;
  signal DUMMY32 : std_logic ;
  signal DUMMY35 : std_logic ;
  signal DUMMY34 : std_logic ;
  signal DUMMY37 : std_logic ;
  signal DUMMY36 : std_logic ;
  signal DUMMY39 : std_logic ;
  signal DUMMY38 : std_logic ;
  signal DUMMY41 : std_logic ;
  signal DUMMY40 : std_logic ;
  signal DUMMY43 : std_logic ;
  signal DUMMY42 : std_logic ;
  signal DUMMY45 : std_logic ;
  signal DUMMY44 : std_logic ;
  signal DUMMY47 : std_logic ;
  signal DUMMY46 : std_logic ;

begin
  isfasgn_0_0_0 : ixc_assign
    port map (
       DUMMY0
      ,DUMMY1
    ) ;
  osfasgn_0_0_0 : ixc_assign
    port map (
       DUMMY2
      ,DUMMY3
    ) ;
  isfasgn_0_1_1 : ixc_assign
    port map (
       DUMMY4
      ,DUMMY5
    ) ;
  osfasgn_0_1_1 : ixc_assign
    port map (
       DUMMY6
      ,DUMMY7
    ) ;
  osfasgn_1_0_0 : ixc_assign
    port map (
       DUMMY8
      ,DUMMY9
    ) ;
  osfasgn_1_1_0 : ixc_assign
    port map (
       DUMMY10
      ,DUMMY11
    ) ;
  osfasgn_1_2_0 : ixc_assign
    port map (
       DUMMY12
      ,DUMMY13
    ) ;
  osfasgn_1_3_0 : ixc_assign
    port map (
       DUMMY14
      ,DUMMY15
    ) ;
  osfasgn_1_4_0 : ixc_assign
    port map (
       DUMMY16
      ,DUMMY17
    ) ;
  osfasgn_1_5_1 : ixc_assign
    port map (
       DUMMY18
      ,DUMMY19
    ) ;
  osfasgn_1_6_0 : ixc_assign
    port map (
       DUMMY20
      ,DUMMY21
    ) ;
  osfasgn_1_7_1 : ixc_assign
    port map (
       DUMMY22
      ,DUMMY23
    ) ;
  osfasgn_1_8_0 : ixc_assign
    port map (
       DUMMY24
      ,DUMMY25
    ) ;
  osfasgn_1_9_1 : ixc_assign
    port map (
       DUMMY26
      ,DUMMY27
    ) ;
  osfasgn_1_10_0 : ixc_assign
    port map (
       DUMMY28
      ,DUMMY29
    ) ;
  osfasgn_1_11_1 : ixc_assign
    port map (
       DUMMY30
      ,DUMMY31
    ) ;
  osfasgn_1_12_0 : ixc_assign
    port map (
       DUMMY32
      ,DUMMY33
    ) ;
  osfasgn_1_13_1 : ixc_assign
    port map (
       DUMMY34
      ,DUMMY35
    ) ;
  osfasgn_1_14_0 : ixc_assign
    port map (
       DUMMY36
      ,DUMMY37
    ) ;
  osfasgn_1_15_1 : ixc_assign
    port map (
       DUMMY38
      ,DUMMY39
    ) ;
  osfasgn_1_16_0 : ixc_assign
    port map (
       DUMMY40
      ,DUMMY41
    ) ;
  osfasgn_1_17_1 : ixc_assign
    port map (
       DUMMY42
      ,DUMMY43
    ) ;
  osfasgn_1_18_0 : ixc_assign
    port map (
       DUMMY44
      ,DUMMY45
    ) ;
  osfasgn_1_19_1 : ixc_assign
    port map (
       DUMMY46
      ,DUMMY47
    ) ;
end module;
