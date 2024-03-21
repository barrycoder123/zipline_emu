architecture module of ixc_nba2BpD is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal enL : std_logic_vector((WIDTH - 1) downto 0) ;
  attribute _2_state_ of enL: signal is 1 ;
  signal DUMMY1 : std_logic_vector((WIDTH - 1) downto 0) ;
  attribute _2_state_ of DUMMY1: signal is 1 ;
  -- quickturn fast_clock fclk

begin

  process --:o3144
  (*)
  begin
    if (not(DUMMY0) = '1') then
      enL <= ext(en,abs((WIDTH - 1))+1) ;
    end if;
  end process ;
  Generate1 : if genblk1 : ((RESET)/=0) generate
  begin
    drOn <= (ext(enL,abs((WIDTH - 1))+1) and ext(en,abs((WIDTH - 1))+1)) ;
  else DUMMY2 : generate
  begin

    process --:o3149
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        DUMMY1 <= enL ;
      end if ;
    end process ;
    enNxt <= not(enL) ;
    drOn <= (ext(DUMMY1,abs((WIDTH - 1))+1) xor ext(enL,abs((WIDTH - 1))+1)) ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
