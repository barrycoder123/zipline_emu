architecture module of IXC_SV_GFIFO is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component IXC_SV_GFIFO_VXE_256
    port (
    rdCnt : in std_logic_vector(63 downto 0) := (others => 'X') ) ;
  end component ;


begin
  O : IXC_SV_GFIFO_VXE_256
    port map (
       rdCnt
    ) ;
end module;
