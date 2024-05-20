ARCHITECTURE module OF xc_top_1 IS
  --  quickturn CVASTRPROP MODULE HDLICE ALWAYS_ON TRUE
  --  quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT Q_EV_WOR
    PORT (
    A : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_MPCLK
    PORT (
    uClk : OUT std_logic ) ;
  END COMPONENT ;

  COMPONENT Q_EV_WOR_START
    PORT (
    A : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_MPCLK1P
    PORT (
    clk : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_CLKSRC
    PORT (
    clk : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_RBUFZN
    PORT (
      Z : OUT std_logic ;
      A : IN std_logic := 'X' ;
    OE : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_RBUFZP
    PORT (
      Z : OUT std_logic ;
      A : IN std_logic := 'X' ;
    OE : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_NOT_TOUCH
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT buf
    PORT(Z : OUT std_logic ; A : IN std_logic) ;
  END COMPONENT ;
  COMPONENT Q_RDN
    PORT(Z : OUT std_logic) ;
  END COMPONENT ;
  SIGNAL fclk : std_logic ;
  SIGNAL uClk : std_logic ;
  --  quickturn external_ref uClk
  SIGNAL _ET3_COMPILER_RESERVED_NAME_DUTPI_APPLY_ : std_logic ;
  SIGNAL _ET3_COMPILER_RESERVED_NAME_LBRKER_ON_ : std_logic ;
  SIGNAL _ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_ : std_logic_vector(63
   DOWNTO 0) ;
  --  quickturn external_ref _ET3_COMPILER_RESERVED_NAME_QT_CURR_EMUL_CYCLE_
  SIGNAL xc1xEcm : std_logic ;
  --  quickturn external_ref xc1xEcm
  SIGNAL callEmuPI : std_logic ;
  SIGNAL evalStepPI : std_logic_vector(63 DOWNTO 0) ;
  SIGNAL ckgHoldPI : std_logic ;
  SIGNAL tbcHoldPI : std_logic ;
  SIGNAL noOutputPI : std_logic ;
  SIGNAL stopEmuPI : std_logic ;
  SIGNAL oneStepPI : std_logic ;
  SIGNAL stop1 : std_logic ;
  --  quickturn external_ref stop1
  SIGNAL stop2 : std_logic ;
  --  quickturn external_ref stop2
  SIGNAL stop4 : std_logic ;
  --  quickturn external_ref stop4
  SIGNAL GFbusy : std_logic ;
  SIGNAL svGFbusy : std_logic ;
  --  quickturn external_ref svGFbusy
  SIGNAL otbGFbusy : std_logic ;
  --  quickturn external_ref otbGFbusy
  SIGNAL asyncCall : std_logic ;
  SIGNAL svAsyncCall : std_logic ;
  --  quickturn external_ref svAsyncCall
  SIGNAL otbAsyncCall : std_logic ;
  --  quickturn external_ref otbAsyncCall
  SIGNAL isfWait : std_logic ;
  --  quickturn external_ref isfWait
  SIGNAL osfWait : std_logic ;
  --  quickturn external_ref osfWait
  SIGNAL gfifoWait : std_logic ;
  SIGNAL ecmHoldBusy : std_logic ;
  --  quickturn external_ref ecmHoldBusy
  SIGNAL sdlStop : std_logic ;
  SIGNAL cpfStop : std_logic ;
  SIGNAL eClk : std_logic ;
  --  quickturn external_ref eClk
  SIGNAL clockMCInit : std_logic ;
  --  quickturn external_ref clockMCInit
  SIGNAL hasSFIFO : std_logic ;
  --  quickturn external_ref hasSFIFO
  SIGNAL hasGFIFO1 : std_logic ;
  --  quickturn external_ref hasGFIFO1
  SIGNAL hasGFIFO2 : std_logic ;
  --  quickturn external_ref hasGFIFO2
  SIGNAL hasPTX : std_logic ;
  --  quickturn external_ref hasPTX
  SIGNAL bpWait : std_logic ;
  --  quickturn external_ref bpWait
  SIGNAL bWait : std_logic ;
  --  quickturn external_ref bWait
  SIGNAL xpHold : std_logic ;
  SIGNAL mpEnable : std_logic ;
  --  quickturn external_ref mpEnable
  SIGNAL ixcHoldClk : std_logic ;
  --  quickturn external_ref ixcHoldClk
  SIGNAL cakeCcEnable : std_logic ;
  --  quickturn external_ref cakeCcEnable
  SIGNAL ptxBusy : std_logic ;
  --  quickturn external_ref ptxBusy
  SIGNAL holdEcm : std_logic ;
  SIGNAL DUMMY3 : std_logic ;
  SIGNAL DUMMY4 : std_logic ;
  SIGNAL bpHalt : std_logic ;
  SIGNAL acHalt : std_logic ;
  SIGNAL lockTrace : std_logic ;
  SIGNAL mioPOW_0 : std_logic_vector(63 DOWNTO 0) ;
  --  quickturn external_ref mioPOW_0
  SIGNAL mioPOW_2 : std_logic_vector(63 DOWNTO 0) ;
  --  quickturn external_ref mioPOW_2
  SIGNAL mioPICnt : std_logic ;
  SIGNAL evalStepPIi : std_logic_vector(63 DOWNTO 0) ;
  SIGNAL callEmuPIi : std_logic ;
  SIGNAL ckgHoldPIi : std_logic ;
  SIGNAL stopEmuPIi : std_logic ;
  SIGNAL oneStepPIi : std_logic ;
  SIGNAL callEmuEv : std_logic ;
  SIGNAL eventOn : std_logic ;
  --  quickturn external_ref eventOn
  SIGNAL APPLY_PI : std_logic ;
  SIGNAL APPLY_DUTPI : std_logic ;
  SIGNAL lbrOnAll : std_logic ;
  SIGNAL anyStop : std_logic ;
  --  quickturn external_ref anyStop
  SIGNAL GFLBfull : std_logic ;
  --  quickturn external_ref GFLBfull
  SIGNAL GFGBfull : std_logic ;
  --  quickturn external_ref GFGBfull
  SIGNAL GFBw : std_logic ;
  SIGNAL GFAck : std_logic ;
  --  quickturn external_ref GFAck
  SIGNAL stopCond : std_logic ;
  SIGNAL GF2LevelMask : std_logic_vector(12 DOWNTO 0) ;
  --  quickturn external_ref GF2LevelMask
  SIGNAL bClk : std_logic ;
  --  quickturn external_ref bClk
  SIGNAL sampleXpChg : std_logic ;
  --  quickturn external_ref sampleXpChg
  SIGNAL bClkRH : std_logic ;
  SIGNAL bClkHold : std_logic ;
  SIGNAL it_endBuf : std_logic ;
  --  quickturn external_ref it_endBuf
  SIGNAL it_newBuf : std_logic ;
  SIGNAL _zz_xmr0 : std_logic ;
  SIGNAL dummyW : std_logic ;
  SIGNAL syncEn : std_logic ;
  SIGNAL ecmOn : std_logic ;
  --  quickturn external_ref ecmOn
  SIGNAL ecmSync : std_logic ;
  --  quickturn external_ref ecmSync
  SIGNAL ecmNotSync : std_logic ;
  SIGNAL holdEcmTb : std_logic ;
  --  quickturn external_ref holdEcmTb
  SIGNAL ptxHoldEcm : std_logic ;
  --  quickturn external_ref ptxHoldEcm
  SIGNAL mcDelta : std_logic_vector(31 DOWNTO 0) ;
  --  quickturn external_ref mcDelta
  SIGNAL mcp : std_logic ;
  SIGNAL _ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_ : std_logic ;
  ATTRIBUTE _2_state_ OF _ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_: SIGNAL IS
   1 ;
  SIGNAL _ET3_COMPILER_RESERVED_NAME_DBI_APPLY_ : std_logic ;
  ATTRIBUTE _2_state_ OF _ET3_COMPILER_RESERVED_NAME_DBI_APPLY_: SIGNAL IS 1 ;
  SIGNAL _ET3_COMPILER_RESERVED_NAME_DBO_SAMPLE_ : std_logic ;
  ATTRIBUTE _2_state_ OF _ET3_COMPILER_RESERVED_NAME_DBO_SAMPLE_: SIGNAL IS 1 ;
  SIGNAL hotSwapOnPI : std_logic ;
  --  quickturn external_ref hotSwapOnPI
  ATTRIBUTE _2_state_ OF hotSwapOnPI: SIGNAL IS 1 ;
  SIGNAL hssReset : std_logic ;
  ATTRIBUTE _2_state_ OF hssReset: SIGNAL IS 1 ;
  SIGNAL sendPO : std_logic ;
  ATTRIBUTE _2_state_ OF sendPO: SIGNAL IS 1 ;
  SIGNAL tbcPO : std_logic ;
  ATTRIBUTE _2_state_ OF tbcPO: SIGNAL IS 1 ;
  SIGNAL tbcPOd : std_logic ;
  ATTRIBUTE _2_state_ OF tbcPOd: SIGNAL IS 1 ;
  SIGNAL stop1PO : std_logic ;
  ATTRIBUTE _2_state_ OF stop1PO: SIGNAL IS 1 ;
  SIGNAL stop1POd : std_logic ;
  ATTRIBUTE _2_state_ OF stop1POd: SIGNAL IS 1 ;
  SIGNAL stop2PO : std_logic ;
  ATTRIBUTE _2_state_ OF stop2PO: SIGNAL IS 1 ;
  SIGNAL stop2POd : std_logic ;
  ATTRIBUTE _2_state_ OF stop2POd: SIGNAL IS 1 ;
  SIGNAL stop4PO : std_logic ;
  ATTRIBUTE _2_state_ OF stop4PO: SIGNAL IS 1 ;
  SIGNAL stop4POd : std_logic ;
  ATTRIBUTE _2_state_ OF stop4POd: SIGNAL IS 1 ;
  SIGNAL stop3PO : std_logic ;
  ATTRIBUTE _2_state_ OF stop3PO: SIGNAL IS 1 ;
  SIGNAL stop3POd : std_logic ;
  ATTRIBUTE _2_state_ OF stop3POd: SIGNAL IS 1 ;
  SIGNAL it_newBufPO : std_logic ;
  ATTRIBUTE _2_state_ OF it_newBufPO: SIGNAL IS 1 ;
  SIGNAL stopSDLPO : std_logic ;
  ATTRIBUTE _2_state_ OF stopSDLPO: SIGNAL IS 1 ;
  SIGNAL stopEmuPO : std_logic ;
  ATTRIBUTE _2_state_ OF stopEmuPO: SIGNAL IS 1 ;
  SIGNAL stopCPFPO : std_logic ;
  ATTRIBUTE _2_state_ OF stopCPFPO: SIGNAL IS 1 ;
  SIGNAL remStepPO : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF remStepPO: SIGNAL IS 1 ;
  SIGNAL GFReset : std_logic ;
  --  quickturn external_ref GFReset
  ATTRIBUTE _2_state_ OF GFReset: SIGNAL IS 1 ;
  SIGNAL stop3 : std_logic ;
  ATTRIBUTE _2_state_ OF stop3: SIGNAL IS 1 ;
  SIGNAL stop1R : std_logic ;
  ATTRIBUTE _2_state_ OF stop1R: SIGNAL IS 1 ;
  SIGNAL stop2R : std_logic ;
  ATTRIBUTE _2_state_ OF stop2R: SIGNAL IS 1 ;
  SIGNAL stop4R : std_logic ;
  ATTRIBUTE _2_state_ OF stop4R: SIGNAL IS 1 ;
  SIGNAL stopSDL : std_logic ;
  ATTRIBUTE _2_state_ OF stopSDL: SIGNAL IS 1 ;
  SIGNAL sdlStopRply : std_logic ;
  --  quickturn external_ref sdlStopRply
  ATTRIBUTE _2_state_ OF sdlStopRply: SIGNAL IS 1 ;
  SIGNAL sdlStopRplyD : std_logic ;
  ATTRIBUTE _2_state_ OF sdlStopRplyD: SIGNAL IS 1 ;
  SIGNAL sdlEnable : std_logic ;
  ATTRIBUTE _2_state_ OF sdlEnable: SIGNAL IS 1 ;
  SIGNAL sdlHaltHwClk : std_logic ;
  ATTRIBUTE _2_state_ OF sdlHaltHwClk: SIGNAL IS 1 ;
  SIGNAL GFbusyW : std_logic ;
  ATTRIBUTE _2_state_ OF GFbusyW: SIGNAL IS 1 ;
  SIGNAL FTcallW : std_logic ;
  ATTRIBUTE _2_state_ OF FTcallW: SIGNAL IS 1 ;
  SIGNAL FvSimple2 : std_logic ;
  ATTRIBUTE _2_state_ OF FvSimple2: SIGNAL IS 1 ;
  SIGNAL DccFrameCycle : std_logic_vector(7 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF DccFrameCycle: SIGNAL IS 1 ;
  SIGNAL DccFrameMark : std_logic_vector(7 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF DccFrameMark: SIGNAL IS 1 ;
  SIGNAL dccFrameFill : std_logic_vector(7 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF dccFrameFill: SIGNAL IS 1 ;
  SIGNAL noHoldOn : std_logic ;
  --  quickturn external_ref noHoldOn
  ATTRIBUTE _2_state_ OF noHoldOn: SIGNAL IS 1 ;
  SIGNAL tbcEnable : std_logic ;
  ATTRIBUTE _2_state_ OF tbcEnable: SIGNAL IS 1 ;
  SIGNAL hwClkEnable : std_logic ;
  --  quickturn external_ref hwClkEnable
  ATTRIBUTE _2_state_ OF hwClkEnable: SIGNAL IS 1 ;
  SIGNAL hwClkDbgEn : std_logic ;
  --  quickturn external_ref hwClkDbgEn
  ATTRIBUTE _2_state_ OF hwClkDbgEn: SIGNAL IS 1 ;
  SIGNAL hwClkDbg : std_logic ;
  ATTRIBUTE _2_state_ OF hwClkDbg: SIGNAL IS 1 ;
  SIGNAL hwClkDbgOn : std_logic ;
  ATTRIBUTE _2_state_ OF hwClkDbgOn: SIGNAL IS 1 ;
  SIGNAL hwClkDbgTime : std_logic ;
  ATTRIBUTE _2_state_ OF hwClkDbgTime: SIGNAL IS 1 ;
  SIGNAL hwSimTime : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF hwSimTime: SIGNAL IS 1 ;
  SIGNAL ixcSimTime : std_logic_vector(63 DOWNTO 0) ;
  --  quickturn external_ref ixcSimTime
  ATTRIBUTE _2_state_ OF ixcSimTime: SIGNAL IS 1 ;
  SIGNAL hwClkDelay : std_logic_vector(31 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF hwClkDelay: SIGNAL IS 1 ;
  SIGNAL bpOn : std_logic ;
  --  quickturn external_ref bpOn
  ATTRIBUTE _2_state_ OF bpOn: SIGNAL IS 1 ;
  SIGNAL bpOnD : std_logic ;
  ATTRIBUTE _2_state_ OF bpOnD: SIGNAL IS 1 ;
  SIGNAL mpOn : std_logic ;
  --  quickturn external_ref mpOn
  ATTRIBUTE _2_state_ OF mpOn: SIGNAL IS 1 ;
  SIGNAL ecmOne : std_logic ;
  --  quickturn external_ref ecmOne
  ATTRIBUTE _2_state_ OF ecmOne: SIGNAL IS 1 ;
  SIGNAL fclkPerEval : std_logic_vector(7 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF fclkPerEval: SIGNAL IS 1 ;
  SIGNAL tbcHold : std_logic ;
  ATTRIBUTE _2_state_ OF tbcHold: SIGNAL IS 1 ;
  SIGNAL stopT : std_logic ;
  ATTRIBUTE _2_state_ OF stopT: SIGNAL IS 1 ;
  SIGNAL stopTL : std_logic ;
  ATTRIBUTE _2_state_ OF stopTL: SIGNAL IS 1 ;
  SIGNAL stopTLd : std_logic ;
  ATTRIBUTE _2_state_ OF stopTLd: SIGNAL IS 1 ;
  SIGNAL clockMC : std_logic ;
  --  quickturn external_ref clockMC
  ATTRIBUTE _2_state_ OF clockMC: SIGNAL IS 1 ;
  SIGNAL eClkR : std_logic ;
  ATTRIBUTE _2_state_ OF eClkR: SIGNAL IS 1 ;
  SIGNAL evalOn : std_logic ;
  ATTRIBUTE _2_state_ OF evalOn: SIGNAL IS 1 ;
  SIGNAL evalOnOrig : std_logic ;
  --  quickturn external_ref evalOnOrig
  ATTRIBUTE _2_state_ OF evalOnOrig: SIGNAL IS 1 ;
  SIGNAL sfifoSyncMode : std_logic ;
  ATTRIBUTE _2_state_ OF sfifoSyncMode: SIGNAL IS 1 ;
  SIGNAL syncOtbChannels : std_logic ;
  ATTRIBUTE _2_state_ OF syncOtbChannels: SIGNAL IS 1 ;
  SIGNAL gfPushDly : std_logic_vector(7 DOWNTO 0) ;
  --  quickturn external_ref gfPushDly
  ATTRIBUTE _2_state_ OF gfPushDly: SIGNAL IS 1 ;
  SIGNAL gfPushFill : std_logic_vector(3 DOWNTO 0) ;
  --  quickturn external_ref gfPushFill
  ATTRIBUTE _2_state_ OF gfPushFill: SIGNAL IS 1 ;
  SIGNAL bWaitExtend : std_logic ;
  ATTRIBUTE _2_state_ OF bWaitExtend: SIGNAL IS 1 ;
  SIGNAL lastDelta : std_logic ;
  ATTRIBUTE _2_state_ OF lastDelta: SIGNAL IS 1 ;
  SIGNAL callEmu : std_logic ;
  --  quickturn external_ref callEmu
  ATTRIBUTE _2_state_ OF callEmu: SIGNAL IS 1 ;
  SIGNAL callEmuPre : std_logic ;
  --  quickturn external_ref callEmuPre
  ATTRIBUTE _2_state_ OF callEmuPre: SIGNAL IS 1 ;
  SIGNAL callEmuR : std_logic ;
  ATTRIBUTE _2_state_ OF callEmuR: SIGNAL IS 1 ;
  SIGNAL evalOnC : std_logic ;
  ATTRIBUTE _2_state_ OF evalOnC: SIGNAL IS 1 ;
  SIGNAL evalOnD : std_logic ;
  ATTRIBUTE _2_state_ OF evalOnD: SIGNAL IS 1 ;
  SIGNAL fcnt : std_logic_vector(2 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF fcnt: SIGNAL IS 1 ;
  SIGNAL evalOnDExt : std_logic_vector(7 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF evalOnDExt: SIGNAL IS 1 ;
  SIGNAL evalOnDCtl : std_logic_vector(7 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF evalOnDCtl: SIGNAL IS 1 ;
  SIGNAL simTimeOn : std_logic ;
  ATTRIBUTE _2_state_ OF simTimeOn: SIGNAL IS 1 ;
  SIGNAL nextTime : std_logic ;
  ATTRIBUTE _2_state_ OF nextTime: SIGNAL IS 1 ;
  SIGNAL eCount : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF eCount: SIGNAL IS 1 ;
  SIGNAL evfCount : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF evfCount: SIGNAL IS 1 ;
  SIGNAL bCount : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF bCount: SIGNAL IS 1 ;
  SIGNAL bpCount : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF bpCount: SIGNAL IS 1 ;
  SIGNAL nbaCount : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF nbaCount: SIGNAL IS 1 ;
  SIGNAL aCount : std_logic_vector(31 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF aCount: SIGNAL IS 1 ;
  SIGNAL ixcHoldClkCnt : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF ixcHoldClkCnt: SIGNAL IS 1 ;
  SIGNAL ixcHoldSyncCnt : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF ixcHoldSyncCnt: SIGNAL IS 1 ;
  SIGNAL ixcHoldEcmCnt : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF ixcHoldEcmCnt: SIGNAL IS 1 ;
  SIGNAL fvSCount : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF fvSCount: SIGNAL IS 1 ;
  SIGNAL simTime : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF simTime: SIGNAL IS 1 ;
  SIGNAL simTimeEnable : std_logic ;
  ATTRIBUTE _2_state_ OF simTimeEnable: SIGNAL IS 1 ;
  SIGNAL cakeUcEnable : std_logic ;
  --  quickturn external_ref cakeUcEnable
  ATTRIBUTE _2_state_ OF cakeUcEnable: SIGNAL IS 1 ;
  SIGNAL initClock : std_logic ;
  --  quickturn external_ref initClock
  ATTRIBUTE _2_state_ OF initClock: SIGNAL IS 1 ;
  SIGNAL holdEcmC : std_logic ;
  ATTRIBUTE _2_state_ OF holdEcmC: SIGNAL IS 1 ;
  SIGNAL holdEcmD : std_logic ;
  ATTRIBUTE _2_state_ OF holdEcmD: SIGNAL IS 1 ;
  SIGNAL xcReplayOn : std_logic ;
  ATTRIBUTE _2_state_ OF xcReplayOn: SIGNAL IS 1 ;
  SIGNAL xcRecordOn : std_logic ;
  ATTRIBUTE _2_state_ OF xcRecordOn: SIGNAL IS 1 ;
  SIGNAL DUMMY0 : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF DUMMY0: SIGNAL IS 1 ;
  SIGNAL DUMMY1 : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF DUMMY1: SIGNAL IS 1 ;
  SIGNAL DUMMY2 : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF DUMMY2: SIGNAL IS 1 ;
  SIGNAL evalOnSync : std_logic ;
  ATTRIBUTE _2_state_ OF evalOnSync: SIGNAL IS 1 ;
  SIGNAL evalOnInt : std_logic ;
  ATTRIBUTE _2_state_ OF evalOnInt: SIGNAL IS 1 ;
  SIGNAL evalOnIntR : std_logic_vector(2 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF evalOnIntR: SIGNAL IS 1 ;
  SIGNAL evalOnIntD : std_logic ;
  ATTRIBUTE _2_state_ OF evalOnIntD: SIGNAL IS 1 ;
  SIGNAL forceAbort : std_logic ;
  ATTRIBUTE _2_state_ OF forceAbort: SIGNAL IS 1 ;
  SIGNAL bHaltCnt : std_logic_vector(15 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF bHaltCnt: SIGNAL IS 1 ;
  SIGNAL maxBpCycle : std_logic_vector(15 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF maxBpCycle: SIGNAL IS 1 ;
  SIGNAL aHaltCnt : std_logic_vector(15 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF aHaltCnt: SIGNAL IS 1 ;
  SIGNAL maxAcCycle : std_logic_vector(15 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF maxAcCycle: SIGNAL IS 1 ;
  SIGNAL lockTraceC : std_logic_vector(3 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF lockTraceC: SIGNAL IS 1 ;
  SIGNAL lockTraceOn : std_logic ;
  ATTRIBUTE _2_state_ OF lockTraceOn: SIGNAL IS 1 ;
  SIGNAL lockTraceTime : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF lockTraceTime: SIGNAL IS 1 ;
  SIGNAL xc_mioOn : std_logic ;
  ATTRIBUTE _2_state_ OF xc_mioOn: SIGNAL IS 1 ;
  SIGNAL xc_mioOnS : std_logic ;
  ATTRIBUTE _2_state_ OF xc_mioOnS: SIGNAL IS 1 ;
  SIGNAL mioPOCnt : std_logic ;
  ATTRIBUTE _2_state_ OF mioPOCnt: SIGNAL IS 1 ;
  SIGNAL tbcPOmio : std_logic ;
  ATTRIBUTE _2_state_ OF tbcPOmio: SIGNAL IS 1 ;
  SIGNAL mioPIW_0 : std_logic_vector(63 DOWNTO 0) ;
  --  quickturn external_ref mioPIW_0
  ATTRIBUTE _2_state_ OF mioPIW_0: SIGNAL IS 1 ;
  SIGNAL mioPIW_1 : std_logic_vector(63 DOWNTO 0) ;
  --  quickturn external_ref mioPIW_1
  ATTRIBUTE _2_state_ OF mioPIW_1: SIGNAL IS 1 ;
  SIGNAL mioPICntd : std_logic ;
  ATTRIBUTE _2_state_ OF mioPICntd: SIGNAL IS 1 ;
  SIGNAL evalStepPImio : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF evalStepPImio: SIGNAL IS 1 ;
  SIGNAL callEmuPImio : std_logic ;
  ATTRIBUTE _2_state_ OF callEmuPImio: SIGNAL IS 1 ;
  SIGNAL ckgHoldPImio : std_logic ;
  ATTRIBUTE _2_state_ OF ckgHoldPImio: SIGNAL IS 1 ;
  SIGNAL oneStepPImio : std_logic ;
  ATTRIBUTE _2_state_ OF oneStepPImio: SIGNAL IS 1 ;
  SIGNAL nextDutTimeS : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF nextDutTimeS: SIGNAL IS 1 ;
  SIGNAL callEmuWaitC : std_logic ;
  ATTRIBUTE _2_state_ OF callEmuWaitC: SIGNAL IS 1 ;
  SIGNAL callEmuWait : std_logic ;
  ATTRIBUTE _2_state_ OF callEmuWait: SIGNAL IS 1 ;
  SIGNAL callEmuWaitN : std_logic ;
  ATTRIBUTE _2_state_ OF callEmuWaitN: SIGNAL IS 1 ;
  SIGNAL callEmuPreD : std_logic ;
  ATTRIBUTE _2_state_ OF callEmuPreD: SIGNAL IS 1 ;
  SIGNAL applyPiR : std_logic ;
  ATTRIBUTE _2_state_ OF applyPiR: SIGNAL IS 1 ;
  SIGNAL dbiEvent : std_logic ;
  ATTRIBUTE _2_state_ OF dbiEvent: SIGNAL IS 1 ;
  SIGNAL dbiEventD : std_logic ;
  ATTRIBUTE _2_state_ OF dbiEventD: SIGNAL IS 1 ;
  SIGNAL FvUseOnly : std_logic ;
  ATTRIBUTE _2_state_ OF FvUseOnly: SIGNAL IS 1 ;
  SIGNAL FvUseOnlyR : std_logic ;
  ATTRIBUTE _2_state_ OF FvUseOnlyR: SIGNAL IS 1 ;
  SIGNAL eventOnR : std_logic ;
  ATTRIBUTE _2_state_ OF eventOnR: SIGNAL IS 1 ;
  SIGNAL eventOnRI : std_logic ;
  ATTRIBUTE _2_state_ OF eventOnRI: SIGNAL IS 1 ;
  SIGNAL mpSampleOv : std_logic ;
  --  quickturn external_ref mpSampleOv
  ATTRIBUTE _2_state_ OF mpSampleOv: SIGNAL IS 1 ;
  SIGNAL lbrOn : std_logic ;
  ATTRIBUTE _2_state_ OF lbrOn: SIGNAL IS 1 ;
  SIGNAL gfifoOff : std_logic ;
  --  quickturn external_ref gfifoOff
  ATTRIBUTE _2_state_ OF gfifoOff: SIGNAL IS 1 ;
  SIGNAL gfifoAsyncOff : std_logic ;
  --  quickturn external_ref gfifoAsyncOff
  ATTRIBUTE _2_state_ OF gfifoAsyncOff: SIGNAL IS 1 ;
  SIGNAL GFLock1 : std_logic ;
  --  quickturn external_ref GFLock1
  ATTRIBUTE _2_state_ OF GFLock1: SIGNAL IS 1 ;
  SIGNAL GFLock2 : std_logic ;
  --  quickturn external_ref GFLock2
  ATTRIBUTE _2_state_ OF GFLock2: SIGNAL IS 1 ;
  SIGNAL GFGBfullBw : std_logic ;
  ATTRIBUTE _2_state_ OF GFGBfullBw: SIGNAL IS 1 ;
  SIGNAL GFGBfullBwD : std_logic ;
  ATTRIBUTE _2_state_ OF GFGBfullBwD: SIGNAL IS 1 ;
  SIGNAL GFLBfullD : std_logic ;
  ATTRIBUTE _2_state_ OF GFLBfullD: SIGNAL IS 1 ;
  SIGNAL tbcPOReg : std_logic ;
  ATTRIBUTE _2_state_ OF tbcPOReg: SIGNAL IS 1 ;
  SIGNAL xcReplayOnReg : std_logic ;
  ATTRIBUTE _2_state_ OF xcReplayOnReg: SIGNAL IS 1 ;
  SIGNAL GFLock2R : std_logic ;
  ATTRIBUTE _2_state_ OF GFLock2R: SIGNAL IS 1 ;
  SIGNAL SFIFOLock : std_logic ;
  ATTRIBUTE _2_state_ OF SFIFOLock: SIGNAL IS 1 ;
  SIGNAL gfifoAckWait : std_logic_vector(7 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF gfifoAckWait: SIGNAL IS 1 ;
  SIGNAL mpSt : std_logic_vector(2 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF mpSt: SIGNAL IS 1 ;
  SIGNAL active : std_logic ;
  ATTRIBUTE _2_state_ OF active: SIGNAL IS 1 ;
  SIGNAL asyncBusy : std_logic ;
  ATTRIBUTE _2_state_ OF asyncBusy: SIGNAL IS 1 ;
  SIGNAL GFbusyD : std_logic ;
  ATTRIBUTE _2_state_ OF GFbusyD: SIGNAL IS 1 ;
  SIGNAL GFbusyD2 : std_logic ;
  ATTRIBUTE _2_state_ OF GFbusyD2: SIGNAL IS 1 ;
  SIGNAL tbcPODly : std_logic_vector(12 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF tbcPODly: SIGNAL IS 1 ;
  SIGNAL tbcPORdy : std_logic ;
  ATTRIBUTE _2_state_ OF tbcPORdy: SIGNAL IS 1 ;
  SIGNAL tbcPOState : std_logic_vector(1 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF tbcPOState: SIGNAL IS 1 ;
  SIGNAL tbcPOStateN : std_logic_vector(1 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF tbcPOStateN: SIGNAL IS 1 ;
  SIGNAL SFIFOLock2 : std_logic ;
  --  quickturn external_ref SFIFOLock2
  ATTRIBUTE _2_state_ OF SFIFOLock2: SIGNAL IS 1 ;
  SIGNAL bClkR : std_logic ;
  ATTRIBUTE _2_state_ OF bClkR: SIGNAL IS 1 ;
  SIGNAL sampleXpV : std_logic ;
  --  quickturn external_ref sampleXpV
  ATTRIBUTE _2_state_ OF sampleXpV: SIGNAL IS 1 ;
  SIGNAL bpSt : std_logic_vector(1 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF bpSt: SIGNAL IS 1 ;
  SIGNAL bClkHoldD : std_logic ;
  --  quickturn external_ref bClkHoldD
  ATTRIBUTE _2_state_ OF bClkHoldD: SIGNAL IS 1 ;
  SIGNAL ixcHoldClkR : std_logic ;
  ATTRIBUTE _2_state_ OF ixcHoldClkR: SIGNAL IS 1 ;
  SIGNAL intr : std_logic ;
  ATTRIBUTE _2_state_ OF intr: SIGNAL IS 1 ;
  SIGNAL it_capture : std_logic ;
  --  quickturn external_ref it_capture
  ATTRIBUTE _2_state_ OF it_capture: SIGNAL IS 1 ;
  SIGNAL it_replay : std_logic ;
  --  quickturn external_ref it_replay
  ATTRIBUTE _2_state_ OF it_replay: SIGNAL IS 1 ;
  SIGNAL dummyR : std_logic ;
  ATTRIBUTE _2_state_ OF dummyR: SIGNAL IS 1 ;
  SIGNAL hwClkHalt : std_logic ;
  --  quickturn external_ref hwClkHalt
  ATTRIBUTE _2_state_ OF hwClkHalt: SIGNAL IS 1 ;
  SIGNAL sdlHaltHwClkR : std_logic ;
  ATTRIBUTE _2_state_ OF sdlHaltHwClkR: SIGNAL IS 1 ;
  SIGNAL gfifoGBfullCnt : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF gfifoGBfullCnt: SIGNAL IS 1 ;
  SIGNAL gfifoLBfullCnt : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF gfifoLBfullCnt: SIGNAL IS 1 ;
  SIGNAL gfifoTBsyncCnt : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF gfifoTBsyncCnt: SIGNAL IS 1 ;
  SIGNAL maxFck2Sync : std_logic_vector(15 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF maxFck2Sync: SIGNAL IS 1 ;
  SIGNAL maxGfifo2Sync : std_logic_vector(15 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF maxGfifo2Sync: SIGNAL IS 1 ;
  SIGNAL Fck2Sync : std_logic_vector(15 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF Fck2Sync: SIGNAL IS 1 ;
  SIGNAL Gfifo2Sync : std_logic_vector(15 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF Gfifo2Sync: SIGNAL IS 1 ;
  SIGNAL ptxStop : std_logic ;
  --  quickturn external_ref ptxStop
  ATTRIBUTE _2_state_ OF ptxStop: SIGNAL IS 1 ;
  SIGNAL ecmOnD : std_logic ;
  --  quickturn external_ref ecmOnD
  ATTRIBUTE _2_state_ OF ecmOnD: SIGNAL IS 1 ;
  SIGNAL ecmNotSyncD : std_logic ;
  ATTRIBUTE _2_state_ OF ecmNotSyncD: SIGNAL IS 1 ;
  SIGNAL holdEcmPtxOn : std_logic ;
  ATTRIBUTE _2_state_ OF holdEcmPtxOn: SIGNAL IS 1 ;
  SIGNAL holdEcmSync : std_logic ;
  ATTRIBUTE _2_state_ OF holdEcmSync: SIGNAL IS 1 ;
  SIGNAL dccState : std_logic ;
  ATTRIBUTE _2_state_ OF dccState: SIGNAL IS 1 ;
  SIGNAL nextDutTimeP : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF nextDutTimeP: SIGNAL IS 1 ;
  SIGNAL fclkCntr : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF fclkCntr: SIGNAL IS 1 ;
  SIGNAL uClkCntr : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF uClkCntr: SIGNAL IS 1 ;
  SIGNAL uClkErrTime : std_logic_vector(63 DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF uClkErrTime: SIGNAL IS 1 ;
  --  quickturn fast_clock fclk
  --  quickturn keep_net gfifoOff

BEGIN
  xc1xEcm <= '1' ;
  mpEnable <= boolean_to_std(((lastDelta)='1' AND (xpHold = '0') AND uClk =
   clockMC)) ;
  _UnNamed_Inst_42 : Q_RDN PORT MAP (ixcHoldClk) ;
  _UnNamed_Inst_43 : Q_RDN PORT MAP (ptxBusy) ;
  bpHalt <= (boolean_to_std(bHaltCnt > maxBpCycle) AND boolean_to_std(ext
  (maxBpCycle,32) /= "00000000000000000000000000000000")) ;
  acHalt <= (boolean_to_std(aHaltCnt > maxAcCycle) AND boolean_to_std(ext
  (maxAcCycle,32) /= "00000000000000000000000000000000")) ;
  lockTrace <= lockTraceC(3) ;
  mioPICnt <= mioPIW_1(0) ;
  evalStepPIi <= evalStepPImio WHEN xc_mioOnS = '1' ELSE evalStepPI ;
  callEmuPIi <= callEmuPImio WHEN xc_mioOnS = '1' ELSE callEmuPI ;
  ckgHoldPIi <= ckgHoldPImio WHEN xc_mioOnS = '1' ELSE ckgHoldPI ;
  stopEmuPIi <= mioPIW_1(3) WHEN xc_mioOnS = '1' ELSE stopEmuPI ;
  oneStepPIi <= oneStepPImio WHEN xc_mioOnS = '1' ELSE oneStepPI ;
  callEmuEv <= (callEmuPIi XOR callEmuR) ;
  lbrOnAll <= (lbrOn OR hotSwapOnPI) ;
  GFBw <= (GFLBfull OR GFGBfullBw) ;
  _UnNamed_Inst_44 : Q_RDN PORT MAP (GFAck) ;
  stopCond <= ((((stop1PO OR stop2PO) OR stop4PO) OR stopT) OR stop3) ;
  bClkRH <= (bClkR OR bpHalt) ;
  syncEn <= boolean_to_std((ext(Fck2Sync,32) =
   "00000000000000000000000000000001" OR ext(Gfifo2Sync,32) =
   "00000000000000000000000000000001")) ;

  PROCESS --:o69
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      GFReset <= boolean_to_std(((hssReset)='1' OR (hotSwapOnPI)='1')) ;
    END IF ;
  END PROCESS ;
  _UnNamed_Inst_5 : Q_RDN PORT MAP (svGFbusy) ;
  _UnNamed_Inst_6 : Q_RDN PORT MAP (otbGFbusy) ;
  _UnNamed_Inst_7 : Q_RDN PORT MAP (svAsyncCall) ;
  _UnNamed_Inst_8 : Q_RDN PORT MAP (otbAsyncCall) ;
  _UnNamed_Inst_9 : Q_RDN PORT MAP (ecmHoldBusy) ;
  qstp1 : Q_EV_WOR
    PORT MAP (
       stop1
    ) ;
  qstp2 : Q_EV_WOR
    PORT MAP (
       stop2
    ) ;
  qstp4 : Q_EV_WOR
    PORT MAP (
       stop4
    ) ;
  _UnNamed_Inst_10 : Q_RDN PORT MAP (stop1) ;
  _UnNamed_Inst_11 : Q_RDN PORT MAP (stop2) ;
  _UnNamed_Inst_12 : Q_RDN PORT MAP (stop4) ;
  GFbusy <= (svGFbusy OR (otbGFbusy AND hasGFIFO1)) ;
  asyncCall <= (svAsyncCall OR (otbAsyncCall AND syncOtbChannels)) ;
  _UnNamed_Inst_13 : Q_RDN PORT MAP (isfWait) ;
  _UnNamed_Inst_14 : Q_RDN PORT MAP (osfWait) ;
  uc : Q_MPCLK
    PORT MAP (
       uClk
    ) ;
  cakeCcEnable <= (DUMMY4 AND simTimeEnable) ;

  PROCESS --:o287
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '0') THEN
      IF (simTimeEnable = '1') THEN
        cakeUcEnable <= '1' ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o309
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      IF (mpOn = '1') THEN
        bHaltCnt <= "0000000000000000" ;
      ELSIF (((NOT(bpHalt))='1' AND (evalOnInt)='1')) THEN
        bHaltCnt <= ext((ext(bHaltCnt,32) + "00000000000000000000000000000001"
        ),16) ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o317
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      IF (NOT(asyncCall) = '1') THEN
        aHaltCnt <= "0000000000000000" ;
      ELSIF (NOT(acHalt) = '1') THEN
        aHaltCnt <= ext((ext(aHaltCnt,32) + "00000000000000000000000000000001"
        ),16) ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o325
  (uClk)
    VARIABLE lockTraceC_DUMMY0 : std_logic_vector(3 DOWNTO 0) ;
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      IF (ext(lockTraceC_DUMMY0,32) = "00000000000000000000000000000000") THEN
        IF ((((acHalt)='1' OR (bpHalt)='1') OR (forceAbort)='1')) THEN
          lockTraceC_DUMMY0 := "0001" ;
          lockTraceOn <= '1' ;
          lockTraceTime <= (simTime +
           "0000000000000000000000000000000000000000000000000000000000000100") ;
        END IF;
      ELSIF ((lockTrace = '0')) THEN
        lockTraceC_DUMMY0 := ext((ext(lockTraceC_DUMMY0,32) +
         "00000000000000000000000000000001"),4) ;
      END IF;
    END IF ;
    lockTraceC <= TRANSPORT lockTraceC_DUMMY0;
  END PROCESS ;

  PROCESS --:o341
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      xc_mioOnS <= xc_mioOn ;
    END IF ;
  END PROCESS ;
  mioPOW_0 <= std_logic_vector'(mioPOCnt & remStepPO(62 DOWNTO 0)) ;
  mioPOW_2 <= ext(std_logic_vector'(stopCPFPO & stopSDLPO & it_newBufPO &
   stop4PO & stop3PO & stop2PO & stop1PO & tbcPO & sendPO),64) ;

  PROCESS --:o348
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      IF (((xc_mioOnS)='1' AND ((tbcPOmio XOR tbcPO)='1') AND tbcPO = '1')) THEN
        mioPOCnt <= it_conv_std_logic((ext(mioPOCnt,32) +
         "00000000000000000000000000000001")) ;
      END IF;
      tbcPOmio <= tbcPO ;
    END IF ;
  END PROCESS ;

  PROCESS --:o364
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      IF (xc_mioOnS = '1') THEN
        mioPICntd <= mioPICnt ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o368
  (*)
  BEGIN
    IF (mioPICnt /= mioPICntd) THEN
      evalStepPImio <= mioPIW_0 ;
      oneStepPImio <= mioPIW_1(4) ;
      ckgHoldPImio <= mioPIW_1(2) ;
      callEmuPImio <= mioPIW_1(1) ;
    END IF;
  END PROCESS ;

  PROCESS --:o388
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      nextDutTimeS <= DUMMY2 ;
    END IF ;
  END PROCESS ;

  PROCESS --:o392
  (*)
    VARIABLE ixcSimTime_DUMMY1 : std_logic_vector(63 DOWNTO 0) ;
  BEGIN
    ixcSimTime_DUMMY1 := ixcSimTime;
    ixcSimTime_DUMMY1 := it_cond_op((oneStepPIi)='1',evalStepPIi,DUMMY0) ;
    IF (hwClkDbgTime = '1') THEN
      simTime <= hwSimTime ;
    ELSIF (lockTraceOn = '1') THEN
      simTime <= lockTraceTime ;
    ELSIF (callEmuEv = '1') THEN
      IF (oneStepPIi = '1') THEN
        simTime <= evalStepPIi ;
      ELSIF (NOT(ckgHoldPIi) = '1') THEN
        simTime <= nextDutTimeS ;
      END IF;
    ELSIF (simTimeOn = '1') THEN
      simTime <= ixcSimTime_DUMMY1 ;
    END IF;
    DUMMY1 <= evalStepPIi ;
    ixcSimTime <= TRANSPORT ixcSimTime_DUMMY1;
  END PROCESS ;

  PROCESS --:o411
  (**) --  always_comb
  BEGIN
    $axis_pulse( eClk, eClkR);
  END PROCESS ;

  PROCESS --:o416
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      callEmuR <= callEmuPIi ;
    END IF ;
  END PROCESS ;

  PROCESS --:o420
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
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
    END IF ;
  END PROCESS ;

  PROCESS --:o445
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      IF (((hotSwapOnPI)='1' OR (callEmu)='1')) THEN
        ecmOne <= '1' ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o451
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      sfifoSyncMode <= sfifoSyncMode ;
      syncOtbChannels <= syncOtbChannels ;
    END IF ;
  END PROCESS ;

  PROCESS --:o456
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      callEmuWait <= callEmuWaitN ;
      callEmuWaitC <= ((((asyncCall AND sfifoSyncMode) OR isfWait) OR ptxBusy)
       OR holdEcm) ;
    END IF ;
  END PROCESS ;

  PROCESS --:o461
  (*)
  BEGIN
    IF (((callEmuEv)='1' OR (callEmuWait)='1')) THEN
      IF (callEmuWaitC = '1') THEN
        callEmuPre <= '0' ;
        callEmuWaitN <= '1' ;
      ELSE
        callEmuPre <= '1' ;
        callEmuWaitN <= '0' ;
      END IF;
    ELSE
      callEmuPre <= '0' ;
      callEmuWaitN <= '0' ;
    END IF;
  END PROCESS ;

  PROCESS --:o477
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      callEmuPreD <= callEmuPre ;
    END IF ;
  END PROCESS ;

  PROCESS --:o478
  (*)
  BEGIN
    callEmu <= (callEmuPreD AND callEmuPre) ;
  END PROCESS ;
  eventOn <= eventOnRI ;
  _UnNamed_Inst_15 : buf PORT MAP 
  (APPLY_PI,_ET3_COMPILER_RESERVED_NAME_DBI_APPLY_) ;
  _UnNamed_Inst_16 : buf PORT MAP 
  (_ET3_COMPILER_RESERVED_NAME_DUTPI_APPLY_,APPLY_DUTPI) ;
  _UnNamed_Inst_17 : buf PORT MAP 
  (_ET3_COMPILER_RESERVED_NAME_LBRKER_ON_,lbrOnAll) ;

  PROCESS --:o506
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      dbiEventD <= dbiEvent ;
      applyPiR <= APPLY_PI ;
      FvUseOnlyR <= FvUseOnly ;
      sendPO <= callEmuPIi ;
    END IF ;
  END PROCESS ;

  PROCESS --:o521
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      gfifoOff <= gfifoOff ;
      gfifoAsyncOff <= gfifoAsyncOff ;
    END IF ;
  END PROCESS ;
  _UnNamed_Inst_18 : Q_RDN PORT MAP (GFLBfull) ;
  _UnNamed_Inst_19 : Q_RDN PORT MAP (GFGBfull) ;

  PROCESS --:o538
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      GFGBfullBw <= (GFGBfull AND NOT(gfifoAsyncOff)) ;
    END IF ;
  END PROCESS ;
  gbf : Q_EV_WOR_START
    PORT MAP (
       GFGBfullBw
    ) ;

  PROCESS --:o547
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      GFGBfullBwD <= GFGBfullBw ;
    END IF ;
  END PROCESS ;

  PROCESS --:o548
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      GFLBfullD <= GFLBfull ;
    END IF ;
  END PROCESS ;

  PROCESS --:o557
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      GFLock1 <= ((gfifoOff OR hotSwapOnPI) AND (hasGFIFO1 OR hasGFIFO2)) ;
    END IF ;
  END PROCESS ;

  PROCESS --:o570
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      tbcPOReg <= tbcPO ;
      xcReplayOnReg <= xcReplayOn ;
    END IF ;
  END PROCESS ;

  PROCESS --:o578
  (*)
    VARIABLE GFLock2R_DUMMY2 : std_logic ;
  BEGIN
    GFLock2R_DUMMY2 := GFLock2R;
    IF (GFLock1 = '1') THEN
      GFLock2R_DUMMY2 := '1' ;
    ELSIF (callEmuEv = '1') THEN
      GFLock2R_DUMMY2 := '0' ;
    ELSIF (tbcPOReg = '1') THEN
      GFLock2R_DUMMY2 := '1' ;
    ELSE
      GFLock2R_DUMMY2 := '0' ;
    END IF;
    GFLock2 <= ((GFLock2R_DUMMY2 OR xcReplayOnReg) AND (hasGFIFO1 OR hasGFIFO2))
     ;
    GFLock2R <= TRANSPORT GFLock2R_DUMMY2;
  END PROCESS ;

  PROCESS --:o589
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      SFIFOLock <= SFIFOLock ;
    END IF ;
  END PROCESS ;

  PROCESS --:o595
  (fclk)
    VARIABLE gfifoAckWait_DUMMY3 : std_logic_vector(7 DOWNTO 0) ;
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (hasGFIFO1 = '1') THEN
        gfifoAckWait_DUMMY3 := std_logic_vector'(gfifoAckWait_DUMMY3(6 DOWNTO 0)
         & GFAck) ;
      ELSIF (hasGFIFO2 = '1') THEN
        gfifoAckWait_DUMMY3 := std_logic_vector'(gfifoAckWait_DUMMY3(6 DOWNTO 0)
         & GFAck) ;
      END IF;
    END IF ;
    gfifoAckWait <= TRANSPORT gfifoAckWait_DUMMY3;
  END PROCESS ;

  PROCESS --:o607
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      eventOnR <= (callEmuPre OR evalOnC) ;
      eventOnRI <= ((callEmuPre OR evalOnC) OR hotSwapOnPI) ;
    END IF ;
  END PROCESS ;

  PROCESS --:o612
  (*)
    VARIABLE dbiEvent_DUMMY4 : std_logic ;
    VARIABLE GFbusyW_DUMMY5 : std_logic ;
    VARIABLE FTcallW_DUMMY6 : std_logic ;
    VARIABLE evalOnOrig_DUMMY7 : std_logic ;
    VARIABLE evalOnSync_DUMMY8 : std_logic ;
    VARIABLE evalOnInt_DUMMY9 : std_logic ;
    VARIABLE stopSDLPO_DUMMY10 : std_logic ;
    VARIABLE stopCPFPO_DUMMY11 : std_logic ;
  BEGIN
    dbiEvent_DUMMY4 := dbiEvent;
    GFbusyW_DUMMY5 := GFbusyW;
    FTcallW_DUMMY6 := FTcallW;
    evalOnOrig_DUMMY7 := evalOnOrig;
    evalOnSync_DUMMY8 := evalOnSync;
    evalOnInt_DUMMY9 := evalOnInt;
    stopSDLPO_DUMMY10 := stopSDLPO;
    stopCPFPO_DUMMY11 := stopCPFPO;
    dbiEvent_DUMMY4 := ((NOT(applyPiR) AND APPLY_PI) AND NOT(hotSwapOnPI)) ;
    GFbusyW_DUMMY5 := (((((((ptxBusy OR gfifoWait) OR isfWait) OR osfWait) OR
     dbiEvent_DUMMY4) OR callEmuEv) OR callEmuWait) AND NOT(FvSimple2)) ;
    FTcallW_DUMMY6 := ((((svAsyncCall OR otbAsyncCall) OR GFAck) OR or_reduce
    (gfifoAckWait)) OR ecmHoldBusy) ;
    evalOnOrig_DUMMY7 := (((callEmuPre OR eventOnR) OR hwClkDbgOn) OR (tbcPOd
     AND NOT(tbcPO))) ;
    evalOnSync_DUMMY8 := ((evalOnOrig_DUMMY7 OR GFbusyW_DUMMY5) AND NOT
    (sdlStopRplyD)) ;
    evalOnInt_DUMMY9 := (NOT(lockTrace) AND ((FTcallW_DUMMY6 OR
     evalOnSync_DUMMY8) OR lockTraceOn)) ;
    evalOn <= ((evalOnInt_DUMMY9 OR (evalOnIntD AND NOT(FvSimple2))) OR
     boolean_to_std(ext(evalOnDExt,32) /= "00000000000000000000000000000000")) ;
    mpSampleOv <= ((lastDelta AND evalOnC) OR hotSwapOnPI) ;
    FvUseOnly <= (dbiEvent_DUMMY4 AND NOT(callEmuEv)) ;
    IF (((callEmuPre)='1' OR (stopSDL)='1')) THEN
      stopSDLPO_DUMMY10 := stopSDL ;
    END IF;
    IF (((callEmuPre)='1' OR (cpfStop)='1')) THEN
      stopCPFPO_DUMMY11 := cpfStop ;
    END IF;
    stopSDL <= ((sdlEnable AND sdlStop) AND NOT(xcReplayOn)) ;
    sdlStopRply <= ((sdlEnable AND sdlStop) AND xcReplayOn) ;
    stop3 <= ((((stopEmuPIi OR stopSDLPO_DUMMY10) OR stopCPFPO_DUMMY11) OR
     it_newBufPO) OR bpHalt) ;
    stop1R <= (stop1 AND tbcEnable) ;
    stop2R <= (stop2 AND tbcEnable) ;
    stop4R <= (stop4 AND tbcEnable) ;
    stopT <= it_cond_op((oneStepPIi)='1',mpOn,DUMMY3) ;
    dbiEvent <= TRANSPORT dbiEvent_DUMMY4;
    GFbusyW <= GFbusyW_DUMMY5;
    FTcallW <= FTcallW_DUMMY6;
    evalOnOrig <= evalOnOrig_DUMMY7;
    evalOnSync <= evalOnSync_DUMMY8;
    evalOnInt <= evalOnInt_DUMMY9;
    stopSDLPO <= stopSDLPO_DUMMY10;
    stopCPFPO <= stopCPFPO_DUMMY11;
  END PROCESS ;

  PROCESS --:o643
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      sdlStopRplyD <= sdlStopRply ;
    END IF ;
  END PROCESS ;

  PROCESS --:o646
  (fclk)
    VARIABLE evalOnIntR_DUMMY12 : std_logic_vector(2 DOWNTO 0) ;
    VARIABLE evalOnIntD_DUMMY13 : std_logic ;
    VARIABLE evalOnDExt_DUMMY14 : std_logic_vector(7 DOWNTO 0) ;
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      evalOnD <= evalOnC ;
      evalOnIntR_DUMMY12 := std_logic_vector'(evalOnIntR_DUMMY12(1 DOWNTO 0) &
       evalOnInt) ;
      evalOnIntD_DUMMY13 := or_reduce(evalOnIntR_DUMMY12) ;
      IF (evalOnIntD_DUMMY13 = '1') THEN
        evalOnDExt_DUMMY14 := evalOnDCtl ;
      ELSIF (ext(evalOnDExt_DUMMY14,32) /= "00000000000000000000000000000000")
       THEN
        evalOnDExt_DUMMY14 := ext((ext(evalOnDExt_DUMMY14,32) -
         "00000000000000000000000000000001"),8) ;
      END IF;
      stop1POd <= stop1PO ;
      stop2POd <= stop2PO ;
      stop4POd <= stop4PO ;
      stop3POd <= stop3PO ;
      stopTLd <= stopTL ;
    END IF ;
    evalOnIntR <= TRANSPORT evalOnIntR_DUMMY12;
    evalOnIntD <= evalOnIntD_DUMMY13;
    evalOnDExt <= evalOnDExt_DUMMY14;
  END PROCESS ;

  PROCESS --:o663
  (*)
  BEGIN
    stop1PO <= it_cond_op(((callEmuPre)='1' OR (stop1R)='1'),stop1R,stop1POd) ;
    stop2PO <= it_cond_op(((callEmuPre)='1' OR (stop2R)='1'),stop2R,stop2POd) ;
    stop4PO <= it_cond_op(((callEmuPre)='1' OR (stop4R)='1'),stop4R,stop4POd) ;
    stop3PO <= it_cond_op((callEmuPre)='1',std_logic'('0'),it_cond_op((stop3
    )='1',std_logic'('1'),stop3POd)) ;
    stopTL <= it_cond_op((callEmuPre)='1',std_logic'('0'),it_cond_op((stopT
    )='1',std_logic'('1'),stopTLd)) ;
    stopEmuPO <= stopEmuPIi ;
    remStepPO <= it_cond_op((oneStepPIi)='1',evfCount,ixcSimTime) ;
  END PROCESS ;
  APPLY_DUTPI <= (((callEmu AND boolean_to_std(clockMC = uClk)) OR
   boolean_to_std(ext(mpSt,32) = "00000000000000000000000000000001")) OR
   hotSwapOnPI) ;

  PROCESS --:o697
  (fclk)
    VARIABLE clockMC_DUMMY15 : std_logic ;
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (hotSwapOnPI = '1') THEN
        clockMC_DUMMY15 := clockMCInit ;
      ELSIF (cakeCcEnable = '1') THEN
        clockMC_DUMMY15 := NOT(clockMC_DUMMY15) ;
      END IF;
    END IF ;
    clockMC <= TRANSPORT clockMC_DUMMY15;
  END PROCESS ;
  mc1pi : Q_MPCLK1P
    PORT MAP (
       clockMC
    ) ;
  mcsi : Q_CLKSRC
    PORT MAP (
       clockMC
    ) ;

  PROCESS --:o707
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (simTimeEnable = '1') THEN
        eClkR <= NOT(eClkR) ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o710
  (fclk)
    VARIABLE DUMMY5 : std_logic_vector(0 TO 31) ;
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      lbrOn <= '0' ;
      active <= '0' ;
      DUMMY5 := ext(mpSt,32);

      CASE DUMMY5  IS
        WHEN  "00000000000000000000000000000000"  =>
          IF (callEmu = '1') THEN
            evalOnC <= '1' ;
            tbcPOd <= '0' ;
            IF (clockMC = uClk) THEN
              IF ((gfifoOff = '0')) THEN
                initClock <= '1' ;
              END IF;
              mpSt <= "010" ;
              mpOn <= '1' ;
              active <= '1' ;
              IF (NOT(ckgHoldPIi) = '1') THEN
                simTimeOn <= '1' ;
                lbrOn <= '1' ;
              END IF;
            ELSE
              mpSt <= "001" ;
            END IF;
          END IF;
        WHEN  "00000000000000000000000000000001"  =>
          mpSt <= "010" ;
          mpOn <= '1' ;
          active <= '1' ;
          IF ((gfifoOff = '0')) THEN
            initClock <= '1' ;
          END IF;
          IF (NOT(ckgHoldPIi) = '1') THEN
            simTimeOn <= '1' ;
            lbrOn <= '1' ;
          END IF;
        WHEN  "00000000000000000000000000000010"  =>
          IF (stopCond = '1') THEN
            mpSt <= "011" ;
          ELSE
            active <= '1' ;
            IF (mpEnable = '1') THEN
              mpOn <= '1' ;
              simTimeOn <= '1' ;
              lbrOn <= '1' ;
            ELSE
              mpOn <= '0' ;
            END IF;
          END IF;
        WHEN  "00000000000000000000000000000011"  =>
          mpOn <= '0' ;
          simTimeOn <= '0' ;
          IF (bpHalt = '1') THEN
            evalOnC <= '0' ;
            IF (stopEmuPIi = '1') THEN
              mpSt <= "000" ;
              tbcPOd <= '1' ;
            END IF;
          ELSIF (mpEnable = '1') THEN
            mpSt <= "000" ;
            evalOnC <= '0' ;
            tbcPOd <= '1' ;
          END IF;
        WHEN OTHERS => NULL ;
      END CASE;
    END IF ;
  END PROCESS ;

  PROCESS --:o775
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF ((ext(mpSt,32) = "00000000000000000000000000000011" OR (asyncBusy)='1')
      ) THEN
        asyncBusy <= (asyncCall AND NOT(acHalt)) ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o792
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      GFbusyD2 <= GFbusyD ;
      GFbusyD <= GFbusy ;
    END IF ;
  END PROCESS ;
  gfifoWait <= boolean_to_std(((GFbusy)='1' OR (GFbusyD)='1' OR (GFbusyD2)='1'))
   ;

  PROCESS --:o806
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      tbcPODly <= (std_logic_vector'(tbcPODly(11 DOWNTO 0) & tbcPOd) OR NOT
      (GF2LevelMask)) ;
    END IF ;
  END PROCESS ;

  PROCESS --:o812
  (*)
  BEGIN
    tbcPORdy <= (((((and_reduce(tbcPODly) OR NOT(hasGFIFO2)) AND NOT(gfifoWait))
     AND NOT(ptxBusy)) AND NOT(asyncBusy)) AND NOT(osfWait)) ;
  END PROCESS ;

  PROCESS --:o817
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      tbcPOState <= tbcPOStateN ;
    END IF ;
  END PROCESS ;

  PROCESS --:o819
  (*)
    VARIABLE DUMMY6 : std_logic_vector(0 TO 31) ;
  BEGIN
    IF (forceAbort = '1') THEN
      tbcPO <= '1' ;
      tbcPOStateN <= "00" ;
    ELSE
      DUMMY6 := ext(tbcPOState,32);

      CASE DUMMY6  IS
        WHEN  "00000000000000000000000000000000"  =>
          IF (((tbcPOd)='1' AND (tbcPORdy)='1')) THEN
            tbcPO <= '1' ;
            tbcPOStateN <= "01" ;
          ELSE
            tbcPO <= '0' ;
            tbcPOStateN <= "00" ;
          END IF;
        WHEN  "00000000000000000000000000000001"  =>
          IF (callEmuEv = '1') THEN
            tbcPO <= '0' ;
            tbcPOStateN <= "10" ;
          ELSE
            tbcPO <= '1' ;
            tbcPOStateN <= "01" ;
          END IF;
        WHEN  "00000000000000000000000000000010"  =>
          tbcPO <= '0' ;
          tbcPOStateN <= integer_to_std(it_cond_op((tbcPOd)='1',2,0),2) ;
        WHEN  "00000000000000000000000000000011"  =>
          tbcPO <= '0' ;
          tbcPOStateN <= "00" ;
        WHEN OTHERS => NULL ;
      END CASE;
    END IF;
  END PROCESS ;

  PROCESS --:o856
  (*)
    VARIABLE DUMMY7 : std_logic_vector(0 TO 31) ;
  BEGIN
    DUMMY7 := ext(mpSt,32);

    CASE DUMMY7  IS
      WHEN  "00000000000000000000000000000000"  =>
        simTimeEnable <= ((callEmu AND boolean_to_std(clockMC = uClk)) AND NOT
        (ckgHoldPIi)) ;
      WHEN  "00000000000000000000000000000001"  =>
        simTimeEnable <= NOT(ckgHoldPIi) ;
      WHEN  "00000000000000000000000000000010"  =>
        simTimeEnable <= (NOT(stopCond) AND mpEnable) ;
      WHEN OTHERS =>
        simTimeEnable <= '0' ;
    END CASE;
  END PROCESS ;

  PROCESS --:o870
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      SFIFOLock2 <= SFIFOLock ;
    END IF ;
  END PROCESS ;

  PROCESS --:o872
  (*)
  BEGIN
    holdEcmC <= (holdEcm AND active) ;
  END PROCESS ;

  PROCESS --:o873
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      holdEcmD <= holdEcm ;
    END IF ;
  END PROCESS ;
  _UnNamed_Inst_20 : Q_RDN PORT MAP (bpWait) ;
  _UnNamed_Inst_21 : Q_RDN PORT MAP (bWait) ;
  _UnNamed_Inst_22 : Q_RDN PORT MAP (sampleXpChg) ;
  qbwi : Q_EV_WOR
    PORT MAP (
       bpWait
    ) ;
  qxhi : Q_EV_WOR
    PORT MAP (
       xpHold
    ) ;
  qxci : Q_EV_WOR
    PORT MAP (
       sampleXpChg
    ) ;

  PROCESS --:o894
  (**) --  always_comb
  BEGIN
    $axis_pulse( bClk, bClkRH);
  END PROCESS ;
  xpHold <= (((((GFBw OR ixcHoldClk) OR bClkHoldD) OR holdEcmC) OR bWaitExtend)
   OR bWait) ;
  bClkHold <= GFBw ;

  PROCESS --:o905
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      bClkHoldD <= bClkHold ;
    END IF ;
  END PROCESS ;
  bkh : Q_EV_WOR_START
    PORT MAP (
       bClkHoldD
    ) ;
  hec : Q_EV_WOR_START
    PORT MAP (
       holdEcmC
    ) ;

  PROCESS --:o910
  (fclk)
    VARIABLE bClkR_DUMMY16 : std_logic ;
    VARIABLE bpSt_DUMMY17 : std_logic_vector(1 DOWNTO 0) ;
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (ext(bpSt_DUMMY17,32) = "00000000000000000000000000000000") THEN
        IF ((((bpWait)='1' OR (sampleXpChg)='1') AND (mpOn)='1')) THEN
          IF ((bClkHold = '0')) THEN
            bClkR_DUMMY16 := NOT(bClkR_DUMMY16) ;
          END IF;
          bpSt_DUMMY17 := integer_to_std(it_cond_op((bpWait)='1',1,2),2) ;
        END IF;
      ELSIF (ext(bpSt_DUMMY17,32) = "00000000000000000000000000000001") THEN
        IF (bpWait = '1') THEN
          IF ((bClkHold = '0')) THEN
            bClkR_DUMMY16 := NOT(bClkR_DUMMY16) ;
          END IF;
        ELSE
          IF (((sampleXpChg)='1' OR uClk /= clockMC)) THEN
            IF ((bClkHold = '0')) THEN
              bClkR_DUMMY16 := NOT(bClkR_DUMMY16) ;
            END IF;
            bpSt_DUMMY17 := "10" ;
          ELSE
            bpSt_DUMMY17 := "00" ;
          END IF;
        END IF;
      ELSIF (ext(bpSt_DUMMY17,32) = "00000000000000000000000000000010") THEN
        IF ((((bpWait)='1' OR (sampleXpChg)='1') OR uClk /= clockMC)) THEN
          IF ((bClkHold = '0')) THEN
            bClkR_DUMMY16 := NOT(bClkR_DUMMY16) ;
          END IF;
          bpSt_DUMMY17 := integer_to_std(it_cond_op((bpWait)='1',1,2),2) ;
        ELSE
          bpSt_DUMMY17 := "00" ;
        END IF;
      END IF;
    END IF ;
    bClkR <= TRANSPORT bClkR_DUMMY16;
    bpSt <= bpSt_DUMMY17;
  END PROCESS ;

  PROCESS --:o937
  (*)
  BEGIN
    bpOn <= ((boolean_to_std(ext(bpSt,32) /= "00000000000000000000000000000000")
     AND NOT(bpHalt)) AND NOT(bClkHoldD)) ;
    sampleXpV <= (bpWait OR sampleXpChg) ;
    IF (ext(bpSt,32) = "00000000000000000000000000000000") THEN
      lastDelta <= it_cond_op((((bpWait)='1' OR (sampleXpChg)='1') AND (mpOn
      )='1'),std_logic'('0'),std_logic'('1')) ;
    ELSE
      lastDelta <= (NOT((bpWait OR sampleXpChg)) AND boolean_to_std(uClk =
       clockMC)) ;
    END IF;
  END PROCESS ;

  PROCESS --:o947
  (bClk)
  BEGIN
    IF (bClk'event AND bClk = '1') THEN
      bpCount <= (bpCount +
       "0000000000000000000000000000000000000000000000000000000000000001") ;
    END IF ;
  END PROCESS ;

  PROCESS --:o951
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (((bClkHold = '0') AND ((bpWait)='1' OR (xpHold)='1' OR (sampleXpChg
      )='1'))) THEN
        bCount <= (bCount +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
        IF (((bpWait = '0') AND (sampleXpChg)='1')) THEN
          nbaCount <= (nbaCount +
           "0000000000000000000000000000000000000000000000000000000000000001") ;
        END IF;
        IF (ixcHoldClk = '1') THEN
          ixcHoldClkCnt <= (ixcHoldClkCnt +
           "0000000000000000000000000000000000000000000000000000000000000001") ;
        END IF;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o960
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      IF (((ixcHoldClk)='1' AND (ixcHoldClkR = '0'))) THEN
        ixcHoldSyncCnt <= (ixcHoldSyncCnt +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      END IF;
      ixcHoldClkR <= ixcHoldClk ;
    END IF ;
  END PROCESS ;

  PROCESS --:o965
  (eClk)
  BEGIN
    IF (eClk'event AND eClk = '1') THEN
      eCount <= (eCount +
       "0000000000000000000000000000000000000000000000000000000000000001") ;
    END IF ;
  END PROCESS ;

  PROCESS --:o968
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      IF ((((callEmu)='1' OR (evalOnC)='1') OR (evalOnD)='1')) THEN
        evfCount <= (evfCount +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      END IF;
      IF (evalOn = '1') THEN
        fvSCount <= (fvSCount +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o973
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF ((((asyncCall)='1' AND (NOT(acHalt))='1') AND (NOT(evalOnC))='1')) THEN
        aCount <= (aCount + "00000000000000000000000000000001") ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o979
  (*)
  BEGIN
    IF (callEmuEv = '1') THEN
      intr <= '0' ;
    ELSIF (((hasGFIFO1)='1' OR (hasGFIFO2)='1' OR (hasSFIFO)='1' OR (hasPTX)='1'
    )) THEN
      intr <= '1' ;
    ELSE
      intr <= tbcPO ;
    END IF;
  END PROCESS ;
  intrBuf : buf PORT MAP (_ET3_COMPILER_RESERVED_NAME_ORION_INTERRUPT_,intr) ;
  _UnNamed_Inst_23 : Q_RDN PORT MAP (it_endBuf) ;

  PROCESS --:o1000
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      it_capture <= it_capture ;
      it_replay <= it_replay ;
    END IF ;
  END PROCESS ;
  it_newBuf <= (it_endBuf AND (it_capture OR it_replay)) ;

  PROCESS --:o1007
  (*)
  BEGIN
    IF (((callEmu)='1' OR (it_newBuf)='1')) THEN
      it_newBufPO <= it_newBuf ;
    END IF;
  END PROCESS ;
  dum1 : Q_RBUFZN
    PORT MAP (
       dummyW
      ,std_logic'('1')
      ,std_logic'('0')
    ) ;
  dum2 : Q_RBUFZP
    PORT MAP (
       dummyW
      ,std_logic'('1')
      ,std_logic'('0')
    ) ;

  PROCESS --:o1021
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      dummyR <= dummyW ;
    END IF ;
  END PROCESS ;

  PROCESS --:o1026
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (((callEmu)='1' AND (NOT((ckgHoldPIi AND oneStepPIi)))='1')) THEN
        hwClkEnable <= '1' ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o1029
  (*)
  BEGIN
    hwClkDbgOn <= (hwClkDbg AND (hwClkDbgEn OR cakeUcEnable)) ;
  END PROCESS ;

  PROCESS --:o1032
  (fclk)
    VARIABLE hwClkDelay_DUMMY18 : std_logic_vector(31 DOWNTO 0) ;
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (hwClkDbgOn = '1') THEN
        IF ((hwClkDelay_DUMMY18 = "0")) THEN
          hwClkDelay_DUMMY18 := "00000000000000000000000000000001" ;
        END IF;
        hwSimTime <= (hwSimTime + ext(hwClkDelay_DUMMY18,64)) ;
      END IF;
    END IF ;
    hwClkDelay <= TRANSPORT hwClkDelay_DUMMY18;
  END PROCESS ;

  PROCESS --:o1041
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (((callEmu)='1' OR (evalOnC)='1')) THEN
        hwClkHalt <= (sdlStop AND sdlHaltHwClk) ;
      ELSIF (((sdlHaltHwClk)='1' AND (NOT(sdlHaltHwClkR))='1')) THEN
        hwClkHalt <= '1' ;
      ELSIF (((sdlStop)='1' AND (sdlHaltHwClk)='1')) THEN
        hwClkHalt <= '1' ;
      END IF;
      sdlHaltHwClkR <= sdlHaltHwClk ;
    END IF ;
  END PROCESS ;
  anyStop <= ((((stop1PO OR stop2PO) OR stop4PO) OR stopTL) OR stop3PO) ;

  PROCESS --:o1061
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (((GFGBfullBw)='1' OR (GFGBfullBwD)='1')) THEN
        gfifoGBfullCnt <= (gfifoGBfullCnt +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      ELSIF (((GFLBfull)='1' OR (GFLBfullD)='1')) THEN
        gfifoLBfullCnt <= (gfifoLBfullCnt +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      ELSIF (((GFbusy)='1' AND (NOT(evalOnC))='1')) THEN
        gfifoTBsyncCnt <= (gfifoTBsyncCnt +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      END IF;
      IF (((holdEcm)='1' OR (holdEcmD)='1')) THEN
        ixcHoldEcmCnt <= (ixcHoldEcmCnt +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o1076
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      maxFck2Sync <= maxFck2Sync ;
      maxGfifo2Sync <= maxGfifo2Sync ;
    END IF ;
  END PROCESS ;

  PROCESS --:o1081
  (uClk)
    VARIABLE Fck2Sync_DUMMY19 : std_logic_vector(15 DOWNTO 0) ;
    VARIABLE Gfifo2Sync_DUMMY20 : std_logic_vector(15 DOWNTO 0) ;
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      IF ((evalOnC = '0')) THEN
        Fck2Sync_DUMMY19 := maxFck2Sync ;
      ELSIF (ext(Fck2Sync_DUMMY19,32) /= "00000000000000000000000000000000")
       THEN
        Fck2Sync_DUMMY19 := ext((ext(Fck2Sync_DUMMY19,32) -
         "00000000000000000000000000000001"),16) ;
      END IF;
      IF (((evalOnC = '0') OR (GFbusy)='1')) THEN
        Gfifo2Sync_DUMMY20 := maxGfifo2Sync ;
      ELSIF (ext(Gfifo2Sync_DUMMY20,32) /= "00000000000000000000000000000000")
       THEN
        Gfifo2Sync_DUMMY20 := ext((ext(Gfifo2Sync_DUMMY20,32) -
         "00000000000000000000000000000001"),16) ;
      END IF;
    END IF ;
    Fck2Sync <= TRANSPORT Fck2Sync_DUMMY19;
    Gfifo2Sync <= Gfifo2Sync_DUMMY20;
  END PROCESS ;
  stop1 <= '1' WHEN (syncEn)='1' ELSE 'Z' ;
  qsynci : Q_EV_WOR_START
    PORT MAP (
       syncEn
    ) ;

  PROCESS --:o1100
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      ptxStop <= anyStop ;
    END IF ;
  END PROCESS ;
  ecmOn <= (callEmu OR simTimeEnable) ;

  PROCESS --:o1107
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      ecmOnD <= ecmOn ;
    END IF ;
  END PROCESS ;
  ecmSync <= NOT((ecmNotSync OR ecmNotSyncD)) ;
  ecmNotSync <= ((svAsyncCall OR otbAsyncCall) OR ptxBusy) ;

  PROCESS --:o1115
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      ecmNotSyncD <= ecmNotSync ;
    END IF ;
  END PROCESS ;
  _UnNamed_Inst_24 : Q_RDN PORT MAP (holdEcmTb) ;
  _UnNamed_Inst_25 : Q_RDN PORT MAP (ptxHoldEcm) ;

  PROCESS --:o1126
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      holdEcmPtxOn <= (ptxHoldEcm AND xcRecordOn) ;
    END IF ;
  END PROCESS ;

  PROCESS --:o1130
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (holdEcmTb = '1') THEN
        holdEcmSync <= '1' ;
      ELSIF (ecmSync = '1') THEN
        holdEcmSync <= '0' ;
      END IF;
    END IF ;
  END PROCESS ;
  holdEcm <= ((holdEcmTb OR holdEcmPtxOn) OR holdEcmSync) ;

  PROCESS --:o1141
  (uClk)
    VARIABLE DUMMY8 : std_logic_vector(0 TO 31) ;
    VARIABLE dccFrameFill_DUMMY21 : std_logic_vector(7 DOWNTO 0) ;
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      IF (ext(DccFrameCycle,32) /= "00000000000000000000000000000000") THEN
        DUMMY8 := ext(dccState,32);

        CASE DUMMY8  IS
          WHEN  "00000000000000000000000000000000"  =>
            bWaitExtend <= '0' ;
            IF (lbrOn = '1') THEN
              dccFrameFill_DUMMY21 := "00000001" ;
              dccState <= '1' ;
            END IF;
          WHEN  "00000000000000000000000000000001"  =>
            dccFrameFill_DUMMY21 := ext((ext(dccFrameFill_DUMMY21,32) +
             "00000000000000000000000000000001"),8) ;
            IF (dccFrameFill_DUMMY21 = DccFrameCycle) THEN
              dccFrameFill_DUMMY21 := "00000000" ;
            END IF;
            bWaitExtend <= boolean_to_std((((bpWait)='1' OR (xpHold)='1') AND
             dccFrameFill_DUMMY21 > DccFrameMark)) ;
            IF (((lbrOn = '0') AND (ext(dccFrameFill_DUMMY21,32) =
             "00000000000000000000000000000000" OR ((bpWait OR xpHold) = '0'))))
             THEN
              dccState <= '0' ;
            END IF;
          WHEN OTHERS => NULL ;
        END CASE;
      END IF;
    END IF ;
    dccFrameFill <= TRANSPORT dccFrameFill_DUMMY21;
  END PROCESS ;

  PROCESS --:o1169
  (**) --  always_comb
  BEGIN
    $axis_pulse( mcp, clockMC);
  END PROCESS ;

  PROCESS --:o1171
  (mcp)
  BEGIN
    IF (mcp'event AND mcp = '1') THEN
      nextDutTimeP <= DUMMY2 ;
    END IF ;
  END PROCESS ;
  mcDelta <= ext((DUMMY2 - nextDutTimeP),32) ;

  PROCESS --:o1187
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF ((uClkErrTime =
       "0000000000000000000000000000000000000000000000000000000000000000" AND
       shr(fclkCntr,integer_to_std(1,32)) /= uClkCntr)) THEN
        uClkErrTime <= simTime ;
      END IF;
      IF (initClock = '1') THEN
        fclkCntr <= (fclkCntr +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      END IF;
    END IF ;
  END PROCESS ;

  PROCESS --:o1192
  (uClk)
  BEGIN
    IF (uClk'event AND uClk = '1') THEN
      IF (initClock = '1') THEN
        uClkCntr <= (uClkCntr +
         "0000000000000000000000000000000000000000000000000000000000000001") ;
      END IF;
    END IF ;
  END PROCESS ;
  _zzqnthw : Q_NOT_TOUCH
     ;
END module;