architecture module of gfifo_conns_0 is
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

  component ixc_gfifo_bind_20_2
    port (
      L : inout std_logic_vector(19 downto 0) := (others => 'X') ;
    DUMMY0 : inout std_logic_vector(19 downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_gfifo_bind_12_2
    port (
      L : inout std_logic_vector(11 downto 0) := (others => 'X') ;
    DUMMY0 : inout std_logic_vector(11 downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_gfifo_bind_512_2
    port (
      L : inout std_logic_vector(511 downto 0) := (others => 'X') ;
    DUMMY0 : inout std_logic_vector(511 downto 0) := (others => 'X') ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY4 : std_logic ;
  signal DUMMY5 : std_logic_vector(19 downto 0) ;
  signal DUMMY6 : std_logic_vector(19 downto 0) ;
  signal DUMMY7 : std_logic_vector(11 downto 0) ;
  signal DUMMY8 : std_logic_vector(11 downto 0) ;
  signal DUMMY9 : std_logic_vector(511 downto 0) ;
  signal DUMMY10 : std_logic_vector(511 downto 0) ;
  signal DUMMY11 : std_logic_vector(0 downto 0) ;
  signal DUMMY12 : std_logic_vector(0 downto 0) ;

begin
  _zyGfifo_cico_0 : ixc_gfifo_cico
    generic map(N => integer_to_std(1,32))
    port map (
       DUMMY11
      ,DUMMY12
      ,DUMMY2
      ,DUMMY3
    ) ;
  DUMMY0 <= it_conv_std_logic(DUMMY11) ;
  DUMMY12 <= ext((DUMMY1),1) ;
  DUMMY4 <= '0' ;
  _zyGfifo_bind_5 : ixc_gfifo_bind_20_2
    port map (
       DUMMY5
      ,DUMMY6
    ) ;
  _zyGfifo_bind_6 : ixc_gfifo_bind_12_2
    port map (
       DUMMY7
      ,DUMMY8
    ) ;
  _zyGfifo_bind_7 : ixc_gfifo_bind_512_2
    port map (
       DUMMY9
      ,DUMMY10
    ) ;
end module;
