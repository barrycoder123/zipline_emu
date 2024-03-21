architecture module of IXC_SV_SFIFO_VXE_256 is
  type DUMMY5 is array(integer range <>) of std_logic_vector(255 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal fclk : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY6 : std_logic_vector(0 to 63) ;
  signal DUMMY7 : std_logic_vector(21 downto 0) ;
  -- quickturn external_ref DUMMY7
  attribute _2_state_ of DUMMY7: signal is 1 ;
  signal iData : std_logic_vector(511 downto 0) ;
  -- quickturn external_ref iData
  attribute _2_state_ of iData: signal is 1 ;
  signal ixc_gfm_ififo : DUMMY5(0 to 32767) ;
  attribute _2_state_ of ixc_gfm_ififo: signal is 1 ;
  signal ixc_gfm_ofifo : DUMMY5(0 to 32767) ;
  attribute _2_state_ of ixc_gfm_ofifo: signal is 1 ;
  signal wptr : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of wptr: signal is 1 ;
  signal wptrN : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of wptrN: signal is 1 ;
  signal xptr : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of xptr: signal is 1 ;
  signal xptrN : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of xptrN: signal is 1 ;
  signal ififoXdata : std_logic_vector(255 downto 0) ;
  attribute _2_state_ of ififoXdata: signal is 1 ;
  signal ififoXdataFinal : std_logic_vector(255 downto 0) ;
  attribute _2_state_ of ififoXdataFinal: signal is 1 ;
  signal rptr : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of rptr: signal is 1 ;
  signal rptrN : std_logic_vector(16 downto 0) ;
  attribute _2_state_ of rptrN: signal is 1 ;
  signal ififoRaddr0 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ififoRaddr0: signal is 1 ;
  signal ififoRaddr1 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ififoRaddr1: signal is 1 ;
  signal ififoRaddr2 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ififoRaddr2: signal is 1 ;
  signal ififoRdata : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of ififoRdata: signal is 1 ;
  signal rdDelta : std_logic_vector(17 downto 0) ;
  attribute _2_state_ of rdDelta: signal is 1 ;
  signal markBits : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of markBits: signal is 1 ;
  signal markBitsN : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of markBitsN: signal is 1 ;
  signal newMarkBits : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of newMarkBits: signal is 1 ;
  signal newMarkBitsD : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of newMarkBitsD: signal is 1 ;
  signal dataBits : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of dataBits: signal is 1 ;
  signal offset : std_logic_vector(23 downto 0) ;
  attribute _2_state_ of offset: signal is 1 ;
  signal offsetN : std_logic_vector(23 downto 0) ;
  attribute _2_state_ of offsetN: signal is 1 ;
  signal moveForward : std_logic ;
  attribute _2_state_ of moveForward: signal is 1 ;
  signal moveForwardN : std_logic ;
  attribute _2_state_ of moveForwardN: signal is 1 ;
  signal active : std_logic ;
  attribute _2_state_ of active: signal is 1 ;
  signal activeD : std_logic ;
  attribute _2_state_ of activeD: signal is 1 ;
  signal xval : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of xval: signal is 1 ;
  signal nps : std_logic ;
  -- quickturn external_ref nps
  attribute _2_state_ of nps: signal is 1 ;
  signal eob : std_logic ;
  attribute _2_state_ of eob: signal is 1 ;
  signal DUMMY4 : std_logic ;
  signal i : integer ;
  attribute _2_state_ of i: signal is 1 ;
  signal head : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of head: signal is 1 ;
  signal xhead : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of xhead: signal is 1 ;
  signal vhead : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of vhead: signal is 1 ;
  signal pktl : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of pktl: signal is 1 ;
  signal pktlN : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of pktlN: signal is 1 ;
  signal DUMMY8 : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of DUMMY8: signal is 1 ;
  signal vlenN : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of vlenN: signal is 1 ;
  signal rstDone : std_logic ;
  attribute _2_state_ of rstDone: signal is 1 ;
  signal rstDoneD : std_logic ;
  attribute _2_state_ of rstDoneD: signal is 1 ;
  signal rstDoneD2 : std_logic ;
  attribute _2_state_ of rstDoneD2: signal is 1 ;
  signal DUMMY9 : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of DUMMY9: signal is 1 ;
  signal odlyN : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of odlyN: signal is 1 ;
  signal DUMMY10 : std_logic ;
  attribute _2_state_ of DUMMY10: signal is 1 ;
  signal tmpData : std_logic_vector(575 downto 0) ;
  attribute _2_state_ of tmpData: signal is 1 ;
  signal oSt : std_logic ;
  signal oMark : std_logic_vector(255 downto 0) ;
  attribute _2_state_ of oMark: signal is 1 ;
  signal oDataEn : std_logic ;
  -- quickturn external_ref oDataEn
  attribute _2_state_ of oDataEn: signal is 1 ;
  signal oDataLen : std_logic_vector(3 downto 0) ;
  -- quickturn external_ref oDataLen
  attribute _2_state_ of oDataLen: signal is 1 ;
  signal oData : std_logic_vector(511 downto 0) ;
  -- quickturn external_ref oData
  attribute _2_state_ of oData: signal is 1 ;
  signal numRsts : std_logic_vector(31 downto 0) ;
  -- quickturn external_ref numRsts
  attribute _2_state_ of numRsts: signal is 1 ;
  signal ofifoData : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of ofifoData: signal is 1 ;
  signal oFill : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of oFill: signal is 1 ;
  signal ofifoAddr0 : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoAddr0: signal is 1 ;
  signal ofifoAddr1 : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of ofifoAddr1: signal is 1 ;
  signal ofifoAddr2 : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of ofifoAddr2: signal is 1 ;
  signal ofifoWptr : std_logic_vector(14 downto 0) ;
  attribute _2_state_ of ofifoWptr: signal is 1 ;
  signal shiftCount : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of shiftCount: signal is 1 ;
  signal shiftedOData : std_logic_vector(767 downto 0) ;
  attribute _2_state_ of shiftedOData: signal is 1 ;
  -- quickturn no_hardmacro numRsts
  -- quickturn keep_net numRsts
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack ixc_gfm_ififo
  -- quickturn use_hardmacro_pack ixc_gfm_ofifo

begin
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
