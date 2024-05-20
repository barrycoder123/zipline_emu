architecture module of IXC_PTXTOP is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal xptRtn : std_logic ;
  signal callEv : std_logic ;
  signal uClk : std_logic ;
  signal hasPTX : std_logic ;
  signal callEvOn : std_logic ;
  attribute _2_state_ of callEvOn: signal is 1 ;
  signal dly : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of dly: signal is 1 ;

begin
  _UnNamed_Inst_35 : Q_RDN port map (xptRtn) ;
end module;
