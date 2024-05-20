architecture module of nx_fifo_ctrl_ram_1r1w_xcm18 is
  -- quickturn multiple_driver_resolution
  type DUMMY0 is array(integer range <>) of std_logic_vector(2 downto 0) ;
  type DUMMY1 is array(integer range <>) of std_logic_vector(83 downto 0) ;
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

  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic_vector(0 to 7) ;
  signal DUMMY4 : std_logic_vector(0 to 82) ;
  signal DUMMY5 : std_logic ;
  signal DUMMY6 : std_logic_vector(0 to 7) ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic ;
  signal DUMMY9 : std_logic_vector(0 to 7) ;
  signal DUMMY10 : std_logic_vector(0 to 7) ;
  signal DUMMY11 : std_logic ;
  signal DUMMY12 : std_logic_vector(0 to 82) ;
  signal DUMMY13 : std_logic ;
  signal DUMMY14 : std_logic ;
  signal _zy_sva__asrtLbl279_1_reset_or : std_logic ;
  signal _zy_sva_sf1hot_0 : std_logic ;
  signal _zyixc_port_1_0_s2hW : std_logic ;
  signal r_used_slots : std_logic_vector(7 downto 0) ;
  signal c_used_slots : std_logic_vector(7 downto 0) ;
  signal r_free_slots : std_logic_vector(7 downto 0) ;
  signal c_free_slots : std_logic_vector(7 downto 0) ;
  signal r_mem_ren_dly : std_logic_vector(2 downto 0) ;
  signal c_mem_ren_dly : std_logic_vector(2 downto 0) ;
  signal r_mem_prefetch_wptr_dly : DUMMY0(2 downto 0) ;
  signal c_mem_prefetch_wptr_dly : DUMMY0(2 downto 0) ;
  signal r_mem_wptr : std_logic_vector(7 downto 0) ;
  signal c_mem_wptr : std_logic_vector(7 downto 0) ;
  signal r_mem_rptr : std_logic_vector(7 downto 0) ;
  signal c_mem_rptr : std_logic_vector(7 downto 0) ;
  signal r_mem_empty : std_logic ;
  signal c_mem_empty : std_logic ;
  signal r_mem_full : std_logic ;
  signal c_mem_full : std_logic ;
  signal r_prefetch_wptr : std_logic_vector(2 downto 0) ;
  signal c_prefetch_wptr : std_logic_vector(2 downto 0) ;
  signal r_prefetch_rptr : std_logic_vector(1 downto 0) ;
  signal c_prefetch_rptr : std_logic_vector(1 downto 0) ;
  signal r_prefetch_depth : std_logic_vector(1 downto 0) ;
  signal c_prefetch_depth : std_logic_vector(1 downto 0) ;
  signal r_prefetch_empty : std_logic ;
  signal c_prefetch_empty : std_logic ;
  signal r_prefetch_full : std_logic ;
  signal c_prefetch_full : std_logic ;
  signal r_prefetch_data : DUMMY1(2 downto 0) ;
  signal c_prefetch_data : DUMMY1(2 downto 0) ;
  signal prefetch_wen : std_logic ;
  signal prefetch_lden_bypass : std_logic_vector(2 downto 0) ;
  signal prefetch_lden_mem : std_logic_vector(2 downto 0) ;
  signal _zy_sva_b0 : std_logic_vector(2 downto 0) ;
  attribute _2_state_ of _zy_sva_b0: signal is 1 ;
  signal _zy_sva__asrtLbl279_1_1_fail : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva__asrtLbl279_1_1_fail: signal is 1 ;
  signal _zyixc_port_1_0_req : std_logic ;
  attribute _2_state_ of _zyixc_port_1_0_req: signal is 1 ;
  signal _zyixc_port_1_0_ack : std_logic ;
  attribute _2_state_ of _zyixc_port_1_0_ack: signal is 1 ;
  signal _zyixc_port_1_0_isf : std_logic ;
  attribute _2_state_ of _zyixc_port_1_0_isf: signal is 1 ;
  signal _zyixc_port_1_0_osf : std_logic ;
  -- quickturn external_ref _zyixc_port_1_0_osf
  attribute _2_state_ of _zyixc_port_1_0_osf: signal is 1 ;
  signal DUMMY15 : std_logic_vector(0 downto 0) ;
  signal DUMMY16 : std_logic_vector(0 downto 0) ;
  signal DUMMY17 : std_logic_vector(0 downto 0) ;
  -- quickturn keep_net _zy_sva__asrtLbl279_1_1_fail

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 8)
    port map (
       used_slots
      ,r_used_slots
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 8)
    port map (
       free_slots
      ,r_free_slots
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 8)
    port map (
       mem_waddr
      ,r_mem_wptr
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 8)
    port map (
       mem_raddr
      ,r_mem_rptr
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 83)
    port map (
       mem_wdata
      ,wdata
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       empty
      ,r_prefetch_empty
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       full
      ,r_mem_full
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY2
      ,mem_wen
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY3
      ,mem_waddr
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY4
      ,mem_wdata
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY5
      ,mem_ren
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY6
      ,mem_raddr
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY7
      ,empty
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY8
      ,full
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY9
      ,used_slots
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY10
      ,free_slots
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY11
      ,rerr
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY12
      ,rdata
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY13
      ,underflow
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY14
      ,overflow
    ) ;
  _zy_sva__asrtLbl279_1_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_sf1hot_0 <= boolean_to_std($onehot( _zy_sva_b0)) ;
  _zz_zy_sva_b0 : ixc_sample_logic
    generic map(WIDTH => 3,RD_TYPE => 3)
    port map (
       _zy_sva_b0
      ,r_prefetch_wptr
    ) ;
  _zzixc_tfport_1_0 : ixc_pio_call
    generic map(S2HDW => 0,H2SDW => 0,MAIDW => 0,LTIDW => 0,ISSVA => 1)
    port map (
       _zyixc_port_1_0_ack
      ,_zyixc_port_1_0_s2hW
      ,_zyixc_port_1_0_isf
      ,_zyixc_port_1_0_req
      ,DUMMY15
      ,_zyixc_port_1_0_osf
      ,DUMMY16
      ,DUMMY17
    ) ;
  DUMMY15 <= std_logic_vector'("0") ;
  DUMMY16 <= std_logic_vector'("0") ;
  DUMMY17 <= std_logic_vector'("0") ;

  process --:o126
  (clk,_zy_sva__asrtLbl279_1_reset_or)
    variable DUMMY18 : std_logic ;
  begin
    if (_zy_sva__asrtLbl279_1_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY18 := _zy_sva_sf1hot_0 ;
      if (DUMMY18 /= std_logic'('1')) then
        _zy_sva__asrtLbl279_1_1_fail <= ext(boolean_to_std(it_conv_std_logic
        (_zy_sva__asrtLbl279_1_1_fail) = '0'),1) ;
        _zyixc_port_1_0_req <= not(_zyixc_port_1_0_req) ;
      end if;
    end if ;
  end process ;

  unmblk0 :
  process --:o143
  (**) -- always_comb
    variable v_prefetch_full : std_logic ;
    variable c_mem_wptr_DUMMY0 : std_logic_vector(7 downto 0) ;
    variable c_mem_rptr_DUMMY1 : std_logic_vector(7 downto 0) ;
    variable c_prefetch_full_DUMMY2 : std_logic ;
    variable prefetch_wen_DUMMY3 : std_logic ;
    variable prefetch_lden_bypass_DUMMY4 : std_logic_vector(2 downto 0) ;
    variable prefetch_lden_mem_DUMMY5 : std_logic_vector(2 downto 0) ;
    variable mem_ren_DUMMY6 : std_logic ;
    variable DUMMY19 : integer ;
    variable DUMMY20 : std_logic_vector(1 to 84) ;
    variable DUMMY21 : std_logic_vector(1 to 84) ;
    variable DUMMY22 : integer ;
  begin
    c_mem_wptr_DUMMY0 := c_mem_wptr;
    c_mem_rptr_DUMMY1 := c_mem_rptr;
    c_prefetch_full_DUMMY2 := c_prefetch_full;
    prefetch_wen_DUMMY3 := prefetch_wen;
    prefetch_lden_bypass_DUMMY4 := prefetch_lden_bypass;
    prefetch_lden_mem_DUMMY5 := prefetch_lden_mem;
    mem_ren_DUMMY6 := mem_ren;
    c_mem_wptr_DUMMY0 := r_mem_wptr ;
    c_mem_rptr_DUMMY1 := r_mem_rptr ;
    c_mem_empty <= r_mem_empty ;
    c_mem_full <= r_mem_full ;
    c_prefetch_wptr <= r_prefetch_wptr ;
    c_prefetch_rptr <= r_prefetch_rptr ;
    c_prefetch_depth <= r_prefetch_depth ;
    c_prefetch_empty <= r_prefetch_empty ;
    c_prefetch_full_DUMMY2 := r_prefetch_full ;
    c_used_slots <= r_used_slots ;
    c_free_slots <= r_free_slots ;
    prefetch_wen_DUMMY3 := '0' ;
    prefetch_lden_bypass_DUMMY4 := "000" ;
    prefetch_lden_mem_DUMMY5 := "000" ;
    underflow <= '0' ;
    if (ren = '1') then
      c_prefetch_full_DUMMY2 := '0' ;
      if ((empty = '0')) then
        c_used_slots <= ext((ext(r_used_slots,32) - std_logic_vector'
        ("00000000000000000000000000000001")),8) ;
        c_free_slots <= ext((ext(r_free_slots,32) + std_logic_vector'
        ("00000000000000000000000000000001")),8) ;
        c_prefetch_depth <= ext((ext(r_prefetch_depth,32) - std_logic_vector'
        ("00000000000000000000000000000001")),2) ;
        if (ext(r_prefetch_rptr,32) = std_logic_vector'
        ("00000000000000000000000000000010")) then
          c_prefetch_rptr <= "00" ;
        else
          c_prefetch_rptr <= ext((ext(r_prefetch_rptr,32) + std_logic_vector'
          ("00000000000000000000000000000001")),2) ;
        end if;
        if (ext(r_prefetch_depth,32) = std_logic_vector'
        ("00000000000000000000000000000001")) then
          c_prefetch_empty <= '1' ;
        end if;
      else
        underflow <= '1' ;
      end if;
    end if;
    v_prefetch_full := c_prefetch_full_DUMMY2 ;
    mem_ren_DUMMY6 := '0' ;
    if (((v_prefetch_full = '0') and (r_mem_empty = '0'))) then
      mem_ren_DUMMY6 := '1' ;
      if (ext(r_mem_rptr,32) = std_logic_vector'
      ("00000000000000000000000010100111")) then
        c_mem_rptr_DUMMY1 := "00000000" ;
      else
        c_mem_rptr_DUMMY1 := ext((ext(r_mem_rptr,32) + std_logic_vector'
        ("00000000000000000000000000000001")),8) ;
      end if;
      c_mem_full <= '0' ;
      if (c_mem_rptr_DUMMY1 = r_mem_wptr) then
        c_mem_empty <= '1' ;
      end if;
      prefetch_wen_DUMMY3 := '1' ;
    end if;
    if (r_mem_ren_dly(2) = '1') then
      prefetch_lden_mem_DUMMY5 := r_mem_prefetch_wptr_dly(2) ;
    end if;
    c_mem_ren_dly <= (shl(r_mem_ren_dly,integer_to_std(1,32)) or ext
    (mem_ren_DUMMY6,3)) ;
    overflow <= '0' ;
    mem_wen <= '0' ;
    if (wen = '1') then
      if ((r_mem_full = '0')) then
        if (((r_mem_empty)='1' and (v_prefetch_full = '0'))) then
          prefetch_lden_bypass_DUMMY4 := r_prefetch_wptr ;
          prefetch_wen_DUMMY3 := '1' ;
        else
          mem_wen <= '1' ;
          if (ext(r_mem_wptr,32) = std_logic_vector'
          ("00000000000000000000000010100111")) then
            c_mem_wptr_DUMMY0 := "00000000" ;
          else
            c_mem_wptr_DUMMY0 := ext((ext(r_mem_wptr,32) + std_logic_vector'
            ("00000000000000000000000000000001")),8) ;
          end if;
          c_mem_empty <= '0' ;
          if (c_mem_wptr_DUMMY0 = c_mem_rptr_DUMMY1) then
            c_mem_full <= '1' ;
          end if;
        end if;
        if (((ren)='1' and (empty = '0'))) then
          c_used_slots <= r_used_slots ;
          c_free_slots <= r_free_slots ;
        else
          c_used_slots <= ext((ext(r_used_slots,32) + std_logic_vector'
          ("00000000000000000000000000000001")),8) ;
          c_free_slots <= ext((ext(r_free_slots,32) - std_logic_vector'
          ("00000000000000000000000000000001")),8) ;
        end if;
      else
        overflow <= '1' ;
      end if;
    end if;
    if (prefetch_wen_DUMMY3 = '1') then
      c_prefetch_wptr <= (shl(r_prefetch_wptr,integer_to_std(1,32)) or ext
      (r_prefetch_wptr(2),3)) ;
      c_prefetch_empty <= '0' ;
      if (((ren)='1' and (empty = '0'))) then
        c_prefetch_depth <= r_prefetch_depth ;
        c_prefetch_full_DUMMY2 := r_prefetch_full ;
      else
        if (ext(r_prefetch_depth,32) = std_logic_vector'
        ("00000000000000000000000000000010")) then
          c_prefetch_full_DUMMY2 := '1' ;
        end if;
        c_prefetch_depth <= ext((ext(r_prefetch_depth,32) + std_logic_vector'
        ("00000000000000000000000000000001")),2) ;
      end if;
    end if;
    c_mem_prefetch_wptr_dly(0) <= r_prefetch_wptr ;
    for DUMMY19 in 1 to 2 loop --:o259
      c_mem_prefetch_wptr_dly(DUMMY19) <= r_mem_prefetch_wptr_dly((DUMMY19 - 1))
       ;
    end loop;
    if (((std_logic'('1'))='1' and (prefetch_lden_mem_DUMMY5(conv_integer
    (r_prefetch_rptr)))='1')) then
      DUMMY20 := std_logic_vector'(mem_ecc_error & mem_rdata) ;
      rdata <= DUMMY20(2 to 84) ;
      rerr <= DUMMY20(1) ;
      if (ren = '1') then
        prefetch_lden_mem_DUMMY5 := "000" ;
      end if;
    else
      DUMMY21 := r_prefetch_data(conv_integer(r_prefetch_rptr)) ;
      rdata <= DUMMY21(2 to 84) ;
      rerr <= DUMMY21(1) ;
    end if;
    c_prefetch_data <= r_prefetch_data ;
    for DUMMY22 in 0 to 2 loop --:o273
      if (((prefetch_lden_bypass_DUMMY4(DUMMY22))='1' or 
      (prefetch_lden_mem_DUMMY5(DUMMY22))='1')) then
        c_prefetch_data(DUMMY22) <= ((it_multiple_concat
        (prefetch_lden_bypass_DUMMY4(DUMMY22),84) and std_logic_vector'
        (std_logic'('0') & wdata)) or (it_multiple_concat
        (prefetch_lden_mem_DUMMY5(DUMMY22),84) and std_logic_vector'
        (mem_ecc_error & mem_rdata))) ;
      end if;
    end loop;
    if (clear = '1') then
      c_mem_empty <= '1' ;
      c_prefetch_empty <= '1' ;
      c_prefetch_wptr <= "001" ;
      c_mem_ren_dly <= "000" ;
      c_used_slots <= "00000000" ;
      c_free_slots <= "10101011" ;
      c_mem_full <= '0' ;
      c_mem_rptr_DUMMY1 := "00000000" ;
      c_mem_wptr_DUMMY0 := "00000000" ;
      c_prefetch_depth <= "00" ;
      c_prefetch_full_DUMMY2 := '0' ;
      c_prefetch_rptr <= "00" ;
    end if;
    c_mem_wptr <= transport c_mem_wptr_DUMMY0;
    c_mem_rptr <= c_mem_rptr_DUMMY1;
    c_prefetch_full <= c_prefetch_full_DUMMY2;
    prefetch_wen <= prefetch_wen_DUMMY3;
    prefetch_lden_bypass <= prefetch_lden_bypass_DUMMY4;
    prefetch_lden_mem <= prefetch_lden_mem_DUMMY5;
    mem_ren <= mem_ren_DUMMY6;
  end process ;

  process --:o295
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      r_mem_empty <= '1' ;
      r_prefetch_empty <= '1' ;
      r_prefetch_wptr <= "001" ;
      r_free_slots <= "10101011" ;
      r_mem_full <= '0' ;
      r_mem_ren_dly <= "000" ;
      r_mem_rptr <= "00000000" ;
      r_mem_wptr <= "00000000" ;
      r_prefetch_depth <= "00" ;
      r_prefetch_full <= '0' ;
      r_prefetch_rptr <= "00" ;
      r_used_slots <= "00000000" ;
    elsif (clk'event and clk = '1') then
      r_mem_ren_dly <= c_mem_ren_dly ;
      r_mem_empty <= c_mem_empty ;
      r_mem_full <= c_mem_full ;
      r_mem_wptr <= c_mem_wptr ;
      r_mem_rptr <= c_mem_rptr ;
      r_prefetch_empty <= c_prefetch_empty ;
      r_prefetch_full <= c_prefetch_full ;
      r_prefetch_wptr <= c_prefetch_wptr ;
      r_prefetch_rptr <= c_prefetch_rptr ;
      r_prefetch_depth <= c_prefetch_depth ;
      r_used_slots <= c_used_slots ;
      r_free_slots <= c_free_slots ;
    end if ;
  end process ;

  process --:o329
  (clk)
  begin
    if (clk'event and clk = '1') then
      r_mem_prefetch_wptr_dly <= c_mem_prefetch_wptr_dly ;
      r_prefetch_data <= c_prefetch_data ;
    end if ;
  end process ;

  process --:o335
  (**) -- always_comb
  begin
    $axis_assert( "_asrtLbl279", std_logic'('0'), std_logic_vector'("01"), " ",
     " ", " ", " ", " ", " ", " ", " ", " ", " ",
     "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl_ram_1r1w.v",
     279, std_logic_vector'("000"));
  end process ;
end module;
