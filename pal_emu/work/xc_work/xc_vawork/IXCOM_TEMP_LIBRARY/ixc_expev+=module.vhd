architecture module of ixc_expEv is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_EVDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component Q_CCLKCHK
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component Q_EV_WOR_START
    port (
    A : in std_logic := 'X' ) ;
  end component ;

  signal callEvent : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  attribute _2_state_ of DUMMY1: signal is 1 ;

begin
  genblk1 : for i in 0 to conv_integer(w) - 1 generate
  begin
    p : Q_EVDECT
      port map (
         callEvent
        ,s(i)
        ,std_logic'('1')
      ) ;
    cchk : Q_CCLKCHK
      port map (
         s(i)
      ) ;
  end generate ;
  DUMMY0 <= '1' when (callEvent)='1' else 'Z' ;
  qes : Q_EV_WOR_START
    port map (
       callEvent
    ) ;

  process --:o3883
  (*)
  begin
    if (((DUMMY1)='1' or (callEvent)='1')) then
      so <= callEvent ;
    end if;
  end process ;
end module;
