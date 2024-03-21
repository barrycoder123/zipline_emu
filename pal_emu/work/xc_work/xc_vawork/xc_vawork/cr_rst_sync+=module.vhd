architecture module of cr_rst_sync is
  component cr_dual_rank_synchronizer
    generic (
      WIDTH : integer := 1 ;
      RESET_VAL : integer := 0
    ) ;
    port (
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      din : in std_logic := 'X' ;
    dout : out std_logic ) ;
  end component ;

  signal sync_rst_n : std_logic ;
  signal dual_rank_rst_n : std_logic ;
  signal _zy_simnet_cio_0 : std_logic ;

begin
  dual_rank_rst_n <= boolean_to_std((((bypass_reset)='1' and (test_rst_n)='1')
   or (async_rst_n)='1')) ;
  rst_n <= boolean_to_std((((bypass_reset)='1' and (test_rst_n)='1') or 
  (sync_rst_n)='1')) ;
  _zy_simnet_cio_0 <= '1' ;
  reset_synchronizer : cr_dual_rank_synchronizer
    port map (
       clk => clk
      ,rst_n => dual_rank_rst_n
      ,din => _zy_simnet_cio_0
      ,dout => sync_rst_n
    ) ;
end module;
