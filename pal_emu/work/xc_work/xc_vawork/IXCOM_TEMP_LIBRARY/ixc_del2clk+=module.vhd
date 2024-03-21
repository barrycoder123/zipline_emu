architecture module of ixc_del2clk is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal clk : std_logic ;
  signal DUMMY0 : std_logic_vector(31 downto 0) ;
  signal DUMMY1 : std_logic ;
  signal aT : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of aT: signal is 1 ;
  signal clkv : std_logic ;
  attribute _2_state_ of clkv: signal is 1 ;

begin
  Generate1 : if genblk1 : ((PEDGE)/=0) generate
  begin
    clk <= DUMMY1 ;
  else DUMMY2 : generate
  begin

    process --:o3228
    (**) -- always_comb
    begin
      $axis_pulse( clk, DUMMY1);
    end process ;
  end generate ;

  process --:o3231
  (clk)
    variable aT_DUMMY0 : std_logic_vector(31 downto 0) ;
  begin
    if (clk'event and clk = '1') then
      if (en = '1') then
        if (PEDGE /= 0) then
          aT_DUMMY0 := (aT_DUMMY0 + shl(DUMMY0,integer_to_std(1,32))) ;
        else
          aT_DUMMY0 := (aT_DUMMY0 + DUMMY0) ;
        end if;
        if (aT_DUMMY0 >= delay) then
          clkv <= not(clkv) ;
          aT_DUMMY0 := "00000000000000000000000000000000" ;
        end if;
      else
        aT_DUMMY0 := "00000000000000000000000000000000" ;
      end if;
    end if ;
    aT <= transport aT_DUMMY0;
  end process ;
  Generate2 : if genblk2 : ((TOGGLE)/=0) generate
  begin
    clko <= clkv ;
  else DUMMY3 : generate
    signal clkvp : std_logic ;
  begin

    process --:o3250
    (**) -- always_comb
    begin
      $axis_pulse( clkvp, clkv);
    end process ;
    clko <= clkvp ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
