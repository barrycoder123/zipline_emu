architecture module of nx_credit_manager is
  -- quickturn multiple_driver_resolution
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_pio_call
    generic (
      S2HDW : integer := 1 ;
      H2SDW : integer := 1 ;
      MAIDW : integer := 0 ;
      LTIDW : integer := 0 ;
      ISSVA : integer := 0 ;
      constant S2HDW1 : integer := it_cond_op(S2HDW = 0,0,(S2HDW - 1)) ;
      constant H2SDW1 : integer := it_cond_op(H2SDW = 0,0,(H2SDW - 1)) ;
      constant MAIDW1 : integer := it_cond_op(MAIDW = 0,0,(MAIDW - 1)) ;
      constant LTIDW1 : integer := it_cond_op(LTIDW = 0,0,(LTIDW - 1))
    ) ;
    port (
      s2h_notify : out std_logic ;
      s2h_data : out std_logic_vector(S2HDW1 downto 0) ;
      from_isf : in std_logic := 'X' ;
      h2s_notify : in std_logic := 'X' ;
      h2s_data : in std_logic_vector(H2SDW1 downto 0) := (others => '0') ;
      to_osf : out std_logic ;
      maid : in std_logic_vector(MAIDW1 downto 0) := (others => '0') ;
    ltid : in std_logic_vector(LTIDW1 downto 0) := (others => '0') ) ;
  end component ;

  component ixc_sample_logic
    generic (
      WIDTH : integer := 1 ;
      RD_TYPE : integer := 0 ;
      subtype StateType is std_logic ;
      type DUMMY2 is array(integer range <>) of std_logic
    ) ;
    port (
      sv : out DUMMY2((WIDTH - 1) downto 0) ;
    v : in DUMMY2((WIDTH - 1) downto 0) ) ;
  end component ;

  signal DUMMY0 : std_logic_vector(0 to 8) ;
  signal DUMMY1 : std_logic_vector(0 to 11) ;
  signal _zy_sva_b0_t : std_logic ;
  signal _zy_sva_b1_t : std_logic ;
  signal _zy_sva_b2_t : std_logic ;
  signal _zyixc_port_1_0_s2hW : std_logic ;
  signal _zyixc_port_1_1_s2hW : std_logic ;
  signal credit_issued_r : std_logic_vector(9 downto 0) ;
  signal used_err_v : std_logic ;
  signal return_err_v : std_logic ;
  signal credit_issued_v : std_logic_vector(9 downto 0) ;
  signal remaining_credit_v : std_logic_vector(9 downto 0) ;
  signal outstanding : integer ;
  signal credit_decrease : std_logic ;
  signal credit_limit : std_logic_vector(9 downto 0) ;
  signal _zy_sva_b0 : std_logic ;
  attribute _2_state_ of _zy_sva_b0: signal is 1 ;
  signal _zy_sva_b1 : std_logic ;
  attribute _2_state_ of _zy_sva_b1: signal is 1 ;
  signal _zy_sva_credit_return_check_1_0_fail : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_credit_return_check_1_0_fail: signal is 1 ;
  signal _zy_sva_b2 : std_logic ;
  attribute _2_state_ of _zy_sva_b2: signal is 1 ;
  signal _zy_sva_credit_danger_check_2_3_fail : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_credit_danger_check_2_3_fail: signal is 1 ;
  signal _zyixc_port_1_0_req : std_logic ;
  attribute _2_state_ of _zyixc_port_1_0_req: signal is 1 ;
  signal _zyixc_port_1_0_ack : std_logic ;
  attribute _2_state_ of _zyixc_port_1_0_ack: signal is 1 ;
  signal _zyixc_port_1_0_isf : std_logic ;
  attribute _2_state_ of _zyixc_port_1_0_isf: signal is 1 ;
  signal _zyixc_port_1_0_osf : std_logic ;
  attribute _2_state_ of _zyixc_port_1_0_osf: signal is 1 ;
  signal _zyixc_port_1_1_req : std_logic ;
  attribute _2_state_ of _zyixc_port_1_1_req: signal is 1 ;
  signal _zyixc_port_1_1_ack : std_logic ;
  attribute _2_state_ of _zyixc_port_1_1_ack: signal is 1 ;
  signal _zyixc_port_1_1_isf : std_logic ;
  attribute _2_state_ of _zyixc_port_1_1_isf: signal is 1 ;
  signal _zyixc_port_1_1_osf : std_logic ;
  attribute _2_state_ of _zyixc_port_1_1_osf: signal is 1 ;
  signal DUMMY2 : std_logic_vector(0 downto 0) ;
  signal DUMMY3 : std_logic_vector(0 downto 0) ;
  signal DUMMY4 : std_logic_vector(0 downto 0) ;
  signal DUMMY5 : std_logic_vector(0 downto 0) ;
  signal DUMMY6 : std_logic_vector(0 downto 0) ;
  signal DUMMY7 : std_logic_vector(0 downto 0) ;
  -- quickturn keep_net _zy_sva_credit_return_check_1_0_fail
  -- quickturn keep_net _zy_sva_credit_danger_check_2_3_fail

begin
  credit_decrease <= boolean_to_std(sw_config(9 downto 0) < credit_limit) ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY0
      ,credit_available
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY1
      ,hw_status
    ) ;
  _zy_sva_b0_t <= or_reduce(credit_return) ;
  _zy_sva_b1_t <= boolean_to_std(ext(credit_return,32) <= integer_to_std
  (outstanding,32)) ;
  _zy_sva_b2_t <= boolean_to_std(ext(sw_config(9 downto 0),32) <=
   std_logic_vector'("00000000000000000000001000000000")) ;
  _zz_zy_sva_b0 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b0
      ,_zy_sva_b0_t
    ) ;
  _zz_zy_sva_b1 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b1
      ,_zy_sva_b1_t
    ) ;
  _zz_zy_sva_b2 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b2
      ,_zy_sva_b2_t
    ) ;
  _zzixc_tfport_1_1 : ixc_pio_call
    generic map(S2HDW => 0,H2SDW => 0,MAIDW => 0,LTIDW => 0,ISSVA => 1)
    port map (
       _zyixc_port_1_1_ack
      ,_zyixc_port_1_1_s2hW
      ,_zyixc_port_1_1_isf
      ,_zyixc_port_1_1_req
      ,DUMMY2
      ,_zyixc_port_1_1_osf
      ,DUMMY3
      ,DUMMY4
    ) ;
  DUMMY2 <= std_logic_vector'("0") ;
  DUMMY3 <= std_logic_vector'("0") ;
  DUMMY4 <= std_logic_vector'("0") ;
  _zzixc_tfport_1_0 : ixc_pio_call
    generic map(S2HDW => 0,H2SDW => 0,MAIDW => 0,LTIDW => 0,ISSVA => 1)
    port map (
       _zyixc_port_1_0_ack
      ,_zyixc_port_1_0_s2hW
      ,_zyixc_port_1_0_isf
      ,_zyixc_port_1_0_req
      ,DUMMY5
      ,_zyixc_port_1_0_osf
      ,DUMMY6
      ,DUMMY7
    ) ;
  DUMMY5 <= std_logic_vector'("0") ;
  DUMMY6 <= std_logic_vector'("0") ;
  DUMMY7 <= std_logic_vector'("0") ;

  _zy_sva_sblk_1_2 :
  process --:o86
  (clk)
    variable _zy_sva_nts_1_2_pass : std_logic ;
  begin
    if (clk'event and clk = '1') then
      _zy_sva_nts_1_2_pass := (_zy_sva_b0 and _zy_sva_b1) ;
      if (((_zy_sva_b0)='1' and _zy_sva_nts_1_2_pass /= std_logic'('1'))) then
        _zy_sva_credit_return_check_1_0_fail <= ext(boolean_to_std
        (it_conv_std_logic(_zy_sva_credit_return_check_1_0_fail) = '0'),1) ;
        _zyixc_port_1_0_req <= not(_zyixc_port_1_0_req) ;
      end if;
    end if ;
  end process ;

  _zy_sva_sblk_2_1 :
  process --:o97
  (clk)
    variable _zy_sva_nts_2_1_pass : std_logic ;
  begin
    if (clk'event and clk = '1') then
      _zy_sva_nts_2_1_pass := _zy_sva_b2 ;
      if (_zy_sva_nts_2_1_pass /= std_logic'('1')) then
        _zy_sva_credit_danger_check_2_3_fail <= ext(boolean_to_std
        (it_conv_std_logic(_zy_sva_credit_danger_check_2_3_fail) = '0'),1) ;
        _zyixc_port_1_1_req <= not(_zyixc_port_1_1_req) ;
      end if;
    end if ;
  end process ;

  process --:o108
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      outstanding <= 0 ;
      credit_limit <= "1000000000" ;
    elsif (clk'event and clk = '1') then
      if (sw_init = '1') then
        outstanding <= 0 ;
        credit_limit <= "1000000000" ;
      else
        outstanding <= conv_integer(((integer_to_std(outstanding,32) + ext
        (credit_used,32)) - ext(credit_return,32))) ;
        credit_limit <= sw_config(9 downto 0) ;
      end if;
    end if ;
  end process ;

  cm :
  process --:o128
  (**) -- always_comb
    variable credit_issued_v_DUMMY0 : std_logic_vector(9 downto 0) ;
    variable remaining_credit_v_DUMMY1 : std_logic_vector(9 downto 0) ;
  begin
    credit_issued_v_DUMMY0 := credit_issued_v;
    remaining_credit_v_DUMMY1 := remaining_credit_v;
    return_err_v <= '0' ;
    if (credit_issued_r >= ext(credit_return,10)) then
      credit_issued_v_DUMMY0 := (credit_issued_r - ext(credit_return,10)) ;
    else
      return_err_v <= '1' ;
      credit_issued_v_DUMMY0 := "0000000000" ;
    end if;
    if (ext(sw_config(9 downto 0),32) > (ext(credit_issued_v_DUMMY0,32) +
     std_logic_vector'("00000000000000000000000000000000"))) then
      remaining_credit_v_DUMMY1 := (sw_config(9 downto 0) -
       credit_issued_v_DUMMY0) ;
    else
      remaining_credit_v_DUMMY1 := "0000000000" ;
    end if;
    used_err_v <= boolean_to_std((ext(credit_issued_v_DUMMY0,32) + ext
    (credit_used,32)) > ext(sw_config(9 downto 0),32)) ;
    if (rst_n = '1') then
    end if;
    credit_issued_v_DUMMY0 := ext(it_cond_op((ext(credit_issued_v_DUMMY0,11) +
     ext(credit_used,11)) < ext(sw_config(9 downto 0),11),(ext
    (credit_issued_v_DUMMY0,11) + ext(credit_used,11)),ext(sw_config(9 downto 0
    ),11)),10) ;
    credit_available <= "000000000" ;
    if (ext(remaining_credit_v_DUMMY1,32) /= std_logic_vector'
    ("00000000000000000000000000000000")) then
      credit_available <= ext(it_cond_op(std_logic_vector'
      ("00000000000000000000000100000000") < ext(remaining_credit_v_DUMMY1,32
      ),std_logic_vector'("00000000000000000000000100000000"),ext
      (remaining_credit_v_DUMMY1,32)),9) ;
    end if;
    credit_issued_v <= transport credit_issued_v_DUMMY0;
    remaining_credit_v <= remaining_credit_v_DUMMY1;
  end process ;

  process --:o153
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      credit_issued_r <= "0000000000" ;
      hw_status <= "000000000000" ;
    elsif (clk'event and clk = '1') then
      if (sw_init = '1') then
        credit_issued_r <= "0000000000" ;
        hw_status <= "000000000000" ;
      else
        credit_issued_r <= credit_issued_v ;
        hw_status(11) <= boolean_to_std(((sw_config(11) = '0') and ((hw_status
        (11))='1' or (used_err_v)='1'))) ;
        hw_status(10) <= boolean_to_std(((sw_config(10) = '0') and ((hw_status
        (10))='1' or (return_err_v)='1'))) ;
        hw_status(9 downto 0) <= credit_issued_v ;
      end if;
    end if ;
  end process ;

  process --:o175
  (**) -- always_comb
  begin
    $axis_assert( "credit_return_check", std_logic'('0'), std_logic_vector'("01"
    ), " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",
     "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v",
     116, std_logic_vector'("000"));
  end process ;

  process --:o176
  (**) -- always_comb
  begin
    $axis_assert( "credit_danger_check", std_logic'('0'), std_logic_vector'("01"
    ), " ", " ", " ", " ", " ", " ", " ", " ", " ", " ",
     "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v",
     122, std_logic_vector'("000"));
  end process ;
end module;
