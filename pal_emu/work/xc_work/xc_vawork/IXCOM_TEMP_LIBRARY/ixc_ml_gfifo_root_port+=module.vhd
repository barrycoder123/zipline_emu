architecture module of ixc_ml_gfifo_root_port is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal RGFcbid : std_logic_vector(19 downto 0) ;
  -- quickturn external_ref RGFcbid
  signal RGFlen : std_logic_vector(11 downto 0) ;
  -- quickturn external_ref RGFlen
  signal RGFidata : std_logic_vector(511 downto 0) ;
  -- quickturn external_ref RGFidata
  signal Rtkin : std_logic ;
  -- quickturn external_ref Rtkin
  signal RGFreqD : std_logic ;
  attribute _2_state_ of RGFreqD: signal is 1 ;
  signal RGFcbidD : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of RGFcbidD: signal is 1 ;
  signal RGFlenD : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of RGFlenD: signal is 1 ;
  signal RGFidataD : std_logic_vector(511 downto 0) ;
  attribute _2_state_ of RGFidataD: signal is 1 ;
  signal en : std_logic ;
  attribute _2_state_ of en: signal is 1 ;
  signal DUMMY1 : std_logic ;
  attribute _2_state_ of DUMMY1: signal is 1 ;
  -- quickturn fast_clock fclk

begin
  Generate1 : for GenerateIndex in 19 downto 0 generate
    _UnNamed_Inst_30 : Q_RDN port map (CGFcbid(GenerateIndex)) ;
  end generate;
  Generate2 : for GenerateIndex in 11 downto 0 generate
    _UnNamed_Inst_31 : Q_RDN port map (CGFlen(GenerateIndex)) ;
  end generate;
  Generate3 : for GenerateIndex in 511 downto 0 generate
    _UnNamed_Inst_32 : Q_RDN port map (CGFidata(GenerateIndex)) ;
  end generate;
  Generate4 : for GenerateIndex in 19 downto 0 generate
    _UnNamed_Inst_33 : Q_RDN port map (RGFcbid(GenerateIndex)) ;
  end generate;
  Generate5 : for GenerateIndex in 11 downto 0 generate
    _UnNamed_Inst_34 : Q_RDN port map (RGFlen(GenerateIndex)) ;
  end generate;
  Generate6 : for GenerateIndex in 511 downto 0 generate
    _UnNamed_Inst_35 : Q_RDN port map (RGFidata(GenerateIndex)) ;
  end generate;
  Rtkin <= (tkin or boolean_to_std(((RGFreq)='1' and (not(RGFreqD))='1'))) ;

  process --:o736
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      RGFreqD <= RGFreq ;
      RGFcbidD <= RGFcbid ;
      RGFlenD <= RGFlen ;
      RGFidataD <= RGFidata ;
    end if ;
  end process ;
  tkout <= RGFreqD ;

  process --:o746
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY0 = '1') then
        en <= '0' ;
      elsif (((tkout)='1' and (not(tkin))='1')) then
        en <= '1' ;
      else
        en <= '0' ;
      end if;
      DUMMY1 <= en ;
    end if ;
  end process ;
  CGFidata <= std_logic_vector'
  ("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"
  ) when ((en)='1' and (not(DUMMY1))='1') else RGFidataD when (en)='1' else
   std_logic_vector'
  ("ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"
  ) ;
  CGFlen <= "000000000000" when ((en)='1' and (not(DUMMY1))='1') else RGFlenD
   when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZ") ;
  CGFcbid <= "11111111111111111101" when ((en)='1' and (not(DUMMY1))='1') else
   RGFcbidD when (en)='1' else std_logic_vector'("ZZZZZZZZZZZZZZZZZZZZ") ;
end module;
