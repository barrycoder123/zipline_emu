architecture module of IXC_GFIFO is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component IXC_OSF
    generic (
      WIDTH : integer := 1
    ) ;
  end component ;

  component IXC_ISF
    generic (
      WIDTH : integer := 1
    ) ;
  end component ;

  component IXC_OSF1
    generic (
      WIDTH : integer := 20
    ) ;
  end component ;

  component IXC_PTXTOP
  end component ;

  component ixcEcmHold
  end component ;

  component ixcEcmHoldOtb
  end component ;

  component IXC_SV_GFIFO
    port (
    rdCnt : in std_logic_vector(63 downto 0) := (others => 'X') ) ;
  end component ;

  component IXC_SV_SFIFO
    port (
    rdCnt : out std_logic_vector(63 downto 0) ) ;
  end component ;

  component gfifo_conns
  end component ;

  component sfifo_conns
  end component ;

  component ifsyn_conns
  end component ;

  signal rdCnt : std_logic_vector(63 downto 0) ;

begin
  OSF : IXC_OSF
     ;
  ISF : IXC_ISF
     ;
  OSF1 : IXC_OSF1
     ;
  PTXTOP : IXC_PTXTOP
     ;
  HOLDTOP : ixcEcmHold
     ;
  DUMMY : ixcEcmHoldOtb
     ;
  O : IXC_SV_GFIFO
    port map (
       rdCnt
    ) ;
  I : IXC_SV_SFIFO
    port map (
       rdCnt
    ) ;
  _zyGfifo_gfifo_conns : gfifo_conns
     ;
  _zyGfifo_sfifo_conns : sfifo_conns
     ;
  _ifsyn_conns : ifsyn_conns
     ;
end module;
