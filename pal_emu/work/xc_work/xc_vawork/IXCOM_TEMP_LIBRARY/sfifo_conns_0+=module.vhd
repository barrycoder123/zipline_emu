architecture module of sfifo_conns_0 is
  component ixc_sfifo_bind_512_2
    port (
      L : inout std_logic_vector(511 downto 0) := (others => 'X') ;
    DUMMY0 : inout std_logic_vector(511 downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_sfifo_bind_22_2
    port (
      L : inout std_logic_vector(21 downto 0) := (others => 'X') ;
    DUMMY0 : inout std_logic_vector(21 downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_sfifo_bind_1_2
    port (
      L : inout std_logic_vector(0 downto 0) := (others => 'X') ;
    DUMMY0 : inout std_logic_vector(0 downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_sfifo_bind_4_2
    port (
      L : inout std_logic_vector(3 downto 0) := (others => 'X') ;
    DUMMY0 : inout std_logic_vector(3 downto 0) := (others => 'X') ) ;
  end component ;

  signal DUMMY0 : std_logic_vector(511 downto 0) ;
  signal DUMMY1 : std_logic_vector(511 downto 0) ;
  signal DUMMY2 : std_logic_vector(21 downto 0) ;
  signal DUMMY3 : std_logic_vector(21 downto 0) ;
  signal DUMMY4 : std_logic_vector(511 downto 0) ;
  signal DUMMY5 : std_logic_vector(511 downto 0) ;
  signal DUMMY6 : std_logic ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic_vector(3 downto 0) ;
  signal DUMMY9 : std_logic_vector(3 downto 0) ;

begin
  _zyGfifo_bind_0 : ixc_sfifo_bind_512_2
    port map (
       DUMMY0
      ,DUMMY1
    ) ;
  _zyGfifo_bind_1 : ixc_sfifo_bind_22_2
    port map (
       DUMMY2
      ,DUMMY3
    ) ;
  _zyGfifo_bind_2 : ixc_sfifo_bind_512_2
    port map (
       DUMMY4
      ,DUMMY5
    ) ;
  _zyGfifo_bind_3 : ixc_sfifo_bind_1_2
    port map (
       DUMMY6
      ,DUMMY7
    ) ;
  _zyGfifo_bind_4 : ixc_sfifo_bind_4_2
    port map (
       DUMMY8
      ,DUMMY9
    ) ;
end module;
