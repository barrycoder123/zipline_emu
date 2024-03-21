architecture module of ixc_osf1_evcap is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_EVDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component Q_EV_WOR_START
    port (
    A : in std_logic := 'X' ) ;
  end component ;

  component ixc_uclk_sample
    port (
      so : out std_logic ;
    si : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal callEvent : std_logic ;
  signal pvecEv : std_logic ;
  attribute _2_state_ of pvecEv: signal is 1 ;
  -- quickturn keep_net pvecEv

begin
  p : Q_EVDECT
    port map (
       callEvent
      ,pvec
      ,std_logic'('1')
    ) ;
  DUMMY1 <= '1' when (callEvent)='1' else 'Z' ;
  qi : Q_EV_WOR_START
    port map (
       callEvent
    ) ;
  DUMMY2 <= '1' when (callEvent)='1' else 'Z' ;

  process --:o1445
  (*)
  begin
    if (((DUMMY0)='1' or (callEvent)='1')) then
      pvecEv <= callEvent ;
    end if;
  end process ;
  si : ixc_uclk_sample
    port map (
       pvecEvO
      ,pvecEv
    ) ;
end module;
