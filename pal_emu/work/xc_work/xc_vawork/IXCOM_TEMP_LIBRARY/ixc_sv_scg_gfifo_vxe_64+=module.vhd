architecture module of IXC_SV_SCG_GFIFO_VXE_64 is
  type DUMMY3 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic_vector(63 downto 0) ;
  signal GFreq : std_logic ;
  -- quickturn external_ref GFreq
  signal GFcbid : std_logic_vector(19 downto 0) ;
  -- quickturn external_ref GFcbid
  signal GFlen : std_logic_vector(11 downto 0) ;
  -- quickturn external_ref GFlen
  signal GFidata : std_logic_vector(511 downto 0) ;
  -- quickturn external_ref GFidata
  signal GFtsReq : std_logic ;
  -- quickturn external_ref GFtsReq
  signal DUMMY2 : std_logic ;
  signal timeStampPkt : std_logic_vector(63 downto 0) ;
  signal GFtsAdd : std_logic ;
  attribute _2_state_ of GFtsAdd: signal is 1 ;
  signal argLen : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of argLen: signal is 1 ;
  signal ixc_gfm_ofifo : DUMMY3(0 to 131071) ;
  attribute _2_state_ of ixc_gfm_ofifo: signal is 1 ;
  signal xdata : std_logic_vector(543 downto 0) ;
  attribute _2_state_ of xdata: signal is 1 ;
  signal wrtCnt : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of wrtCnt: signal is 1 ;
  signal wrtCntD : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of wrtCntD: signal is 1 ;
  signal ixc_gfm_ctl : DUMMY3(0 downto 0) ;
  attribute _2_state_ of ixc_gfm_ctl: signal is 1 ;
  signal ofifoAddr0 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr0: signal is 1 ;
  signal ofifoAddr0N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr0N: signal is 1 ;
  signal ofifoAddr1 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr1: signal is 1 ;
  signal ofifoAddr2 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr2: signal is 1 ;
  signal ofifoAddr3 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr3: signal is 1 ;
  signal ofifoAddr4 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr4: signal is 1 ;
  signal ofifoAddr5 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr5: signal is 1 ;
  signal ofifoAddr6 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr6: signal is 1 ;
  signal ofifoAddr7 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr7: signal is 1 ;
  signal ofifoAddr8 : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr8: signal is 1 ;
  signal ofifoAddr1N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr1N: signal is 1 ;
  signal ofifoAddr2N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr2N: signal is 1 ;
  signal ofifoAddr3N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr3N: signal is 1 ;
  signal ofifoAddr4N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr4N: signal is 1 ;
  signal ofifoAddr5N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr5N: signal is 1 ;
  signal ofifoAddr6N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr6N: signal is 1 ;
  signal ofifoAddr7N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr7N: signal is 1 ;
  signal ofifoAddr8N : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoAddr8N: signal is 1 ;
  signal ofifoData : std_logic_vector(575 downto 0) ;
  attribute _2_state_ of ofifoData: signal is 1 ;
  signal ofifoDataN : std_logic_vector(575 downto 0) ;
  attribute _2_state_ of ofifoDataN: signal is 1 ;
  signal writeLen : std_logic_vector(5 downto 0) ;
  attribute _2_state_ of writeLen: signal is 1 ;
  signal reqD : std_logic ;
  attribute _2_state_ of reqD: signal is 1 ;
  signal oFill : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of oFill: signal is 1 ;
  signal oFillN : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of oFillN: signal is 1 ;
  signal ofifoWptr : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoWptr: signal is 1 ;
  signal ofifoWptrN : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of ofifoWptrN: signal is 1 ;
  signal index : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of index: signal is 1 ;
  -- quickturn keep_net GFtsReq
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack ixc_gfm_ofifo
  -- quickturn use_hardmacro_pack ixc_gfm_ctl

begin
  Generate1 : for GenerateIndex in 19 downto 0 generate
    _UnNamed_Inst_40 : Q_RDN port map (GFcbid(GenerateIndex)) ;
  end generate;
  Generate2 : for GenerateIndex in 11 downto 0 generate
    _UnNamed_Inst_41 : Q_RDN port map (GFlen(GenerateIndex)) ;
  end generate;
  Generate3 : for GenerateIndex in 511 downto 0 generate
    _UnNamed_Inst_42 : Q_RDN port map (GFidata(GenerateIndex)) ;
  end generate;
  _zzqnthw : Q_NOT_TOUCH
     ;
  _UnNamed_Inst_4 : Q_RDN port map (GFtsReq) ;
end module;
