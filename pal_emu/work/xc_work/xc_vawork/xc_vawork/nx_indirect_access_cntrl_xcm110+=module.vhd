architecture module of nx_indirect_access_cntrl_xcm110 is
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "genblk2"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 genblk1  "
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_1 "-1 genblk2  "
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_context_read
    generic (
      WIDTH : std_logic_vector := signed(integer_to_std(32,32))
    ) ;
    port (
    rdata : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0
    ) := (others => 'X') ) ;
  end component ;

  signal DUMMY3 : std_logic_vector(0 to 2) ;
  signal DUMMY4 : std_logic_vector(0 to 4) ;
  signal DUMMY5 : std_logic_vector(0 to 4) ;
  signal DUMMY6 : std_logic ;
  signal DUMMY7 : std_logic_vector(0 to 15) ;
  signal DUMMY8 : std_logic_vector(0 to 3) ;
  signal DUMMY9 : std_logic ;
  signal DUMMY10 : std_logic_vector(0 to 31) ;
  signal DUMMY11 : std_logic ;
  signal DUMMY12 : std_logic ;
  signal DUMMY13 : std_logic ;
  signal DUMMY14 : std_logic_vector(0 to 4) ;
  signal DUMMY15 : std_logic_vector(0 to 31) ;
  signal DUMMY16 : std_logic ;
  signal DUMMY17 : std_logic ;
  signal cmnd : ia_operation_e ;
  signal init_r : std_logic ;
  signal inc_r : std_logic_vector(0 downto 0) ;
  signal init_inc_r : std_logic ;
  signal sw_cs_r : std_logic ;
  signal sw_ce_r : std_logic ;
  signal rst_r : std_logic ;
  signal rst_or_ini_r : std_logic ;
  signal rst_addr_r : std_logic_vector(4 downto 0) ;
  signal sw_we_r : std_logic ;
  signal cmnd_rd_stb : std_logic ;
  signal cmnd_wr_stb : std_logic ;
  signal cmnd_ena_stb : std_logic ;
  signal cmnd_dis_stb : std_logic ;
  signal cmnd_rst_stb : std_logic ;
  signal cmnd_ini_stb : std_logic ;
  signal cmnd_inc_stb : std_logic ;
  signal cmnd_sis_stb : std_logic ;
  signal cmnd_tmo_stb : std_logic ;
  signal cmnd_cmp_stb : std_logic ;
  signal cmnd_issued : std_logic ;
  signal DUMMY18 : std_logic ;
  signal unsupported_op : std_logic ;
  signal state_r : state_e ;
  signal timer_r : std_logic_vector(0 downto 0) ;
  signal timeout : std_logic ;
  signal sim_tmo_r : std_logic ;
  signal maxaddr : std_logic_vector(4 downto 0) ;
  signal badaddr : std_logic ;
  signal igrant : std_logic ;
  signal stat : ia_status_e ;
  signal DUMMY19 : std_logic_vector(3 downto 0) ;
  signal DUMMY20 : std_logic_vector(3 downto 0) ;
  signal DUMMY21 : std_logic_vector(0 downto 0) ;
  signal DUMMY22 : std_logic_vector(2 downto 0) ;
  signal DUMMY23 : std_logic_vector(2 downto 0) ;
  signal DUMMY24 : std_logic_vector(5 downto 0) ;

begin
  _zz_strnp_1 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY19
      ,DUMMY20
    ) ;
  cmnd <= ext(DUMMY19,4) ;
  DUMMY20 <= cmnd_op ;
  capability_lst <= "1000000000100111" ;
  capability_type <= "0010" ;
  enable <= not(init_r) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 1)
    port map (
       sw_cs
      ,sw_cs_r
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 1)
    port map (
       sw_ce
      ,sw_ce_r
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 1)
    port map (
       sw_we
      ,sw_we_r
    ) ;
  sw_add <= rst_addr_r when (rst_or_ini_r)='1' else cmnd_addr ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       yield
      ,DUMMY21
    ) ;
  DUMMY21 <= ext(timer_r(0),1) ;
  timeout <= boolean_to_std(it_conv_std_logic(timer_r) = '1') ;
  maxaddr <= "00000" when (init_r)='1' else addr_limit(conv_integer((ext
  (cmnd_table_id,32) rem std_logic_vector'("00000000000000000000000000000001")))
  ) ;
  badaddr <= boolean_to_std(((cmnd_issued)='1' and cmnd_addr > maxaddr)) ;
  igrant <= boolean_to_std(((sim_tmo_r = '0') and (grant)='1')) ;
  stat_datawords <= "00000" ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 5)
    port map (
       stat_addr
      ,maxaddr
    ) ;
  stat_table_id <= "0" when (init_r)='1' else "0" ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 3)
    port map (
       DUMMY22
      ,DUMMY23
    ) ;
  stat <= ext(DUMMY22,3) ;
  DUMMY23 <= stat_code ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 3)
    port map (
       DUMMY3
      ,stat_code
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY4
      ,stat_datawords
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY5
      ,stat_addr
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY6
      ,stat_table_id
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY7
      ,capability_lst
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY8
      ,capability_type
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY9
      ,enable
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY10
      ,rd_dat
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY11
      ,sw_cs
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY12
      ,sw_ce
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY13
      ,sw_we
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY14
      ,sw_add
    ) ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY15
      ,sw_wdat
    ) ;
  _zz_strnp_21 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY16
      ,yield
    ) ;
  _zz_strnp_22 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY17
      ,reset
    ) ;
  _zzixc_ctxrd_0 : ixc_context_read
    generic map(WIDTH => integer_to_std(6,32))
    port map (
       DUMMY24
    ) ;
  DUMMY24 <= std_logic_vector'(stat_code & stat) ;

  process --:o106
  (**) -- always_comb
  begin
    cmnd_rd_stb <= '0' ;
    cmnd_wr_stb <= '0' ;
    cmnd_ena_stb <= '0' ;
    cmnd_dis_stb <= '0' ;
    cmnd_rst_stb <= '0' ;
    cmnd_ini_stb <= '0' ;
    cmnd_inc_stb <= '0' ;
    cmnd_sis_stb <= '0' ;
    cmnd_tmo_stb <= '0' ;
    cmnd_cmp_stb <= '0' ;
    DUMMY18 <= '0' ;
    cmnd_issued <= '0' ;
    unsupported_op <= '0' ;
    if (((wr_stb)='1' and reg_addr = std_logic_vector'("10001010100"))) then
      if (cmnd /= SIM_TMO) then
        cmnd_issued <= '1' ;
      end if;

      case cmnd is --unique
        when  "0000"  =>
          cmnd_issued <= '0' ;
        when  "0001"  =>
          cmnd_rd_stb <= '1' ;
        when  "0010"  =>
          cmnd_wr_stb <= '1' ;
        when  "0011"  =>
          cmnd_ena_stb <= '1' ;
        when  "0100"  =>
          cmnd_dis_stb <= '1' ;
        when  "0101"  =>
          cmnd_rst_stb <= '1' ;
        when  "0110"  =>
          cmnd_ini_stb <= '1' ;
        when  "0111"  =>
          cmnd_inc_stb <= '1' ;
        when  "1000"  =>
          cmnd_sis_stb <= '1' ;
        when  "1001"  =>
          cmnd_cmp_stb <= '1' ;
        when  "1110"  =>
          cmnd_tmo_stb <= '1' ;
        when  "1111"  =>
          DUMMY18 <= '1' ;
        when others =>
          unsupported_op <= '1' ;
      end case;
    end if;
  end process ;

  process --:o155
  (clk,rst_n)
    variable DUMMY25 : state_e ;
  begin
    if (rst_n = '0') then
      stat_code <= "000" ;
      state_r <= READY ;
      init_r <= '0' ;
      rd_dat <= "00000000000000000000000000000000" ;
      sw_cs_r <= '0' ;
      sw_we_r <= '0' ;
      sw_ce_r <= '0' ;
      timer_r <= "0" ;
      rst_r <= '0' ;
      rst_or_ini_r <= '0' ;
      rst_addr_r <= "00000" ;
      inc_r <= "0" ;
      init_inc_r <= '0' ;
      sim_tmo_r <= '0' ;
    elsif (clk'event and clk = '1') then
      DUMMY25 := state_r ;
      rst_r <= '0' ;
      rst_or_ini_r <= '0' ;
      timer_r <= "0" ;
      sw_cs_r <= '0' ;
      sw_ce_r <= '0' ;
      sw_we_r <= '0' ;
      if (cmnd_sis_stb = '1') then
        rst_addr_r <= cmnd_addr ;
      elsif (cmnd_rst_stb = '1') then
        rst_addr_r <= "00000" ;
      end if;
      if (cmnd_tmo_stb = '1') then
        sim_tmo_r <= '1' ;
      elsif (timeout = '1') then
        sim_tmo_r <= '0' ;
      end if;
      if (badaddr = '1') then
        DUMMY25 := ERROR ;
      else

        case state_r is --unique
          when  "0000"  =>
            rd_dat <= wr_dat ;
            if (cmnd_ena_stb = '1') then
              init_r <= '0' ;
              DUMMY25 := READY ;
            end if;
          when  "0001"  =>
            inc_r <= "0" ;
            init_inc_r <= '0' ;
            if '1' = cmnd_wr_stb then --unique
              DUMMY25 := DO_WRITE ;
            elsif '1' = cmnd_rd_stb then
              DUMMY25 := DO_READ ;
            elsif '1' = cmnd_cmp_stb then
              DUMMY25 := DO_COMPARE ;
            elsif '1' = cmnd_rst_stb then
              DUMMY25 := DO_RESET ;
            elsif '1' = boolean_to_std(((cmnd_ini_stb)='1' or (cmnd_inc_stb)='1'
            )) then
              DUMMY25 := DO_INIT ;
            elsif '1' = cmnd_dis_stb then
              DUMMY25 := POWERDOWN ;
            elsif '1' = unsupported_op then
              DUMMY25 := ERROR ;
            else
              DUMMY25 := state_r ;
            end if;
            init_inc_r <= '0' ;
          when  "0101"  =>
            if (igrant = '1') then
              DUMMY25 := READY ;
            end if;
          when  "0110"  =>
            if (igrant = '1') then
              DUMMY25 := READ_DONE ;
            end if;
          when  "1000"  =>
            if (igrant = '1') then
              DUMMY25 := COMPARE_WAIT ;
            end if;
          when  "0011"  =>
            DUMMY25 := READY ;
          when  "0100"  =>
            rst_addr_r <= (rst_addr_r + ext(igrant,5)) ;
            inc_r <= (inc_r + boolean_to_std(((init_inc_r)='1' and (igrant)='1'
            ),1)) ;
            if (((igrant)='1' and rst_addr_r = cmnd_addr)) then
              DUMMY25 := READY ;
            end if;
          when  "1001"  =>
            DUMMY25 := COMPARE_DONE ;
          when  "0111"  =>
            rd_dat <= sw_rdat ;
            DUMMY25 := READY ;
          when  "1010"  =>
            rd_dat <= (ext(sw_aindex,32) or shl(ext(sw_match,32),integer_to_std
            (4,32))) ;
            DUMMY25 := READY ;
          when others =>
            if (DUMMY18 = '1') then
              DUMMY25 := it_cond_op(init_r = '1',POWERDOWN,READY) ;
            else
              DUMMY25 := ERROR ;
            end if;
        end case;
      end if;
      if ((((timeout)='1' or (cmnd_issued)='1') and state_r /= POWERDOWN and
       state_r /= READY and state_r /= ERROR)) then
        DUMMY25 := ERROR ;
      end if;

      case DUMMY25 is
        when  "0000"  =>
          stat_code <= "111" ;
          if (state_r /= POWERDOWN) then
            init_r <= '1' ;
          end if;
        when  "0001"  =>
          stat_code <= "000" ;
        when  "0010"  =>
          if (state_r /= ERROR) then
            if '1' = unsupported_op then
              stat_code <= "101" ;
            elsif '1' = badaddr then
              stat_code <= "100" ;
            elsif '1' = timeout then
              stat_code <= "010" ;
            else
              stat_code <= "011" ;
            end if;
          end if;
        when  "0101"  =>
          stat_code <= "001" ;
          timer_r <= ext((ext(timer_r,32) + std_logic_vector'
          ("00000000000000000000000000000001")),1) ;
          sw_cs_r <= '1' ;
          sw_we_r <= '1' ;
        when  "0110"  =>
          stat_code <= "001" ;
          timer_r <= ext((ext(timer_r,32) + std_logic_vector'
          ("00000000000000000000000000000001")),1) ;
          sw_cs_r <= '1' ;
        when  "1000"  =>
          stat_code <= "001" ;
          timer_r <= ext((ext(timer_r,32) + std_logic_vector'
          ("00000000000000000000000000000001")),1) ;
          sw_cs_r <= '1' ;
          sw_ce_r <= '1' ;
        when  "0011"  =>
          stat_code <= "001" ;
          timer_r <= ext((ext(timer_r,32) + std_logic_vector'
          ("00000000000000000000000000000001")),1) ;
          rst_or_ini_r <= '1' ;
          rst_r <= '1' ;
          sw_cs_r <= '1' ;
          sw_we_r <= '1' ;
        when  "0100"  =>
          stat_code <= "001" ;
          timer_r <= ext((ext(timer_r,32) + std_logic_vector'
          ("00000000000000000000000000000001")),1) ;
          rst_or_ini_r <= '1' ;
          sw_cs_r <= '1' ;
          sw_we_r <= '1' ;
        when others =>
          stat_code <= "001" ;
      end case;
      if (igrant = '1') then
        timer_r <= "0" ;
      end if;
      state_r <= DUMMY25 ;
    end if ;
  end process ;
  Generate1 : if genblk1 : (TRUE) generate
  begin
    _zz_strnp_0 : ixc_assign
      generic map(W => 1)
      port map (
         reset
        ,rst_r
      ) ;
  end generate ;
  Generate2 : if genblk2 : (TRUE) generate
  begin
    sw_wdat <= "00000000000000000000000000000000" when (rst_r)='1' else wr_dat ;
  end generate ;
end module;
