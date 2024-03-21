architecture module of ixc_delay is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_sampleXp
    generic (
      WIDTH : integer := 1 ;
      DUMMY3 : integer := 3
    ) ;
    port (
      sv : out std_logic_vector((WIDTH - 1) downto 0) ;
    v : in std_logic_vector((WIDTH - 1) downto 0) := (others => 'X') ) ;
  end component ;


begin
  d0 : ixc_sampleXp
    generic map(WIDTH => W,DUMMY3 => 3)
    port map (
       dv
      ,v
    ) ;
end module;
