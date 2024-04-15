architecture module of xcva_top is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  -- quickturn user_defined_generate_suffix bxcm 
  component kme_tb
    -- quickturn verilog_black_box
    generic (

    ) ;
  end component ;

  component my_clks
    -- quickturn verilog_black_box
    generic (

    ) ;
  end component ;

  component IXC_GFIFO
  end component ;

  component ixc_time
    generic (
      DBW : integer := 5 ;
      TUSF : integer := 1 ;
      TUSFW : integer := 0 ;
      CYC1X : integer := 1
    ) ;
  end component ;

  component _ixc_isc
    -- quickturn verilog_black_box
    generic (

    ) ;
  end component ;

  component xc_top
    generic (
      IXC_TIME : integer := 0
    ) ;
  end component ;

  component ASSERTION
  end component ;


begin
  DUMMY0 : kme_tb
     ;
  DUMMY1 : my_clks
     ;
  DUMMY2 : IXC_GFIFO
     ;
  DUMMY3 : ixc_time
     ;
  DUMMY4 : _ixc_isc
     ;
  DUMMY5 : xc_top
    generic map(IXC_TIME => 1)
     ;
  DUMMY6 : ASSERTION
     ;
end module;
