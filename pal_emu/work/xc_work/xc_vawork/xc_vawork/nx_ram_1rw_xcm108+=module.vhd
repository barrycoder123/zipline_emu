architecture module of nx_ram_1rw_xcm108 is
  type DUMMY0 is array(integer range <>) of std_logic_vector(37 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "g"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "g.u_ram"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 g  "
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 u_ram  "
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal bimc_iclk : std_logic ;
  signal bimc_irstn : std_logic ;
  signal rst_clk_n : std_logic ;
  signal p_mode_disable_ecc_mem : std_logic ;
  signal byp : std_logic ;
  signal se : std_logic ;
  signal rds : std_logic ;
  signal ecc_corrupt : std_logic_vector(1 downto 0) ;
  signal rst_rclk_n : std_logic ;
  signal sew : std_logic ;
  signal web : std_logic ;
  signal ro_mem_ecc_error_ev : std_logic ;
  signal ro_mem_ecc_corrected : std_logic ;
  signal ro_mem_ecc_error_addr : std_logic_vector(13 downto 0) ;

begin
  _zz_strnp_4 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_iclk
      ,clk
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_irstn
      ,bimc_rst_n
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       rst_clk_n
      ,rst_n
    ) ;
  p_mode_disable_ecc_mem <= '0' ;
  byp <= '0' ;
  se <= '0' ;
  rds <= '0' ;
  ecc_corrupt <= "00" ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       rst_rclk_n
      ,rst_n
    ) ;
  sew <= '0' ;
  web <= not(boolean_to_std(((cs)='1' and (we)='1'))) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,bimc_odat
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY2
      ,bimc_osync
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY3
      ,ro_uncorrectable_ecc_error
    ) ;
  Generate1 : if g : (TRUE) generate
    signal add_r : std_logic_vector(13 downto 0) ;
    signal dat_r : std_logic_vector(37 downto 0) ;
    signal dout_i : std_logic_vector(37 downto 0) ;
    signal din_i : std_logic_vector(37 downto 0) ;
    signal we_clk : std_logic_vector(16383 downto 0) ;
    signal we_gate : std_logic_vector(16383 downto 0) ;
    signal mem : DUMMY0(0 to 16383) ;
    signal DUMMY4 : std_logic_vector(37 downto 0) ;
  begin
    _zz_strnp_0 : ixc_assign
      generic map(W => 38)
      port map (
         dout_i
        ,DUMMY4
      ) ;
    DUMMY4 <= mem(conv_integer(add)) ;
    din_i <= ((dout_i and not(bwe)) or (din and bwe)) ;
    _zz_strnp_1 : ixc_assign
      generic map(W => 38)
      port map (
         dout
        ,dat_r
      ) ;
    _zz_strnp_2 : ixc_assign
      generic map(W => 1)
      port map (
         bimc_odat
        ,bimc_idat
      ) ;
    _zz_strnp_3 : ixc_assign
      generic map(W => 1)
      port map (
         bimc_osync
        ,bimc_isync
      ) ;
    ro_uncorrectable_ecc_error <= '0' ;
    we_clk <= it_multiple_concat(clk,16384) ;
    Generate2 : if u_ram : (TRUE) generate
      signal _zyictd_sysfunc_11_L263_10 : integer ;
      -- quickturn keep_net _zyictd_sysfunc_11_L263_10
    begin

      process --:o67
      (clk)
      begin
        if (clk'event and clk = '1') then
          if (((cs)='1' and (we)='1')) then
            mem(conv_integer(add)) <= din_i ;
          end if;
        end if ;
      end process ;
    end generate ;

    process --:o80
    (clk,rst_n)
    begin
      if (rst_n = '0') then
        dat_r <= "00000000000000000000000000000000000000" ;
      elsif (clk'event and clk = '1') then
        if (cs = '1') then
          dat_r <= it_cond_op((we)='1',din_i,dout_i) ;
        end if;
      end if ;
    end process ;
  end generate ;
end module;
