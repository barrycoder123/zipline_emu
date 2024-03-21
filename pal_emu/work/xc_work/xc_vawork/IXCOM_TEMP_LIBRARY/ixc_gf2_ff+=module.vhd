architecture module of ixc_gf2_ff is
  -- quickturn always_on
  -- quickturn CVASTRPROP MODULE HDLICE ALWAYS_ON TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_FDP0A
    port (
      D : in std_logic := 'X' ;
    Q : out std_logic ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal qr : std_logic_vector((W - 1) downto 0) ;
  attribute _2_state_ of qr: signal is 1 ;

begin
  Generate1 : if genblk1 : ((GF2_1XCB)/=0) generate
  begin

    process --:o32
    (DUMMY0)
    begin
      if (DUMMY0'event and DUMMY0 = '1') then
        qr <= ext(d,abs((W - 1))+1) ;
      end if ;
    end process ;
    q <= ext(qr,abs((W - 1))+1) ;
  else DUMMY1 : generate
    signal DUMMY2 : std_logic_vector((W - 1) downto 0) ;
    signal DUMMY3 : std_logic_vector((W - 1) downto 0) ;
  begin
    Generate2 : for GenerateIndex in (W - 1) downto 0 generate
    fd : Q_FDP0A
      port map (
         D => DUMMY2(GenerateIndex)
        ,Q => DUMMY3(GenerateIndex)
      ) ;
    end generate;
    DUMMY2 <= ext(d,abs((W - 1))+1) ;
    q <= ext(DUMMY3,abs((W - 1))+1) ;
  end generate ;
end module;
