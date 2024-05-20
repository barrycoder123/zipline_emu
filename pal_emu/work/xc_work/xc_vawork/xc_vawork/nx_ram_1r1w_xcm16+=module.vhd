architecture module of nx_ram_1r1w_xcm16 is
  type DUMMY0 is array(integer range <>) of std_logic_vector(82 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb.genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb.genblk2"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb.genblk3"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 _1r1wramDxWb  "
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1  "
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_2 "0 genblk2  "
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_3 "0 genblk3  "
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
  signal DUMMY4 : std_logic_vector(0 to 82) ;
  signal ldout : std_logic_vector(82 downto 0) ;
  signal ldin : std_logic_vector(82 downto 0) ;
  signal bimc_iclk : std_logic ;
  signal bimc_irstn : std_logic ;
  signal mem : DUMMY0(0 to 167) ;
  signal p_mode_disable_ecc_mem : std_logic ;
  signal se : std_logic ;
  signal rds : std_logic ;
  signal ecc_corrupt : std_logic_vector(1 downto 0) ;
  signal rst_rclk_n : std_logic ;
  signal rst_wclk_n : std_logic ;
  signal rclk : std_logic ;
  signal wclk : std_logic ;

begin
  _zz_strnp_7 : ixc_assign
    generic map(W => 83)
    port map (
       ldin
      ,din
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_iclk
      ,clk
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_irstn
      ,bimc_rst_n
    ) ;
  p_mode_disable_ecc_mem <= '0' ;
  se <= '0' ;
  rds <= '0' ;
  ecc_corrupt <= "00" ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 1)
    port map (
       rst_rclk_n
      ,rst_n
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 1)
    port map (
       rst_wclk_n
      ,rst_n
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 1)
    port map (
       rclk
      ,clk
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 1)
    port map (
       wclk
      ,clk
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 83)
    port map (
       dout
      ,ldout
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,bimc_odat
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY2
      ,bimc_osync
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY3
      ,ro_uncorrectable_ecc_error
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY4
      ,dout
    ) ;
  Generate1 : if _1r1wramDxWb : (TRUE) generate
    signal _web : std_logic ;
    signal _wa : std_logic_vector(7 downto 0) ;
    signal _din : std_logic_vector(82 downto 0) ;
    signal _bwe : std_logic_vector(82 downto 0) ;
    signal dout_i : std_logic_vector(82 downto 0) ;
    signal din_i : std_logic_vector(82 downto 0) ;
    signal mem : DUMMY0(0 to 167) ;
    signal DUMMY5 : std_logic ;
    signal _dout : std_logic_vector(82 downto 0) ;
    signal dout_r : DUMMY0(0 downto 0) ;
    signal _zyictd_sysfunc_11_L258_6 : integer ;
    -- quickturn keep_net _zyictd_sysfunc_11_L258_6
  begin
    din_i <= ((mem(conv_integer(_wa)) and not(_bwe)) or (_din and _bwe)) ;
    dout_i <= din_i when (DUMMY5)='1' else mem(conv_integer(ra)) ;
    _zz_strnp_0 : ixc_assign
      generic map(W => 1)
      port map (
         bimc_odat
        ,bimc_idat
      ) ;
    _zz_strnp_1 : ixc_assign
      generic map(W => 1)
      port map (
         bimc_osync
        ,bimc_isync
      ) ;
    ro_uncorrectable_ecc_error <= '0' ;
    Generate2 : if genblk1 : (TRUE) generate
      signal web_r : std_logic ;
      signal wa_r : std_logic_vector(7 downto 0) ;
      signal din_r : std_logic_vector(82 downto 0) ;
      signal bwe_r : std_logic_vector(82 downto 0) ;
    begin
      _zz_strnp_2 : ixc_assign
        generic map(W => 1)
        port map (
           _web
          ,web_r
        ) ;
      _zz_strnp_3 : ixc_assign
        generic map(W => 8)
        port map (
           _wa
          ,wa_r
        ) ;
      _zz_strnp_4 : ixc_assign
        generic map(W => 83)
        port map (
           _din
          ,din_r
        ) ;
      _zz_strnp_5 : ixc_assign
        generic map(W => 83)
        port map (
           _bwe
          ,bwe_r
        ) ;

      process --:o81
      (clk,rst_n)
      begin
        if (rst_n = '0') then
          web_r <= '0' ;
        elsif (clk'event and clk = '1') then
          web_r <= web ;
        end if ;
      end process ;

      process --:o93
      (clk)
      begin
        if (clk'event and clk = '1') then
          din_r <= ldin ;
          bwe_r <= bwe ;
          wa_r <= wa ;
        end if ;
      end process ;
    end generate ;
    Generate3 : if genblk2 : (TRUE) generate
    begin
      DUMMY5 <= '0' ;
    end generate ;
    Generate4 : if genblk3 : (TRUE) generate
      signal dout_rr : std_logic_vector(82 downto 0) ;
    begin
      _zz_strnp_6 : ixc_assign
        generic map(W => 83)
        port map (
           ldout
          ,dout_rr
        ) ;

      process --:o111
      (clk)
      begin
        if (clk'event and clk = '1') then
          dout_rr <= dout_r(0) ;
        end if ;
      end process ;
    end generate ;

    process --:o117
    (clk)
      variable DUMMY6 : integer ;
    begin
      if (clk'event and clk = '1') then
        if ((reb = '0')) then
          dout_r(0) <= dout_i ;
        end if;
      end if ;
    end process ;

    process --:o128
    (clk)
    begin
      if (clk'event and clk = '1') then
        if ((_web = '0')) then
          mem(conv_integer(_wa)) <= din_i ;
        end if;
      end if ;
    end process ;
  end generate ;
end module;
