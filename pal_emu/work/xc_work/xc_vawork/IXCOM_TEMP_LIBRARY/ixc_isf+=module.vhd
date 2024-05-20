architecture module of IXC_ISF is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal pvec : std_logic_vector(0 downto 0) ;
  -- quickturn external_ref pvec
  signal DUMMY0 : std_logic ;
  signal pvecEv : std_logic_vector(0 downto 0) ;
  attribute _2_state_ of pvecEv: signal is 1 ;
  signal pvecEvD : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pvecEvD: signal is 1 ;
  signal _zyevPio : std_logic_vector(0 downto 0) ;
  -- quickturn external_ref _zyevPio
  attribute _2_state_ of _zyevPio: signal is 1 ;
  signal isfBusy : std_logic ;
  attribute _2_state_ of isfBusy: signal is 1 ;
  signal isfBusyD : std_logic ;
  attribute _2_state_ of isfBusyD: signal is 1 ;
  signal rptr : std_logic_vector(8 downto 0) ;
  attribute _2_state_ of rptr: signal is 1 ;
  signal mark : std_logic ;
  attribute _2_state_ of mark: signal is 1 ;
  signal markN : std_logic ;
  attribute _2_state_ of markN: signal is 1 ;
  signal nd : std_logic ;
  attribute _2_state_ of nd: signal is 1 ;
  signal state : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of state: signal is 1 ;
  -- quickturn no_hardmacro _zyevPio
  -- quickturn keep_net _zyevPio
  -- quickturn fast_clock fclk

begin
  DUMMY0 <= '1' when (((nd)='1' or (isfBusy)='1') or (isfBusyD)='1') else 'Z' ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       pvec
      ,_zyevPio
    ) ;

  process --:o38
  (fclk)
    variable DUMMY1 : std_logic_vector(0 to 31) ;
  begin
    if (fclk'event and fclk = '1') then
      DUMMY1 := ext(state,32);

      case DUMMY1  is
        when integer_to_std(ST_IDLE,32) =>
          if (nd = '1') then
            isfBusy <= '1' ;
            state <= integer_to_std(ST_ACTIVE,2) ;
          end if;
          rptr <= "000000000" ;
        when integer_to_std(ST_ACTIVE,32) =>
          isfBusy <= '1' ;
          state <= integer_to_std(ST_MRD,2) ;
          rptr <= "000000000" ;
        when integer_to_std(ST_MRD,32) =>
          if (ext(rptr,32) = integer_to_std(0,32)) then
            isfBusy <= '0' ;
            state <= integer_to_std(ST_IDLE,2) ;
            rptr <= integer_to_std((1 - 1),9) ;
          else
            rptr <= ext((ext(rptr,32) + "00000000000000000000000000000001"),9) ;
          end if;
        when others => null ;
      end case;
      mark <= markN ;
      pvecEvD <= ext(pvecEv,64) ;
      isfBusyD <= isfBusy ;
    end if ;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
