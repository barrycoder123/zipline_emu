architecture module of ixc_clkbind is
  component Q_JMPDRV
    port (
      A : out std_logic ;
    B : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic_vector((WIDTH - 1) downto 0) ;
  signal DUMMY1 : std_logic_vector((WIDTH - 1) downto 0) ;

begin
  Generate1 : for GenerateIndex in (WIDTH - 1) downto 0 generate
  d : Q_JMPDRV
    port map (
       DUMMY0(GenerateIndex)
      ,DUMMY1(GenerateIndex)
    ) ;
  end generate;
  L <= ext(DUMMY0,abs((WIDTH - 1))+1) ;
  DUMMY1 <= ext(R,abs((WIDTH - 1))+1) ;
end module;
