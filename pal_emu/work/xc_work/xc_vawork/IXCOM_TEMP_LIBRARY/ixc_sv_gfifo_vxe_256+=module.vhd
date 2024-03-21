architecture module of IXC_SV_GFIFO_VXE_256 is
  type DUMMY10 is array(integer range <>) of std_logic_vector(255 downto 0) ;
  type DUMMY11 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  type DUMMY12 is array(integer range <>) of std_logic_vector(64 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal DUMMY0 : std_logic ;
  signal hasMultiLevelGFIFO : std_logic ;
  signal fclk : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic_vector(63 downto 0) ;
  signal DUMMY5 : std_logic ;
  signal DUMMY6 : std_logic ;
  signal DUMMY4 : std_logic ;
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
  signal GFfull : std_logic ;
  -- quickturn external_ref GFfull
  signal LBreq : std_logic ;
  -- quickturn external_ref LBreq
  signal LBempty : std_logic ;
  signal LBfull : std_logic ;
  -- quickturn external_ref LBfull
  signal DUMMY7 : std_logic ;
  signal DUMMY9 : std_logic ;
  signal flushTbc : std_logic ;
  signal timeStampPkt : std_logic_vector(63 downto 0) ;
  signal svGFbusy1 : std_logic ;
  signal svGFbusy2 : std_logic ;
  signal GFtsAdd : std_logic ;
  attribute _2_state_ of GFtsAdd: signal is 1 ;
  signal LBrd : std_logic_vector(3 downto 0) ;
  -- quickturn external_ref LBrd
  signal LBwr : std_logic_vector(3 downto 0) ;
  -- quickturn external_ref LBwr
  signal LBwrI : std_logic_vector(3 downto 0) ;
  signal LBfill : std_logic_vector(3 downto 0) ;
  signal argLen : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of argLen: signal is 1 ;
  signal wLen : std_logic_vector(18 downto 0) ;
  attribute _2_state_ of wLen: signal is 1 ;
  signal rLen : std_logic_vector(17 downto 0) ;
  attribute _2_state_ of rLen: signal is 1 ;
  signal wSync : std_logic ;
  attribute _2_state_ of wSync: signal is 1 ;
  signal rSync : std_logic ;
  attribute _2_state_ of rSync: signal is 1 ;
  signal ixc_gfm_ofifo : DUMMY10(0 to 32767) ;
  attribute _2_state_ of ixc_gfm_ofifo: signal is 1 ;
  signal xdata : std_logic_vector(543 downto 0) ;
  attribute _2_state_ of xdata: signal is 1 ;
  signal wrtCnt : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of wrtCnt: signal is 1 ;
  signal wrtCntD : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of wrtCntD: signal is 1 ;
  signal ixc_gfm_ctl : DUMMY11(0 to 3) ;
  attribute _2_state_ of ixc_gfm_ctl: signal is 1 ;
  signal ixc_gfm_ack : DUMMY11(0 downto 0) ;
  attribute _2_state_ of ixc_gfm_ack: signal is 1 ;
  signal DUMMY8 : std_logic ;
  signal ackId : std_logic_vector(7 downto 0) ;
  signal ackIdNew : std_logic_vector(7 downto 0) ;
  signal ackClk : std_logic ;
  signal ackLen : std_logic_vector(17 downto 0) ;
  signal ofifoAddr0 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr0: signal is 1 ;
  signal ofifoAddr0N : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr0N: signal is 1 ;
  signal ofifoAddr1 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr1: signal is 1 ;
  signal ofifoAddr1N : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr1N: signal is 1 ;
  signal ofifoAddr2 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr2: signal is 1 ;
  signal ofifoAddr2N : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr2N: signal is 1 ;
  signal ofifoData : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of ofifoData: signal is 1 ;
  signal ofifoDataN : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of ofifoDataN: signal is 1 ;
  signal writeLen : std_logic_vector(5 downto 0) ;
  attribute _2_state_ of writeLen: signal is 1 ;
  signal reqD : std_logic ;
  attribute _2_state_ of reqD: signal is 1 ;
  signal GFfullD : std_logic ;
  attribute _2_state_ of GFfullD: signal is 1 ;
  signal oFill : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of oFill: signal is 1 ;
  signal oFillN : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of oFillN: signal is 1 ;
  signal ofifoWptr : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoWptr: signal is 1 ;
  signal ofifoWptrN : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoWptrN: signal is 1 ;
  signal shiftCount : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of shiftCount: signal is 1 ;
  signal shiftedXdata : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of shiftedXdata: signal is 1 ;
  signal TsBuf : DUMMY12(0 to 7) ;
  signal gfTsReqO : std_logic ;
  signal gfTsValO : std_logic_vector(63 downto 0) ;
  signal gfTsEn : std_logic ;
  -- quickturn keep_net GFtsReq
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack ixc_gfm_ofifo
  -- quickturn use_hardmacro_pack ixc_gfm_ctl
  -- quickturn use_hardmacro_pack ixc_gfm_ack
  -- quickturn no_hardmacro TsBuf

begin
  Generate1 : for GenerateIndex in 19 downto 0 generate
    _UnNamed_Inst_37 : Q_RDN port map (GFcbid(GenerateIndex)) ;
  end generate;
  Generate2 : for GenerateIndex in 11 downto 0 generate
    _UnNamed_Inst_38 : Q_RDN port map (GFlen(GenerateIndex)) ;
  end generate;
  Generate3 : for GenerateIndex in 511 downto 0 generate
    _UnNamed_Inst_39 : Q_RDN port map (GFidata(GenerateIndex)) ;
  end generate;
  _zzqnthw : Q_NOT_TOUCH
     ;
  _UnNamed_Inst_3 : Q_RDN port map (GFtsReq) ;
end module;
