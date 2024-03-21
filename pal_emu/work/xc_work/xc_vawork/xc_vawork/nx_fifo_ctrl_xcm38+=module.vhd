architecture module of nx_fifo_ctrl_xcm38 is
  -- quickturn multiple_driver_resolution
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[0]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[1]"
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 cover_depth 0 1 "
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
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

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal _zy_sva_fifo_entries_reached_DEPTH_1_reset_or : std_logic ;
  signal _zy_sva_fifo_entries_reached_i_2_reset_or : std_logic ;
  signal _zy_sva_fifo_entries_reached_i_3_reset_or : std_logic ;
  signal _zy_sva_b0_t : std_logic ;
  signal _zy_sva_b1_t : std_logic ;
  signal _zy_sva_b2_t : std_logic ;
  signal r_empty : std_logic ;
  signal c_empty : std_logic ;
  signal r_full : std_logic ;
  signal c_full : std_logic ;
  signal r_used_slots : std_logic_vector(1 downto 0) ;
  signal c_used_slots : std_logic_vector(1 downto 0) ;
  signal r_free_slots : std_logic_vector(1 downto 0) ;
  signal c_free_slots : std_logic_vector(1 downto 0) ;
  signal r_rptr : std_logic_vector(0 downto 0) ;
  signal c_rptr : std_logic_vector(0 downto 0) ;
  signal r_wptr : std_logic_vector(0 downto 0) ;
  signal c_wptr : std_logic_vector(0 downto 0) ;
  signal _zy_sva_fifo_entries_reached_DEPTH_1_ccheck : std_logic_vector(0 downto
   0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_fifo_entries_reached_DEPTH_1_ccheck: signal is
   1 ;
  signal _zy_sva_fifo_entries_reached_DEPTH_1_cpass : std_logic_vector(0 downto
   0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_fifo_entries_reached_DEPTH_1_cpass: signal is 1
   ;
  signal _zy_sva_b0 : std_logic ;
  attribute _2_state_ of _zy_sva_b0: signal is 1 ;
  signal _zy_sva_fifo_entries_reached_i_2_ccheck : std_logic_vector(0 downto 0)
   := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_fifo_entries_reached_i_2_ccheck: signal is 1 ;
  signal _zy_sva_fifo_entries_reached_i_2_cpass : std_logic_vector(0 downto 0)
   := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_fifo_entries_reached_i_2_cpass: signal is 1 ;
  signal _zy_sva_b1 : std_logic ;
  attribute _2_state_ of _zy_sva_b1: signal is 1 ;
  signal _zy_sva_fifo_entries_reached_i_3_ccheck : std_logic_vector(0 downto 0)
   := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_fifo_entries_reached_i_3_ccheck: signal is 1 ;
  signal _zy_sva_fifo_entries_reached_i_3_cpass : std_logic_vector(0 downto 0)
   := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_fifo_entries_reached_i_3_cpass: signal is 1 ;
  signal _zy_sva_b2 : std_logic ;
  attribute _2_state_ of _zy_sva_b2: signal is 1 ;
  -- quickturn keep_net _zy_sva_fifo_entries_reached_DEPTH_1_ccheck
  -- quickturn keep_net _zy_sva_fifo_entries_reached_DEPTH_1_cpass
  -- quickturn keep_net _zy_sva_fifo_entries_reached_i_2_ccheck
  -- quickturn keep_net _zy_sva_fifo_entries_reached_i_2_cpass
  -- quickturn keep_net _zy_sva_fifo_entries_reached_i_3_ccheck
  -- quickturn keep_net _zy_sva_fifo_entries_reached_i_3_cpass

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       empty
      ,r_empty
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       full
      ,r_full
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 2)
    port map (
       used_slots
      ,r_used_slots
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 2)
    port map (
       free_slots
      ,r_free_slots
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 1)
    port map (
       rptr
      ,r_rptr
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       wptr
      ,r_wptr
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY0
      ,underflow
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,overflow
    ) ;
  _zy_sva_fifo_entries_reached_DEPTH_1_reset_or <= boolean_to_std(ext(rst_n,32)
   /= std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_fifo_entries_reached_i_2_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_fifo_entries_reached_i_3_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_b0_t <= boolean_to_std(ext(r_used_slots,32) = std_logic_vector'
  ("00000000000000000000000000000010")) ;
  _zy_sva_b1_t <= boolean_to_std(ext(r_used_slots,32) = std_logic_vector'
  ("00000000000000000000000000000000")) ;
  _zy_sva_b2_t <= boolean_to_std(ext(r_used_slots,32) = std_logic_vector'
  ("00000000000000000000000000000001")) ;
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

  process --:o82
  (clk,_zy_sva_fifo_entries_reached_DEPTH_1_reset_or)
    variable DUMMY2 : std_logic ;
  begin
    if (_zy_sva_fifo_entries_reached_DEPTH_1_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY2 := _zy_sva_b0 ;
      _zy_sva_fifo_entries_reached_DEPTH_1_ccheck <= "1" ;
      if (DUMMY2 = '1') then
        _zy_sva_fifo_entries_reached_DEPTH_1_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o99
  (clk,_zy_sva_fifo_entries_reached_i_2_reset_or)
    variable DUMMY3 : std_logic ;
  begin
    if (_zy_sva_fifo_entries_reached_i_2_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY3 := _zy_sva_b1 ;
      _zy_sva_fifo_entries_reached_i_2_ccheck <= "1" ;
      if (DUMMY3 = '1') then
        _zy_sva_fifo_entries_reached_i_2_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o116
  (clk,_zy_sva_fifo_entries_reached_i_3_reset_or)
    variable DUMMY4 : std_logic ;
  begin
    if (_zy_sva_fifo_entries_reached_i_3_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY4 := _zy_sva_b2 ;
      _zy_sva_fifo_entries_reached_i_3_ccheck <= "1" ;
      if (DUMMY4 = '1') then
        _zy_sva_fifo_entries_reached_i_3_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o133
  (**) -- always_comb
    variable c_used_slots_DUMMY0 : std_logic_vector(1 downto 0) ;
    variable c_free_slots_DUMMY1 : std_logic_vector(1 downto 0) ;
  begin
    c_used_slots_DUMMY0 := c_used_slots;
    c_free_slots_DUMMY1 := c_free_slots;
    c_empty <= r_empty ;
    c_full <= r_full ;
    c_used_slots_DUMMY0 := r_used_slots ;
    c_free_slots_DUMMY1 := r_free_slots ;
    c_rptr <= r_rptr ;
    c_wptr <= r_wptr ;
    overflow <= '0' ;
    underflow <= '0' ;
    if (ren = '1') then
      c_full <= '0' ;
      if ((empty = '0')) then
        c_used_slots_DUMMY0 := ext((ext(r_used_slots,32) - std_logic_vector'
        ("00000000000000000000000000000001")),2) ;
        c_free_slots_DUMMY1 := ext((ext(r_free_slots,32) + std_logic_vector'
        ("00000000000000000000000000000001")),2) ;
        if (it_conv_std_logic(r_rptr) = '1') then
          c_rptr <= "0" ;
        else
          c_rptr <= ext((ext(r_rptr,32) + std_logic_vector'
          ("00000000000000000000000000000001")),1) ;
        end if;
        if (c_used_slots_DUMMY0 = std_logic_vector'("00")) then
          c_empty <= '1' ;
        end if;
      else
        underflow <= '1' ;
      end if;
    end if;
    if (wen = '1') then
      c_empty <= '0' ;
      if ((full = '0')) then
        if (((ren)='1' and (empty = '0'))) then
          c_used_slots_DUMMY0 := r_used_slots ;
          c_free_slots_DUMMY1 := r_free_slots ;
        else
          c_used_slots_DUMMY0 := ext((ext(r_used_slots,32) + std_logic_vector'
          ("00000000000000000000000000000001")),2) ;
          c_free_slots_DUMMY1 := ext((ext(r_free_slots,32) - std_logic_vector'
          ("00000000000000000000000000000001")),2) ;
        end if;
        if (it_conv_std_logic(r_wptr) = '1') then
          c_wptr <= "0" ;
        else
          c_wptr <= ext((ext(r_wptr,32) + std_logic_vector'
          ("00000000000000000000000000000001")),1) ;
        end if;
        if (c_free_slots_DUMMY1 = std_logic_vector'("00")) then
          c_full <= '1' ;
        end if;
      else
        overflow <= '1' ;
      end if;
    end if;
    if (clear = '1') then
      c_empty <= '1' ;
      c_full <= '0' ;
      c_free_slots_DUMMY1 := "10" ;
      c_used_slots_DUMMY0 := "00" ;
      c_rptr <= "0" ;
      c_wptr <= "0" ;
    end if;
    c_used_slots <= transport c_used_slots_DUMMY0;
    c_free_slots <= c_free_slots_DUMMY1;
  end process ;

  process --:o203
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      r_empty <= '1' ;
      r_free_slots <= "10" ;
      r_full <= '0' ;
      r_rptr <= "0" ;
      r_used_slots <= "00" ;
      r_wptr <= "0" ;
    elsif (clk'event and clk = '1') then
      r_empty <= c_empty ;
      r_full <= c_full ;
      r_used_slots <= c_used_slots ;
      r_free_slots <= c_free_slots ;
      r_rptr <= c_rptr ;
      r_wptr <= c_wptr ;
    end if ;
  end process ;
  Generate1 : if cover_depth_0_ : (TRUE) generate
    constant i : integer := 0 ;
  begin

    process --:o229
    (**) -- always_comb
    begin
      $axis_assert( "fifo_entries_reached_i", std_logic'('0'), std_logic_vector'
      ("10"), " ", " ", " ", " ", " ", " ",
       _zy_sva_fifo_entries_reached_i_2_cpass, " ",
       _zy_sva_fifo_entries_reached_i_2_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v",
       149, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate2 : if cover_depth_1_ : (TRUE) generate
    constant i : integer := 1 ;
  begin

    process --:o235
    (**) -- always_comb
    begin
      $axis_assert( "fifo_entries_reached_i", std_logic'('0'), std_logic_vector'
      ("10"), " ", " ", " ", " ", " ", " ",
       _zy_sva_fifo_entries_reached_i_3_cpass, " ",
       _zy_sva_fifo_entries_reached_i_3_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v",
       149, std_logic_vector'("000"));
    end process ;
  end generate ;

  process --:o237
  (**) -- always_comb
  begin
    $axis_assert( "fifo_entries_reached_DEPTH", std_logic'('0'),
     std_logic_vector'("10"), " ", " ", " ", " ", " ", " ",
     _zy_sva_fifo_entries_reached_DEPTH_1_cpass, " ",
     _zy_sva_fifo_entries_reached_DEPTH_1_ccheck, " ",
     "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v",
     152, std_logic_vector'("000"));
  end process ;
end module;
