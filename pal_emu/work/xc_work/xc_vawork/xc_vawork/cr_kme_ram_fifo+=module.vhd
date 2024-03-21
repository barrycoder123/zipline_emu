architecture module of cr_kme_ram_fifo is
  component cr_fifo_wrap2_xcm10
    generic (
      N_DATA_BITS : integer := 71 ;
      N_ENTRIES : integer := 2048 ;
      N_AFULL_VAL : integer := 1 ;
      N_AEMPTY_VAL : integer := 1 ;
      USE_RAM : integer := 1
    ) ;
    port (
      full : out std_logic ;
      afull : out std_logic ;
      rdata : out std_logic_vector(70 downto 0) ;
      empty : out std_logic ;
      aempty : out std_logic ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      wdata : in std_logic_vector(70 downto 0) := (others => 'X') ;
      wen : in std_logic := 'X' ;
      ren : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
    bimc_rst_n : in std_logic := 'X' ) ;
  end component ;

  signal ren : std_logic ;
  signal empty : std_logic ;
  signal _zy_simnet_dio_0 : std_logic ;
  signal _zy_simnet_dio_1 : std_logic ;

begin
  ren <= (fifo_out_valid and fifo_out_ack) ;
  fifo_out_valid <= not(empty) ;
  ram_fifo : cr_fifo_wrap2_xcm10
    port map (
       full => fifo_in_stall
      ,afull => _zy_simnet_dio_0
      ,rdata => fifo_out
      ,empty => empty
      ,aempty => _zy_simnet_dio_1
      ,bimc_odat => fifo_bimc_odat
      ,bimc_osync => fifo_bimc_osync
      ,ro_uncorrectable_ecc_error => fifo_mbe
      ,clk => clk
      ,rst_n => rst_n
      ,wdata => fifo_in
      ,wen => fifo_in_valid
      ,ren => ren
      ,bimc_idat => fifo_bimc_idat
      ,bimc_isync => fifo_bimc_isync
      ,bimc_rst_n => bimc_rst_n
    ) ;
end module;
