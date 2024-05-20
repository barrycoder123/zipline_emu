architecture module of nx_fifo_ram_1r1w_xcm14 is
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "genblk1"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 genblk1  "
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component nx_ram_1r1w_xcm16
    generic (
      WIDTH : integer := 83 ;
      DEPTH : integer := 168 ;
      BWEWIDTH : integer := 83 ;
      SPECIALIZE : integer := 1 ;
      IN_FLOP : integer := 1 ;
      OUT_FLOP : integer := 1 ;
      RD_LATENCY : integer := 1 ;
      WRITETHROUGH : integer := 0
    ) ;
    port (
      rst_n : in std_logic := 'X' ;
      clk : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      reb : in std_logic := 'X' ;
      ra : in std_logic_vector(7 downto 0) := (others => 'X') ;
      dout : out std_logic_vector(82 downto 0) ;
      web : in std_logic := 'X' ;
      wa : in std_logic_vector(7 downto 0) := (others => 'X') ;
      din : in std_logic_vector(82 downto 0) := (others => 'X') ;
    bwe : in std_logic_vector(82 downto 0) := (others => 'X') ) ;
  end component ;

  component nx_fifo_ctrl_ram_1r1w_xcm18
    generic (
      DEPTH : integer := 168 ;
      WIDTH : integer := 83 ;
      UNDERFLOW_ASSERT : integer := 1 ;
      OVERFLOW_ASSERT : integer := 1 ;
      RD_LATENCY : integer := 3 ;
      REN_COMB : integer := 1 ;
      RDATA_COMB : integer := 1
    ) ;
    port (
      mem_wen : out std_logic ;
      mem_waddr : out std_logic_vector(7 downto 0) ;
      mem_wdata : out std_logic_vector(82 downto 0) ;
      mem_ren : out std_logic ;
      mem_raddr : out std_logic_vector(7 downto 0) ;
      empty : out std_logic ;
      full : out std_logic ;
      used_slots : out std_logic_vector(7 downto 0) ;
      free_slots : out std_logic_vector(7 downto 0) ;
      rerr : out std_logic ;
      rdata : out std_logic_vector(82 downto 0) ;
      underflow : out std_logic ;
      overflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      mem_rdata : in std_logic_vector(82 downto 0) := (others => 'X') ;
      mem_ecc_error : in std_logic := 'X' ;
      wen : in std_logic := 'X' ;
      wdata : in std_logic_vector(82 downto 0) := (others => 'X') ;
      ren : in std_logic := 'X' ;
    clear : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic_vector(0 to 7) ;
  signal DUMMY3 : std_logic_vector(0 to 7) ;
  signal DUMMY4 : std_logic ;
  signal DUMMY5 : std_logic_vector(0 to 82) ;
  signal DUMMY6 : std_logic ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic ;
  signal DUMMY9 : std_logic ;
  signal DUMMY10 : std_logic ;
  signal DUMMY11 : std_logic ;
  signal DUMMY12 : std_logic ;
  signal DUMMY13 : std_logic ;
  signal _zy_simnet_tvar_14 : std_logic ;
  signal DUMMY14 : std_logic_vector(0 to 7) ;
  signal DUMMY15 : std_logic_vector(0 to 82) ;
  signal _zy_simnet_tvar_17 : std_logic ;
  signal DUMMY16 : std_logic_vector(0 to 7) ;
  signal DUMMY17 : std_logic_vector(0 to 82) ;
  signal _zy_simnet_cio_20 : std_logic_vector(0 to 82) ;
  signal DUMMY18 : std_logic ;
  signal DUMMY19 : std_logic_vector(0 to 7) ;
  signal DUMMY20 : std_logic_vector(0 to 82) ;
  signal DUMMY21 : std_logic ;
  signal DUMMY22 : std_logic_vector(0 to 7) ;
  signal DUMMY23 : std_logic ;
  signal DUMMY24 : std_logic ;
  signal DUMMY25 : std_logic_vector(0 to 7) ;
  signal DUMMY26 : std_logic_vector(0 to 7) ;
  signal DUMMY27 : std_logic ;
  signal DUMMY28 : std_logic_vector(0 to 82) ;
  signal DUMMY29 : std_logic ;
  signal DUMMY30 : std_logic ;
  signal DUMMY31 : std_logic_vector(0 to 82) ;
  signal DUMMY32 : std_logic ;
  signal mem_wen : std_logic ;
  signal mem_waddr : std_logic_vector(7 downto 0) ;
  signal mem_wdata : std_logic_vector(82 downto 0) ;
  signal mem_ren : std_logic ;
  signal _mem_ren : std_logic ;
  signal mem_raddr : std_logic_vector(7 downto 0) ;
  signal _mem_raddr : std_logic_vector(7 downto 0) ;
  signal mem_rdata : std_logic_vector(82 downto 0) ;

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY0
      ,empty
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,full
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY2
      ,used_slots
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY3
      ,free_slots
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY4
      ,rerr
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY5
      ,rdata
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY6
      ,underflow
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY7
      ,overflow
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY8
      ,bimc_odat
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY9
      ,bimc_osync
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY10
      ,ro_uncorrectable_ecc_error
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_odat
      ,DUMMY11
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_osync
      ,DUMMY12
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 1)
    port map (
       ro_uncorrectable_ecc_error
      ,DUMMY13
    ) ;
  _zy_simnet_tvar_14 <= not(_mem_ren) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY14
      ,_mem_raddr
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 83)
    port map (
       mem_rdata
      ,DUMMY15
    ) ;
  _zy_simnet_tvar_17 <= not(mem_wen) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY16
      ,mem_waddr
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY17
      ,mem_wdata
    ) ;
  _zy_simnet_cio_20 <=
   "11111111111111111111111111111111111111111111111111111111111111111111111111111111111"
   ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 1)
    port map (
       mem_wen
      ,DUMMY18
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 8)
    port map (
       mem_waddr
      ,DUMMY19
    ) ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 83)
    port map (
       mem_wdata
      ,DUMMY20
    ) ;
  _zz_strnp_21 : ixc_assign
    generic map(W => 1)
    port map (
       mem_ren
      ,DUMMY21
    ) ;
  _zz_strnp_22 : ixc_assign
    generic map(W => 8)
    port map (
       mem_raddr
      ,DUMMY22
    ) ;
  _zz_strnp_23 : ixc_assign
    generic map(W => 1)
    port map (
       empty
      ,DUMMY23
    ) ;
  _zz_strnp_24 : ixc_assign
    generic map(W => 1)
    port map (
       full
      ,DUMMY24
    ) ;
  _zz_strnp_25 : ixc_assign
    generic map(W => 8)
    port map (
       used_slots
      ,DUMMY25
    ) ;
  _zz_strnp_26 : ixc_assign
    generic map(W => 8)
    port map (
       free_slots
      ,DUMMY26
    ) ;
  _zz_strnp_27 : ixc_assign
    generic map(W => 1)
    port map (
       rerr
      ,DUMMY27
    ) ;
  _zz_strnp_28 : ixc_assign
    generic map(W => 83)
    port map (
       rdata
      ,DUMMY28
    ) ;
  _zz_strnp_29 : ixc_assign
    generic map(W => 1)
    port map (
       underflow
      ,DUMMY29
    ) ;
  _zz_strnp_30 : ixc_assign
    generic map(W => 1)
    port map (
       overflow
      ,DUMMY30
    ) ;
  _zz_strnp_31 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY31
      ,mem_rdata
    ) ;
  _zz_strnp_32 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY32
      ,ro_uncorrectable_ecc_error
    ) ;
  ram : nx_ram_1r1w_xcm16
    port map (
       rst_n => rst_n
      ,clk => clk
      ,lvm => lvm
      ,mlvm => mlvm
      ,mrdten => mrdten
      ,bimc_rst_n => bimc_rst_n
      ,bimc_isync => bimc_isync
      ,bimc_idat => bimc_idat
      ,bimc_odat => DUMMY11
      ,bimc_osync => DUMMY12
      ,ro_uncorrectable_ecc_error => DUMMY13
      ,reb => _zy_simnet_tvar_14
      ,ra => DUMMY14
      ,dout => DUMMY15
      ,web => _zy_simnet_tvar_17
      ,wa => DUMMY16
      ,din => DUMMY17
      ,bwe => _zy_simnet_cio_20
    ) ;
  fifo_ctrl : nx_fifo_ctrl_ram_1r1w_xcm18
    port map (
       mem_wen => DUMMY18
      ,mem_waddr => DUMMY19
      ,mem_wdata => DUMMY20
      ,mem_ren => DUMMY21
      ,mem_raddr => DUMMY22
      ,empty => DUMMY23
      ,full => DUMMY24
      ,used_slots => DUMMY25
      ,free_slots => DUMMY26
      ,rerr => DUMMY27
      ,rdata => DUMMY28
      ,underflow => DUMMY29
      ,overflow => DUMMY30
      ,clk => clk
      ,rst_n => rst_n
      ,mem_rdata => DUMMY31
      ,mem_ecc_error => DUMMY32
      ,wen => wen
      ,wdata => wdata
      ,ren => ren
      ,clear => clear
    ) ;
  Generate1 : if genblk1 : (TRUE) generate
  begin

    process --:o168
    (clk,rst_n)
    begin
      if (rst_n = '0') then
        _mem_ren <= '0' ;
      elsif (clk'event and clk = '1') then
        _mem_ren <= mem_ren ;
      end if ;
    end process ;

    process --:o176
    (clk)
    begin
      if (clk'event and clk = '1') then
        _mem_raddr <= mem_raddr ;
      end if ;
    end process ;
  end generate ;
end module;
