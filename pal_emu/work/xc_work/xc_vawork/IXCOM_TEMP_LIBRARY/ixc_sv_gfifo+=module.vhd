architecture module of IXC_SV_GFIFO is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component IXC_SV_GFIFO_VXE_256
    port (
    rdCnt : in std_logic_vector(63 downto 0) := (others => 'X') ) ;
  end component ;

  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal GFtsReq : std_logic ;

begin
  O : IXC_SV_GFIFO_VXE_256
    port map (
       rdCnt
    ) ;
  _UnNamed_Inst_2 : Q_RDN port map (GFtsReq) ;
end module;
