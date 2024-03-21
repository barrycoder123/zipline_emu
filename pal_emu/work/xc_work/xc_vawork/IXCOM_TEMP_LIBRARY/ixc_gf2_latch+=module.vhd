architecture module of ixc_gf2_latch is
  -- quickturn CVASTRPROP MODULE HDLICE ALWAYS_ON TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_FDP0A
    port (
      D : in std_logic := 'X' ;
    Q : out std_logic ) ;
  end component ;

  signal qp : std_logic_vector((W - 1) downto 0) ;
  signal DUMMY0 : std_logic_vector((W - 1) downto 0) ;
  signal DUMMY1 : std_logic_vector((W - 1) downto 0) ;

begin
  q <= d when (en)='1' else qp ;
  Generate1 : for GenerateIndex in (W - 1) downto 0 generate
  fd : Q_FDP0A
    port map (
       D => DUMMY0(GenerateIndex)
      ,Q => DUMMY1(GenerateIndex)
    ) ;
  end generate;
  DUMMY0 <= ext(q,abs((W - 1))+1) ;
  qp <= ext(DUMMY1,abs((W - 1))+1) ;
end module;
