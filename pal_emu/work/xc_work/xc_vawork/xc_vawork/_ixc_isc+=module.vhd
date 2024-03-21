architecture module of _ixc_isc is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_RDN
    port(Z : out std_logic) ;
  end component ;
  signal DUMMY0 : std_logic_vector(1 downto 0) ;
  signal assertion_coverage_on : std_logic ;
  signal assertUCF : std_logic ;
  signal fclk : std_logic ;
  signal assertion_global_on_p : std_logic ;
  signal assertion_global_off_p : std_logic ;
  signal DUMMY1 : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of DUMMY1: signal is 1 ;
  signal DUMMY2 : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of DUMMY2: signal is 1 ;
  signal assertion_global_off_s : std_logic := '0' ;
  -- quickturn external_ref assertion_global_off_s
  signal assertion_global_on_s : std_logic := '1' ;
  -- quickturn external_ref assertion_global_on_s
  signal assertion_global_off_sD : std_logic := '0' ;
  signal assertion_global_on_sD : std_logic := '1' ;
  signal assertion_global_off_ev : std_logic ;
  signal assertion_global_on_ev : std_logic ;
  signal _zy_ixcg_mdh_L0_0 : integer ;
  attribute _2_state_ of _zy_ixcg_mdh_L0_0: signal is 1 ;
  signal _zy_ixcg_mdh_L0_1 : integer ;
  attribute _2_state_ of _zy_ixcg_mdh_L0_1: signal is 1 ;
  signal DUMMY3 : std_logic ;
  -- quickturn keep_net assertion_global_off_s
  -- quickturn keep_net assertion_global_on_s
  -- quickturn keep_net assertion_global_off_sD
  -- quickturn keep_net assertion_global_on_sD
  -- quickturn fast_clock fclk

begin

  process --:o72
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (DUMMY3 = '1') then
        assertion_global_off_sD <= assertion_global_off_s ;
        assertion_global_on_sD <= assertion_global_on_s ;
      end if;
    end if ;
  end process ;

  process --:o78
  (*)
  begin
    assertion_global_on_ev <= (DUMMY3 and boolean_to_std(assertion_global_on_s
     /= assertion_global_on_sD)) ;
  end process ;

  process --:o81
  (*)
  begin
    assertion_global_off_ev <= (DUMMY3 and boolean_to_std(assertion_global_off_s
     /= assertion_global_off_sD)) ;
  end process ;
  _UnNamed_Inst_296 : Q_RDN port map (assertion_global_on_p) ;
  _UnNamed_Inst_297 : Q_RDN port map (assertion_global_off_p) ;
  assertion_global_on_p <= '1' when (((assertion_global_on_ev)='1' and 
  (assertion_global_on_s)='1') and (not(assertion_global_off_s))='1') else 'Z' ;
  assertion_global_off_p <= '1' when (((assertion_global_off_ev)='1' and 
  (assertion_global_off_s)='1') and (not(assertion_global_on_s))='1') else 'Z' ;
end module;
