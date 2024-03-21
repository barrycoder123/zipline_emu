architecture module of IXC_SV_SFIFO is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component IXC_SV_SFIFO_VXE_256
    port (
      rdCnt : out std_logic_vector(63 downto 0) ;
    scgGFreq : in std_logic := 'X' ) ;
  end component ;

  component IXC_SV_SCG_GFIFO_VXE_64
    port (
    scgGFreq : out std_logic ) ;
  end component ;

  signal scgGFreq : std_logic ;

begin
  I : IXC_SV_SFIFO_VXE_256
    port map (
       rdCnt
      ,scgGFreq
    ) ;
  O : IXC_SV_SCG_GFIFO_VXE_64
    port map (
       scgGFreq
    ) ;
end module;
