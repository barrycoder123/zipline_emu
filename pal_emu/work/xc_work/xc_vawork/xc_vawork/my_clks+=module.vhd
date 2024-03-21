architecture module of my_clks is
  signal DUMMY0 : std_logic ;
  -- quickturn ext_drive_resolve DUMMY0
  -- quickturn uplevel DUMMY0 -1
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  component ixc_cakebind
    generic (
      WIDTH : integer := 1
    ) ;
    port (
      L : inout std_logic_vector((WIDTH - 1) downto 0) := (others => 'X') ;
    DUMMY0 : inout std_logic_vector((WIDTH - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_master_clock
    generic (
      phase_length : integer := 625
    ) ;
    port (
    phi1 : out std_logic ) ;
  end component ;

  signal clock_0 : std_logic ;

begin
  ixcb_0 : ixc_cakebind
    port map (
       DUMMY0
      ,clock_0
    ) ;
  ixcg_0 : ixc_master_clock
    port map (
       clock_0
    ) ;
end module;
