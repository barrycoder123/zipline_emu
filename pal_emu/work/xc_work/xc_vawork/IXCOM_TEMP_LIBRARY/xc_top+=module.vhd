architecture module of xc_top is
  -- quickturn CVASTRPROP MODULE HDLICE ALWAYS_ON TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_EV_WOR
    port (
    A : in std_logic := 'X' ) ;
  end component ;

  component Q_MPCLK
    port (
    uClk : out std_logic ) ;
  end component ;

  component Q_EV_WOR_START
    port (
    A : in std_logic := 'X' ) ;
  end component ;

  component Q_MPCLK1P
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component Q_CLKSRC
    port (
    clk : in std_logic := 'X' ) ;
  end component ;

  component Q_RBUFZN
    port (
      Z : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component Q_RBUFZP
    port (
      Z : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component buf
    port(Z : out std_logic ; A : in std_logic) ;
  end component ;
  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal fclk : std_logic ;
  signal uClk : std_logic ;
  -- quickturn external_ref uClk
  signal _ET3_COMPILER_RESERVED_NAME_DUTPI_APPLY_ : std_logic ;
  signal _ET3_COMPILER_RESERVED_NAME_LBRKER_ON_ : std_logic ;
  signal _ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_ : std_logic_vector(63
   downto 0) ;
  -- quickturn external_ref _ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_
  signal xc1xEcm : std_logic ;
  -- quickturn external_ref xc1xEcm
  signal callEmuPI : std_logic ;
  signal evalStepPI : std_logic_vector(63 downto 0) ;
  signal ckgHoldPI : std_logic ;
  signal tbcHoldPI : std_logic ;
  signal noOutputPI : std_logic ;
  signal stopEmuPI : std_logic ;
  signal oneStepPI : std_logic ;
  signal stop1 : std_logic ;
  -- quickturn external_ref stop1
  signal stop2 : std_logic ;
  -- quickturn external_ref stop2
  signal stop4 : std_logic ;
  -- quickturn external_ref stop4
  signal GFbusy : std_logic ;
  signal svGFbusy : std_logic ;
  -- quickturn external_ref svGFbusy
  signal otbGFbusy : std_logic ;
  -- quickturn external_ref otbGFbusy
  signal asyncCall : std_logic ;
  signal svAsyncCall : std_logic ;
  -- quickturn external_ref svAsyncCall
  signal otbAsyncCall : std_logic ;
  -- quickturn external_ref otbAsyncCall
  signal isfWait : std_logic ;
  -- quickturn external_ref isfWait
  signal osfWait : std_logic ;
  -- quickturn external_ref osfWait
  signal gfifoWait : std_logic ;
  signal ecmHoldBusy : std_logic ;
  -- quickturn external_ref ecmHoldBusy
  signal sdlStop : std_logic ;
  signal cpfStop : std_logic ;
  signal eClk : std_logic ;
  -- quickturn external_ref eClk
  signal clockMCInit : std_logic ;
  -- quickturn external_ref clockMCInit
  signal hasSFIFO : std_logic ;
  -- quickturn external_ref hasSFIFO
  signal hasGFIFO1 : std_logic ;
  -- quickturn external_ref hasGFIFO1
  signal hasGFIFO2 : std_logic ;
  -- quickturn external_ref hasGFIFO2
  signal hasPTX : std_logic ;
  -- quickturn external_ref hasPTX
  signal bpWait : std_logic ;
  -- quickturn external_ref bpWait
  signal bWait : std_logic ;
  -- quickturn external_ref bWait
  signal xpHold : std_logic ;
  signal mpEnable : std_logic ;
  -- quickturn external_ref mpEnable
  signal ixcHoldClk : std_logic ;
  -- quickturn external_ref ixcHoldClk
  signal cakeCcEnable : std_logic ;
  -- quickturn external_ref cakeCcEnable
  signal ptxBusy : std_logic ;
  -- quickturn external_ref ptxBusy
  signal holdEcm : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY4 : std_logic ;
  signal bpHalt : std_logic ;
  signal acHalt : std_logic ;
  signal lockTrace : std_logic ;
  signal mioPOW_0 : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref mioPOW_0
  signal mioPOW_2 : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref mioPOW_2
  signal mioPICnt : std_logic ;
  signal evalStepPIi : std_logic_vector(63 downto 0) ;
  signal callEmuPIi : std_logic ;
  signal ckgHoldPIi : std_logic ;
  signal stopEmuPIi : std_logic ;
  signal oneStepPIi : std_logic ;
  signal callEmuEv : std_logic ;
  signal eventOn : std_logic ;
  -- quickturn external_ref eventOn
  signal APPLY_PI : std_logic ;
  signal APPLY_DUTPI : std_logic ;
  signal lbrOnAll : std_logic ;
  signal anyStop : std_logic ;
  -- quickturn external_ref anyStop
  signal GFLBfull : std_logic ;
  -- quickturn external_ref GFLBfull
  signal GFGBfull : std_logic ;
  -- quickturn external_ref GFGBfull
  signal GFBw : std_logic ;
  signal GFAck : std_logic ;
  -- quickturn external_ref GFAck
  signal stopCond : std_logic ;
  signal GF2LevelMask : std_logic_vector(12 downto 0) ;
  -- quickturn external_ref GF2LevelMask
  signal bClk : std_logic ;
  -- quickturn external_ref bClk
  signal sampleXpChg : std_logic ;
  -- quickturn external_ref sampleXpChg
  signal bClkRH : std_logic ;
  signal bClkHold : std_logic ;
  signal it_endBuf : std_logic ;
  -- quickturn external_ref it_endBuf
  signal it_newBuf : std_logic ;
  signal _zz_xmr0 : std_logic ;
  signal dummyW : std_logic ;
  signal syncEn : std_logic ;
  signal ecmOn : std_logic ;
  -- quickturn external_ref ecmOn
  signal ecmSync : std_logic ;
  -- quickturn external_ref ecmSync
  signal ecmNotSync : std_logic ;
  signal holdEcmTb : std_logic ;
  -- quickturn external_ref holdEcmTb
  signal ptxHoldEcm : std_logic ;
  -- quickturn external_ref ptxHoldEcm
  signal mcDelta : std_logic_vector(31 downto 0) ;
  -- quickturn external_ref mcDelta
  signal mcp : std_logic ;
  signal _ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_ : std_logic ;
  attribute _2_state_ of _ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_: signal is
   1 ;
  signal _ET3_COMPILER_RESERVED_NAME_DBI_APPLY_ : std_logic ;
  attribute _2_state_ of _ET3_COMPILER_RESERVED_NAME_DBI_APPLY_: signal is 1 ;
  signal _ET3_COMPILER_RESERVED_NAME_DBO_SAMPLE_ : std_logic ;
  attribute _2_state_ of _ET3_COMPILER_RESERVED_NAME_DBO_SAMPLE_: signal is 1 ;
  signal hotSwapOnPI : std_logic ;
  -- quickturn external_ref hotSwapOnPI
  attribute _2_state_ of hotSwapOnPI: signal is 1 ;
  signal hssReset : std_logic ;
  attribute _2_state_ of hssReset: signal is 1 ;
  signal sendPO : std_logic ;
  attribute _2_state_ of sendPO: signal is 1 ;
  signal tbcPO : std_logic ;
  attribute _2_state_ of tbcPO: signal is 1 ;
  signal tbcPOd : std_logic ;
  attribute _2_state_ of tbcPOd: signal is 1 ;
  signal stop1PO : std_logic ;
  attribute _2_state_ of stop1PO: signal is 1 ;
  signal stop1POd : std_logic ;
  attribute _2_state_ of stop1POd: signal is 1 ;
  signal stop2PO : std_logic ;
  attribute _2_state_ of stop2PO: signal is 1 ;
  signal stop2POd : std_logic ;
  attribute _2_state_ of stop2POd: signal is 1 ;
  signal stop4PO : std_logic ;
  attribute _2_state_ of stop4PO: signal is 1 ;
  signal stop4POd : std_logic ;
  attribute _2_state_ of stop4POd: signal is 1 ;
  signal stop3PO : std_logic ;
  attribute _2_state_ of stop3PO: signal is 1 ;
  signal stop3POd : std_logic ;
  attribute _2_state_ of stop3POd: signal is 1 ;
  signal it_newBufPO : std_logic ;
  attribute _2_state_ of it_newBufPO: signal is 1 ;
  signal stopSDLPO : std_logic ;
  attribute _2_state_ of stopSDLPO: signal is 1 ;
  signal stopEmuPO : std_logic ;
  attribute _2_state_ of stopEmuPO: signal is 1 ;
  signal stopCPFPO : std_logic ;
  attribute _2_state_ of stopCPFPO: signal is 1 ;
  signal remStepPO : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of remStepPO: signal is 1 ;
  signal GFReset : std_logic ;
  -- quickturn external_ref GFReset
  attribute _2_state_ of GFReset: signal is 1 ;
  signal stop3 : std_logic ;
  attribute _2_state_ of stop3: signal is 1 ;
  signal stop1R : std_logic ;
  attribute _2_state_ of stop1R: signal is 1 ;
  signal stop2R : std_logic ;
  attribute _2_state_ of stop2R: signal is 1 ;
  signal stop4R : std_logic ;
  attribute _2_state_ of stop4R: signal is 1 ;
  signal stopSDL : std_logic ;
  attribute _2_state_ of stopSDL: signal is 1 ;
  signal sdlStopRply : std_logic ;
  -- quickturn external_ref sdlStopRply
  attribute _2_state_ of sdlStopRply: signal is 1 ;
  signal sdlStopRplyD : std_logic ;
  attribute _2_state_ of sdlStopRplyD: signal is 1 ;
  signal sdlEnable : std_logic ;
  attribute _2_state_ of sdlEnable: signal is 1 ;
  signal sdlHaltHwClk : std_logic ;
  attribute _2_state_ of sdlHaltHwClk: signal is 1 ;
  signal GFbusyW : std_logic ;
  attribute _2_state_ of GFbusyW: signal is 1 ;
  signal FTcallW : std_logic ;
  attribute _2_state_ of FTcallW: signal is 1 ;
  signal FvSimple2 : std_logic ;
  attribute _2_state_ of FvSimple2: signal is 1 ;
  signal DccFrameCycle : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of DccFrameCycle: signal is 1 ;
  signal DccFrameMark : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of DccFrameMark: signal is 1 ;
  signal dccFrameFill : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of dccFrameFill: signal is 1 ;
  signal noHoldOn : std_logic ;
  -- quickturn external_ref noHoldOn
  attribute _2_state_ of noHoldOn: signal is 1 ;
  signal tbcEnable : std_logic ;
  attribute _2_state_ of tbcEnable: signal is 1 ;
  signal hwClkEnable : std_logic ;
  -- quickturn external_ref hwClkEnable
  attribute _2_state_ of hwClkEnable: signal is 1 ;
  signal hwClkDbgEn : std_logic ;
  -- quickturn external_ref hwClkDbgEn
  attribute _2_state_ of hwClkDbgEn: signal is 1 ;
  signal hwClkDbg : std_logic ;
  attribute _2_state_ of hwClkDbg: signal is 1 ;
  signal hwClkDbgOn : std_logic ;
  attribute _2_state_ of hwClkDbgOn: signal is 1 ;
  signal hwClkDbgTime : std_logic ;
  attribute _2_state_ of hwClkDbgTime: signal is 1 ;
  signal hwSimTime : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of hwSimTime: signal is 1 ;
  signal ixcSimTime : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref ixcSimTime
  attribute _2_state_ of ixcSimTime: signal is 1 ;
  signal hwClkDelay : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of hwClkDelay: signal is 1 ;
  signal bpOn : std_logic ;
  -- quickturn external_ref bpOn
  attribute _2_state_ of bpOn: signal is 1 ;
  signal bpOnD : std_logic ;
  attribute _2_state_ of bpOnD: signal is 1 ;
  signal mpOn : std_logic ;
  -- quickturn external_ref mpOn
  attribute _2_state_ of mpOn: signal is 1 ;
  signal ecmOne : std_logic ;
  -- quickturn external_ref ecmOne
  attribute _2_state_ of ecmOne: signal is 1 ;
  signal fclkPerEval : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of fclkPerEval: signal is 1 ;
  signal tbcHold : std_logic ;
  attribute _2_state_ of tbcHold: signal is 1 ;
  signal stopT : std_logic ;
  attribute _2_state_ of stopT: signal is 1 ;
  signal stopTL : std_logic ;
  attribute _2_state_ of stopTL: signal is 1 ;
  signal stopTLd : std_logic ;
  attribute _2_state_ of stopTLd: signal is 1 ;
  signal clockMC : std_logic ;
  -- quickturn external_ref clockMC
  attribute _2_state_ of clockMC: signal is 1 ;
  signal eClkR : std_logic ;
  attribute _2_state_ of eClkR: signal is 1 ;
  signal evalOn : std_logic ;
  attribute _2_state_ of evalOn: signal is 1 ;
  signal evalOnOrig : std_logic ;
  -- quickturn external_ref evalOnOrig
  attribute _2_state_ of evalOnOrig: signal is 1 ;
  signal sfifoSyncMode : std_logic ;
  attribute _2_state_ of sfifoSyncMode: signal is 1 ;
  signal syncOtbChannels : std_logic ;
  attribute _2_state_ of syncOtbChannels: signal is 1 ;
  signal gfPushDly : std_logic_vector(7 downto 0) ;
  -- quickturn external_ref gfPushDly
  attribute _2_state_ of gfPushDly: signal is 1 ;
  signal gfPushFill : std_logic_vector(3 downto 0) ;
  -- quickturn external_ref gfPushFill
  attribute _2_state_ of gfPushFill: signal is 1 ;
  signal bWaitExtend : std_logic ;
  attribute _2_state_ of bWaitExtend: signal is 1 ;
  signal lastDelta : std_logic ;
  attribute _2_state_ of lastDelta: signal is 1 ;
  signal callEmu : std_logic ;
  -- quickturn external_ref callEmu
  attribute _2_state_ of callEmu: signal is 1 ;
  signal callEmuPre : std_logic ;
  -- quickturn external_ref callEmuPre
  attribute _2_state_ of callEmuPre: signal is 1 ;
  signal callEmuR : std_logic ;
  attribute _2_state_ of callEmuR: signal is 1 ;
  signal evalOnC : std_logic ;
  attribute _2_state_ of evalOnC: signal is 1 ;
  signal evalOnD : std_logic ;
  attribute _2_state_ of evalOnD: signal is 1 ;
  signal fcnt : std_logic_vector(2 downto 0) ;
  attribute _2_state_ of fcnt: signal is 1 ;
  signal evalOnDExt : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of evalOnDExt: signal is 1 ;
  signal evalOnDCtl : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of evalOnDCtl: signal is 1 ;
  signal simTimeOn : std_logic ;
  attribute _2_state_ of simTimeOn: signal is 1 ;
  signal nextTime : std_logic ;
  attribute _2_state_ of nextTime: signal is 1 ;
  signal eCount : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of eCount: signal is 1 ;
  signal evfCount : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of evfCount: signal is 1 ;
  signal bCount : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of bCount: signal is 1 ;
  signal bpCount : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of bpCount: signal is 1 ;
  signal nbaCount : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of nbaCount: signal is 1 ;
  signal aCount : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of aCount: signal is 1 ;
  signal ixcHoldClkCnt : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of ixcHoldClkCnt: signal is 1 ;
  signal ixcHoldSyncCnt : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of ixcHoldSyncCnt: signal is 1 ;
  signal ixcHoldEcmCnt : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of ixcHoldEcmCnt: signal is 1 ;
  signal fvSCount : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of fvSCount: signal is 1 ;
  signal simTime : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of simTime: signal is 1 ;
  signal simTimeEnable : std_logic ;
  attribute _2_state_ of simTimeEnable: signal is 1 ;
  signal cakeUcEnable : std_logic ;
  -- quickturn external_ref cakeUcEnable
  attribute _2_state_ of cakeUcEnable: signal is 1 ;
  signal initClock : std_logic ;
  -- quickturn external_ref initClock
  attribute _2_state_ of initClock: signal is 1 ;
  signal holdEcmC : std_logic ;
  attribute _2_state_ of holdEcmC: signal is 1 ;
  signal holdEcmD : std_logic ;
  attribute _2_state_ of holdEcmD: signal is 1 ;
  signal xcReplayOn : std_logic ;
  attribute _2_state_ of xcReplayOn: signal is 1 ;
  signal xcRecordOn : std_logic ;
  attribute _2_state_ of xcRecordOn: signal is 1 ;
  signal DUMMY0 : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of DUMMY0: signal is 1 ;
  signal DUMMY1 : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of DUMMY1: signal is 1 ;
  signal DUMMY2 : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of DUMMY2: signal is 1 ;
  signal evalOnSync : std_logic ;
  attribute _2_state_ of evalOnSync: signal is 1 ;
  signal evalOnInt : std_logic ;
  attribute _2_state_ of evalOnInt: signal is 1 ;
  signal evalOnIntR : std_logic_vector(2 downto 0) ;
  attribute _2_state_ of evalOnIntR: signal is 1 ;
  signal evalOnIntD : std_logic ;
  attribute _2_state_ of evalOnIntD: signal is 1 ;
  signal forceAbort : std_logic ;
  attribute _2_state_ of forceAbort: signal is 1 ;
  signal bHaltCnt : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of bHaltCnt: signal is 1 ;
  signal maxBpCycle : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of maxBpCycle: signal is 1 ;
  signal aHaltCnt : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of aHaltCnt: signal is 1 ;
  signal maxAcCycle : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of maxAcCycle: signal is 1 ;
  signal lockTraceC : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of lockTraceC: signal is 1 ;
  signal lockTraceOn : std_logic ;
  attribute _2_state_ of lockTraceOn: signal is 1 ;
  signal lockTraceTime : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of lockTraceTime: signal is 1 ;
  signal xc_mioOn : std_logic ;
  attribute _2_state_ of xc_mioOn: signal is 1 ;
  signal xc_mioOnS : std_logic ;
  attribute _2_state_ of xc_mioOnS: signal is 1 ;
  signal mioPOCnt : std_logic ;
  attribute _2_state_ of mioPOCnt: signal is 1 ;
  signal tbcPOmio : std_logic ;
  attribute _2_state_ of tbcPOmio: signal is 1 ;
  signal mioPIW_0 : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref mioPIW_0
  attribute _2_state_ of mioPIW_0: signal is 1 ;
  signal mioPIW_1 : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref mioPIW_1
  attribute _2_state_ of mioPIW_1: signal is 1 ;
  signal mioPICntd : std_logic ;
  attribute _2_state_ of mioPICntd: signal is 1 ;
  signal evalStepPImio : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of evalStepPImio: signal is 1 ;
  signal callEmuPImio : std_logic ;
  attribute _2_state_ of callEmuPImio: signal is 1 ;
  signal ckgHoldPImio : std_logic ;
  attribute _2_state_ of ckgHoldPImio: signal is 1 ;
  signal oneStepPImio : std_logic ;
  attribute _2_state_ of oneStepPImio: signal is 1 ;
  signal nextDutTimeS : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of nextDutTimeS: signal is 1 ;
  signal callEmuWaitC : std_logic ;
  attribute _2_state_ of callEmuWaitC: signal is 1 ;
  signal callEmuWait : std_logic ;
  attribute _2_state_ of callEmuWait: signal is 1 ;
  signal callEmuWaitN : std_logic ;
  attribute _2_state_ of callEmuWaitN: signal is 1 ;
  signal callEmuPreD : std_logic ;
  attribute _2_state_ of callEmuPreD: signal is 1 ;
  signal applyPiR : std_logic ;
  attribute _2_state_ of applyPiR: signal is 1 ;
  signal dbiEvent : std_logic ;
  attribute _2_state_ of dbiEvent: signal is 1 ;
  signal dbiEventD : std_logic ;
  attribute _2_state_ of dbiEventD: signal is 1 ;
  signal FvUseOnly : std_logic ;
  attribute _2_state_ of FvUseOnly: signal is 1 ;
  signal FvUseOnlyR : std_logic ;
  attribute _2_state_ of FvUseOnlyR: signal is 1 ;
  signal eventOnR : std_logic ;
  attribute _2_state_ of eventOnR: signal is 1 ;
  signal eventOnRI : std_logic ;
  attribute _2_state_ of eventOnRI: signal is 1 ;
  signal mpSampleOv : std_logic ;
  -- quickturn external_ref mpSampleOv
  attribute _2_state_ of mpSampleOv: signal is 1 ;
  signal lbrOn : std_logic ;
  attribute _2_state_ of lbrOn: signal is 1 ;
  signal gfifoOff : std_logic ;
  -- quickturn external_ref gfifoOff
  attribute _2_state_ of gfifoOff: signal is 1 ;
  signal gfifoAsyncOff : std_logic ;
  -- quickturn external_ref gfifoAsyncOff
  attribute _2_state_ of gfifoAsyncOff: signal is 1 ;
  signal GFLock1 : std_logic ;
  -- quickturn external_ref GFLock1
  attribute _2_state_ of GFLock1: signal is 1 ;
  signal GFLock2 : std_logic ;
  -- quickturn external_ref GFLock2
  attribute _2_state_ of GFLock2: signal is 1 ;
  signal GFGBfullBw : std_logic ;
  attribute _2_state_ of GFGBfullBw: signal is 1 ;
  signal GFGBfullBwD : std_logic ;
  attribute _2_state_ of GFGBfullBwD: signal is 1 ;
  signal GFLBfullD : std_logic ;
  attribute _2_state_ of GFLBfullD: signal is 1 ;
  signal tbcPOReg : std_logic ;
  attribute _2_state_ of tbcPOReg: signal is 1 ;
  signal xcReplayOnReg : std_logic ;
  attribute _2_state_ of xcReplayOnReg: signal is 1 ;
  signal GFLock2R : std_logic ;
  attribute _2_state_ of GFLock2R: signal is 1 ;
  signal SFIFOLock : std_logic ;
  attribute _2_state_ of SFIFOLock: signal is 1 ;
  signal gfifoAckWait : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of gfifoAckWait: signal is 1 ;
  signal mpSt : std_logic_vector(2 downto 0) ;
  attribute _2_state_ of mpSt: signal is 1 ;
  signal active : std_logic ;
  attribute _2_state_ of active: signal is 1 ;
  signal asyncBusy : std_logic ;
  attribute _2_state_ of asyncBusy: signal is 1 ;
  signal GFbusyD : std_logic ;
  attribute _2_state_ of GFbusyD: signal is 1 ;
  signal GFbusyD2 : std_logic ;
  attribute _2_state_ of GFbusyD2: signal is 1 ;
  signal tbcPODly : std_logic_vector(12 downto 0) ;
  attribute _2_state_ of tbcPODly: signal is 1 ;
  signal tbcPORdy : std_logic ;
  attribute _2_state_ of tbcPORdy: signal is 1 ;
  signal tbcPOState : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of tbcPOState: signal is 1 ;
  signal tbcPOStateN : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of tbcPOStateN: signal is 1 ;
  signal SFIFOLock2 : std_logic ;
  -- quickturn external_ref SFIFOLock2
  attribute _2_state_ of SFIFOLock2: signal is 1 ;
  signal bClkR : std_logic ;
  attribute _2_state_ of bClkR: signal is 1 ;
  signal sampleXpV : std_logic ;
  -- quickturn external_ref sampleXpV
  attribute _2_state_ of sampleXpV: signal is 1 ;
  signal bpSt : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of bpSt: signal is 1 ;
  signal bClkHoldD : std_logic ;
  -- quickturn external_ref bClkHoldD
  attribute _2_state_ of bClkHoldD: signal is 1 ;
  signal ixcHoldClkR : std_logic ;
  attribute _2_state_ of ixcHoldClkR: signal is 1 ;
  signal intr : std_logic ;
  attribute _2_state_ of intr: signal is 1 ;
  signal it_capture : std_logic ;
  -- quickturn external_ref it_capture
  attribute _2_state_ of it_capture: signal is 1 ;
  signal it_replay : std_logic ;
  -- quickturn external_ref it_replay
  attribute _2_state_ of it_replay: signal is 1 ;
  signal dummyR : std_logic ;
  attribute _2_state_ of dummyR: signal is 1 ;
  signal hwClkHalt : std_logic ;
  -- quickturn external_ref hwClkHalt
  attribute _2_state_ of hwClkHalt: signal is 1 ;
  signal sdlHaltHwClkR : std_logic ;
  attribute _2_state_ of sdlHaltHwClkR: signal is 1 ;
  signal gfifoGBfullCnt : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of gfifoGBfullCnt: signal is 1 ;
  signal gfifoLBfullCnt : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of gfifoLBfullCnt: signal is 1 ;
  signal gfifoTBsyncCnt : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of gfifoTBsyncCnt: signal is 1 ;
  signal maxFck2Sync : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of maxFck2Sync: signal is 1 ;
  signal maxGfifo2Sync : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of maxGfifo2Sync: signal is 1 ;
  signal Fck2Sync : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of Fck2Sync: signal is 1 ;
  signal Gfifo2Sync : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of Gfifo2Sync: signal is 1 ;
  signal ptxStop : std_logic ;
  -- quickturn external_ref ptxStop
  attribute _2_state_ of ptxStop: signal is 1 ;
  signal ecmOnD : std_logic ;
  -- quickturn external_ref ecmOnD
  attribute _2_state_ of ecmOnD: signal is 1 ;
  signal ecmNotSyncD : std_logic ;
  attribute _2_state_ of ecmNotSyncD: signal is 1 ;
  signal holdEcmPtxOn : std_logic ;
  attribute _2_state_ of holdEcmPtxOn: signal is 1 ;
  signal holdEcmSync : std_logic ;
  attribute _2_state_ of holdEcmSync: signal is 1 ;
  signal dccState : std_logic ;
  attribute _2_state_ of dccState: signal is 1 ;
  signal nextDutTimeP : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of nextDutTimeP: signal is 1 ;
  signal fclkCntr : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of fclkCntr: signal is 1 ;
  signal uClkCntr : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of uClkCntr: signal is 1 ;
  signal uClkErrTime : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of uClkErrTime: signal is 1 ;
  -- quickturn fast_clock fclk
  -- quickturn keep_net gfifoOff

begin
  xc1xEcm <= '1' ;
  mpEnable <= boolean_to_std(((lastDelta)='1' and (xpHold = '0') and uClk =
   clockMC)) ;
  _UnNamed_Inst_42 : Q_RDN port map (ixcHoldClk) ;
  _UnNamed_Inst_43 : Q_RDN port map (ptxBusy) ;
  bpHalt <= (boolean_to_std(bHaltCnt > maxBpCycle) and boolean_to_std(ext
  (maxBpCycle,32) /= "00000000000000000000000000000000")) ;
  acHalt <= (boolean_to_std(aHaltCnt > maxAcCycle) and boolean_to_std(ext
  (maxAcCycle,32) /= "00000000000000000000000000000000")) ;
  lockTrace <= lockTraceC(3) ;
  mioPICnt <= mioPIW_1(0) ;
  evalStepPIi <= evalStepPImio when xc_mioOnS = '1' else evalStepPI ;
  callEmuPIi <= callEmuPImio when xc_mioOnS = '1' else callEmuPI ;
  ckgHoldPIi <= ckgHoldPImio when xc_mioOnS = '1' else ckgHoldPI ;
  stopEmuPIi <= mioPIW_1(3) when xc_mioOnS = '1' else stopEmuPI ;
  oneStepPIi <= oneStepPImio when xc_mioOnS = '1' else oneStepPI ;
  callEmuEv <= (callEmuPIi xor callEmuR) ;
  lbrOnAll <= (lbrOn or hotSwapOnPI) ;
  GFBw <= (GFLBfull or GFGBfullBw) ;
  _UnNamed_Inst_44 : Q_RDN port map (GFAck) ;
  stopCond <= ((((stop1PO or stop2PO) or stop4PO) or stopT) or stop3) ;
  bClkRH <= (bClkR or bpHalt) ;
  syncEn <= boolean_to_std((ext(Fck2Sync,32) =
   "00000000000000000000000000000001" or ext(Gfifo2Sync,32) =
   "00000000000000000000000000000001")) ;

  process --:o69
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      GFReset <= boolean_to_std(((hssReset)='1' or (hotSwapOnPI)='1')) ;
    end if ;
  end process ;
  _UnNamed_Inst_5 : Q_RDN port map (svGFbusy) ;
  _UnNamed_Inst_6 : Q_RDN port map (otbGFbusy) ;
  _UnNamed_Inst_7 : Q_RDN port map (svAsyncCall) ;
  _UnNamed_Inst_8 : Q_RDN port map (otbAsyncCall) ;
  _UnNamed_Inst_9 : Q_RDN port map (ecmHoldBusy) ;
  qstp1 : Q_EV_WOR
    port map (
       stop1
    ) ;
  qstp2 : Q_EV_WOR
    port map (
       stop2
    ) ;
  qstp4 : Q_EV_WOR
    port map (
       stop4
    ) ;
  _UnNamed_Inst_10 : Q_RDN port map (stop1) ;
  _UnNamed_Inst_11 : Q_RDN port map (stop2) ;
  _UnNamed_Inst_12 : Q_RDN port map (stop4) ;
  GFbusy <= (svGFbusy or (otbGFbusy and hasGFIFO1)) ;
  asyncCall <= (svAsyncCall or (otbAsyncCall and syncOtbChannels)) ;
  _UnNamed_Inst_13 : Q_RDN port map (isfWait) ;
  _UnNamed_Inst_14 : Q_RDN port map (osfWait) ;
  uc : Q_MPCLK
    port map (
       uClk
    ) ;
  cakeCcEnable <= (DUMMY4 and simTimeEnable) ;

  process --:o287
  (uClk)
  begin
    if (uClk'event and uClk = '0') then
      if (simTimeEnable = '1') then
        cakeUcEnable <= '1' ;
      end if;
    end if ;
  end process ;

  process --:o309
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      if (mpOn = '1') then
        bHaltCnt <= "0000000000000000" ;
      elsif (((not(bpHalt))='1' and (evalOnInt)='1')) then
        bHaltCnt <= ext((ext(bHaltCnt,32) + "00000000000000000000000000000001"
        ),16) ;
      end if;
    end if ;
  end process ;

  process --:o317
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      if (not(asyncCall) = '1') then
        aHaltCnt <= "0000000000000000" ;
      elsif (not(acHalt) = '1') then
        aHaltCnt <= ext((ext(aHaltCnt,32) + "00000000000000000000000000000001"
        ),16) ;
      end if;
    end if ;
  end process ;

  process --:o325
  (uClk)
    variable lockTraceC_DUMMY0 : std_logic_vector(3 downto 0) ;
  begin
    if (uClk'event and uClk = '1') then
      if (ext(lockTraceC_DUMMY0,32) = "00000000000000000000000000000000") then
        if ((((acHalt)='1' or (bpHalt)='1') or (forceAbort)='1')) then
          lockTraceC_DUMMY0 := "0001" ;
          lockTraceOn <= '1' ;
          lockTraceTime <= (simTime +
           "0000000000000000000000000000000000000000000000000000000000000100") ;
        end if;
      elsif ((lockTrace = '0')) then
        lockTraceC_DUMMY0 := ext((ext(lockTraceC_DUMMY0,32) +
         "00000000000000000000000000000001"),4) ;
      end if;
    end if ;
    lockTraceC <= transport lockTraceC_DUMMY0;
  end process ;

  process --:o341
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      xc_mioOnS <= xc_mioOn ;
    end if ;
  end process ;
  mioPOW_0 <= std_logic_vector'(mioPOCnt & remStepPO(62 downto 0)) ;
  mioPOW_2 <= ext(std_logic_vector'(stopCPFPO & stopSDLPO & it_newBufPO &
   stop4PO & stop3PO & stop2PO & stop1PO & tbcPO & sendPO),64) ;

  process --:o348
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      if (((xc_mioOnS)='1' and ((tbcPOmio xor tbcPO)='1') and tbcPO = '1')) then
        mioPOCnt <= it_conv_std_logic((ext(mioPOCnt,32) +
         "00000000000000000000000000000001")) ;
      end if;
      tbcPOmio <= tbcPO ;
    end if ;
  end process ;

  process --:o364
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      if (xc_mioOnS = '1') then
        mioPICntd <= mioPICnt ;
      end if;
    end if ;
  end process ;

  process --:o368
  (*)
  begin
    if (mioPICnt /= mioPICntd) then
      evalStepPImio <= mioPIW_0 ;
      oneStepPImio <= mioPIW_1(4) ;
      ckgHoldPImio <= mioPIW_1(2) ;
      callEmuPImio <= mioPIW_1(1) ;
    end if;
  end process ;

  process --:o388
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      nextDutTimeS <= DUMMY2 ;
    end if ;
  end process ;

  process --:o392
  (*)
    variable ixcSimTime_DUMMY1 : std_logic_vector(63 downto 0) ;
  begin
    ixcSimTime_DUMMY1 := ixcSimTime;
    ixcSimTime_DUMMY1 := it_cond_op((oneStepPIi)='1',evalStepPIi,DUMMY0) ;
    if (hwClkDbgTime = '1') then
      simTime <= hwSimTime ;
    elsif (lockTraceOn = '1') then
      simTime <= lockTraceTime ;
    elsif (callEmuEv = '1') then
      if (oneStepPIi = '1') then
        simTime <= evalStepPIi ;
      elsif (not(ckgHoldPIi) = '1') then
        simTime <= nextDutTimeS ;
      end if;
    elsif (simTimeOn = '1') then
      simTime <= ixcSimTime_DUMMY1 ;
    end if;
    DUMMY1 <= evalStepPIi ;
    ixcSimTime <= transport ixcSimTime_DUMMY1;
  end process ;

  process --:o411
  (**) -- always_comb
  begin
    $axis_pulse( eClk, eClkR);
  end process ;

  process --:o416
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      callEmuR <= callEmuPIi ;
    end if ;
  end process ;

  process --:o420
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      fclkPerEval <= fclkPerEval ;
      sdlEnable <= sdlEnable ;
      tbcEnable <= tbcEnable ;
      evalOnDCtl <= evalOnDCtl ;
      hwClkDbg <= hwClkDbg ;
      hwClkDbgTime <= hwClkDbgTime ;
      hwClkDelay <= hwClkDelay ;
      sdlHaltHwClk <= sdlHaltHwClk ;
      forceAbort <= forceAbort ;
      maxBpCycle <= maxBpCycle ;
      maxAcCycle <= maxAcCycle ;
      hssReset <= hssReset ;
      FvSimple2 <= FvSimple2 ;
      DccFrameCycle <= DccFrameCycle ;
      DccFrameMark <= DccFrameMark ;
      xcReplayOn <= xcReplayOn ;
      xcRecordOn <= xcRecordOn ;
      xc_mioOn <= xc_mioOn ;
      gfPushDly <= gfPushDly ;
      gfPushFill <= gfPushFill ;
    end if ;
  end process ;

  process --:o445
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      if (((hotSwapOnPI)='1' or (callEmu)='1')) then
        ecmOne <= '1' ;
      end if;
    end if ;
  end process ;

  process --:o451
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      sfifoSyncMode <= sfifoSyncMode ;
      syncOtbChannels <= syncOtbChannels ;
    end if ;
  end process ;

  process --:o456
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      callEmuWait <= callEmuWaitN ;
      callEmuWaitC <= ((((asyncCall and sfifoSyncMode) or isfWait) or ptxBusy)
       or holdEcm) ;
    end if ;
  end process ;

  process --:o461
  (*)
  begin
    if (((callEmuEv)='1' or (callEmuWait)='1')) then
      if (callEmuWaitC = '1') then
        callEmuPre <= '0' ;
        callEmuWaitN <= '1' ;
      else
        callEmuPre <= '1' ;
        callEmuWaitN <= '0' ;
      end if;
    else
      callEmuPre <= '0' ;
      callEmuWaitN <= '0' ;
    end if;
  end process ;

  process --:o477
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      callEmuPreD <= callEmuPre ;
    end if ;
  end process ;

  process --:o478
  (*)
  begin
    callEmu <= (callEmuPreD and callEmuPre) ;
  end process ;
  eventOn <= eventOnRI ;
  _UnNamed_Inst_15 : buf port map 
  (APPLY_PI,_ET3_COMPILER_RESERVED_NAME_DBI_APPLY_) ;
  _UnNamed_Inst_16 : buf port map 
  (_ET3_COMPILER_RESERVED_NAME_DUTPI_APPLY_,APPLY_DUTPI) ;
  _UnNamed_Inst_17 : buf port map 
  (_ET3_COMPILER_RESERVED_NAME_LBRKER_ON_,lbrOnAll) ;

  process --:o506
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      dbiEventD <= dbiEvent ;
      applyPiR <= APPLY_PI ;
      FvUseOnlyR <= FvUseOnly ;
      sendPO <= callEmuPIi ;
    end if ;
  end process ;

  process --:o521
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      gfifoOff <= gfifoOff ;
      gfifoAsyncOff <= gfifoAsyncOff ;
    end if ;
  end process ;
  _UnNamed_Inst_18 : Q_RDN port map (GFLBfull) ;
  _UnNamed_Inst_19 : Q_RDN port map (GFGBfull) ;

  process --:o538
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      GFGBfullBw <= (GFGBfull and not(gfifoAsyncOff)) ;
    end if ;
  end process ;
  gbf : Q_EV_WOR_START
    port map (
       GFGBfullBw
    ) ;

  process --:o547
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      GFGBfullBwD <= GFGBfullBw ;
    end if ;
  end process ;

  process --:o548
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      GFLBfullD <= GFLBfull ;
    end if ;
  end process ;

  process --:o557
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      GFLock1 <= ((gfifoOff or hotSwapOnPI) and (hasGFIFO1 or hasGFIFO2)) ;
    end if ;
  end process ;

  process --:o570
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      tbcPOReg <= tbcPO ;
      xcReplayOnReg <= xcReplayOn ;
    end if ;
  end process ;

  process --:o578
  (*)
    variable GFLock2R_DUMMY2 : std_logic ;
  begin
    GFLock2R_DUMMY2 := GFLock2R;
    if (GFLock1 = '1') then
      GFLock2R_DUMMY2 := '1' ;
    elsif (callEmuEv = '1') then
      GFLock2R_DUMMY2 := '0' ;
    elsif (tbcPOReg = '1') then
      GFLock2R_DUMMY2 := '1' ;
    else
      GFLock2R_DUMMY2 := '0' ;
    end if;
    GFLock2 <= ((GFLock2R_DUMMY2 or xcReplayOnReg) and (hasGFIFO1 or hasGFIFO2))
     ;
    GFLock2R <= transport GFLock2R_DUMMY2;
  end process ;

  process --:o589
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      SFIFOLock <= SFIFOLock ;
    end if ;
  end process ;

  process --:o595
  (fclk)
    variable gfifoAckWait_DUMMY3 : std_logic_vector(7 downto 0) ;
  begin
    if (fclk'event and fclk = '1') then
      if (hasGFIFO1 = '1') then
        gfifoAckWait_DUMMY3 := std_logic_vector'(gfifoAckWait_DUMMY3(6 downto 0)
         & GFAck) ;
      elsif (hasGFIFO2 = '1') then
        gfifoAckWait_DUMMY3 := std_logic_vector'(gfifoAckWait_DUMMY3(6 downto 0)
         & GFAck) ;
      end if;
    end if ;
    gfifoAckWait <= transport gfifoAckWait_DUMMY3;
  end process ;

  process --:o607
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      eventOnR <= (callEmuPre or evalOnC) ;
      eventOnRI <= ((callEmuPre or evalOnC) or hotSwapOnPI) ;
    end if ;
  end process ;

  process --:o612
  (*)
    variable dbiEvent_DUMMY4 : std_logic ;
    variable GFbusyW_DUMMY5 : std_logic ;
    variable FTcallW_DUMMY6 : std_logic ;
    variable evalOnOrig_DUMMY7 : std_logic ;
    variable evalOnSync_DUMMY8 : std_logic ;
    variable evalOnInt_DUMMY9 : std_logic ;
    variable stopSDLPO_DUMMY10 : std_logic ;
    variable stopCPFPO_DUMMY11 : std_logic ;
  begin
    dbiEvent_DUMMY4 := dbiEvent;
    GFbusyW_DUMMY5 := GFbusyW;
    FTcallW_DUMMY6 := FTcallW;
    evalOnOrig_DUMMY7 := evalOnOrig;
    evalOnSync_DUMMY8 := evalOnSync;
    evalOnInt_DUMMY9 := evalOnInt;
    stopSDLPO_DUMMY10 := stopSDLPO;
    stopCPFPO_DUMMY11 := stopCPFPO;
    dbiEvent_DUMMY4 := ((not(applyPiR) and APPLY_PI) and not(hotSwapOnPI)) ;
    GFbusyW_DUMMY5 := (((((((ptxBusy or gfifoWait) or isfWait) or osfWait) or
     dbiEvent_DUMMY4) or callEmuEv) or callEmuWait) and not(FvSimple2)) ;
    FTcallW_DUMMY6 := ((((svAsyncCall or otbAsyncCall) or GFAck) or or_reduce
    (gfifoAckWait)) or ecmHoldBusy) ;
    evalOnOrig_DUMMY7 := (((callEmuPre or eventOnR) or hwClkDbgOn) or (tbcPOd
     and not(tbcPO))) ;
    evalOnSync_DUMMY8 := ((evalOnOrig_DUMMY7 or GFbusyW_DUMMY5) and not
    (sdlStopRplyD)) ;
    evalOnInt_DUMMY9 := (not(lockTrace) and ((FTcallW_DUMMY6 or
     evalOnSync_DUMMY8) or lockTraceOn)) ;
    evalOn <= ((evalOnInt_DUMMY9 or (evalOnIntD and not(FvSimple2))) or
     boolean_to_std(ext(evalOnDExt,32) /= "00000000000000000000000000000000")) ;
    mpSampleOv <= ((lastDelta and evalOnC) or hotSwapOnPI) ;
    FvUseOnly <= (dbiEvent_DUMMY4 and not(callEmuEv)) ;
    if (((callEmuPre)='1' or (stopSDL)='1')) then
      stopSDLPO_DUMMY10 := stopSDL ;
    end if;
    if (((callEmuPre)='1' or (cpfStop)='1')) then
      stopCPFPO_DUMMY11 := cpfStop ;
    end if;
    stopSDL <= ((sdlEnable and sdlStop) and not(xcReplayOn)) ;
    sdlStopRply <= ((sdlEnable and sdlStop) and xcReplayOn) ;
    stop3 <= ((((stopEmuPIi or stopSDLPO_DUMMY10) or stopCPFPO_DUMMY11) or
     it_newBufPO) or bpHalt) ;
    stop1R <= (stop1 and tbcEnable) ;
    stop2R <= (stop2 and tbcEnable) ;
    stop4R <= (stop4 and tbcEnable) ;
    stopT <= it_cond_op((oneStepPIi)='1',mpOn,DUMMY3) ;
    dbiEvent <= transport dbiEvent_DUMMY4;
    GFbusyW <= GFbusyW_DUMMY5;
    FTcallW <= FTcallW_DUMMY6;
    evalOnOrig <= evalOnOrig_DUMMY7;
    evalOnSync <= evalOnSync_DUMMY8;
    evalOnInt <= evalOnInt_DUMMY9;
    stopSDLPO <= stopSDLPO_DUMMY10;
    stopCPFPO <= stopCPFPO_DUMMY11;
  end process ;

  process --:o643
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      sdlStopRplyD <= sdlStopRply ;
    end if ;
  end process ;

  process --:o646
  (fclk)
    variable evalOnIntR_DUMMY12 : std_logic_vector(2 downto 0) ;
    variable evalOnIntD_DUMMY13 : std_logic ;
    variable evalOnDExt_DUMMY14 : std_logic_vector(7 downto 0) ;
  begin
    if (fclk'event and fclk = '1') then
      evalOnD <= evalOnC ;
      evalOnIntR_DUMMY12 := std_logic_vector'(evalOnIntR_DUMMY12(1 downto 0) &
       evalOnInt) ;
      evalOnIntD_DUMMY13 := or_reduce(evalOnIntR_DUMMY12) ;
      if (evalOnIntD_DUMMY13 = '1') then
        evalOnDExt_DUMMY14 := evalOnDCtl ;
      elsif (ext(evalOnDExt_DUMMY14,32) /= "00000000000000000000000000000000")
       then
        evalOnDExt_DUMMY14 := ext((ext(evalOnDExt_DUMMY14,32) -
         "00000000000000000000000000000001"),8) ;
      end if;
      stop1POd <= stop1PO ;
      stop2POd <= stop2PO ;
      stop4POd <= stop4PO ;
      stop3POd <= stop3PO ;
      stopTLd <= stopTL ;
    end if ;
    evalOnIntR <= transport evalOnIntR_DUMMY12;
    evalOnIntD <= evalOnIntD_DUMMY13;
    evalOnDExt <= evalOnDExt_DUMMY14;
  end process ;

  process --:o663
  (*)
  begin
    stop1PO <= it_cond_op(((callEmuPre)='1' or (stop1R)='1'),stop1R,stop1POd) ;
    stop2PO <= it_cond_op(((callEmuPre)='1' or (stop2R)='1'),stop2R,stop2POd) ;
    stop4PO <= it_cond_op(((callEmuPre)='1' or (stop4R)='1'),stop4R,stop4POd) ;
    stop3PO <= it_cond_op((callEmuPre)='1',std_logic'('0'),it_cond_op((stop3
    )='1',std_logic'('1'),stop3POd)) ;
    stopTL <= it_cond_op((callEmuPre)='1',std_logic'('0'),it_cond_op((stopT
    )='1',std_logic'('1'),stopTLd)) ;
    stopEmuPO <= stopEmuPIi ;
    remStepPO <= it_cond_op((oneStepPIi)='1',evfCount,ixcSimTime) ;
  end process ;
  APPLY_DUTPI <= (((callEmu and boolean_to_std(clockMC = uClk)) or
   boolean_to_std(ext(mpSt,32) = "00000000000000000000000000000001")) or
   hotSwapOnPI) ;

  process --:o697
  (fclk)
    variable clockMC_DUMMY15 : std_logic ;
  begin
    if (fclk'event and fclk = '1') then
      if (hotSwapOnPI = '1') then
        clockMC_DUMMY15 := clockMCInit ;
      elsif (cakeCcEnable = '1') then
        clockMC_DUMMY15 := not(clockMC_DUMMY15) ;
      end if;
    end if ;
    clockMC <= transport clockMC_DUMMY15;
  end process ;
  mc1pi : Q_MPCLK1P
    port map (
       clockMC
    ) ;
  mcsi : Q_CLKSRC
    port map (
       clockMC
    ) ;

  process --:o707
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (simTimeEnable = '1') then
        eClkR <= not(eClkR) ;
      end if;
    end if ;
  end process ;

  process --:o710
  (fclk)
    variable DUMMY5 : std_logic_vector(0 to 31) ;
  begin
    if (fclk'event and fclk = '1') then
      lbrOn <= '0' ;
      active <= '0' ;
      DUMMY5 := ext(mpSt,32);

      case DUMMY5  is
        when  "00000000000000000000000000000000"  =>
          if (callEmu = '1') then
            evalOnC <= '1' ;
            tbcPOd <= '0' ;
            if (clockMC = uClk) then
              if ((gfifoOff = '0')) then
                initClock <= '1' ;
              end if;
              mpSt <= "010" ;
              mpOn <= '1' ;
              active <= '1' ;
              if (not(ckgHoldPIi) = '1') then
                simTimeOn <= '1' ;
                lbrOn <= '1' ;
              end if;
            else
              mpSt <= "001" ;
            end if;
          end if;
        when  "00000000000000000000000000000001"  =>
          mpSt <= "010" ;
          mpOn <= '1' ;
          active <= '1' ;
          if ((gfifoOff = '0')) then
            initClock <= '1' ;
          end if;
          if (not(ckgHoldPIi) = '1') then
            simTimeOn <= '1' ;
            lbrOn <= '1' ;
          end if;
        when  "00000000000000000000000000000010"  =>
          if (stopCond = '1') then
            mpSt <= "011" ;
          else
            active <= '1' ;
            if (mpEnable = '1') then
              mpOn <= '1' ;
              simTimeOn <= '1' ;
              lbrOn <= '1' ;
            else
              mpOn <= '0' ;
            end if;
          end if;
        when  "00000000000000000000000000000011"  =>
          mpOn <= '0' ;
          simTimeOn <= '0' ;
          if (bpHalt = '1') then
            evalOnC <= '0' ;
            if (stopEmuPIi = '1') then
              mpSt <= "000" ;
              tbcPOd <= '1' ;
            end if;
          elsif (mpEnable = '1') then
            mpSt <= "000" ;
            evalOnC <= '0' ;
            tbcPOd <= '1' ;
          end if;
        when others => null ;
      end case;
    end if ;
  end process ;

  process --:o775
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if ((ext(mpSt,32) = "00000000000000000000000000000011" or (asyncBusy)='1')
      ) then
        asyncBusy <= (asyncCall and not(acHalt)) ;
      end if;
    end if ;
  end process ;

  process --:o792
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      GFbusyD2 <= GFbusyD ;
      GFbusyD <= GFbusy ;
    end if ;
  end process ;
  gfifoWait <= boolean_to_std(((GFbusy)='1' or (GFbusyD)='1' or (GFbusyD2)='1'))
   ;

  process --:o806
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      tbcPODly <= (std_logic_vector'(tbcPODly(11 downto 0) & tbcPOd) or not
      (GF2LevelMask)) ;
    end if ;
  end process ;

  process --:o812
  (*)
  begin
    tbcPORdy <= (((((and_reduce(tbcPODly) or not(hasGFIFO2)) and not(gfifoWait))
     and not(ptxBusy)) and not(asyncBusy)) and not(osfWait)) ;
  end process ;

  process --:o817
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      tbcPOState <= tbcPOStateN ;
    end if ;
  end process ;

  process --:o819
  (*)
    variable DUMMY6 : std_logic_vector(0 to 31) ;
  begin
    if (forceAbort = '1') then
      tbcPO <= '1' ;
      tbcPOStateN <= "00" ;
    else
      DUMMY6 := ext(tbcPOState,32);

      case DUMMY6  is
        when  "00000000000000000000000000000000"  =>
          if (((tbcPOd)='1' and (tbcPORdy)='1')) then
            tbcPO <= '1' ;
            tbcPOStateN <= "01" ;
          else
            tbcPO <= '0' ;
            tbcPOStateN <= "00" ;
          end if;
        when  "00000000000000000000000000000001"  =>
          if (callEmuEv = '1') then
            tbcPO <= '0' ;
            tbcPOStateN <= "10" ;
          else
            tbcPO <= '1' ;
            tbcPOStateN <= "01" ;
          end if;
        when  "00000000000000000000000000000010"  =>
          tbcPO <= '0' ;
          tbcPOStateN <= integer_to_std(it_cond_op((tbcPOd)='1',2,0),2) ;
        when  "00000000000000000000000000000011"  =>
          tbcPO <= '0' ;
          tbcPOStateN <= "00" ;
        when others => null ;
      end case;
    end if;
  end process ;

  process --:o856
  (*)
    variable DUMMY7 : std_logic_vector(0 to 31) ;
  begin
    DUMMY7 := ext(mpSt,32);

    case DUMMY7  is
      when  "00000000000000000000000000000000"  =>
        simTimeEnable <= ((callEmu and boolean_to_std(clockMC = uClk)) and not
        (ckgHoldPIi)) ;
      when  "00000000000000000000000000000001"  =>
        simTimeEnable <= not(ckgHoldPIi) ;
      when  "00000000000000000000000000000010"  =>
        simTimeEnable <= (not(stopCond) and mpEnable) ;
      when others =>
        simTimeEnable <= '0' ;
    end case;
  end process ;

  process --:o870
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      SFIFOLock2 <= SFIFOLock ;
    end if ;
  end process ;

  process --:o872
  (*)
  begin
    holdEcmC <= (holdEcm and active) ;
  end process ;

  process --:o873
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      holdEcmD <= holdEcm ;
    end if ;
  end process ;
  _UnNamed_Inst_20 : Q_RDN port map (bpWait) ;
  _UnNamed_Inst_21 : Q_RDN port map (bWait) ;
  _UnNamed_Inst_22 : Q_RDN port map (sampleXpChg) ;
  qbwi : Q_EV_WOR
    port map (
       bpWait
    ) ;
  qxhi : Q_EV_WOR
    port map (
       xpHold
    ) ;
  qxci : Q_EV_WOR
    port map (
       sampleXpChg
    ) ;

  process --:o894
  (**) -- always_comb
  begin
    $axis_pulse( bClk, bClkRH);
  end process ;
  xpHold <= (((((GFBw or ixcHoldClk) or bClkHoldD) or holdEcmC) or bWaitExtend)
   or bWait) ;
  bClkHold <= GFBw ;

  process --:o905
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      bClkHoldD <= bClkHold ;
    end if ;
  end process ;
  bkh : Q_EV_WOR_START
    port map (
       bClkHoldD
    ) ;
  hec : Q_EV_WOR_START
    port map (
       holdEcmC
    ) ;

  process --:o910
  (fclk)
    variable bClkR_DUMMY16 : std_logic ;
    variable bpSt_DUMMY17 : std_logic_vector(1 downto 0) ;
  begin
    if (fclk'event and fclk = '1') then
      if (ext(bpSt_DUMMY17,32) = "00000000000000000000000000000000") then
        if ((((bpWait)='1' or (sampleXpChg)='1') and (mpOn)='1')) then
          if ((bClkHold = '0')) then
            bClkR_DUMMY16 := not(bClkR_DUMMY16) ;
          end if;
          bpSt_DUMMY17 := integer_to_std(it_cond_op((bpWait)='1',1,2),2) ;
        end if;
      elsif (ext(bpSt_DUMMY17,32) = "00000000000000000000000000000001") then
        if (bpWait = '1') then
          if ((bClkHold = '0')) then
            bClkR_DUMMY16 := not(bClkR_DUMMY16) ;
          end if;
        else
          if (((sampleXpChg)='1' or uClk /= clockMC)) then
            if ((bClkHold = '0')) then
              bClkR_DUMMY16 := not(bClkR_DUMMY16) ;
            end if;
            bpSt_DUMMY17 := "10" ;
          else
            bpSt_DUMMY17 := "00" ;
          end if;
        end if;
      elsif (ext(bpSt_DUMMY17,32) = "00000000000000000000000000000010") then
        if ((((bpWait)='1' or (sampleXpChg)='1') or uClk /= clockMC)) then
          if ((bClkHold = '0')) then
            bClkR_DUMMY16 := not(bClkR_DUMMY16) ;
          end if;
          bpSt_DUMMY17 := integer_to_std(it_cond_op((bpWait)='1',1,2),2) ;
        else
          bpSt_DUMMY17 := "00" ;
        end if;
      end if;
    end if ;
    bClkR <= transport bClkR_DUMMY16;
    bpSt <= bpSt_DUMMY17;
  end process ;

  process --:o937
  (*)
  begin
    bpOn <= ((boolean_to_std(ext(bpSt,32) /= "00000000000000000000000000000000")
     and not(bpHalt)) and not(bClkHoldD)) ;
    sampleXpV <= (bpWait or sampleXpChg) ;
    if (ext(bpSt,32) = "00000000000000000000000000000000") then
      lastDelta <= it_cond_op((((bpWait)='1' or (sampleXpChg)='1') and (mpOn
      )='1'),std_logic'('0'),std_logic'('1')) ;
    else
      lastDelta <= (not((bpWait or sampleXpChg)) and boolean_to_std(uClk =
       clockMC)) ;
    end if;
  end process ;

  process --:o947
  (bClk)
  begin
    if (bClk'event and bClk = '1') then
      bpCount <= (bpCount +
       "0000000000000000000000000000000000000000000000000000000000000001") ;
    end if ;
  end process ;

  process --:o951
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (((bClkHold = '0') and ((bpWait)='1' or (xpHold)='1' or (sampleXpChg
      )='1'))) then
        bCount <= (bCount +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
        if (((bpWait = '0') and (sampleXpChg)='1')) then
          nbaCount <= (nbaCount +
           "0000000000000000000000000000000000000000000000000000000000000001") ;
        end if;
        if (ixcHoldClk = '1') then
          ixcHoldClkCnt <= (ixcHoldClkCnt +
           "0000000000000000000000000000000000000000000000000000000000000001") ;
        end if;
      end if;
    end if ;
  end process ;

  process --:o960
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      if (((ixcHoldClk)='1' and (ixcHoldClkR = '0'))) then
        ixcHoldSyncCnt <= (ixcHoldSyncCnt +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      end if;
      ixcHoldClkR <= ixcHoldClk ;
    end if ;
  end process ;

  process --:o965
  (eClk)
  begin
    if (eClk'event and eClk = '1') then
      eCount <= (eCount +
       "0000000000000000000000000000000000000000000000000000000000000001") ;
    end if ;
  end process ;

  process --:o968
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      if ((((callEmu)='1' or (evalOnC)='1') or (evalOnD)='1')) then
        evfCount <= (evfCount +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      end if;
      if (evalOn = '1') then
        fvSCount <= (fvSCount +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      end if;
    end if ;
  end process ;

  process --:o973
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if ((((asyncCall)='1' and (not(acHalt))='1') and (not(evalOnC))='1')) then
        aCount <= (aCount + "00000000000000000000000000000001") ;
      end if;
    end if ;
  end process ;

  process --:o979
  (*)
  begin
    if (callEmuEv = '1') then
      intr <= '0' ;
    elsif (((hasGFIFO1)='1' or (hasGFIFO2)='1' or (hasSFIFO)='1' or (hasPTX)='1'
    )) then
      intr <= '1' ;
    else
      intr <= tbcPO ;
    end if;
  end process ;
  intrBuf : buf port map (_ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_,intr) ;
  _UnNamed_Inst_23 : Q_RDN port map (it_endBuf) ;

  process --:o1000
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      it_capture <= it_capture ;
      it_replay <= it_replay ;
    end if ;
  end process ;
  it_newBuf <= (it_endBuf and (it_capture or it_replay)) ;

  process --:o1007
  (*)
  begin
    if (((callEmu)='1' or (it_newBuf)='1')) then
      it_newBufPO <= it_newBuf ;
    end if;
  end process ;
  dum1 : Q_RBUFZN
    port map (
       dummyW
      ,std_logic'('1')
      ,std_logic'('0')
    ) ;
  dum2 : Q_RBUFZP
    port map (
       dummyW
      ,std_logic'('1')
      ,std_logic'('0')
    ) ;

  process --:o1021
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      dummyR <= dummyW ;
    end if ;
  end process ;

  process --:o1026
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (((callEmu)='1' and (not((ckgHoldPIi and oneStepPIi)))='1')) then
        hwClkEnable <= '1' ;
      end if;
    end if ;
  end process ;

  process --:o1029
  (*)
  begin
    hwClkDbgOn <= (hwClkDbg and (hwClkDbgEn or cakeUcEnable)) ;
  end process ;

  process --:o1032
  (fclk)
    variable hwClkDelay_DUMMY18 : std_logic_vector(31 downto 0) ;
  begin
    if (fclk'event and fclk = '1') then
      if (hwClkDbgOn = '1') then
        if ((hwClkDelay_DUMMY18 = "0")) then
          hwClkDelay_DUMMY18 := "00000000000000000000000000000001" ;
        end if;
        hwSimTime <= (hwSimTime + ext(hwClkDelay_DUMMY18,64)) ;
      end if;
    end if ;
    hwClkDelay <= transport hwClkDelay_DUMMY18;
  end process ;

  process --:o1041
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (((callEmu)='1' or (evalOnC)='1')) then
        hwClkHalt <= (sdlStop and sdlHaltHwClk) ;
      elsif (((sdlHaltHwClk)='1' and (not(sdlHaltHwClkR))='1')) then
        hwClkHalt <= '1' ;
      elsif (((sdlStop)='1' and (sdlHaltHwClk)='1')) then
        hwClkHalt <= '1' ;
      end if;
      sdlHaltHwClkR <= sdlHaltHwClk ;
    end if ;
  end process ;
  anyStop <= ((((stop1PO or stop2PO) or stop4PO) or stopTL) or stop3PO) ;

  process --:o1061
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (((GFGBfullBw)='1' or (GFGBfullBwD)='1')) then
        gfifoGBfullCnt <= (gfifoGBfullCnt +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      elsif (((GFLBfull)='1' or (GFLBfullD)='1')) then
        gfifoLBfullCnt <= (gfifoLBfullCnt +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      elsif (((GFbusy)='1' and (not(evalOnC))='1')) then
        gfifoTBsyncCnt <= (gfifoTBsyncCnt +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      end if;
      if (((holdEcm)='1' or (holdEcmD)='1')) then
        ixcHoldEcmCnt <= (ixcHoldEcmCnt +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      end if;
    end if ;
  end process ;

  process --:o1076
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      maxFck2Sync <= maxFck2Sync ;
      maxGfifo2Sync <= maxGfifo2Sync ;
    end if ;
  end process ;

  process --:o1081
  (uClk)
    variable Fck2Sync_DUMMY19 : std_logic_vector(15 downto 0) ;
    variable Gfifo2Sync_DUMMY20 : std_logic_vector(15 downto 0) ;
  begin
    if (uClk'event and uClk = '1') then
      if ((evalOnC = '0')) then
        Fck2Sync_DUMMY19 := maxFck2Sync ;
      elsif (ext(Fck2Sync_DUMMY19,32) /= "00000000000000000000000000000000")
       then
        Fck2Sync_DUMMY19 := ext((ext(Fck2Sync_DUMMY19,32) -
         "00000000000000000000000000000001"),16) ;
      end if;
      if (((evalOnC = '0') or (GFbusy)='1')) then
        Gfifo2Sync_DUMMY20 := maxGfifo2Sync ;
      elsif (ext(Gfifo2Sync_DUMMY20,32) /= "00000000000000000000000000000000")
       then
        Gfifo2Sync_DUMMY20 := ext((ext(Gfifo2Sync_DUMMY20,32) -
         "00000000000000000000000000000001"),16) ;
      end if;
    end if ;
    Fck2Sync <= transport Fck2Sync_DUMMY19;
    Gfifo2Sync <= Gfifo2Sync_DUMMY20;
  end process ;
  stop1 <= '1' when (syncEn)='1' else 'Z' ;
  qsynci : Q_EV_WOR_START
    port map (
       syncEn
    ) ;

  process --:o1100
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      ptxStop <= anyStop ;
    end if ;
  end process ;
  ecmOn <= (callEmu or simTimeEnable) ;

  process --:o1107
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      ecmOnD <= ecmOn ;
    end if ;
  end process ;
  ecmSync <= not((ecmNotSync or ecmNotSyncD)) ;
  ecmNotSync <= ((svAsyncCall or otbAsyncCall) or ptxBusy) ;

  process --:o1115
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      ecmNotSyncD <= ecmNotSync ;
    end if ;
  end process ;
  _UnNamed_Inst_24 : Q_RDN port map (holdEcmTb) ;
  _UnNamed_Inst_25 : Q_RDN port map (ptxHoldEcm) ;

  process --:o1126
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      holdEcmPtxOn <= (ptxHoldEcm and xcRecordOn) ;
    end if ;
  end process ;

  process --:o1130
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (holdEcmTb = '1') then
        holdEcmSync <= '1' ;
      elsif (ecmSync = '1') then
        holdEcmSync <= '0' ;
      end if;
    end if ;
  end process ;
  holdEcm <= ((holdEcmTb or holdEcmPtxOn) or holdEcmSync) ;

  process --:o1141
  (uClk)
    variable DUMMY8 : std_logic_vector(0 to 31) ;
    variable dccFrameFill_DUMMY21 : std_logic_vector(7 downto 0) ;
  begin
    if (uClk'event and uClk = '1') then
      if (ext(DccFrameCycle,32) /= "00000000000000000000000000000000") then
        DUMMY8 := ext(dccState,32);

        case DUMMY8  is
          when  "00000000000000000000000000000000"  =>
            bWaitExtend <= '0' ;
            if (lbrOn = '1') then
              dccFrameFill_DUMMY21 := "00000001" ;
              dccState <= '1' ;
            end if;
          when  "00000000000000000000000000000001"  =>
            dccFrameFill_DUMMY21 := ext((ext(dccFrameFill_DUMMY21,32) +
             "00000000000000000000000000000001"),8) ;
            if (dccFrameFill_DUMMY21 = DccFrameCycle) then
              dccFrameFill_DUMMY21 := "00000000" ;
            end if;
            bWaitExtend <= boolean_to_std((((bpWait)='1' or (xpHold)='1') and
             dccFrameFill_DUMMY21 > DccFrameMark)) ;
            if (((lbrOn = '0') and (ext(dccFrameFill_DUMMY21,32) =
             "00000000000000000000000000000000" or ((bpWait or xpHold) = '0'))))
             then
              dccState <= '0' ;
            end if;
          when others => null ;
        end case;
      end if;
    end if ;
    dccFrameFill <= transport dccFrameFill_DUMMY21;
  end process ;

  process --:o1169
  (**) -- always_comb
  begin
    $axis_pulse( mcp, clockMC);
  end process ;

  process --:o1171
  (mcp)
  begin
    if (mcp'event and mcp = '1') then
      nextDutTimeP <= DUMMY2 ;
    end if ;
  end process ;
  mcDelta <= ext((DUMMY2 - nextDutTimeP),32) ;

  process --:o1187
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if ((uClkErrTime =
       "0000000000000000000000000000000000000000000000000000000000000000" and
       shr(fclkCntr,integer_to_std(1,32)) /= uClkCntr)) then
        uClkErrTime <= simTime ;
      end if;
      if (initClock = '1') then
        fclkCntr <= (fclkCntr +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      end if;
    end if ;
  end process ;

  process --:o1192
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      if (initClock = '1') then
        uClkCntr <= (uClkCntr +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      end if;
    end if ;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
