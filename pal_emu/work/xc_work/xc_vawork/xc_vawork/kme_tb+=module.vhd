architecture module of kme_tb is
  component apb_xactor
    generic (
      ADDR_WIDTH : integer := 20 ;
      DATA_WIDTH : integer := 32
    ) ;
    port (
      psel : out std_logic ;
      penable : out std_logic ;
      paddr : out std_logic_vector(19 downto 0) ;
      pwdata : out std_logic_vector(31 downto 0) ;
      pwrite : out std_logic ;
      clk : in std_logic := 'X' ;
      reset_n : in std_logic := 'X' ;
      prdata : in std_logic_vector(31 downto 0) := (others => 'X') ;
      pready : in std_logic := 'X' ;
    pslverr : in std_logic := 'X' ) ;
  end component ;

  component cr_kme
    generic (
      KME_STUB : integer := 0
    ) ;
    port (
      kme_interrupt : out std_logic ;
      kme_ib_tready : out std_logic ;
      kme_cceip0_ob_tvalid : out std_logic ;
      kme_cceip0_ob_tlast : out std_logic ;
      kme_cceip0_ob_tid : out std_logic_vector(0 downto 0) ;
      kme_cceip0_ob_tstrb : out std_logic_vector(7 downto 0) ;
      kme_cceip0_ob_tuser : out std_logic_vector(7 downto 0) ;
      kme_cceip0_ob_tdata : out std_logic_vector(63 downto 0) ;
      apb_prdata : out std_logic_vector(31 downto 0) ;
      apb_pready : out std_logic ;
      apb_pslverr : out std_logic ;
      kme_idle : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      scan_en : in std_logic := 'X' ;
      scan_mode : in std_logic := 'X' ;
      scan_rst_n : in std_logic := 'X' ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      disable_debug_cmd : in std_logic := 'X' ;
      disable_unencrypted_keys : in std_logic := 'X' ;
      kme_ib_tvalid : in std_logic := 'X' ;
      kme_ib_tlast : in std_logic := 'X' ;
      kme_ib_tid : in std_logic_vector(0 downto 0) := (others => 'X') ;
      kme_ib_tstrb : in std_logic_vector(7 downto 0) := (others => 'X') ;
      kme_ib_tuser : in std_logic_vector(7 downto 0) := (others => 'X') ;
      kme_ib_tdata : in std_logic_vector(63 downto 0) := (others => 'X') ;
      kme_cceip0_ob_tready : in std_logic := 'X' ;
      apb_paddr : in std_logic_vector(15 downto 0) := (others => 'X') ;
      apb_psel : in std_logic := 'X' ;
      apb_penable : in std_logic := 'X' ;
      apb_pwrite : in std_logic := 'X' ;
    apb_pwdata : in std_logic_vector(31 downto 0) := (others => 'X') ) ;
  end component ;


begin
  DUMMY0 : apb_xactor
    port map (
       open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
    ) ;
  kme_dut : cr_kme
    port map (
       open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
      ,open
    ) ;
end module;
