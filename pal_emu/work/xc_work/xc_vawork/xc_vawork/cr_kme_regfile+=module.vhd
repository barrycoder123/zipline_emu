architecture module of cr_kme_regfile is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component cr_kme_regs
    generic (
      IDLE : std_logic_vector := std_logic_vector'("000") ;
      WR_PREP : std_logic_vector := std_logic_vector'("001") ;
      WR_REG : std_logic_vector := std_logic_vector'("011") ;
      DUMMY0 : std_logic_vector := std_logic_vector'("100") ;
      RD_PREP : std_logic_vector := std_logic_vector'("101") ;
      RD_REG : std_logic_vector := std_logic_vector'("111")
    ) ;
    port (
      clk : in std_logic := 'X' ;
      i_reset_ : in std_logic := 'X' ;
      i_sw_init : in std_logic := 'X' ;
      i_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      i_wr_strb : in std_logic := 'X' ;
      i_wr_data : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_rd_strb : in std_logic := 'X' ;
      o_rd_data : out std_logic_vector(31 downto 0) ;
      o_ack : out std_logic ;
      o_err_ack : out std_logic ;
      o_spare_config : out std_logic_vector(31 downto 0) ;
      o_cceip0_out_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_cceip0_out_ia_wdata_part1 : out std_logic_vector(31 downto 0) ;
      o_cceip0_out_ia_wdata_part2 : out std_logic_vector(31 downto 0) ;
      o_cceip0_out_ia_config : out std_logic_vector(12 downto 0) ;
      o_cceip0_out_im_config : out std_logic_vector(11 downto 0) ;
      o_cceip0_out_im_read_done : out std_logic_vector(1 downto 0) ;
      o_cceip1_out_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_cceip1_out_ia_wdata_part1 : out std_logic_vector(31 downto 0) ;
      o_cceip1_out_ia_wdata_part2 : out std_logic_vector(31 downto 0) ;
      o_cceip1_out_ia_config : out std_logic_vector(12 downto 0) ;
      o_cceip1_out_im_config : out std_logic_vector(11 downto 0) ;
      o_cceip1_out_im_read_done : out std_logic_vector(1 downto 0) ;
      o_cceip2_out_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_cceip2_out_ia_wdata_part1 : out std_logic_vector(31 downto 0) ;
      o_cceip2_out_ia_wdata_part2 : out std_logic_vector(31 downto 0) ;
      o_cceip2_out_ia_config : out std_logic_vector(12 downto 0) ;
      o_cceip2_out_im_config : out std_logic_vector(11 downto 0) ;
      o_cceip2_out_im_read_done : out std_logic_vector(1 downto 0) ;
      o_cceip3_out_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_cceip3_out_ia_wdata_part1 : out std_logic_vector(31 downto 0) ;
      o_cceip3_out_ia_wdata_part2 : out std_logic_vector(31 downto 0) ;
      o_cceip3_out_ia_config : out std_logic_vector(12 downto 0) ;
      o_cceip3_out_im_config : out std_logic_vector(11 downto 0) ;
      o_cceip3_out_im_read_done : out std_logic_vector(1 downto 0) ;
      o_cddip0_out_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_cddip0_out_ia_wdata_part1 : out std_logic_vector(31 downto 0) ;
      o_cddip0_out_ia_wdata_part2 : out std_logic_vector(31 downto 0) ;
      o_cddip0_out_ia_config : out std_logic_vector(12 downto 0) ;
      o_cddip0_out_im_config : out std_logic_vector(11 downto 0) ;
      o_cddip0_out_im_read_done : out std_logic_vector(1 downto 0) ;
      o_cddip1_out_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_cddip1_out_ia_wdata_part1 : out std_logic_vector(31 downto 0) ;
      o_cddip1_out_ia_wdata_part2 : out std_logic_vector(31 downto 0) ;
      o_cddip1_out_ia_config : out std_logic_vector(12 downto 0) ;
      o_cddip1_out_im_config : out std_logic_vector(11 downto 0) ;
      o_cddip1_out_im_read_done : out std_logic_vector(1 downto 0) ;
      o_cddip2_out_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_cddip2_out_ia_wdata_part1 : out std_logic_vector(31 downto 0) ;
      o_cddip2_out_ia_wdata_part2 : out std_logic_vector(31 downto 0) ;
      o_cddip2_out_ia_config : out std_logic_vector(12 downto 0) ;
      o_cddip2_out_im_config : out std_logic_vector(11 downto 0) ;
      o_cddip2_out_im_read_done : out std_logic_vector(1 downto 0) ;
      o_cddip3_out_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_cddip3_out_ia_wdata_part1 : out std_logic_vector(31 downto 0) ;
      o_cddip3_out_ia_wdata_part2 : out std_logic_vector(31 downto 0) ;
      o_cddip3_out_ia_config : out std_logic_vector(12 downto 0) ;
      o_cddip3_out_im_config : out std_logic_vector(11 downto 0) ;
      o_cddip3_out_im_read_done : out std_logic_vector(1 downto 0) ;
      o_ckv_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_ckv_ia_wdata_part1 : out std_logic_vector(31 downto 0) ;
      o_ckv_ia_config : out std_logic_vector(18 downto 0) ;
      o_kim_ia_wdata_part0 : out std_logic_vector(20 downto 0) ;
      o_kim_ia_wdata_part1 : out std_logic_vector(16 downto 0) ;
      o_kim_ia_config : out std_logic_vector(17 downto 0) ;
      o_label0_config : out std_logic_vector(15 downto 0) ;
      o_label0_data7 : out std_logic_vector(31 downto 0) ;
      o_label0_data6 : out std_logic_vector(31 downto 0) ;
      o_label0_data5 : out std_logic_vector(31 downto 0) ;
      o_label0_data4 : out std_logic_vector(31 downto 0) ;
      o_label0_data3 : out std_logic_vector(31 downto 0) ;
      o_label0_data2 : out std_logic_vector(31 downto 0) ;
      o_label0_data1 : out std_logic_vector(31 downto 0) ;
      o_label0_data0 : out std_logic_vector(31 downto 0) ;
      o_label1_config : out std_logic_vector(15 downto 0) ;
      o_label1_data7 : out std_logic_vector(31 downto 0) ;
      o_label1_data6 : out std_logic_vector(31 downto 0) ;
      o_label1_data5 : out std_logic_vector(31 downto 0) ;
      o_label1_data4 : out std_logic_vector(31 downto 0) ;
      o_label1_data3 : out std_logic_vector(31 downto 0) ;
      o_label1_data2 : out std_logic_vector(31 downto 0) ;
      o_label1_data1 : out std_logic_vector(31 downto 0) ;
      o_label1_data0 : out std_logic_vector(31 downto 0) ;
      o_label2_config : out std_logic_vector(15 downto 0) ;
      o_label2_data7 : out std_logic_vector(31 downto 0) ;
      o_label2_data6 : out std_logic_vector(31 downto 0) ;
      o_label2_data5 : out std_logic_vector(31 downto 0) ;
      o_label2_data4 : out std_logic_vector(31 downto 0) ;
      o_label2_data3 : out std_logic_vector(31 downto 0) ;
      o_label2_data2 : out std_logic_vector(31 downto 0) ;
      o_label2_data1 : out std_logic_vector(31 downto 0) ;
      o_label2_data0 : out std_logic_vector(31 downto 0) ;
      o_label3_config : out std_logic_vector(15 downto 0) ;
      o_label3_data7 : out std_logic_vector(31 downto 0) ;
      o_label3_data6 : out std_logic_vector(31 downto 0) ;
      o_label3_data5 : out std_logic_vector(31 downto 0) ;
      o_label3_data4 : out std_logic_vector(31 downto 0) ;
      o_label3_data3 : out std_logic_vector(31 downto 0) ;
      o_label3_data2 : out std_logic_vector(31 downto 0) ;
      o_label3_data1 : out std_logic_vector(31 downto 0) ;
      o_label3_data0 : out std_logic_vector(31 downto 0) ;
      o_label4_config : out std_logic_vector(15 downto 0) ;
      o_label4_data7 : out std_logic_vector(31 downto 0) ;
      o_label4_data6 : out std_logic_vector(31 downto 0) ;
      o_label4_data5 : out std_logic_vector(31 downto 0) ;
      o_label4_data4 : out std_logic_vector(31 downto 0) ;
      o_label4_data3 : out std_logic_vector(31 downto 0) ;
      o_label4_data2 : out std_logic_vector(31 downto 0) ;
      o_label4_data1 : out std_logic_vector(31 downto 0) ;
      o_label4_data0 : out std_logic_vector(31 downto 0) ;
      o_label5_config : out std_logic_vector(15 downto 0) ;
      o_label5_data7 : out std_logic_vector(31 downto 0) ;
      o_label5_data6 : out std_logic_vector(31 downto 0) ;
      o_label5_data5 : out std_logic_vector(31 downto 0) ;
      o_label5_data4 : out std_logic_vector(31 downto 0) ;
      o_label5_data3 : out std_logic_vector(31 downto 0) ;
      o_label5_data2 : out std_logic_vector(31 downto 0) ;
      o_label5_data1 : out std_logic_vector(31 downto 0) ;
      o_label5_data0 : out std_logic_vector(31 downto 0) ;
      o_label6_config : out std_logic_vector(15 downto 0) ;
      o_label6_data7 : out std_logic_vector(31 downto 0) ;
      o_label6_data6 : out std_logic_vector(31 downto 0) ;
      o_label6_data5 : out std_logic_vector(31 downto 0) ;
      o_label6_data4 : out std_logic_vector(31 downto 0) ;
      o_label6_data3 : out std_logic_vector(31 downto 0) ;
      o_label6_data2 : out std_logic_vector(31 downto 0) ;
      o_label6_data1 : out std_logic_vector(31 downto 0) ;
      o_label6_data0 : out std_logic_vector(31 downto 0) ;
      o_label7_config : out std_logic_vector(15 downto 0) ;
      o_label7_data7 : out std_logic_vector(31 downto 0) ;
      o_label7_data6 : out std_logic_vector(31 downto 0) ;
      o_label7_data5 : out std_logic_vector(31 downto 0) ;
      o_label7_data4 : out std_logic_vector(31 downto 0) ;
      o_label7_data3 : out std_logic_vector(31 downto 0) ;
      o_label7_data2 : out std_logic_vector(31 downto 0) ;
      o_label7_data1 : out std_logic_vector(31 downto 0) ;
      o_label7_data0 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_ctrl : out std_logic_vector(1 downto 0) ;
      o_kdf_drbg_seed_0_state_key_31_0 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_state_key_63_32 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_state_key_95_64 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_state_key_127_96 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_state_key_159_128 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_state_key_191_160 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_state_key_223_192 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_state_key_255_224 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_state_value_31_0 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_state_value_63_32 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_state_value_95_64 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_state_value_127_96 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_reseed_interval_0 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_0_reseed_interval_1 : out std_logic_vector(15 downto 0) ;
      o_kdf_drbg_seed_1_state_key_31_0 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_state_key_63_32 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_state_key_95_64 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_state_key_127_96 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_state_key_159_128 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_state_key_191_160 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_state_key_223_192 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_state_key_255_224 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_state_value_31_0 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_state_value_63_32 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_state_value_95_64 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_state_value_127_96 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_reseed_interval_0 : out std_logic_vector(31 downto 0) ;
      o_kdf_drbg_seed_1_reseed_interval_1 : out std_logic_vector(15 downto 0) ;
      o_interrupt_status : out std_logic_vector(4 downto 0) ;
      o_interrupt_mask : out std_logic_vector(4 downto 0) ;
      o_engine_sticky_status : out std_logic_vector(7 downto 0) ;
      o_bimc_monitor_mask : out std_logic_vector(6 downto 0) ;
      o_bimc_ecc_uncorrectable_error_cnt : out std_logic_vector(31 downto 0) ;
      o_bimc_ecc_correctable_error_cnt : out std_logic_vector(31 downto 0) ;
      o_bimc_parity_error_cnt : out std_logic_vector(31 downto 0) ;
      o_bimc_global_config : out std_logic_vector(31 downto 0) ;
      o_bimc_eccpar_debug : out std_logic_vector(28 downto 0) ;
      o_bimc_cmd2 : out std_logic_vector(10 downto 0) ;
      o_bimc_cmd1 : out std_logic_vector(31 downto 0) ;
      o_bimc_cmd0 : out std_logic_vector(31 downto 0) ;
      o_bimc_rxcmd2 : out std_logic_vector(9 downto 0) ;
      o_bimc_rxrsp2 : out std_logic_vector(9 downto 0) ;
      o_bimc_pollrsp2 : out std_logic_vector(9 downto 0) ;
      o_bimc_dbgcmd2 : out std_logic_vector(9 downto 0) ;
      o_im_consumed : out std_logic_vector(15 downto 0) ;
      o_tready_override : out std_logic_vector(8 downto 0) ;
      o_regs_sa_ctrl : out std_logic_vector(31 downto 0) ;
      o_sa_snapshot_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_sa_snapshot_ia_wdata_part1 : out std_logic_vector(31 downto 0) ;
      o_sa_snapshot_ia_config : out std_logic_vector(8 downto 0) ;
      o_sa_count_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_sa_count_ia_wdata_part1 : out std_logic_vector(31 downto 0) ;
      o_sa_count_ia_config : out std_logic_vector(8 downto 0) ;
      o_cceip_encrypt_kop_fifo_override : out std_logic_vector(6 downto 0) ;
      o_cceip_validate_kop_fifo_override : out std_logic_vector(6 downto 0) ;
      o_cddip_decrypt_kop_fifo_override : out std_logic_vector(6 downto 0) ;
      o_sa_global_ctrl : out std_logic_vector(31 downto 0) ;
      o_sa_ctrl_ia_wdata_part0 : out std_logic_vector(31 downto 0) ;
      o_sa_ctrl_ia_config : out std_logic_vector(8 downto 0) ;
      o_kdf_test_key_size_config : out std_logic_vector(31 downto 0) ;
      i_blkid_revid_config : in std_logic_vector(31 downto 0) := (others => 'X')
       ;
      i_revision_config : in std_logic_vector(7 downto 0) := (others => 'X') ;
      i_spare_config : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_cceip0_out_ia_capability : in std_logic_vector(19 downto 0) := (others
       => 'X') ;
      i_cceip0_out_ia_status : in std_logic_vector(16 downto 0) := (others =>
       'X') ;
      i_cceip0_out_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip0_out_ia_rdata_part1 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip0_out_ia_rdata_part2 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip0_out_im_status : in std_logic_vector(11 downto 0) := (others =>
       'X') ;
      i_cceip0_out_im_read_done : in std_logic_vector(1 downto 0) := (others =>
       'X') ;
      i_cceip1_out_ia_capability : in std_logic_vector(19 downto 0) := (others
       => 'X') ;
      i_cceip1_out_ia_status : in std_logic_vector(16 downto 0) := (others =>
       'X') ;
      i_cceip1_out_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip1_out_ia_rdata_part1 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip1_out_ia_rdata_part2 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip1_out_im_status : in std_logic_vector(11 downto 0) := (others =>
       'X') ;
      i_cceip1_out_im_read_done : in std_logic_vector(1 downto 0) := (others =>
       'X') ;
      i_cceip2_out_ia_capability : in std_logic_vector(19 downto 0) := (others
       => 'X') ;
      i_cceip2_out_ia_status : in std_logic_vector(16 downto 0) := (others =>
       'X') ;
      i_cceip2_out_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip2_out_ia_rdata_part1 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip2_out_ia_rdata_part2 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip2_out_im_status : in std_logic_vector(11 downto 0) := (others =>
       'X') ;
      i_cceip2_out_im_read_done : in std_logic_vector(1 downto 0) := (others =>
       'X') ;
      i_cceip3_out_ia_capability : in std_logic_vector(19 downto 0) := (others
       => 'X') ;
      i_cceip3_out_ia_status : in std_logic_vector(16 downto 0) := (others =>
       'X') ;
      i_cceip3_out_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip3_out_ia_rdata_part1 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip3_out_ia_rdata_part2 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cceip3_out_im_status : in std_logic_vector(11 downto 0) := (others =>
       'X') ;
      i_cceip3_out_im_read_done : in std_logic_vector(1 downto 0) := (others =>
       'X') ;
      i_cddip0_out_ia_capability : in std_logic_vector(19 downto 0) := (others
       => 'X') ;
      i_cddip0_out_ia_status : in std_logic_vector(16 downto 0) := (others =>
       'X') ;
      i_cddip0_out_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip0_out_ia_rdata_part1 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip0_out_ia_rdata_part2 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip0_out_im_status : in std_logic_vector(11 downto 0) := (others =>
       'X') ;
      i_cddip0_out_im_read_done : in std_logic_vector(1 downto 0) := (others =>
       'X') ;
      i_cddip1_out_ia_capability : in std_logic_vector(19 downto 0) := (others
       => 'X') ;
      i_cddip1_out_ia_status : in std_logic_vector(16 downto 0) := (others =>
       'X') ;
      i_cddip1_out_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip1_out_ia_rdata_part1 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip1_out_ia_rdata_part2 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip1_out_im_status : in std_logic_vector(11 downto 0) := (others =>
       'X') ;
      i_cddip1_out_im_read_done : in std_logic_vector(1 downto 0) := (others =>
       'X') ;
      i_cddip2_out_ia_capability : in std_logic_vector(19 downto 0) := (others
       => 'X') ;
      i_cddip2_out_ia_status : in std_logic_vector(16 downto 0) := (others =>
       'X') ;
      i_cddip2_out_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip2_out_ia_rdata_part1 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip2_out_ia_rdata_part2 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip2_out_im_status : in std_logic_vector(11 downto 0) := (others =>
       'X') ;
      i_cddip2_out_im_read_done : in std_logic_vector(1 downto 0) := (others =>
       'X') ;
      i_cddip3_out_ia_capability : in std_logic_vector(19 downto 0) := (others
       => 'X') ;
      i_cddip3_out_ia_status : in std_logic_vector(16 downto 0) := (others =>
       'X') ;
      i_cddip3_out_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip3_out_ia_rdata_part1 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip3_out_ia_rdata_part2 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_cddip3_out_im_status : in std_logic_vector(11 downto 0) := (others =>
       'X') ;
      i_cddip3_out_im_read_done : in std_logic_vector(1 downto 0) := (others =>
       'X') ;
      i_ckv_ia_capability : in std_logic_vector(19 downto 0) := (others => 'X')
       ;
      i_ckv_ia_status : in std_logic_vector(22 downto 0) := (others => 'X') ;
      i_ckv_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others => 'X')
       ;
      i_ckv_ia_rdata_part1 : in std_logic_vector(31 downto 0) := (others => 'X')
       ;
      i_kim_ia_capability : in std_logic_vector(19 downto 0) := (others => 'X')
       ;
      i_kim_ia_status : in std_logic_vector(21 downto 0) := (others => 'X') ;
      i_kim_ia_rdata_part0 : in std_logic_vector(20 downto 0) := (others => 'X')
       ;
      i_kim_ia_rdata_part1 : in std_logic_vector(16 downto 0) := (others => 'X')
       ;
      i_kdf_drbg_ctrl : in std_logic_vector(1 downto 0) := (others => 'X') ;
      i_interrupt_status : in std_logic_vector(4 downto 0) := (others => 'X') ;
      i_engine_sticky_status : in std_logic_vector(7 downto 0) := (others => 'X'
      ) ;
      i_bimc_monitor : in std_logic_vector(6 downto 0) := (others => 'X') ;
      i_bimc_ecc_uncorrectable_error_cnt : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      i_bimc_ecc_correctable_error_cnt : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      i_bimc_parity_error_cnt : in std_logic_vector(31 downto 0) := (others =>
       'X') ;
      i_bimc_global_config : in std_logic_vector(31 downto 0) := (others => 'X')
       ;
      i_bimc_memid : in std_logic_vector(11 downto 0) := (others => 'X') ;
      i_bimc_eccpar_debug : in std_logic_vector(28 downto 0) := (others => 'X')
       ;
      i_bimc_cmd2 : in std_logic_vector(10 downto 0) := (others => 'X') ;
      i_bimc_rxcmd2 : in std_logic_vector(9 downto 0) := (others => 'X') ;
      i_bimc_rxcmd1 : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_bimc_rxcmd0 : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_bimc_rxrsp2 : in std_logic_vector(9 downto 0) := (others => 'X') ;
      i_bimc_rxrsp1 : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_bimc_rxrsp0 : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_bimc_pollrsp2 : in std_logic_vector(9 downto 0) := (others => 'X') ;
      i_bimc_pollrsp1 : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_bimc_pollrsp0 : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_bimc_dbgcmd2 : in std_logic_vector(9 downto 0) := (others => 'X') ;
      i_bimc_dbgcmd1 : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_bimc_dbgcmd0 : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_im_available : in std_logic_vector(15 downto 0) := (others => 'X') ;
      i_im_consumed : in std_logic_vector(15 downto 0) := (others => 'X') ;
      i_tready_override : in std_logic_vector(8 downto 0) := (others => 'X') ;
      i_regs_sa_ctrl : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_sa_snapshot_ia_capability : in std_logic_vector(19 downto 0) := (others
       => 'X') ;
      i_sa_snapshot_ia_status : in std_logic_vector(12 downto 0) := (others =>
       'X') ;
      i_sa_snapshot_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_sa_snapshot_ia_rdata_part1 : in std_logic_vector(31 downto 0) := (others
       => 'X') ;
      i_sa_count_ia_capability : in std_logic_vector(19 downto 0) := (others =>
       'X') ;
      i_sa_count_ia_status : in std_logic_vector(12 downto 0) := (others => 'X')
       ;
      i_sa_count_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others =>
       'X') ;
      i_sa_count_ia_rdata_part1 : in std_logic_vector(31 downto 0) := (others =>
       'X') ;
      i_idle_components : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_sa_global_ctrl : in std_logic_vector(31 downto 0) := (others => 'X') ;
      i_sa_ctrl_ia_capability : in std_logic_vector(19 downto 0) := (others =>
       'X') ;
      i_sa_ctrl_ia_status : in std_logic_vector(12 downto 0) := (others => 'X')
       ;
      i_sa_ctrl_ia_rdata_part0 : in std_logic_vector(31 downto 0) := (others =>
       'X') ;
      o_reg_written : out std_logic ;
      o_reg_read : out std_logic ;
      o_reg_wr_data : out std_logic_vector(31 downto 0) ;
    o_reg_addr : out std_logic_vector(10 downto 0) ) ;
  end component ;

  component nx_rbus_ring
    generic (
      IO_ASYNC : integer := 0 ;
      N_RBUS_ADDR_BITS : integer := 16 ;
      N_LOCL_ADDR_BITS : integer := 11 ;
      N_RBUS_DATA_BITS : integer := 32
    ) ;
    port (
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      cfg_start_addr : in std_logic_vector(15 downto 0) := (others => 'X') ;
      cfg_end_addr : in std_logic_vector(15 downto 0) := (others => 'X') ;
      rbus_addr_i : in std_logic_vector(15 downto 0) := (others => 'X') ;
      rbus_wr_strb_i : in std_logic := 'X' ;
      rbus_wr_data_i : in std_logic_vector(31 downto 0) := (others => 'X') ;
      rbus_rd_strb_i : in std_logic := 'X' ;
      rbus_addr_o : out std_logic_vector(15 downto 0) ;
      rbus_wr_strb_o : out std_logic ;
      rbus_wr_data_o : out std_logic_vector(31 downto 0) ;
      rbus_rd_strb_o : out std_logic ;
      locl_addr_o : out std_logic_vector(10 downto 0) ;
      locl_wr_strb_o : out std_logic ;
      locl_wr_data_o : out std_logic_vector(31 downto 0) ;
      locl_rd_strb_o : out std_logic ;
      rbus_rd_data_i : in std_logic_vector(31 downto 0) := (others => 'X') ;
      rbus_ack_i : in std_logic := 'X' ;
      rbus_err_ack_i : in std_logic := 'X' ;
      locl_rd_data_i : in std_logic_vector(31 downto 0) := (others => 'X') ;
      locl_ack_i : in std_logic := 'X' ;
      locl_err_ack_i : in std_logic := 'X' ;
      rbus_rd_data_o : out std_logic_vector(31 downto 0) ;
      rbus_ack_o : out std_logic ;
    rbus_err_ack_o : out std_logic ) ;
  end component ;

  component nx_interface_monitor_pipe
    generic (
      subtype axi4s_dp_rdy_t is std_logic_vector(0 downto 0) ;
      subtype axi4s_dp_bus_t is std_logic_vector(82 downto 0)
    ) ;
    port (
      ob_in_mod : out axi4s_dp_rdy_t ;
      ob_out : out axi4s_dp_bus_t ;
      im_vld : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      ob_out_pre : in axi4s_dp_bus_t := (others => '0') ;
      ob_in : in axi4s_dp_rdy_t := (others => '0') ;
    im_rdy : in std_logic := 'X' ) ;
  end component ;

  component nx_interface_monitor_xcm104
    generic (
      IN_FLIGHT : integer := 5 ;
      IN_FLIGHT_USE : integer := 0 ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00000100000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00000010000") ;
      IMRD_ADDRESS : std_logic_vector := std_logic_vector'("00000111000") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 96 ;
      N_ENTRIES : integer := 512 ;
      N_INIT_INC_BITS : integer := 0 ;
      SPECIALIZE : integer := 1 ;
      LATCH : integer := 0 ;
      RAM_MASK : std_logic_vector(95 downto 0) := std_logic_vector'
      ("111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      ) ;
      RESET_DATA : std_logic_vector(95 downto 0) := std_logic_vector'
      ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      ) ;
      subtype im_available_t is std_logic_vector(1 downto 0) ;
      subtype im_status_t is std_logic_vector(11 downto 0) ;
      subtype im_data_t is std_logic_vector(63 downto 0) ;
      subtype im_desc_t is std_logic_vector(31 downto 0) ;
      subtype im_din_t is std_logic_vector(95 downto 0) ;
      subtype im_consumed_t is std_logic_vector(1 downto 0) ;
      subtype im_config_t is std_logic_vector(11 downto 0)
    ) ;
    port (
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(8 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      rd_dat : out std_logic_vector(95 downto 0) ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      im_rdy : out std_logic ;
      im_available : out im_available_t ;
      im_status : out im_status_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(8 downto 0) := (others => 'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(95 downto 0) := (others => 'X') ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      im_din : in im_din_t := (others => '0') ;
      im_vld : in std_logic := 'X' ;
      im_consumed : in im_consumed_t := (others => '0') ;
    im_config : in im_config_t := (others => '0') ) ;
  end component ;

  component nx_interface_monitor_xcm103
    generic (
      IN_FLIGHT : integer := 5 ;
      IN_FLIGHT_USE : integer := 0 ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00001010000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00001000000") ;
      IMRD_ADDRESS : std_logic_vector := std_logic_vector'("00001101000") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 96 ;
      N_ENTRIES : integer := 512 ;
      N_INIT_INC_BITS : integer := 0 ;
      SPECIALIZE : integer := 1 ;
      LATCH : integer := 0 ;
      RAM_MASK : std_logic_vector(95 downto 0) := std_logic_vector'
      ("111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      ) ;
      RESET_DATA : std_logic_vector(95 downto 0) := std_logic_vector'
      ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      ) ;
      subtype im_available_t is std_logic_vector(1 downto 0) ;
      subtype im_status_t is std_logic_vector(11 downto 0) ;
      subtype im_data_t is std_logic_vector(63 downto 0) ;
      subtype im_desc_t is std_logic_vector(31 downto 0) ;
      subtype im_din_t is std_logic_vector(95 downto 0) ;
      subtype im_consumed_t is std_logic_vector(1 downto 0) ;
      subtype im_config_t is std_logic_vector(11 downto 0)
    ) ;
    port (
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(8 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      rd_dat : out std_logic_vector(95 downto 0) ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      im_rdy : out std_logic ;
      im_available : out im_available_t ;
      im_status : out im_status_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(8 downto 0) := (others => 'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(95 downto 0) := (others => 'X') ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      im_din : in im_din_t := (others => '0') ;
      im_vld : in std_logic := 'X' ;
      im_consumed : in im_consumed_t := (others => '0') ;
    im_config : in im_config_t := (others => '0') ) ;
  end component ;

  component nx_interface_monitor_xcm102
    generic (
      IN_FLIGHT : integer := 5 ;
      IN_FLIGHT_USE : integer := 0 ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00010000000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00001110000") ;
      IMRD_ADDRESS : std_logic_vector := std_logic_vector'("00010011000") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 96 ;
      N_ENTRIES : integer := 512 ;
      N_INIT_INC_BITS : integer := 0 ;
      SPECIALIZE : integer := 1 ;
      LATCH : integer := 0 ;
      RAM_MASK : std_logic_vector(95 downto 0) := std_logic_vector'
      ("111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      ) ;
      RESET_DATA : std_logic_vector(95 downto 0) := std_logic_vector'
      ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      ) ;
      subtype im_available_t is std_logic_vector(1 downto 0) ;
      subtype im_status_t is std_logic_vector(11 downto 0) ;
      subtype im_data_t is std_logic_vector(63 downto 0) ;
      subtype im_desc_t is std_logic_vector(31 downto 0) ;
      subtype im_din_t is std_logic_vector(95 downto 0) ;
      subtype im_consumed_t is std_logic_vector(1 downto 0) ;
      subtype im_config_t is std_logic_vector(11 downto 0)
    ) ;
    port (
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(8 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      rd_dat : out std_logic_vector(95 downto 0) ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      im_rdy : out std_logic ;
      im_available : out im_available_t ;
      im_status : out im_status_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(8 downto 0) := (others => 'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(95 downto 0) := (others => 'X') ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      im_din : in im_din_t := (others => '0') ;
      im_vld : in std_logic := 'X' ;
      im_consumed : in im_consumed_t := (others => '0') ;
    im_config : in im_config_t := (others => '0') ) ;
  end component ;

  component nx_interface_monitor_xcm101
    generic (
      IN_FLIGHT : integer := 5 ;
      IN_FLIGHT_USE : integer := 0 ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00010110000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00010100000") ;
      IMRD_ADDRESS : std_logic_vector := std_logic_vector'("00011001000") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 96 ;
      N_ENTRIES : integer := 512 ;
      N_INIT_INC_BITS : integer := 0 ;
      SPECIALIZE : integer := 1 ;
      LATCH : integer := 0 ;
      RAM_MASK : std_logic_vector(95 downto 0) := std_logic_vector'
      ("111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      ) ;
      RESET_DATA : std_logic_vector(95 downto 0) := std_logic_vector'
      ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      ) ;
      subtype im_available_t is std_logic_vector(1 downto 0) ;
      subtype im_status_t is std_logic_vector(11 downto 0) ;
      subtype im_data_t is std_logic_vector(63 downto 0) ;
      subtype im_desc_t is std_logic_vector(31 downto 0) ;
      subtype im_din_t is std_logic_vector(95 downto 0) ;
      subtype im_consumed_t is std_logic_vector(1 downto 0) ;
      subtype im_config_t is std_logic_vector(11 downto 0)
    ) ;
    port (
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(8 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      rd_dat : out std_logic_vector(95 downto 0) ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      im_rdy : out std_logic ;
      im_available : out im_available_t ;
      im_status : out im_status_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(8 downto 0) := (others => 'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(95 downto 0) := (others => 'X') ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      im_din : in im_din_t := (others => '0') ;
      im_vld : in std_logic := 'X' ;
      im_consumed : in im_consumed_t := (others => '0') ;
    im_config : in im_config_t := (others => '0') ) ;
  end component ;

  component nx_interface_monitor_xcm100
    generic (
      IN_FLIGHT : integer := 5 ;
      IN_FLIGHT_USE : integer := 0 ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00011100000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00011010000") ;
      IMRD_ADDRESS : std_logic_vector := std_logic_vector'("00011111000") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 96 ;
      N_ENTRIES : integer := 512 ;
      N_INIT_INC_BITS : integer := 0 ;
      SPECIALIZE : integer := 1 ;
      LATCH : integer := 0 ;
      RAM_MASK : std_logic_vector(95 downto 0) := std_logic_vector'
      ("111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      ) ;
      RESET_DATA : std_logic_vector(95 downto 0) := std_logic_vector'
      ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      ) ;
      subtype im_available_t is std_logic_vector(1 downto 0) ;
      subtype im_status_t is std_logic_vector(11 downto 0) ;
      subtype im_data_t is std_logic_vector(63 downto 0) ;
      subtype im_desc_t is std_logic_vector(31 downto 0) ;
      subtype im_din_t is std_logic_vector(95 downto 0) ;
      subtype im_consumed_t is std_logic_vector(1 downto 0) ;
      subtype im_config_t is std_logic_vector(11 downto 0)
    ) ;
    port (
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(8 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      rd_dat : out std_logic_vector(95 downto 0) ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      im_rdy : out std_logic ;
      im_available : out im_available_t ;
      im_status : out im_status_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(8 downto 0) := (others => 'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(95 downto 0) := (others => 'X') ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      im_din : in im_din_t := (others => '0') ;
      im_vld : in std_logic := 'X' ;
      im_consumed : in im_consumed_t := (others => '0') ;
    im_config : in im_config_t := (others => '0') ) ;
  end component ;

  component nx_interface_monitor_xcm99
    generic (
      IN_FLIGHT : integer := 5 ;
      IN_FLIGHT_USE : integer := 0 ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00100010000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00100000000") ;
      IMRD_ADDRESS : std_logic_vector := std_logic_vector'("00100101000") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 96 ;
      N_ENTRIES : integer := 512 ;
      N_INIT_INC_BITS : integer := 0 ;
      SPECIALIZE : integer := 1 ;
      LATCH : integer := 0 ;
      RAM_MASK : std_logic_vector(95 downto 0) := std_logic_vector'
      ("111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      ) ;
      RESET_DATA : std_logic_vector(95 downto 0) := std_logic_vector'
      ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      ) ;
      subtype im_available_t is std_logic_vector(1 downto 0) ;
      subtype im_status_t is std_logic_vector(11 downto 0) ;
      subtype im_data_t is std_logic_vector(63 downto 0) ;
      subtype im_desc_t is std_logic_vector(31 downto 0) ;
      subtype im_din_t is std_logic_vector(95 downto 0) ;
      subtype im_consumed_t is std_logic_vector(1 downto 0) ;
      subtype im_config_t is std_logic_vector(11 downto 0)
    ) ;
    port (
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(8 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      rd_dat : out std_logic_vector(95 downto 0) ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      im_rdy : out std_logic ;
      im_available : out im_available_t ;
      im_status : out im_status_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(8 downto 0) := (others => 'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(95 downto 0) := (others => 'X') ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      im_din : in im_din_t := (others => '0') ;
      im_vld : in std_logic := 'X' ;
      im_consumed : in im_consumed_t := (others => '0') ;
    im_config : in im_config_t := (others => '0') ) ;
  end component ;

  component nx_interface_monitor_xcm98
    generic (
      IN_FLIGHT : integer := 5 ;
      IN_FLIGHT_USE : integer := 0 ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00101000000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00100110000") ;
      IMRD_ADDRESS : std_logic_vector := std_logic_vector'("00101011000") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 96 ;
      N_ENTRIES : integer := 512 ;
      N_INIT_INC_BITS : integer := 0 ;
      SPECIALIZE : integer := 1 ;
      LATCH : integer := 0 ;
      RAM_MASK : std_logic_vector(95 downto 0) := std_logic_vector'
      ("111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      ) ;
      RESET_DATA : std_logic_vector(95 downto 0) := std_logic_vector'
      ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      ) ;
      subtype im_available_t is std_logic_vector(1 downto 0) ;
      subtype im_status_t is std_logic_vector(11 downto 0) ;
      subtype im_data_t is std_logic_vector(63 downto 0) ;
      subtype im_desc_t is std_logic_vector(31 downto 0) ;
      subtype im_din_t is std_logic_vector(95 downto 0) ;
      subtype im_consumed_t is std_logic_vector(1 downto 0) ;
      subtype im_config_t is std_logic_vector(11 downto 0)
    ) ;
    port (
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(8 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      rd_dat : out std_logic_vector(95 downto 0) ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      im_rdy : out std_logic ;
      im_available : out im_available_t ;
      im_status : out im_status_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(8 downto 0) := (others => 'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(95 downto 0) := (others => 'X') ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      im_din : in im_din_t := (others => '0') ;
      im_vld : in std_logic := 'X' ;
      im_consumed : in im_consumed_t := (others => '0') ;
    im_config : in im_config_t := (others => '0') ) ;
  end component ;

  component nx_interface_monitor_xcm97
    generic (
      IN_FLIGHT : integer := 5 ;
      IN_FLIGHT_USE : integer := 0 ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00101110000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00101100000") ;
      IMRD_ADDRESS : std_logic_vector := std_logic_vector'("00110001000") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 96 ;
      N_ENTRIES : integer := 512 ;
      N_INIT_INC_BITS : integer := 0 ;
      SPECIALIZE : integer := 1 ;
      LATCH : integer := 0 ;
      RAM_MASK : std_logic_vector(95 downto 0) := std_logic_vector'
      ("111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
      ) ;
      RESET_DATA : std_logic_vector(95 downto 0) := std_logic_vector'
      ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      ) ;
      subtype im_available_t is std_logic_vector(1 downto 0) ;
      subtype im_status_t is std_logic_vector(11 downto 0) ;
      subtype im_data_t is std_logic_vector(63 downto 0) ;
      subtype im_desc_t is std_logic_vector(31 downto 0) ;
      subtype im_din_t is std_logic_vector(95 downto 0) ;
      subtype im_consumed_t is std_logic_vector(1 downto 0) ;
      subtype im_config_t is std_logic_vector(11 downto 0)
    ) ;
    port (
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(8 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      rd_dat : out std_logic_vector(95 downto 0) ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      im_rdy : out std_logic ;
      im_available : out im_available_t ;
      im_status : out im_status_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(8 downto 0) := (others => 'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(95 downto 0) := (others => 'X') ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      im_din : in im_din_t := (others => '0') ;
      im_vld : in std_logic := 'X' ;
      im_consumed : in im_consumed_t := (others => '0') ;
    im_config : in im_config_t := (others => '0') ) ;
  end component ;

  component cr_kme_regfile_glue
    generic (
      subtype axi4s_dp_bus_t is std_logic_vector(82 downto 0)
    ) ;
    port (
      ckv_cmnd_op : out std_logic_vector(3 downto 0) ;
      ckv_cmnd_addr : out std_logic_vector(14 downto 0) ;
      ckv_wr_dat : out std_logic_vector(63 downto 0) ;
      ckv_ia_capability : out work.cr_kme_regfilePKG.ckv_ia_capability_t ;
      ckv_ia_rdata_part0 : out std_logic_vector(31 downto 0) ;
      ckv_ia_rdata_part1 : out std_logic_vector(31 downto 0) ;
      ckv_ia_status : out work.cr_kme_regfilePKG.ckv_ia_status_t ;
      kim_cmnd_op : out std_logic_vector(3 downto 0) ;
      kim_cmnd_addr : out std_logic_vector(13 downto 0) ;
      kim_wr_dat : out std_logic_vector(37 downto 0) ;
      kim_ia_capability : out work.cr_kme_regfilePKG.kim_ia_capability_t ;
      kim_ia_rdata_part0 : out std_logic_vector(20 downto 0) ;
      kim_ia_rdata_part1 : out std_logic_vector(16 downto 0) ;
      kim_ia_status : out work.cr_kme_regfilePKG.kim_ia_status_t ;
      engine_sticky_status : out std_logic_vector(7 downto 0) ;
      disable_ckv_kim_ism_reads : out std_logic ;
      send_kme_ib_beat : out std_logic ;
      debug_kme_ib_tvalid : out std_logic ;
      debug_kme_ib_tlast : out std_logic ;
      debug_kme_ib_tid : out std_logic_vector(0 downto 0) ;
      debug_kme_ib_tstrb : out std_logic_vector(7 downto 0) ;
      debug_kme_ib_tuser : out std_logic_vector(7 downto 0) ;
      debug_kme_ib_tdata : out std_logic_vector(63 downto 0) ;
      kme_cceip0_ob_out : out axi4s_dp_bus_t ;
      kme_cceip1_ob_out : out axi4s_dp_bus_t ;
      kme_cceip2_ob_out : out axi4s_dp_bus_t ;
      kme_cceip3_ob_out : out axi4s_dp_bus_t ;
      kme_cddip0_ob_out : out axi4s_dp_bus_t ;
      kme_cddip1_ob_out : out axi4s_dp_bus_t ;
      kme_cddip2_ob_out : out axi4s_dp_bus_t ;
      kme_cddip3_ob_out : out axi4s_dp_bus_t ;
      cceip_encrypt_bimc_isync : out std_logic ;
      cceip_encrypt_bimc_idat : out std_logic ;
      cceip_validate_bimc_isync : out std_logic ;
      cceip_validate_bimc_idat : out std_logic ;
      cddip_decrypt_bimc_isync : out std_logic ;
      cddip_decrypt_bimc_idat : out std_logic ;
      axi_bimc_isync : out std_logic ;
      axi_bimc_idat : out std_logic ;
      axi_term_bimc_isync : out std_logic ;
      axi_term_bimc_idat : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      ckv_stat_code : in std_logic_vector(2 downto 0) := (others => 'X') ;
      ckv_stat_datawords : in std_logic_vector(4 downto 0) := (others => 'X') ;
      ckv_stat_addr : in std_logic_vector(14 downto 0) := (others => 'X') ;
      ckv_capability_type : in std_logic_vector(3 downto 0) := (others => 'X') ;
      ckv_capability_lst : in std_logic_vector(15 downto 0) := (others => 'X') ;
      ckv_rd_dat : in std_logic_vector(63 downto 0) := (others => 'X') ;
      o_ckv_ia_config : in work.cr_kme_regfilePKG.ckv_ia_config_t := (others =>
       '0') ;
      o_ckv_ia_wdata_part0 : in std_logic_vector(31 downto 0) := (others => 'X')
       ;
      o_ckv_ia_wdata_part1 : in std_logic_vector(31 downto 0) := (others => 'X')
       ;
      kim_stat_code : in std_logic_vector(2 downto 0) := (others => 'X') ;
      kim_stat_datawords : in std_logic_vector(4 downto 0) := (others => 'X') ;
      kim_stat_addr : in std_logic_vector(13 downto 0) := (others => 'X') ;
      kim_capability_type : in std_logic_vector(3 downto 0) := (others => 'X') ;
      kim_capability_lst : in std_logic_vector(15 downto 0) := (others => 'X') ;
      kim_rd_dat : in std_logic_vector(37 downto 0) := (others => 'X') ;
      o_kim_ia_config : in work.cr_kme_regfilePKG.kim_ia_config_t := (others =>
       '0') ;
      o_kim_ia_wdata_part0 : in std_logic_vector(20 downto 0) := (others => 'X')
       ;
      o_kim_ia_wdata_part1 : in std_logic_vector(16 downto 0) := (others => 'X')
       ;
      set_rsm_is_backpressuring : in std_logic_vector(7 downto 0) := (others =>
       'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_data : in std_logic_vector(31 downto 0) := (others => 'X') ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      o_engine_sticky_status : in std_logic_vector(7 downto 0) := (others => 'X'
      ) ;
      o_disable_ckv_kim_ism_reads : in std_logic := 'X' ;
      o_send_kme_ib_beat : in std_logic := 'X' ;
      cceip0_out_ia_wdata : in work.cr_kme_regfilePKG.cceip0_out_t := (others =>
       '0') ;
      debug_kme_ib_tready : in std_logic := 'X' ;
      tready_override : in work.cr_kme_regfilePKG.tready_override_t := (others
       => '0') ;
      kme_cceip0_ob_out_post : in axi4s_dp_bus_t := (others => '0') ;
      kme_cceip1_ob_out_post : in axi4s_dp_bus_t := (others => '0') ;
      kme_cceip2_ob_out_post : in axi4s_dp_bus_t := (others => '0') ;
      kme_cceip3_ob_out_post : in axi4s_dp_bus_t := (others => '0') ;
      kme_cddip0_ob_out_post : in axi4s_dp_bus_t := (others => '0') ;
      kme_cddip1_ob_out_post : in axi4s_dp_bus_t := (others => '0') ;
      kme_cddip2_ob_out_post : in axi4s_dp_bus_t := (others => '0') ;
      kme_cddip3_ob_out_post : in axi4s_dp_bus_t := (others => '0') ;
      cddip3_ism_osync : in std_logic := 'X' ;
      cddip3_ism_odat : in std_logic := 'X' ;
      cceip_encrypt_bimc_osync : in std_logic := 'X' ;
      cceip_encrypt_bimc_odat : in std_logic := 'X' ;
      cceip_validate_bimc_osync : in std_logic := 'X' ;
      cceip_validate_bimc_odat : in std_logic := 'X' ;
      cddip_decrypt_bimc_osync : in std_logic := 'X' ;
      cddip_decrypt_bimc_odat : in std_logic := 'X' ;
      axi_bimc_osync : in std_logic := 'X' ;
    axi_bimc_odat : in std_logic := 'X' ) ;
  end component ;

  component nx_ram_1rw_indirect_access_xcm123
    generic (
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00110011100") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00110010000") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 64 ;
      N_ENTRIES : integer := 32768 ;
      N_INIT_INC_BITS : integer := 0 ;
      SPECIALIZE : integer := 1 ;
      IN_FLOP : integer := 1 ;
      OUT_FLOP : integer := 0 ;
      RD_LATENCY : integer := 1 ;
      RESET_DATA : std_logic_vector(63 downto 0) := std_logic_vector'
      ("0000000000000000000000000000000000000000000000000000000000000000")
    ) ;
    port (
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(14 downto 0) := (others => 'X') ;
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(14 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(63 downto 0) := (others => 'X') ;
      rd_dat : out std_logic_vector(63 downto 0) ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      hw_add : in std_logic_vector(14 downto 0) := (others => 'X') ;
      hw_we : in std_logic := 'X' ;
      hw_bwe : in std_logic_vector(63 downto 0) := (others => 'X') ;
      hw_cs : in std_logic := 'X' ;
      hw_din : in std_logic_vector(63 downto 0) := (others => 'X') ;
      hw_dout : out std_logic_vector(63 downto 0) ;
    hw_yield : out std_logic ) ;
  end component ;

  component nx_ram_1rw_indirect_access_xcm122
    generic (
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00110111000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00110101100") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 38 ;
      N_ENTRIES : integer := 16384 ;
      N_INIT_INC_BITS : integer := 0 ;
      SPECIALIZE : integer := 1 ;
      IN_FLOP : integer := 1 ;
      OUT_FLOP : integer := 0 ;
      RD_LATENCY : integer := 1 ;
      RESET_DATA : std_logic_vector(37 downto 0) := std_logic_vector'
      ("00000000000000000000000000000000000000")
    ) ;
    port (
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(13 downto 0) := (others => 'X') ;
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(13 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(37 downto 0) := (others => 'X') ;
      rd_dat : out std_logic_vector(37 downto 0) ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      hw_add : in std_logic_vector(13 downto 0) := (others => 'X') ;
      hw_we : in std_logic := 'X' ;
      hw_bwe : in std_logic_vector(37 downto 0) := (others => 'X') ;
      hw_cs : in std_logic := 'X' ;
      hw_din : in std_logic_vector(37 downto 0) := (others => 'X') ;
      hw_dout : out std_logic_vector(37 downto 0) ;
    hw_yield : out std_logic ) ;
  end component ;

  component cr_kme_drbg_reggen
    port (
      set_drbg_expired_int : out std_logic ;
      kdf_drbg_ctrl : out std_logic_vector(1 downto 0) ;
      seed0_valid : out std_logic ;
      seed0_internal_state_key : out std_logic_vector(255 downto 0) ;
      seed0_internal_state_value : out std_logic_vector(127 downto 0) ;
      seed0_reseed_interval : out std_logic_vector(47 downto 0) ;
      seed1_valid : out std_logic ;
      seed1_internal_state_key : out std_logic_vector(255 downto 0) ;
      seed1_internal_state_value : out std_logic_vector(127 downto 0) ;
      seed1_reseed_interval : out std_logic_vector(47 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      wr_stb : in std_logic := 'X' ;
      wr_data : in std_logic_vector(31 downto 0) := (others => 'X') ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      o_kdf_drbg_ctrl : in std_logic_vector(1 downto 0) := (others => 'X') ;
      o_kdf_drbg_seed_0_reseed_interval_0 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_reseed_interval_1 : in std_logic_vector(15 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_state_key_127_96 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_state_key_159_128 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_state_key_191_160 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_state_key_223_192 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_state_key_255_224 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_state_key_31_0 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_state_key_63_32 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_state_key_95_64 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_state_value_127_96 : in std_logic_vector(31 downto 0) :=
       (others => 'X') ;
      o_kdf_drbg_seed_0_state_value_31_0 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_state_value_63_32 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_0_state_value_95_64 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_reseed_interval_0 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_reseed_interval_1 : in std_logic_vector(15 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_state_key_127_96 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_state_key_159_128 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_state_key_191_160 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_state_key_223_192 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_state_key_255_224 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_state_key_31_0 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_state_key_63_32 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_state_key_95_64 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_state_value_127_96 : in std_logic_vector(31 downto 0) :=
       (others => 'X') ;
      o_kdf_drbg_seed_1_state_value_31_0 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_state_value_63_32 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_kdf_drbg_seed_1_state_value_95_64 : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      seed0_invalidate : in std_logic := 'X' ;
    seed1_invalidate : in std_logic := 'X' ) ;
  end component ;

  component bimc_master
    generic (
      MSB : integer := 71 ;
      BIMC_FLENGTH : integer := 72 ;
      NOP : std_logic_vector := std_logic_vector'("00000000") ;
      RD_REG : std_logic_vector := std_logic_vector'("00000001") ;
      WR_ID : std_logic_vector := std_logic_vector'("00000010") ;
      POLL_ERR : std_logic_vector := std_logic_vector'("00000011") ;
      WR_ECTRL : std_logic_vector := std_logic_vector'("00001010") ;
      WR_ECCP : std_logic_vector := std_logic_vector'("00001011") ;
      WR_ECCCNT : std_logic_vector := std_logic_vector'("00001100") ;
      WR_ECCIN : std_logic_vector := std_logic_vector'("00010000") ;
      WR_ECCOUT : std_logic_vector := std_logic_vector'("00010001") ;
      WR_TM : std_logic_vector := std_logic_vector'("00011110") ;
      WR_LVM : std_logic_vector := std_logic_vector'("00011111") ;
      WR_MLVM : std_logic_vector := std_logic_vector'("00100000") ;
      WR_MRDTEN : std_logic_vector := std_logic_vector'("00100001") ;
      WR_RDT : std_logic_vector := std_logic_vector'("00100010") ;
      WR_WBT : std_logic_vector := std_logic_vector'("00100011") ;
      WR_WMS : std_logic_vector := std_logic_vector'("00100100") ;
      MEM_INIT : std_logic_vector := std_logic_vector'("11111111") ;
      RESET : std_logic_vector := std_logic_vector'("0000") ;
      AUTOID : std_logic_vector := std_logic_vector'("1011") ;
      CPU : std_logic_vector := std_logic_vector'("0001") ;
      IDLE : std_logic_vector := std_logic_vector'("0010") ;
      AUTOPOLL : std_logic_vector := std_logic_vector'("0111") ;
      MEMWRINIT : std_logic_vector := std_logic_vector'("1000") ;
      PICK_NXT : std_logic_vector := std_logic_vector'("0011") ;
      ECCPAR_DEBUG : std_logic_vector := std_logic_vector'("0101") ;
      COMMAND : std_logic_vector := std_logic_vector'("0001") ;
      CMD_DONE : std_logic_vector := std_logic_vector'("0000") ;
      RESPONSE_CMD : std_logic_vector := std_logic_vector'("0011") ;
      RESPONSE_IDLE : std_logic_vector := std_logic_vector'("0100") ;
      RESPONSE_MEM : std_logic_vector := std_logic_vector'("0101") ;
      RSP_DONE : std_logic_vector := std_logic_vector'("0110") ;
      POLL_ERR_CMD : std_logic_vector := std_logic_vector'("0111") ;
      POLL_ERR_IDLE : std_logic_vector := std_logic_vector'("1000") ;
      POLL_ERR_MEM : std_logic_vector := std_logic_vector'("1001") ;
      POLL_ERR_DONE : std_logic_vector := std_logic_vector'("1010")
    ) ;
    port (
      bimc_ecc_error : out std_logic ;
      bimc_interrupt : out std_logic ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      bimc_rst_n : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      o_bimc_monitor_mask : in std_logic_vector(6 downto 0) := (others => 'X') ;
      o_bimc_ecc_uncorrectable_error_cnt : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_bimc_ecc_correctable_error_cnt : in std_logic_vector(31 downto 0) := 
      (others => 'X') ;
      o_bimc_parity_error_cnt : in std_logic_vector(31 downto 0) := (others =>
       'X') ;
      o_bimc_global_config : in std_logic_vector(31 downto 0) := (others => 'X')
       ;
      o_bimc_eccpar_debug : in std_logic_vector(28 downto 0) := (others => 'X')
       ;
      o_bimc_cmd2 : in std_logic_vector(10 downto 0) := (others => 'X') ;
      o_bimc_cmd1 : in std_logic_vector(31 downto 0) := (others => 'X') ;
      o_bimc_cmd0 : in std_logic_vector(31 downto 0) := (others => 'X') ;
      o_bimc_rxcmd2 : in std_logic_vector(9 downto 0) := (others => 'X') ;
      o_bimc_rxrsp2 : in std_logic_vector(9 downto 0) := (others => 'X') ;
      o_bimc_pollrsp2 : in std_logic_vector(9 downto 0) := (others => 'X') ;
      o_bimc_dbgcmd2 : in std_logic_vector(9 downto 0) := (others => 'X') ;
      i_bimc_monitor : out std_logic_vector(6 downto 0) ;
      i_bimc_ecc_uncorrectable_error_cnt : out std_logic_vector(31 downto 0) ;
      i_bimc_ecc_correctable_error_cnt : out std_logic_vector(31 downto 0) ;
      i_bimc_parity_error_cnt : out std_logic_vector(31 downto 0) ;
      i_bimc_global_config : out std_logic_vector(31 downto 0) ;
      i_bimc_memid : out std_logic_vector(11 downto 0) ;
      i_bimc_eccpar_debug : out std_logic_vector(28 downto 0) ;
      i_bimc_cmd2 : out std_logic_vector(10 downto 0) ;
      i_bimc_rxcmd2 : out std_logic_vector(9 downto 0) ;
      i_bimc_rxcmd1 : out std_logic_vector(31 downto 0) ;
      i_bimc_rxcmd0 : out std_logic_vector(31 downto 0) ;
      i_bimc_rxrsp2 : out std_logic_vector(9 downto 0) ;
      i_bimc_rxrsp1 : out std_logic_vector(31 downto 0) ;
      i_bimc_rxrsp0 : out std_logic_vector(31 downto 0) ;
      i_bimc_pollrsp2 : out std_logic_vector(9 downto 0) ;
      i_bimc_pollrsp1 : out std_logic_vector(31 downto 0) ;
      i_bimc_pollrsp0 : out std_logic_vector(31 downto 0) ;
      i_bimc_dbgcmd2 : out std_logic_vector(9 downto 0) ;
      i_bimc_dbgcmd1 : out std_logic_vector(31 downto 0) ;
    i_bimc_dbgcmd0 : out std_logic_vector(31 downto 0) ) ;
  end component ;

  component cr_kme_int_handler
    port (
      kme_interrupt : out std_logic ;
      interrupt_status : out std_logic_vector(4 downto 0) ;
      suppress_key_tlvs : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      set_drbg_expired_int : in std_logic := 'X' ;
      set_txc_bp_int : in std_logic := 'X' ;
      set_gcm_tag_fail_int : in std_logic := 'X' ;
      set_key_tlv_miscmp_int : in std_logic := 'X' ;
      set_tlv_bip2_error_int : in std_logic := 'X' ;
      cceip0_ism_mbe : in std_logic := 'X' ;
      cceip1_ism_mbe : in std_logic := 'X' ;
      cceip2_ism_mbe : in std_logic := 'X' ;
      cceip3_ism_mbe : in std_logic := 'X' ;
      cddip0_ism_mbe : in std_logic := 'X' ;
      cddip1_ism_mbe : in std_logic := 'X' ;
      cddip2_ism_mbe : in std_logic := 'X' ;
      cddip3_ism_mbe : in std_logic := 'X' ;
      kim_mbe : in std_logic := 'X' ;
      ckv_mbe : in std_logic := 'X' ;
      cceip_encrypt_mbe : in std_logic := 'X' ;
      cceip_validate_mbe : in std_logic := 'X' ;
      cddip_decrypt_mbe : in std_logic := 'X' ;
      axi_mbe : in std_logic := 'X' ;
      bimc_interrupt : in std_logic := 'X' ;
      wr_stb : in std_logic := 'X' ;
      wr_data : in std_logic_vector(31 downto 0) := (others => 'X') ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
    o_interrupt_mask : in std_logic_vector(4 downto 0) := (others => 'X') ) ;
  end component ;

  component nx_roreg_indirect_access_xcm130
    generic (
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("10000001100") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("10000000000") ;
      ALIGNMENT : integer := 2 ;
      N_DATA_BITS : integer := 64 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_ENTRIES : integer := 32 ;
      type DUMMY0 is array(integer range <>) of std_logic_vector(63 downto 0)
    ) ;
    port (
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(4 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      rd_dat : out std_logic_vector(63 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(4 downto 0) := (others => 'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(63 downto 0) := (others => 'X') ;
    mem_a : in DUMMY0(0 to 31) := (others => (others => 'X')) ) ;
  end component ;

  component nx_roreg_indirect_access_xcm129
    generic (
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("10000101000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("10000011100") ;
      ALIGNMENT : integer := 2 ;
      N_DATA_BITS : integer := 64 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_ENTRIES : integer := 32 ;
      type DUMMY0 is array(integer range <>) of std_logic_vector(63 downto 0)
    ) ;
    port (
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(4 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      rd_dat : out std_logic_vector(63 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(4 downto 0) := (others => 'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(63 downto 0) := (others => 'X') ;
    mem_a : in DUMMY0(0 to 31) := (others => (others => 'X')) ) ;
  end component ;

  component nx_reg_indirect_access
    generic (
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("10001010100") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("10001001100") ;
      ALIGNMENT : integer := 2 ;
      N_DATA_BITS : integer := 32 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_ENTRIES : integer := 32 ;
      type DUMMY0 is array(integer range <>) of std_logic_vector(31 downto 0)
    ) ;
    port (
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(4 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      rd_dat : out std_logic_vector(31 downto 0) ;
      mem_a : out DUMMY0(0 to 31) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(4 downto 0) := (others => 'X') ;
      wr_stb : in std_logic := 'X' ;
      wr_dat : in std_logic_vector(31 downto 0) := (others => 'X') ;
    rst_dat : in DUMMY0(0 to 31) := (others => (others => 'X')) ) ;
  end component ;

  type $_rbus_in_t is
  record
    addr : std_logic_vector(19 downto 0) ;
    wr_strb : std_logic ;
    wr_data : std_logic_vector(31 downto 0) ;
    rd_strb : std_logic ;
  end record ;
  subtype rbus_in_t is $_rbus_in_t std_logic_vector(53 downto 0) ;
  type $_rbus_out_t is
  record
    rd_data : std_logic_vector(31 downto 0) ;
    ack : std_logic ;
    err_ack : std_logic ;
  end record ;
  subtype rbus_out_t is $_rbus_out_t std_logic_vector(33 downto 0) ;
  type $_rbus_ring_t is
  record
    addr : std_logic_vector(19 downto 0) ;
    wr_strb : std_logic ;
    wr_data : std_logic_vector(31 downto 0) ;
    rd_strb : std_logic ;
    rd_data : std_logic_vector(31 downto 0) ;
    ack : std_logic ;
    err_ack : std_logic ;
  end record ;
  subtype rbus_ring_t is $_rbus_ring_t std_logic_vector(87 downto 0) ;
  type $_im_desc_t is
  record
    eob : std_logic ;
    bytes_vld : std_logic_vector(7 downto 0) ;
    im_meta : std_logic_vector(22 downto 0) ;
  end record ;
  subtype im_desc_t is $_im_desc_t std_logic_vector(31 downto 0) ;
  type $_im_data_t is
  record
    data : std_logic_vector(63 downto 0) ;
  end record ;
  subtype im_data_t is $_im_data_t std_logic_vector(63 downto 0) ;
  type $_im_din_t is
  record
    data : im_data_t ;
    desc : im_desc_t ;
  end record ;
  subtype im_din_t is $_im_din_t std_logic_vector(95 downto 0) ;
  type $_im_available_t is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype im_available_t is $_im_available_t std_logic_vector(1 downto 0) ;
  type $_im_consumed_t is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype im_consumed_t is $_im_consumed_t std_logic_vector(1 downto 0) ;
  type $_frame_latency_if_bus_t is
  record
    valid : std_logic ;
    seq_num : std_logic_vector(7 downto 0) ;
  end record ;
  subtype frame_latency_if_bus_t is $_frame_latency_if_bus_t std_logic_vector(8
   downto 0) ;
  type $_sched_update_if_bus_t is
  record
    valid : std_logic ;
    rqe_sched_handle : std_logic_vector(15 downto 0) ;
    last : std_logic ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    bytes_in : std_logic_vector(23 downto 0) ;
    bytes_out : std_logic_vector(23 downto 0) ;
    basis : std_logic_vector(23 downto 0) ;
  end record ;
  subtype sched_update_if_bus_t is $_sched_update_if_bus_t std_logic_vector(112
   downto 0) ;
  type $_tlvp_if_bus_t is
  record
    insert : std_logic ;
    ordern : std_logic_vector(12 downto 0) ;
    typen : tlv_types_e ;
    sot : std_logic ;
    eot : std_logic ;
    tlast : std_logic ;
    tid : std_logic_vector(0 downto 0) ;
    tstrb : std_logic_vector(7 downto 0) ;
    tuser : std_logic_vector(7 downto 0) ;
    tdata : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlvp_if_bus_t is $_tlvp_if_bus_t std_logic_vector(105 downto 0) ;
  type $_lz_symbol_bus_t is
  record
    framing : std_logic_vector(3 downto 0) ;
    data0 : std_logic_vector(7 downto 0) ;
    data1 : std_logic_vector(7 downto 0) ;
    data2 : std_logic_vector(7 downto 0) ;
    data3 : std_logic_vector(7 downto 0) ;
    backref : std_logic ;
    backref_type : std_logic ;
    backref_lane : std_logic_vector(1 downto 0) ;
    offset_msb : std_logic_vector(7 downto 0) ;
    length : std_logic_vector(15 downto 0) ;
  end record ;
  subtype lz_symbol_bus_t is $_lz_symbol_bus_t std_logic_vector(63 downto 0) ;
  type $_tlv_word_0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    resv0 : std_logic_vector(18 downto 0) ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    resv1 : std_logic_vector(3 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype tlv_word_0_t is $_tlv_word_0_t std_logic_vector(63 downto 0) ;
  type $_tlv_rqe_word_0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    no_data : std_logic ;
    aux_frmd_crc : std_logic ;
    frame_size : rqe_frame_size_e ;
    vf_valid : std_logic ;
    trace : rqe_trace_e ;
    unused : std_logic_vector(10 downto 0) ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    resv0 : std_logic_vector(3 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype tlv_rqe_word_0_t is $_tlv_rqe_word_0_t std_logic_vector(63 downto 0) ;
  type $_tlv_data_word_0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    last_of_command : std_logic ;
    resv0 : std_logic_vector(15 downto 0) ;
    coding : frmd_coding_e ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    resv1 : std_logic_vector(3 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype tlv_data_word_0_t is $_tlv_data_word_0_t std_logic_vector(63 downto 0)
   ;
  type $_tlv_rqe_word_1_t is
  record
    pf_number : std_logic_vector(3 downto 0) ;
    vf_number : std_logic_vector(11 downto 0) ;
    scheduler_handle : std_logic_vector(15 downto 0) ;
    src_data_len : std_logic_vector(31 downto 0) ;
  end record ;
  subtype tlv_rqe_word_1_t is $_tlv_rqe_word_1_t std_logic_vector(63 downto 0) ;
  type $_cmd_debug_t is
  record
    tlvp_corrupt : tlvp_corrupt_e ;
    cmd_mode : cmd_mode_e ;
    module_id : std_logic_vector(4 downto 0) ;
    cmd_type : cmd_type_e ;
    tlv_num : std_logic_vector(4 downto 0) ;
    byte_num : std_logic_vector(9 downto 0) ;
    byte_msk : std_logic_vector(7 downto 0) ;
  end record ;
  subtype cmd_debug_t is $_cmd_debug_t std_logic_vector(31 downto 0) ;
  type $_bp_debug_t is
  record
    rsvd : std_logic_vector(0 downto 0) ;
    on_count : std_logic_vector(10 downto 0) ;
    off_count : std_logic_vector(10 downto 0) ;
  end record ;
  subtype bp_debug_t is $_bp_debug_t std_logic_vector(22 downto 0) ;
  type $_tlv_cmd_word_1_t is
  record
    debug : cmd_debug_t ;
    trace : std_logic ;
    dst_guid_present : std_logic ;
    frmd_out_type : std_logic_vector(6 downto 0) ;
    md_op : cmd_md_op_e ;
    md_type : cmd_md_type_e ;
    frmd_in_type : std_logic_vector(6 downto 0) ;
    frmd_in_aux : std_logic_vector(5 downto 0) ;
    frmd_crc_in : cmd_frmd_crc_in_e ;
    src_guid_present : cmd_guid_present_e ;
    compound_cmd_frm_size : cmd_compound_cmd_frm_size_e ;
  end record ;
  subtype tlv_cmd_word_1_t is $_tlv_cmd_word_1_t std_logic_vector(63 downto 0) ;
  type $_tlv_cmd_word_2_t is
  record
    rsvd2 : std_logic ;
    key_type : aux_key_type_e ;
    rsvd1 : std_logic_vector(1 downto 0) ;
    cipher_pad : cmd_cipher_pad_e ;
    iv_op : cmd_iv_op_e ;
    aad_len : std_logic_vector(7 downto 0) ;
    cipher_op : cmd_cipher_op_e ;
    auth_op : cmd_auth_op_e ;
    raw_auth_op : cmd_auth_op_e ;
    rsvd0 : std_logic_vector(7 downto 0) ;
    chu_comp_thrsh : cmd_chu_comp_thrsh_e ;
    xp10_crc_mode : cmd_xp10_crc_mode_e ;
    xp10_user_prefix_size : std_logic_vector(5 downto 0) ;
    xp10_prefix_mode : cmd_xp10_prefix_mode_e ;
    lz77_max_symb_len : cmd_lz77_max_symb_len_e ;
    lz77_min_match_len : cmd_lz77_min_match_len_e ;
    lz77_dly_match_win : cmd_lz77_dly_match_win_e ;
    lz77_win_size : cmd_lz77_win_size_e ;
    comp_mode : cmd_comp_mode_e ;
  end record ;
  subtype tlv_cmd_word_2_t is $_tlv_cmd_word_2_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word1_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word1_t is $_tlv_key_word1_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word2_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word2_t is $_tlv_key_word2_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word3_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word3_t is $_tlv_key_word3_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word4_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word4_t is $_tlv_key_word4_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word5_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word5_t is $_tlv_key_word5_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word6_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word6_t is $_tlv_key_word6_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word7_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word7_t is $_tlv_key_word7_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word8_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word8_t is $_tlv_key_word8_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word9_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word9_t is $_tlv_key_word9_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word10_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word10_t is $_tlv_key_word10_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word11_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word11_t is $_tlv_key_word11_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word12_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word12_t is $_tlv_key_word12_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word13_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word13_t is $_tlv_key_word13_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word14_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word14_t is $_tlv_key_word14_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word15_t is
  record
    dak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word15_t is $_tlv_key_word15_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word16_t is
  record
    dak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word16_t is $_tlv_key_word16_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word17_t is
  record
    dak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word17_t is $_tlv_key_word17_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word18_t is
  record
    dak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word18_t is $_tlv_key_word18_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word19_t is
  record
    rsvd : std_logic_vector(55 downto 0) ;
    kme_errors : zipline_error_e ;
  end record ;
  subtype tlv_key_word19_t is $_tlv_key_word19_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word20_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    crc32 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype tlv_key_word20_t is $_tlv_key_word20_t std_logic_vector(63 downto 0) ;
  type $_tlv_phd_word1_t is
  record
    rsvd : std_logic_vector(63 downto 6) ;
    xp10_prefix_sel : std_logic_vector(5 downto 0) ;
  end record ;
  subtype tlv_phd_word1_t is $_tlv_phd_word1_t std_logic_vector(63 downto 0) ;
  type $_tlv_pfd_word0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    resv0 : std_logic_vector(11 downto 0) ;
    prefix_src : std_logic ;
    xp10_prefix_sel : std_logic_vector(5 downto 0) ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    resv1 : std_logic_vector(3 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype tlv_pfd_word0_t is $_tlv_pfd_word0_t std_logic_vector(63 downto 0) ;
  type $_tlv_pfd_word1_t is
  record
    rsvd : std_logic_vector(63 downto 6) ;
    xp10_prefix_sel : std_logic_vector(5 downto 0) ;
  end record ;
  subtype tlv_pfd_word1_t is $_tlv_pfd_word1_t std_logic_vector(63 downto 0) ;
  type $_tlv_guid_word1_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_guid_word1_t is $_tlv_guid_word1_t std_logic_vector(63 downto 0) ;
  type $_tlv_guid_word2_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_guid_word2_t is $_tlv_guid_word2_t std_logic_vector(63 downto 0) ;
  type $_tlv_guid_word3_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_guid_word3_t is $_tlv_guid_word3_t std_logic_vector(63 downto 0) ;
  type $_tlv_guid_word4_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_guid_word4_t is $_tlv_guid_word4_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    rsvd3 : std_logic_vector(1 downto 0) ;
    gen_frmd_out_type : std_logic_vector(7 downto 0) ;
    rsvd2 : std_logic_vector(1 downto 0) ;
    raw_data_mac_size : frmd_mac_size_e ;
    enc_cmp_data_mac_size : frmd_mac_size_e ;
    coding : frmd_coding_e ;
    rsvd1 : std_logic ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    rsvd0 : std_logic_vector(3 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype tlv_ftr_word0_t is $_tlv_ftr_word0_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word1_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word1_t is $_tlv_ftr_word1_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word2_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word2_t is $_tlv_ftr_word2_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word3_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word3_t is $_tlv_ftr_word3_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word4_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word4_t is $_tlv_ftr_word4_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word5_t is
  record
    raw_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word5_t is $_tlv_ftr_word5_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word6_t is
  record
    raw_data_cksum_protocol : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word6_t is $_tlv_ftr_word6_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word7_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word7_t is $_tlv_ftr_word7_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word8_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word8_t is $_tlv_ftr_word8_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word9_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word9_t is $_tlv_ftr_word9_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word10_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word10_t is $_tlv_ftr_word10_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word11_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word11_t is $_tlv_ftr_word11_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word12_t is
  record
    nvme_raw_cksum_crc16t : std_logic_vector(15 downto 0) ;
    bytes_in : std_logic_vector(23 downto 0) ;
    bytes_out : std_logic_vector(23 downto 0) ;
  end record ;
  subtype tlv_ftr_word12_t is $_tlv_ftr_word12_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word13_t is
  record
    rsvd1 : std_logic_vector(19 downto 0) ;
    compressed_length : std_logic_vector(23 downto 0) ;
    error_code : zipline_error_e ;
    rsvd0 : std_logic ;
    errored_frame_number : std_logic_vector(10 downto 0) ;
  end record ;
  subtype tlv_ftr_word13_t is $_tlv_ftr_word13_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_guid_word0_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_guid_word0_t is $_tlv_ftr_guid_word0_t std_logic_vector(63
   downto 0) ;
  type $_tlv_ftr_guid_word1_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_guid_word1_t is $_tlv_ftr_guid_word1_t std_logic_vector(63
   downto 0) ;
  type $_tlv_ftr_guid_word2_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_guid_word2_t is $_tlv_ftr_guid_word2_t std_logic_vector(63
   downto 0) ;
  type $_tlv_ftr_guid_word3_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_guid_word3_t is $_tlv_ftr_guid_word3_t std_logic_vector(63
   downto 0) ;
  type $_tlv_ftr_iv_word0_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    iv : std_logic_vector(31 downto 0) ;
  end record ;
  subtype tlv_ftr_iv_word0_t is $_tlv_ftr_iv_word0_t std_logic_vector(63 downto
   0) ;
  type $_tlv_ftr_iv_word1_t is
  record
    iv : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_iv_word1_t is $_tlv_ftr_iv_word1_t std_logic_vector(63 downto
   0) ;
  type $_tlv_stats_word1_t is
  record
    rsvd1 : std_logic_vector(7 downto 0) ;
    bytes_in : std_logic_vector(23 downto 0) ;
    rsvd0 : std_logic_vector(7 downto 0) ;
    bytes_out : std_logic_vector(23 downto 0) ;
  end record ;
  subtype tlv_stats_word1_t is $_tlv_stats_word1_t std_logic_vector(63 downto 0)
   ;
  type $_tlv_stats_word2_t is
  record
    rsvd1 : std_logic_vector(30 downto 0) ;
    frame_error : std_logic ;
    rsvd0 : std_logic_vector(7 downto 0) ;
    latency : std_logic_vector(23 downto 0) ;
  end record ;
  subtype tlv_stats_word2_t is $_tlv_stats_word2_t std_logic_vector(63 downto 0)
   ;
  type $_tlv_cqe_word1_t is
  record
    status_code : std_logic_vector(7 downto 0) ;
    do_not_resend : std_logic ;
    vf_valid : std_logic ;
    rsvd0 : std_logic_vector(1 downto 0) ;
    error_code : std_logic_vector(7 downto 0) ;
    errored_frame_number : std_logic_vector(11 downto 0) ;
    status_code_type : std_logic_vector(2 downto 0) ;
    stat_cts : std_logic_vector(12 downto 0) ;
    pf_number : std_logic_vector(3 downto 0) ;
    vf_number : std_logic_vector(11 downto 0) ;
  end record ;
  subtype tlv_cqe_word1_t is $_tlv_cqe_word1_t std_logic_vector(63 downto 0) ;
  type $_fmd_user_pi16_word1_t is
  record
    rsvd : std_logic_vector(47 downto 0) ;
    nvme_raw_cksum_crc16t : std_logic_vector(15 downto 0) ;
  end record ;
  subtype fmd_user_pi16_word1_t is $_fmd_user_pi16_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_pi64_word1_t is
  record
    raw_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_pi64_word1_t is $_fmd_user_pi64_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word1_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word1_t is $_fmd_user_vm_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word2_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word2_t is $_fmd_user_vm_word2_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word3_t is
  record
    raw_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word3_t is $_fmd_user_vm_word3_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word4_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word4_t is $_fmd_user_vm_word4_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word5_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word5_t is $_fmd_user_vm_word5_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word6_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word6_t is $_fmd_user_vm_word6_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word7_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word7_t is $_fmd_user_vm_word7_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word6_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    rsvd0 : std_logic_vector(5 downto 0) ;
    coding : frmd_coding_e ;
    compressed_length : std_logic_vector(23 downto 0) ;
  end record ;
  subtype fmd_int_app_word6_t is $_fmd_int_app_word6_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word1_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_app_word1_t is $_fmd_int_app_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word2_t is
  record
    enc_cmp_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_app_word2_t is $_fmd_int_app_word2_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word3_t is
  record
    enc_cmp_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_app_word3_t is $_fmd_int_app_word3_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word4_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_app_word4_t is $_fmd_int_app_word4_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word5_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    ivtweak : std_logic_vector(31 downto 0) ;
  end record ;
  subtype fmd_int_app_word5_t is $_fmd_int_app_word5_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_sip_word3_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    rsvd0 : std_logic_vector(5 downto 0) ;
    coding : frmd_coding_e ;
    compressed_length : std_logic_vector(23 downto 0) ;
  end record ;
  subtype fmd_int_sip_word3_t is $_fmd_int_sip_word3_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_sip_word1_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_sip_word1_t is $_fmd_int_sip_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_sip_word2_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_sip_word2_t is $_fmd_int_sip_word2_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word6_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    rsvd0 : std_logic_vector(5 downto 0) ;
    coding : frmd_coding_e ;
    compressed_length : std_logic_vector(23 downto 0) ;
  end record ;
  subtype fmd_int_lip_word6_t is $_fmd_int_lip_word6_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word1_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_lip_word1_t is $_fmd_int_lip_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word2_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_lip_word2_t is $_fmd_int_lip_word2_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word3_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_lip_word3_t is $_fmd_int_lip_word3_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word4_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_lip_word4_t is $_fmd_int_lip_word4_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word5_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_lip_word5_t is $_fmd_int_lip_word5_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_vm_word12_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    rsvd0 : std_logic_vector(5 downto 0) ;
    coding : frmd_coding_e ;
    compressed_length : std_logic_vector(23 downto 0) ;
  end record ;
  subtype fmd_int_vm_word12_t is $_fmd_int_vm_word12_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_vm_word1_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word1_t is $_fmd_int_vm_word1_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word2_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word2_t is $_fmd_int_vm_word2_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word3_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word3_t is $_fmd_int_vm_word3_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word4_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word4_t is $_fmd_int_vm_word4_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word5_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word5_t is $_fmd_int_vm_word5_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word6_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word6_t is $_fmd_int_vm_word6_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word7_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word7_t is $_fmd_int_vm_word7_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word8_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word8_t is $_fmd_int_vm_word8_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word9_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word9_t is $_fmd_int_vm_word9_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word10_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word10_t is $_fmd_int_vm_word10_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_vm_word11_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word11_t is $_fmd_int_vm_word11_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_vm_short_word9_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    rsvd0 : std_logic_vector(5 downto 0) ;
    coding : frmd_coding_e ;
    compressed_length : std_logic_vector(23 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word9_t is $_fmd_int_vm_short_word9_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word1_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word1_t is $_fmd_int_vm_short_word1_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word2_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word2_t is $_fmd_int_vm_short_word2_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word3_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word3_t is $_fmd_int_vm_short_word3_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word4_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word4_t is $_fmd_int_vm_short_word4_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word5_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word5_t is $_fmd_int_vm_short_word5_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word6_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word6_t is $_fmd_int_vm_short_word6_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word7_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word7_t is $_fmd_int_vm_short_word7_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word8_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word8_t is $_fmd_int_vm_short_word8_t
   std_logic_vector(63 downto 0) ;
  type $_s_sm_seq_id_intf is
  record
    predet_mem_mask : std_logic ;
    predet_mem_id : std_logic_vector(3 downto 0) ;
    comp_mode : cmd_comp_mode_e ;
    lz77_win_size : cmd_lz77_win_size_e ;
    lz77_min_match_len : cmd_lz77_min_match_len_e ;
    xp10_prefix_mode : cmd_xp10_prefix_mode_e ;
    xp10_user_prefix_size : std_logic_vector(5 downto 0) ;
    xp10_crc_mode : cmd_xp10_crc_mode_e ;
    chu_comp_thrsh : cmd_chu_comp_thrsh_e ;
    tid : std_logic_vector(0 downto 0) ;
    tuser : std_logic_vector(7 downto 0) ;
    raw_byte_count : std_logic_vector(23 downto 0) ;
    extra_bit_count : std_logic_vector(17 downto 0) ;
    blk_count : std_logic_vector(10 downto 0) ;
    blk_last : std_logic ;
    pdh_crc_err : std_logic ;
    raw_crc : std_logic_vector(63 downto 0) ;
  end record ;
  subtype s_sm_seq_id_intf is $_s_sm_seq_id_intf std_logic_vector(152 downto 0)
   ;
  type $_s_seq_id_type_intf is
  record
    comp_mode : cmd_comp_mode_e ;
    lz77_win_size : cmd_lz77_win_size_e ;
    xp10_prefix_mode : cmd_xp10_prefix_mode_e ;
  end record ;
  subtype s_seq_id_type_intf is $_s_seq_id_type_intf std_logic_vector(9 downto 0
  ) ;
  type $_counter_50_t is
  record
    count_part1 : std_logic_vector(17 downto 0) ;
    count_part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype counter_50_t is $_counter_50_t std_logic_vector(49 downto 0) ;
  type $_cg_stats_t is
  record
    cqe_out : std_logic ;
    cqe_sys_err : std_logic ;
    cqe_err_sel : std_logic ;
    cqe_eng_err : std_logic ;
  end record ;
  subtype cg_stats_t is $_cg_stats_t std_logic_vector(3 downto 0) ;
  type $_osf_stats_t is
  record
    rsvd : std_logic_vector(59 downto 0) ;
    ob_stall : std_logic ;
    ob_sys_bp : std_logic ;
    pdt_fifo_stall : std_logic ;
    dat_fifo_stall : std_logic ;
  end record ;
  subtype osf_stats_t is $_osf_stats_t std_logic_vector(63 downto 0) ;
  type $_isf_stats_t is
  record
    rsvd : std_logic_vector(54 downto 0) ;
    aux_cmd_match3 : std_logic ;
    aux_cmd_match2 : std_logic ;
    aux_cmd_match1 : std_logic ;
    aux_cmd_match0 : std_logic ;
    ob_sys_bp : std_logic ;
    ib_sys_stall : std_logic ;
    ib_stall : std_logic ;
    ib_frame : std_logic ;
    ib_cmd : std_logic ;
  end record ;
  subtype isf_stats_t is $_isf_stats_t std_logic_vector(63 downto 0) ;
  type $_huf_comp_stats_t is
  record
    huff_comp_rsvd : std_logic_vector(9 downto 0) ;
    lz77_stall_stb : std_logic ;
    encrypt_stall_stb : std_logic ;
    byte_7_stb : std_logic ;
    byte_6_stb : std_logic ;
    byte_5_stb : std_logic ;
    byte_4_stb : std_logic ;
    byte_3_stb : std_logic ;
    byte_2_stb : std_logic ;
    byte_1_stb : std_logic ;
    byte_0_stb : std_logic ;
    pass_thru_frm_stb : std_logic ;
    df_frm_stb : std_logic ;
    df_blk_long_ret_stb : std_logic ;
    df_blk_shrt_ret_stb : std_logic ;
    df_blk_long_sim_stb : std_logic ;
    df_blk_shrt_sim_stb : std_logic ;
    df_blk_raw_stb : std_logic ;
    df_blk_enc_stb : std_logic ;
    chu4_cmd_stb : std_logic ;
    chu4_frm_long_pre_stb : std_logic ;
    chu4_frm_shrt_pre_stb : std_logic ;
    chu4_frm_long_ret_stb : std_logic ;
    chu4_frm_shrt_ret_stb : std_logic ;
    chu4_frm_long_sim_stb : std_logic ;
    chu4_frm_shrt_sim_stb : std_logic ;
    chu4_frm_enc_stb : std_logic ;
    chu4_frm_raw_stb : std_logic ;
    chu8_cmd_stb : std_logic ;
    chu8_frm_long_pre_stb : std_logic ;
    chu8_frm_shrt_pre_stb : std_logic ;
    chu8_frm_long_ret_stb : std_logic ;
    chu8_frm_shrt_ret_stb : std_logic ;
    chu8_frm_long_sim_stb : std_logic ;
    chu8_frm_shrt_sim_stb : std_logic ;
    chu8_frm_enc_stb : std_logic ;
    chu8_frm_raw_stb : std_logic ;
    xp10_frm_stb : std_logic ;
    xp10_blk_long_pre_stb : std_logic ;
    xp10_blk_shrt_pre_stb : std_logic ;
    xp10_blk_long_ret_stb : std_logic ;
    xp10_blk_shrt_ret_stb : std_logic ;
    xp10_blk_long_sim_stb : std_logic ;
    xp10_blk_shrt_sim_stb : std_logic ;
    xp10_blk_raw_stb : std_logic ;
    xp10_blk_enc_stb : std_logic ;
    xp9_blk_long_ret_stb : std_logic ;
    xp9_blk_shrt_ret_stb : std_logic ;
    xp9_blk_long_sim_stb : std_logic ;
    xp9_blk_shrt_sim_stb : std_logic ;
    xp9_frm_stb : std_logic ;
    xp9_frm_raw_stb : std_logic ;
    xp9_blk_enc_stb : std_logic ;
    long_map_err_stb : std_logic ;
    shrt_map_err_stb : std_logic ;
  end record ;
  subtype huf_comp_stats_t is $_huf_comp_stats_t std_logic_vector(63 downto 0) ;
  type $_crypto_stats_t is
  record
    unused : std_logic_vector(48 downto 0) ;
    cipher_aes_gcm : std_logic_vector(0 downto 0) ;
    cipher_aes_xts : std_logic_vector(0 downto 0) ;
    cipher_aes_xex : std_logic_vector(0 downto 0) ;
    cipher_nop : std_logic_vector(0 downto 0) ;
    auth_aes_gmac : std_logic_vector(0 downto 0) ;
    auth_sha256 : std_logic_vector(0 downto 0) ;
    auth_sha256_hmac : std_logic_vector(0 downto 0) ;
    auth_nop : std_logic_vector(0 downto 0) ;
    gcm_tag_fail : std_logic_vector(0 downto 0) ;
    gmac_tag_fail : std_logic_vector(0 downto 0) ;
    sha256_tag_fail : std_logic_vector(0 downto 0) ;
    hmac_sha256_tag_fail : std_logic_vector(0 downto 0) ;
    seq_id_mismatch : std_logic_vector(0 downto 0) ;
    eng_id_mismatch : std_logic_vector(0 downto 0) ;
    reserved : std_logic_vector(0 downto 0) ;
  end record ;
  subtype crypto_stats_t is $_crypto_stats_t std_logic_vector(63 downto 0) ;
  type $_aux_key_ctrl_t is
  record
    dak_key_op : aux_key_op_e ;
    dak_key_ref : std_logic_vector(13 downto 0) ;
    kdf_mode : aux_kdf_mode_e ;
    dek_key_op : aux_key_op_e ;
    dek_key_ref : std_logic_vector(13 downto 0) ;
  end record ;
  subtype aux_key_ctrl_t is $_aux_key_ctrl_t std_logic_vector(31 downto 0) ;
  type $_axi4s_su_dp_bus_t is
  record
    tvalid : std_logic ;
    tlast : std_logic ;
    tuser : std_logic_vector(1 downto 0) ;
    tdata : std_logic_vector(7 downto 0) ;
  end record ;
  subtype axi4s_su_dp_bus_t is $_axi4s_su_dp_bus_t std_logic_vector(11 downto 0)
   ;
  type $_generic_int_t is
  record
    tlvp_err : std_logic ;
    uncor_ecc_err : std_logic ;
    bimc_int : std_logic ;
  end record ;
  subtype generic_int_t is $_generic_int_t std_logic_vector(2 downto 0) ;
  type $_ecc_int_t is
  record
    uncor_ecc_err : std_logic ;
  end record ;
  subtype ecc_int_t is $_ecc_int_t std_logic_vector(0 downto 0) ;
  type $_tlvp_int_t is
  record
    tlvp_err : std_logic ;
  end record ;
  subtype tlvp_int_t is $_tlvp_int_t std_logic_vector(0 downto 0) ;
  type $_bimc_int_t is
  record
    bimc_err : std_logic ;
  end record ;
  subtype bimc_int_t is $_bimc_int_t std_logic_vector(0 downto 0) ;
  type $_crypto_int_t is
  record
    seed_expire : std_logic ;
    id_mismatch : std_logic ;
    tlvp_err : std_logic ;
    uncor_ecc_err : std_logic ;
  end record ;
  subtype crypto_int_t is $_crypto_int_t std_logic_vector(3 downto 0) ;
  type $_crypto_ckmic_int_t is
  record
    id_mismatch : std_logic ;
    tlvp_err : std_logic ;
  end record ;
  subtype crypto_ckmic_int_t is $_crypto_ckmic_int_t std_logic_vector(1 downto 0
  ) ;
  type $_osf_int_t is
  record
    tlvp_err : std_logic ;
    uncor_ecc_err : std_logic ;
  end record ;
  subtype osf_int_t is $_osf_int_t std_logic_vector(1 downto 0) ;
  type $_isf_int_t is
  record
    sys_stall : std_logic ;
    ovfl : std_logic ;
    prot_err : std_logic ;
    tlvp_int : std_logic ;
    uncor_ecc_err : std_logic ;
  end record ;
  subtype isf_int_t is $_isf_int_t std_logic_vector(4 downto 0) ;
  type $_prefix_attach_int_t is
  record
    tlvp_err : std_logic ;
    uncor_ecc_err : std_logic ;
  end record ;
  subtype prefix_attach_int_t is $_prefix_attach_int_t std_logic_vector(1 downto
   0) ;
  type $_ftr_error_t is
  record
    error_code : zipline_error_e ;
    errored_frame_number : std_logic_vector(10 downto 0) ;
  end record ;
  subtype ftr_error_t is $_ftr_error_t std_logic_vector(18 downto 0) ;
  type $_kim_ckv_resp_t is
  record
    valid : std_logic_vector(0 downto 0) ;
    label_index : std_logic_vector(2 downto 0) ;
    pf_num : std_logic_vector(0 downto 0) ;
    vf_valid : std_logic_vector(0 downto 0) ;
    vf_num : std_logic_vector(8 downto 0) ;
    ckv_key : std_logic_vector(511 downto 0) ;
  end record ;
  subtype kim_ckv_resp_t is $_kim_ckv_resp_t std_logic_vector(526 downto 0) ;
  type $_kme_internal_t is
  record
    sot : std_logic_vector(0 downto 0) ;
    eoi : std_logic_vector(0 downto 0) ;
    eot : std_logic_vector(0 downto 0) ;
    id : kme_internal_id ;
    tdata : std_logic_vector(63 downto 0) ;
  end record ;
  subtype kme_internal_t is $_kme_internal_t std_logic_vector(70 downto 0) ;
  type $_kme_internal_word_0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    resv0 : std_logic_vector(12 downto 0) ;
    kdf_dek_iter : std_logic_vector(0 downto 0) ;
    keyless_algos : std_logic_vector(0 downto 0) ;
    needs_dek : std_logic_vector(0 downto 0) ;
    needs_dak : std_logic_vector(0 downto 0) ;
    key_type : aux_key_type_e ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype kme_internal_word_0_t is $_kme_internal_word_0_t std_logic_vector(63
   downto 0) ;
  type $_kme_internal_word_8_t is
  record
    dek_kim_entry : kim_entry_t ;
    unused : std_logic_vector(5 downto 0) ;
    missing_iv : std_logic_vector(0 downto 0) ;
    missing_guid : std_logic_vector(0 downto 0) ;
    validate_dek : std_logic_vector(0 downto 0) ;
    vf_valid : std_logic_vector(0 downto 0) ;
    pf_num : std_logic_vector(3 downto 0) ;
    vf_num : std_logic_vector(11 downto 0) ;
  end record ;
  subtype kme_internal_word_8_t is $_kme_internal_word_8_t std_logic_vector(63
   downto 0) ;
  type $_kme_internal_word_9_t is
  record
    dak_kim_entry : kim_entry_t ;
    unused : std_logic_vector(7 downto 0) ;
    validate_dak : std_logic_vector(0 downto 0) ;
    vf_valid : std_logic_vector(0 downto 0) ;
    pf_num : std_logic_vector(3 downto 0) ;
    vf_num : std_logic_vector(11 downto 0) ;
  end record ;
  subtype kme_internal_word_9_t is $_kme_internal_word_9_t std_logic_vector(63
   downto 0) ;
  type $_kme_internal_word_42_t is
  record
    corrupt_crc32 : std_logic_vector(0 downto 0) ;
    unused : std_logic_vector(46 downto 0) ;
    error_code : zipline_error_e ;
  end record ;
  subtype kme_internal_word_42_t is $_kme_internal_word_42_t std_logic_vector(55
   downto 0) ;
  type $_gcm_cmd_t is
  record
    key0 : std_logic_vector(255 downto 0) ;
    key1 : std_logic_vector(255 downto 0) ;
    iv : std_logic_vector(95 downto 0) ;
    op : gcm_op_e ;
  end record ;
  subtype gcm_cmd_t is $_gcm_cmd_t std_logic_vector(610 downto 0) ;
  type $_gcm_status_t is
  record
    tag_mismatch : std_logic_vector(0 downto 0) ;
  end record ;
  subtype gcm_status_t is $_gcm_status_t std_logic_vector(0 downto 0) ;
  type $_keyfilter_cmd_t is
  record
    combo_mode : std_logic_vector(0 downto 0) ;
  end record ;
  subtype keyfilter_cmd_t is $_keyfilter_cmd_t std_logic_vector(0 downto 0) ;
  type $_kdf_cmd_t is
  record
    kdf_dek_iter : std_logic_vector(0 downto 0) ;
    combo_mode : std_logic_vector(0 downto 0) ;
    dek_key_op : aux_key_op_e ;
    dak_key_op : aux_key_op_e ;
  end record ;
  subtype kdf_cmd_t is $_kdf_cmd_t std_logic_vector(3 downto 0) ;
  type $_kdfstream_cmd_t is
  record
    combo_mode : std_logic_vector(0 downto 0) ;
    skip : std_logic_vector(0 downto 0) ;
    guid : std_logic_vector(255 downto 0) ;
    label_index : std_logic_vector(2 downto 0) ;
    num_iter : std_logic_vector(1 downto 0) ;
  end record ;
  subtype kdfstream_cmd_t is $_kdfstream_cmd_t std_logic_vector(262 downto 0) ;
  signal DUMMY6 : std_logic_vector(0 to 83) ;
  signal DUMMY7 : std_logic_vector(0 to 82) ;
  signal DUMMY8 : std_logic ;
  signal DUMMY9 : std_logic_vector(0 to 82) ;
  signal DUMMY10 : std_logic ;
  signal DUMMY11 : std_logic_vector(0 to 82) ;
  signal DUMMY12 : std_logic ;
  signal DUMMY13 : std_logic_vector(0 to 82) ;
  signal DUMMY14 : std_logic ;
  signal DUMMY15 : std_logic_vector(0 to 82) ;
  signal DUMMY16 : std_logic ;
  signal DUMMY17 : std_logic_vector(0 to 82) ;
  signal DUMMY18 : std_logic ;
  signal DUMMY19 : std_logic_vector(0 to 82) ;
  signal DUMMY20 : std_logic ;
  signal DUMMY21 : std_logic_vector(0 to 82) ;
  signal DUMMY22 : std_logic ;
  signal DUMMY23 : std_logic_vector(0 to 37) ;
  signal DUMMY24 : std_logic_vector(0 to 2175) ;
  signal DUMMY25 : std_logic_vector(0 to 8) ;
  signal DUMMY26 : std_logic_vector(0 to 6) ;
  signal DUMMY27 : std_logic_vector(0 to 6) ;
  signal DUMMY28 : std_logic_vector(0 to 6) ;
  signal DUMMY29 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_cio_24 : std_logic ;
  signal DUMMY30 : std_logic_vector(0 to 10) ;
  signal DUMMY31 : std_logic ;
  signal DUMMY32 : std_logic_vector(0 to 31) ;
  signal DUMMY33 : std_logic ;
  signal DUMMY34 : std_logic_vector(0 to 31) ;
  signal DUMMY35 : std_logic ;
  signal DUMMY36 : std_logic ;
  signal _zy_simnet_tvar_32 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_33 : std_logic_vector(0 to 24) ;
  signal _zy_simnet_tvar_34 : std_logic ;
  signal _zy_simnet_tvar_35 : std_logic ;
  signal _zy_simnet_tvar_36 : std_logic ;
  signal _zy_simnet_tvar_37 : std_logic ;
  signal DUMMY37 : std_logic_vector(0 to 31) ;
  signal DUMMY38 : std_logic_vector(0 to 31) ;
  signal DUMMY39 : std_logic_vector(0 to 31) ;
  signal DUMMY40 : std_logic_vector(0 to 12) ;
  signal DUMMY41 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_dio_43 : std_logic_vector(0 to 1) ;
  signal DUMMY42 : std_logic_vector(0 to 31) ;
  signal DUMMY43 : std_logic_vector(0 to 31) ;
  signal DUMMY44 : std_logic_vector(0 to 31) ;
  signal DUMMY45 : std_logic_vector(0 to 12) ;
  signal DUMMY46 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_dio_49 : std_logic_vector(0 to 1) ;
  signal DUMMY47 : std_logic_vector(0 to 31) ;
  signal DUMMY48 : std_logic_vector(0 to 31) ;
  signal DUMMY49 : std_logic_vector(0 to 31) ;
  signal DUMMY50 : std_logic_vector(0 to 12) ;
  signal DUMMY51 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_dio_55 : std_logic_vector(0 to 1) ;
  signal DUMMY52 : std_logic_vector(0 to 31) ;
  signal DUMMY53 : std_logic_vector(0 to 31) ;
  signal DUMMY54 : std_logic_vector(0 to 31) ;
  signal DUMMY55 : std_logic_vector(0 to 12) ;
  signal DUMMY56 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_dio_61 : std_logic_vector(0 to 1) ;
  signal DUMMY57 : std_logic_vector(0 to 31) ;
  signal DUMMY58 : std_logic_vector(0 to 31) ;
  signal DUMMY59 : std_logic_vector(0 to 31) ;
  signal DUMMY60 : std_logic_vector(0 to 12) ;
  signal DUMMY61 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_dio_67 : std_logic_vector(0 to 1) ;
  signal DUMMY62 : std_logic_vector(0 to 31) ;
  signal DUMMY63 : std_logic_vector(0 to 31) ;
  signal DUMMY64 : std_logic_vector(0 to 31) ;
  signal DUMMY65 : std_logic_vector(0 to 12) ;
  signal DUMMY66 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_dio_73 : std_logic_vector(0 to 1) ;
  signal DUMMY67 : std_logic_vector(0 to 31) ;
  signal DUMMY68 : std_logic_vector(0 to 31) ;
  signal DUMMY69 : std_logic_vector(0 to 31) ;
  signal DUMMY70 : std_logic_vector(0 to 12) ;
  signal DUMMY71 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_dio_79 : std_logic_vector(0 to 1) ;
  signal DUMMY72 : std_logic_vector(0 to 31) ;
  signal DUMMY73 : std_logic_vector(0 to 31) ;
  signal DUMMY74 : std_logic_vector(0 to 31) ;
  signal DUMMY75 : std_logic_vector(0 to 12) ;
  signal DUMMY76 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_dio_85 : std_logic_vector(0 to 1) ;
  signal DUMMY77 : std_logic_vector(0 to 31) ;
  signal DUMMY78 : std_logic_vector(0 to 31) ;
  signal DUMMY79 : std_logic_vector(0 to 18) ;
  signal DUMMY80 : std_logic_vector(0 to 20) ;
  signal DUMMY81 : std_logic_vector(0 to 16) ;
  signal DUMMY82 : std_logic_vector(0 to 17) ;
  signal _zy_simnet_tvar_92 : std_logic_vector(0 to 15) ;
  signal DUMMY83 : std_logic_vector(0 to 31) ;
  signal DUMMY84 : std_logic_vector(0 to 31) ;
  signal DUMMY85 : std_logic_vector(0 to 31) ;
  signal DUMMY86 : std_logic_vector(0 to 31) ;
  signal DUMMY87 : std_logic_vector(0 to 31) ;
  signal DUMMY88 : std_logic_vector(0 to 31) ;
  signal DUMMY89 : std_logic_vector(0 to 31) ;
  signal DUMMY90 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_101 : std_logic_vector(0 to 15) ;
  signal DUMMY91 : std_logic_vector(0 to 31) ;
  signal DUMMY92 : std_logic_vector(0 to 31) ;
  signal DUMMY93 : std_logic_vector(0 to 31) ;
  signal DUMMY94 : std_logic_vector(0 to 31) ;
  signal DUMMY95 : std_logic_vector(0 to 31) ;
  signal DUMMY96 : std_logic_vector(0 to 31) ;
  signal DUMMY97 : std_logic_vector(0 to 31) ;
  signal DUMMY98 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_110 : std_logic_vector(0 to 15) ;
  signal DUMMY99 : std_logic_vector(0 to 31) ;
  signal DUMMY100 : std_logic_vector(0 to 31) ;
  signal DUMMY101 : std_logic_vector(0 to 31) ;
  signal DUMMY102 : std_logic_vector(0 to 31) ;
  signal DUMMY103 : std_logic_vector(0 to 31) ;
  signal DUMMY104 : std_logic_vector(0 to 31) ;
  signal DUMMY105 : std_logic_vector(0 to 31) ;
  signal DUMMY106 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_119 : std_logic_vector(0 to 15) ;
  signal DUMMY107 : std_logic_vector(0 to 31) ;
  signal DUMMY108 : std_logic_vector(0 to 31) ;
  signal DUMMY109 : std_logic_vector(0 to 31) ;
  signal DUMMY110 : std_logic_vector(0 to 31) ;
  signal DUMMY111 : std_logic_vector(0 to 31) ;
  signal DUMMY112 : std_logic_vector(0 to 31) ;
  signal DUMMY113 : std_logic_vector(0 to 31) ;
  signal DUMMY114 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_128 : std_logic_vector(0 to 15) ;
  signal DUMMY115 : std_logic_vector(0 to 31) ;
  signal DUMMY116 : std_logic_vector(0 to 31) ;
  signal DUMMY117 : std_logic_vector(0 to 31) ;
  signal DUMMY118 : std_logic_vector(0 to 31) ;
  signal DUMMY119 : std_logic_vector(0 to 31) ;
  signal DUMMY120 : std_logic_vector(0 to 31) ;
  signal DUMMY121 : std_logic_vector(0 to 31) ;
  signal DUMMY122 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_137 : std_logic_vector(0 to 15) ;
  signal DUMMY123 : std_logic_vector(0 to 31) ;
  signal DUMMY124 : std_logic_vector(0 to 31) ;
  signal DUMMY125 : std_logic_vector(0 to 31) ;
  signal DUMMY126 : std_logic_vector(0 to 31) ;
  signal DUMMY127 : std_logic_vector(0 to 31) ;
  signal DUMMY128 : std_logic_vector(0 to 31) ;
  signal DUMMY129 : std_logic_vector(0 to 31) ;
  signal DUMMY130 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_146 : std_logic_vector(0 to 15) ;
  signal DUMMY131 : std_logic_vector(0 to 31) ;
  signal DUMMY132 : std_logic_vector(0 to 31) ;
  signal DUMMY133 : std_logic_vector(0 to 31) ;
  signal DUMMY134 : std_logic_vector(0 to 31) ;
  signal DUMMY135 : std_logic_vector(0 to 31) ;
  signal DUMMY136 : std_logic_vector(0 to 31) ;
  signal DUMMY137 : std_logic_vector(0 to 31) ;
  signal DUMMY138 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_155 : std_logic_vector(0 to 15) ;
  signal DUMMY139 : std_logic_vector(0 to 31) ;
  signal DUMMY140 : std_logic_vector(0 to 31) ;
  signal DUMMY141 : std_logic_vector(0 to 31) ;
  signal DUMMY142 : std_logic_vector(0 to 31) ;
  signal DUMMY143 : std_logic_vector(0 to 31) ;
  signal DUMMY144 : std_logic_vector(0 to 31) ;
  signal DUMMY145 : std_logic_vector(0 to 31) ;
  signal DUMMY146 : std_logic_vector(0 to 31) ;
  signal DUMMY147 : std_logic_vector(0 to 1) ;
  signal DUMMY148 : std_logic_vector(0 to 31) ;
  signal DUMMY149 : std_logic_vector(0 to 31) ;
  signal DUMMY150 : std_logic_vector(0 to 31) ;
  signal DUMMY151 : std_logic_vector(0 to 31) ;
  signal DUMMY152 : std_logic_vector(0 to 31) ;
  signal DUMMY153 : std_logic_vector(0 to 31) ;
  signal DUMMY154 : std_logic_vector(0 to 31) ;
  signal DUMMY155 : std_logic_vector(0 to 31) ;
  signal DUMMY156 : std_logic_vector(0 to 31) ;
  signal DUMMY157 : std_logic_vector(0 to 31) ;
  signal DUMMY158 : std_logic_vector(0 to 31) ;
  signal DUMMY159 : std_logic_vector(0 to 31) ;
  signal DUMMY160 : std_logic_vector(0 to 31) ;
  signal DUMMY161 : std_logic_vector(0 to 15) ;
  signal DUMMY162 : std_logic_vector(0 to 31) ;
  signal DUMMY163 : std_logic_vector(0 to 31) ;
  signal DUMMY164 : std_logic_vector(0 to 31) ;
  signal DUMMY165 : std_logic_vector(0 to 31) ;
  signal DUMMY166 : std_logic_vector(0 to 31) ;
  signal DUMMY167 : std_logic_vector(0 to 31) ;
  signal DUMMY168 : std_logic_vector(0 to 31) ;
  signal DUMMY169 : std_logic_vector(0 to 31) ;
  signal DUMMY170 : std_logic_vector(0 to 31) ;
  signal DUMMY171 : std_logic_vector(0 to 31) ;
  signal DUMMY172 : std_logic_vector(0 to 31) ;
  signal DUMMY173 : std_logic_vector(0 to 31) ;
  signal DUMMY174 : std_logic_vector(0 to 31) ;
  signal DUMMY175 : std_logic_vector(0 to 15) ;
  signal _zy_simnet_dio_193 : std_logic_vector(0 to 4) ;
  signal DUMMY176 : std_logic_vector(0 to 4) ;
  signal DUMMY177 : std_logic_vector(0 to 7) ;
  signal DUMMY178 : std_logic_vector(0 to 6) ;
  signal DUMMY179 : std_logic_vector(0 to 31) ;
  signal DUMMY180 : std_logic_vector(0 to 31) ;
  signal DUMMY181 : std_logic_vector(0 to 31) ;
  signal DUMMY182 : std_logic_vector(0 to 31) ;
  signal DUMMY183 : std_logic_vector(0 to 28) ;
  signal DUMMY184 : std_logic_vector(0 to 10) ;
  signal DUMMY185 : std_logic_vector(0 to 31) ;
  signal DUMMY186 : std_logic_vector(0 to 31) ;
  signal DUMMY187 : std_logic_vector(0 to 9) ;
  signal DUMMY188 : std_logic_vector(0 to 9) ;
  signal DUMMY189 : std_logic_vector(0 to 9) ;
  signal DUMMY190 : std_logic_vector(0 to 9) ;
  signal _zy_simnet_dio_209 : std_logic_vector(0 to 15) ;
  signal DUMMY191 : std_logic_vector(0 to 8) ;
  signal DUMMY192 : std_logic_vector(0 to 31) ;
  signal DUMMY193 : std_logic_vector(0 to 31) ;
  signal DUMMY194 : std_logic_vector(0 to 31) ;
  signal DUMMY195 : std_logic_vector(0 to 8) ;
  signal DUMMY196 : std_logic_vector(0 to 31) ;
  signal DUMMY197 : std_logic_vector(0 to 31) ;
  signal DUMMY198 : std_logic_vector(0 to 8) ;
  signal DUMMY199 : std_logic_vector(0 to 6) ;
  signal DUMMY200 : std_logic_vector(0 to 6) ;
  signal DUMMY201 : std_logic_vector(0 to 6) ;
  signal DUMMY202 : std_logic_vector(0 to 31) ;
  signal DUMMY203 : std_logic_vector(0 to 31) ;
  signal DUMMY204 : std_logic_vector(0 to 8) ;
  signal DUMMY205 : std_logic_vector(0 to 31) ;
  signal DUMMY206 : std_logic_vector(0 to 7) ;
  signal _zy_simnet_tvar_226 : std_logic_vector(0 to 31) ;
  signal DUMMY207 : std_logic_vector(0 to 19) ;
  signal DUMMY208 : std_logic_vector(0 to 16) ;
  signal _zy_simnet_tvar_229 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_230 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_231 : std_logic_vector(0 to 31) ;
  signal DUMMY209 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_cio_233 : std_logic_vector(0 to 1) ;
  signal DUMMY210 : std_logic_vector(0 to 19) ;
  signal DUMMY211 : std_logic_vector(0 to 16) ;
  signal _zy_simnet_tvar_236 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_237 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_238 : std_logic_vector(0 to 31) ;
  signal DUMMY212 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_cio_240 : std_logic_vector(0 to 1) ;
  signal DUMMY213 : std_logic_vector(0 to 19) ;
  signal DUMMY214 : std_logic_vector(0 to 16) ;
  signal _zy_simnet_tvar_243 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_244 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_245 : std_logic_vector(0 to 31) ;
  signal DUMMY215 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_cio_247 : std_logic_vector(0 to 1) ;
  signal DUMMY216 : std_logic_vector(0 to 19) ;
  signal DUMMY217 : std_logic_vector(0 to 16) ;
  signal _zy_simnet_tvar_250 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_251 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_252 : std_logic_vector(0 to 31) ;
  signal DUMMY218 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_cio_254 : std_logic_vector(0 to 1) ;
  signal DUMMY219 : std_logic_vector(0 to 19) ;
  signal DUMMY220 : std_logic_vector(0 to 16) ;
  signal _zy_simnet_tvar_257 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_258 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_259 : std_logic_vector(0 to 31) ;
  signal DUMMY221 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_cio_261 : std_logic_vector(0 to 1) ;
  signal DUMMY222 : std_logic_vector(0 to 19) ;
  signal DUMMY223 : std_logic_vector(0 to 16) ;
  signal _zy_simnet_tvar_264 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_265 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_266 : std_logic_vector(0 to 31) ;
  signal DUMMY224 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_cio_268 : std_logic_vector(0 to 1) ;
  signal DUMMY225 : std_logic_vector(0 to 19) ;
  signal DUMMY226 : std_logic_vector(0 to 16) ;
  signal _zy_simnet_tvar_271 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_272 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_273 : std_logic_vector(0 to 31) ;
  signal DUMMY227 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_cio_275 : std_logic_vector(0 to 1) ;
  signal DUMMY228 : std_logic_vector(0 to 19) ;
  signal DUMMY229 : std_logic_vector(0 to 16) ;
  signal _zy_simnet_tvar_278 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_279 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_tvar_280 : std_logic_vector(0 to 31) ;
  signal DUMMY230 : std_logic_vector(0 to 11) ;
  signal _zy_simnet_cio_282 : std_logic_vector(0 to 1) ;
  signal DUMMY231 : std_logic_vector(0 to 19) ;
  signal DUMMY232 : std_logic_vector(0 to 22) ;
  signal DUMMY233 : std_logic_vector(0 to 31) ;
  signal DUMMY234 : std_logic_vector(0 to 31) ;
  signal DUMMY235 : std_logic_vector(0 to 19) ;
  signal DUMMY236 : std_logic_vector(0 to 21) ;
  signal DUMMY237 : std_logic_vector(0 to 20) ;
  signal DUMMY238 : std_logic_vector(0 to 16) ;
  signal DUMMY239 : std_logic_vector(0 to 1) ;
  signal DUMMY240 : std_logic_vector(0 to 4) ;
  signal DUMMY241 : std_logic_vector(0 to 7) ;
  signal DUMMY242 : std_logic_vector(0 to 6) ;
  signal DUMMY243 : std_logic_vector(0 to 31) ;
  signal DUMMY244 : std_logic_vector(0 to 31) ;
  signal DUMMY245 : std_logic_vector(0 to 31) ;
  signal DUMMY246 : std_logic_vector(0 to 31) ;
  signal DUMMY247 : std_logic_vector(0 to 11) ;
  signal DUMMY248 : std_logic_vector(0 to 28) ;
  signal DUMMY249 : std_logic_vector(0 to 10) ;
  signal DUMMY250 : std_logic_vector(0 to 9) ;
  signal DUMMY251 : std_logic_vector(0 to 31) ;
  signal DUMMY252 : std_logic_vector(0 to 31) ;
  signal DUMMY253 : std_logic_vector(0 to 9) ;
  signal DUMMY254 : std_logic_vector(0 to 31) ;
  signal DUMMY255 : std_logic_vector(0 to 31) ;
  signal DUMMY256 : std_logic_vector(0 to 9) ;
  signal DUMMY257 : std_logic_vector(0 to 31) ;
  signal DUMMY258 : std_logic_vector(0 to 31) ;
  signal DUMMY259 : std_logic_vector(0 to 9) ;
  signal DUMMY260 : std_logic_vector(0 to 31) ;
  signal DUMMY261 : std_logic_vector(0 to 31) ;
  signal DUMMY262 : std_logic_vector(0 to 15) ;
  signal _zy_simnet_cio_315 : std_logic_vector(0 to 15) ;
  signal DUMMY263 : std_logic_vector(0 to 8) ;
  signal DUMMY264 : std_logic_vector(0 to 31) ;
  signal DUMMY265 : std_logic_vector(0 to 19) ;
  signal DUMMY266 : std_logic_vector(0 to 12) ;
  signal DUMMY267 : std_logic_vector(0 to 31) ;
  signal DUMMY268 : std_logic_vector(0 to 31) ;
  signal DUMMY269 : std_logic_vector(0 to 19) ;
  signal DUMMY270 : std_logic_vector(0 to 12) ;
  signal DUMMY271 : std_logic_vector(0 to 31) ;
  signal DUMMY272 : std_logic_vector(0 to 31) ;
  signal DUMMY273 : std_logic_vector(0 to 31) ;
  signal DUMMY274 : std_logic_vector(0 to 19) ;
  signal DUMMY275 : std_logic_vector(0 to 12) ;
  signal DUMMY276 : std_logic_vector(0 to 31) ;
  signal DUMMY277 : std_logic ;
  signal _zy_simnet_dio_331 : std_logic ;
  signal DUMMY278 : std_logic_vector(0 to 31) ;
  signal DUMMY279 : std_logic_vector(0 to 10) ;
  signal DUMMY280 : std_logic_vector(0 to 15) ;
  signal DUMMY281 : std_logic ;
  signal DUMMY282 : std_logic_vector(0 to 31) ;
  signal DUMMY283 : std_logic ;
  signal DUMMY284 : std_logic_vector(0 to 10) ;
  signal DUMMY285 : std_logic ;
  signal DUMMY286 : std_logic_vector(0 to 31) ;
  signal DUMMY287 : std_logic ;
  signal DUMMY288 : std_logic_vector(0 to 31) ;
  signal DUMMY289 : std_logic ;
  signal DUMMY290 : std_logic ;
  signal DUMMY291 : std_logic_vector(0 to 31) ;
  signal DUMMY292 : std_logic ;
  signal DUMMY293 : std_logic ;
  signal DUMMY294 : std_logic ;
  signal DUMMY295 : std_logic_vector(0 to 82) ;
  signal DUMMY296 : std_logic ;
  signal _zy_simnet_tvar_351 : std_logic ;
  signal DUMMY297 : std_logic ;
  signal DUMMY298 : std_logic ;
  signal DUMMY299 : std_logic_vector(0 to 82) ;
  signal DUMMY300 : std_logic ;
  signal _zy_simnet_tvar_356 : std_logic ;
  signal DUMMY301 : std_logic ;
  signal DUMMY302 : std_logic ;
  signal DUMMY303 : std_logic_vector(0 to 82) ;
  signal DUMMY304 : std_logic ;
  signal _zy_simnet_tvar_361 : std_logic ;
  signal DUMMY305 : std_logic ;
  signal DUMMY306 : std_logic ;
  signal DUMMY307 : std_logic_vector(0 to 82) ;
  signal DUMMY308 : std_logic ;
  signal _zy_simnet_tvar_366 : std_logic ;
  signal DUMMY309 : std_logic ;
  signal DUMMY310 : std_logic ;
  signal DUMMY311 : std_logic_vector(0 to 82) ;
  signal DUMMY312 : std_logic ;
  signal _zy_simnet_tvar_371 : std_logic ;
  signal DUMMY313 : std_logic ;
  signal DUMMY314 : std_logic ;
  signal DUMMY315 : std_logic_vector(0 to 82) ;
  signal DUMMY316 : std_logic ;
  signal _zy_simnet_tvar_376 : std_logic ;
  signal DUMMY317 : std_logic ;
  signal DUMMY318 : std_logic ;
  signal DUMMY319 : std_logic_vector(0 to 82) ;
  signal DUMMY320 : std_logic ;
  signal _zy_simnet_tvar_381 : std_logic ;
  signal DUMMY321 : std_logic ;
  signal DUMMY322 : std_logic ;
  signal DUMMY323 : std_logic_vector(0 to 82) ;
  signal DUMMY324 : std_logic ;
  signal _zy_simnet_tvar_386 : std_logic ;
  signal DUMMY325 : std_logic ;
  signal DUMMY326 : std_logic_vector(0 to 2) ;
  signal DUMMY327 : std_logic_vector(0 to 4) ;
  signal DUMMY328 : std_logic_vector(0 to 8) ;
  signal DUMMY329 : std_logic_vector(0 to 15) ;
  signal DUMMY330 : std_logic_vector(0 to 3) ;
  signal DUMMY331 : std_logic_vector(0 to 95) ;
  signal DUMMY332 : std_logic ;
  signal DUMMY333 : std_logic ;
  signal DUMMY334 : std_logic ;
  signal DUMMY335 : std_logic ;
  signal DUMMY336 : std_logic_vector(0 to 1) ;
  signal DUMMY337 : std_logic_vector(0 to 11) ;
  signal DUMMY338 : std_logic_vector(0 to 10) ;
  signal DUMMY339 : std_logic_vector(0 to 3) ;
  signal DUMMY340 : std_logic_vector(0 to 8) ;
  signal DUMMY341 : std_logic ;
  signal DUMMY342 : std_logic_vector(0 to 95) ;
  signal _zy_simnet_cio_405 : std_logic ;
  signal DUMMY343 : std_logic ;
  signal DUMMY344 : std_logic ;
  signal DUMMY345 : std_logic_vector(0 to 95) ;
  signal DUMMY346 : std_logic ;
  signal DUMMY347 : std_logic_vector(0 to 1) ;
  signal DUMMY348 : std_logic_vector(0 to 11) ;
  signal DUMMY349 : std_logic_vector(0 to 2) ;
  signal DUMMY350 : std_logic_vector(0 to 4) ;
  signal DUMMY351 : std_logic_vector(0 to 8) ;
  signal DUMMY352 : std_logic_vector(0 to 15) ;
  signal DUMMY353 : std_logic_vector(0 to 3) ;
  signal DUMMY354 : std_logic_vector(0 to 95) ;
  signal DUMMY355 : std_logic ;
  signal DUMMY356 : std_logic ;
  signal DUMMY357 : std_logic ;
  signal DUMMY358 : std_logic ;
  signal DUMMY359 : std_logic_vector(0 to 1) ;
  signal DUMMY360 : std_logic_vector(0 to 11) ;
  signal DUMMY361 : std_logic_vector(0 to 10) ;
  signal DUMMY362 : std_logic_vector(0 to 3) ;
  signal DUMMY363 : std_logic_vector(0 to 8) ;
  signal DUMMY364 : std_logic ;
  signal DUMMY365 : std_logic_vector(0 to 95) ;
  signal _zy_simnet_cio_429 : std_logic ;
  signal DUMMY366 : std_logic ;
  signal DUMMY367 : std_logic ;
  signal DUMMY368 : std_logic_vector(0 to 95) ;
  signal DUMMY369 : std_logic ;
  signal DUMMY370 : std_logic_vector(0 to 1) ;
  signal DUMMY371 : std_logic_vector(0 to 11) ;
  signal DUMMY372 : std_logic_vector(0 to 2) ;
  signal DUMMY373 : std_logic_vector(0 to 4) ;
  signal DUMMY374 : std_logic_vector(0 to 8) ;
  signal DUMMY375 : std_logic_vector(0 to 15) ;
  signal DUMMY376 : std_logic_vector(0 to 3) ;
  signal DUMMY377 : std_logic_vector(0 to 95) ;
  signal DUMMY378 : std_logic ;
  signal DUMMY379 : std_logic ;
  signal DUMMY380 : std_logic ;
  signal DUMMY381 : std_logic ;
  signal DUMMY382 : std_logic_vector(0 to 1) ;
  signal DUMMY383 : std_logic_vector(0 to 11) ;
  signal DUMMY384 : std_logic_vector(0 to 10) ;
  signal DUMMY385 : std_logic_vector(0 to 3) ;
  signal DUMMY386 : std_logic_vector(0 to 8) ;
  signal DUMMY387 : std_logic ;
  signal DUMMY388 : std_logic_vector(0 to 95) ;
  signal _zy_simnet_cio_453 : std_logic ;
  signal DUMMY389 : std_logic ;
  signal DUMMY390 : std_logic ;
  signal DUMMY391 : std_logic_vector(0 to 95) ;
  signal DUMMY392 : std_logic ;
  signal DUMMY393 : std_logic_vector(0 to 1) ;
  signal DUMMY394 : std_logic_vector(0 to 11) ;
  signal DUMMY395 : std_logic_vector(0 to 2) ;
  signal DUMMY396 : std_logic_vector(0 to 4) ;
  signal DUMMY397 : std_logic_vector(0 to 8) ;
  signal DUMMY398 : std_logic_vector(0 to 15) ;
  signal DUMMY399 : std_logic_vector(0 to 3) ;
  signal DUMMY400 : std_logic_vector(0 to 95) ;
  signal DUMMY401 : std_logic ;
  signal DUMMY402 : std_logic ;
  signal DUMMY403 : std_logic ;
  signal DUMMY404 : std_logic ;
  signal DUMMY405 : std_logic_vector(0 to 1) ;
  signal DUMMY406 : std_logic_vector(0 to 11) ;
  signal DUMMY407 : std_logic_vector(0 to 10) ;
  signal DUMMY408 : std_logic_vector(0 to 3) ;
  signal DUMMY409 : std_logic_vector(0 to 8) ;
  signal DUMMY410 : std_logic ;
  signal DUMMY411 : std_logic_vector(0 to 95) ;
  signal _zy_simnet_cio_477 : std_logic ;
  signal DUMMY412 : std_logic ;
  signal DUMMY413 : std_logic ;
  signal DUMMY414 : std_logic_vector(0 to 95) ;
  signal DUMMY415 : std_logic ;
  signal DUMMY416 : std_logic_vector(0 to 1) ;
  signal DUMMY417 : std_logic_vector(0 to 11) ;
  signal DUMMY418 : std_logic_vector(0 to 2) ;
  signal DUMMY419 : std_logic_vector(0 to 4) ;
  signal DUMMY420 : std_logic_vector(0 to 8) ;
  signal DUMMY421 : std_logic_vector(0 to 15) ;
  signal DUMMY422 : std_logic_vector(0 to 3) ;
  signal DUMMY423 : std_logic_vector(0 to 95) ;
  signal DUMMY424 : std_logic ;
  signal DUMMY425 : std_logic ;
  signal DUMMY426 : std_logic ;
  signal DUMMY427 : std_logic ;
  signal DUMMY428 : std_logic_vector(0 to 1) ;
  signal DUMMY429 : std_logic_vector(0 to 11) ;
  signal DUMMY430 : std_logic_vector(0 to 10) ;
  signal DUMMY431 : std_logic_vector(0 to 3) ;
  signal DUMMY432 : std_logic_vector(0 to 8) ;
  signal DUMMY433 : std_logic ;
  signal DUMMY434 : std_logic_vector(0 to 95) ;
  signal _zy_simnet_cio_501 : std_logic ;
  signal DUMMY435 : std_logic ;
  signal DUMMY436 : std_logic ;
  signal DUMMY437 : std_logic_vector(0 to 95) ;
  signal DUMMY438 : std_logic ;
  signal DUMMY439 : std_logic_vector(0 to 1) ;
  signal DUMMY440 : std_logic_vector(0 to 11) ;
  signal DUMMY441 : std_logic_vector(0 to 2) ;
  signal DUMMY442 : std_logic_vector(0 to 4) ;
  signal DUMMY443 : std_logic_vector(0 to 8) ;
  signal DUMMY444 : std_logic_vector(0 to 15) ;
  signal DUMMY445 : std_logic_vector(0 to 3) ;
  signal DUMMY446 : std_logic_vector(0 to 95) ;
  signal DUMMY447 : std_logic ;
  signal DUMMY448 : std_logic ;
  signal DUMMY449 : std_logic ;
  signal DUMMY450 : std_logic ;
  signal DUMMY451 : std_logic_vector(0 to 1) ;
  signal DUMMY452 : std_logic_vector(0 to 11) ;
  signal DUMMY453 : std_logic_vector(0 to 10) ;
  signal DUMMY454 : std_logic_vector(0 to 3) ;
  signal DUMMY455 : std_logic_vector(0 to 8) ;
  signal DUMMY456 : std_logic ;
  signal DUMMY457 : std_logic_vector(0 to 95) ;
  signal _zy_simnet_cio_525 : std_logic ;
  signal DUMMY458 : std_logic ;
  signal DUMMY459 : std_logic ;
  signal DUMMY460 : std_logic_vector(0 to 95) ;
  signal DUMMY461 : std_logic ;
  signal DUMMY462 : std_logic_vector(0 to 1) ;
  signal DUMMY463 : std_logic_vector(0 to 11) ;
  signal DUMMY464 : std_logic_vector(0 to 2) ;
  signal DUMMY465 : std_logic_vector(0 to 4) ;
  signal DUMMY466 : std_logic_vector(0 to 8) ;
  signal DUMMY467 : std_logic_vector(0 to 15) ;
  signal DUMMY468 : std_logic_vector(0 to 3) ;
  signal DUMMY469 : std_logic_vector(0 to 95) ;
  signal DUMMY470 : std_logic ;
  signal DUMMY471 : std_logic ;
  signal DUMMY472 : std_logic ;
  signal DUMMY473 : std_logic ;
  signal DUMMY474 : std_logic_vector(0 to 1) ;
  signal DUMMY475 : std_logic_vector(0 to 11) ;
  signal DUMMY476 : std_logic_vector(0 to 10) ;
  signal DUMMY477 : std_logic_vector(0 to 3) ;
  signal DUMMY478 : std_logic_vector(0 to 8) ;
  signal DUMMY479 : std_logic ;
  signal DUMMY480 : std_logic_vector(0 to 95) ;
  signal _zy_simnet_cio_549 : std_logic ;
  signal DUMMY481 : std_logic ;
  signal DUMMY482 : std_logic ;
  signal DUMMY483 : std_logic_vector(0 to 95) ;
  signal DUMMY484 : std_logic ;
  signal DUMMY485 : std_logic_vector(0 to 1) ;
  signal DUMMY486 : std_logic_vector(0 to 11) ;
  signal DUMMY487 : std_logic_vector(0 to 2) ;
  signal DUMMY488 : std_logic_vector(0 to 4) ;
  signal DUMMY489 : std_logic_vector(0 to 8) ;
  signal DUMMY490 : std_logic_vector(0 to 15) ;
  signal DUMMY491 : std_logic_vector(0 to 3) ;
  signal DUMMY492 : std_logic_vector(0 to 95) ;
  signal DUMMY493 : std_logic ;
  signal DUMMY494 : std_logic ;
  signal DUMMY495 : std_logic ;
  signal DUMMY496 : std_logic ;
  signal DUMMY497 : std_logic_vector(0 to 1) ;
  signal DUMMY498 : std_logic_vector(0 to 11) ;
  signal DUMMY499 : std_logic_vector(0 to 10) ;
  signal DUMMY500 : std_logic_vector(0 to 3) ;
  signal DUMMY501 : std_logic_vector(0 to 8) ;
  signal DUMMY502 : std_logic ;
  signal DUMMY503 : std_logic_vector(0 to 95) ;
  signal _zy_simnet_cio_573 : std_logic ;
  signal DUMMY504 : std_logic ;
  signal DUMMY505 : std_logic ;
  signal DUMMY506 : std_logic_vector(0 to 95) ;
  signal DUMMY507 : std_logic ;
  signal DUMMY508 : std_logic_vector(0 to 1) ;
  signal DUMMY509 : std_logic_vector(0 to 11) ;
  signal DUMMY510 : std_logic_vector(0 to 3) ;
  signal DUMMY511 : std_logic_vector(0 to 14) ;
  signal DUMMY512 : std_logic_vector(0 to 63) ;
  signal DUMMY513 : std_logic_vector(0 to 19) ;
  signal DUMMY514 : std_logic_vector(0 to 31) ;
  signal DUMMY515 : std_logic_vector(0 to 31) ;
  signal DUMMY516 : std_logic_vector(0 to 22) ;
  signal DUMMY517 : std_logic_vector(0 to 3) ;
  signal DUMMY518 : std_logic_vector(0 to 13) ;
  signal DUMMY519 : std_logic_vector(0 to 37) ;
  signal DUMMY520 : std_logic_vector(0 to 19) ;
  signal DUMMY521 : std_logic_vector(0 to 20) ;
  signal DUMMY522 : std_logic_vector(0 to 16) ;
  signal DUMMY523 : std_logic_vector(0 to 21) ;
  signal DUMMY524 : std_logic_vector(0 to 7) ;
  signal DUMMY525 : std_logic ;
  signal DUMMY526 : std_logic ;
  signal DUMMY527 : std_logic_vector(0 to 82) ;
  signal DUMMY528 : std_logic_vector(0 to 82) ;
  signal DUMMY529 : std_logic_vector(0 to 82) ;
  signal DUMMY530 : std_logic_vector(0 to 82) ;
  signal DUMMY531 : std_logic_vector(0 to 82) ;
  signal DUMMY532 : std_logic_vector(0 to 82) ;
  signal DUMMY533 : std_logic_vector(0 to 82) ;
  signal DUMMY534 : std_logic_vector(0 to 82) ;
  signal DUMMY535 : std_logic ;
  signal DUMMY536 : std_logic ;
  signal DUMMY537 : std_logic_vector(0 to 2) ;
  signal DUMMY538 : std_logic_vector(0 to 4) ;
  signal DUMMY539 : std_logic_vector(0 to 14) ;
  signal DUMMY540 : std_logic_vector(0 to 3) ;
  signal DUMMY541 : std_logic_vector(0 to 15) ;
  signal DUMMY542 : std_logic_vector(0 to 63) ;
  signal DUMMY543 : std_logic_vector(0 to 18) ;
  signal DUMMY544 : std_logic_vector(0 to 31) ;
  signal DUMMY545 : std_logic_vector(0 to 31) ;
  signal DUMMY546 : std_logic_vector(0 to 2) ;
  signal DUMMY547 : std_logic_vector(0 to 4) ;
  signal DUMMY548 : std_logic_vector(0 to 13) ;
  signal DUMMY549 : std_logic_vector(0 to 3) ;
  signal DUMMY550 : std_logic_vector(0 to 15) ;
  signal DUMMY551 : std_logic_vector(0 to 37) ;
  signal DUMMY552 : std_logic_vector(0 to 17) ;
  signal DUMMY553 : std_logic_vector(0 to 20) ;
  signal DUMMY554 : std_logic_vector(0 to 16) ;
  signal DUMMY555 : std_logic ;
  signal DUMMY556 : std_logic_vector(0 to 31) ;
  signal DUMMY557 : std_logic_vector(0 to 10) ;
  signal DUMMY558 : std_logic_vector(0 to 7) ;
  signal DUMMY559 : std_logic ;
  signal DUMMY560 : std_logic ;
  signal DUMMY561 : std_logic_vector(0 to 95) ;
  signal DUMMY562 : std_logic_vector(0 to 8) ;
  signal DUMMY563 : std_logic_vector(0 to 82) ;
  signal DUMMY564 : std_logic_vector(0 to 82) ;
  signal DUMMY565 : std_logic_vector(0 to 82) ;
  signal DUMMY566 : std_logic_vector(0 to 82) ;
  signal DUMMY567 : std_logic_vector(0 to 82) ;
  signal DUMMY568 : std_logic_vector(0 to 82) ;
  signal DUMMY569 : std_logic_vector(0 to 82) ;
  signal DUMMY570 : std_logic_vector(0 to 82) ;
  signal DUMMY571 : std_logic ;
  signal DUMMY572 : std_logic ;
  signal DUMMY573 : std_logic_vector(0 to 10) ;
  signal DUMMY574 : std_logic_vector(0 to 3) ;
  signal DUMMY575 : std_logic_vector(0 to 14) ;
  signal DUMMY576 : std_logic_vector(0 to 2) ;
  signal DUMMY577 : std_logic_vector(0 to 4) ;
  signal DUMMY578 : std_logic_vector(0 to 14) ;
  signal DUMMY579 : std_logic_vector(0 to 15) ;
  signal DUMMY580 : std_logic_vector(0 to 3) ;
  signal DUMMY581 : std_logic ;
  signal DUMMY582 : std_logic_vector(0 to 63) ;
  signal DUMMY583 : std_logic_vector(0 to 63) ;
  signal _zy_simnet_cio_654 : std_logic ;
  signal DUMMY584 : std_logic ;
  signal DUMMY585 : std_logic ;
  signal DUMMY586 : std_logic ;
  signal DUMMY587 : std_logic ;
  signal _zy_simnet_cio_659 : std_logic ;
  signal _zy_simnet_cio_660 : std_logic_vector(0 to 63) ;
  signal _zy_simnet_cio_661 : std_logic_vector(0 to 63) ;
  signal _zy_simnet_dio_662 : std_logic ;
  signal DUMMY588 : std_logic_vector(0 to 10) ;
  signal DUMMY589 : std_logic_vector(0 to 3) ;
  signal DUMMY590 : std_logic_vector(0 to 13) ;
  signal DUMMY591 : std_logic_vector(0 to 2) ;
  signal DUMMY592 : std_logic_vector(0 to 4) ;
  signal DUMMY593 : std_logic_vector(0 to 13) ;
  signal DUMMY594 : std_logic_vector(0 to 15) ;
  signal DUMMY595 : std_logic_vector(0 to 3) ;
  signal DUMMY596 : std_logic ;
  signal DUMMY597 : std_logic_vector(0 to 37) ;
  signal DUMMY598 : std_logic_vector(0 to 37) ;
  signal _zy_simnet_cio_674 : std_logic ;
  signal DUMMY599 : std_logic ;
  signal DUMMY600 : std_logic ;
  signal DUMMY601 : std_logic ;
  signal DUMMY602 : std_logic ;
  signal _zy_simnet_cio_679 : std_logic ;
  signal _zy_simnet_cio_680 : std_logic_vector(0 to 37) ;
  signal _zy_simnet_cio_681 : std_logic_vector(0 to 37) ;
  signal DUMMY603 : std_logic_vector(0 to 37) ;
  signal _zy_simnet_dio_683 : std_logic ;
  signal DUMMY604 : std_logic ;
  signal DUMMY605 : std_logic_vector(0 to 1) ;
  signal DUMMY606 : std_logic ;
  signal DUMMY607 : std_logic_vector(0 to 31) ;
  signal DUMMY608 : std_logic_vector(0 to 10) ;
  signal DUMMY609 : std_logic_vector(0 to 1) ;
  signal DUMMY610 : std_logic_vector(0 to 31) ;
  signal DUMMY611 : std_logic_vector(0 to 15) ;
  signal DUMMY612 : std_logic_vector(0 to 31) ;
  signal DUMMY613 : std_logic_vector(0 to 31) ;
  signal DUMMY614 : std_logic_vector(0 to 31) ;
  signal DUMMY615 : std_logic_vector(0 to 31) ;
  signal DUMMY616 : std_logic_vector(0 to 31) ;
  signal DUMMY617 : std_logic_vector(0 to 31) ;
  signal DUMMY618 : std_logic_vector(0 to 31) ;
  signal DUMMY619 : std_logic_vector(0 to 31) ;
  signal DUMMY620 : std_logic_vector(0 to 31) ;
  signal DUMMY621 : std_logic_vector(0 to 31) ;
  signal DUMMY622 : std_logic_vector(0 to 31) ;
  signal DUMMY623 : std_logic_vector(0 to 31) ;
  signal DUMMY624 : std_logic_vector(0 to 31) ;
  signal DUMMY625 : std_logic_vector(0 to 15) ;
  signal DUMMY626 : std_logic_vector(0 to 31) ;
  signal DUMMY627 : std_logic_vector(0 to 31) ;
  signal DUMMY628 : std_logic_vector(0 to 31) ;
  signal DUMMY629 : std_logic_vector(0 to 31) ;
  signal DUMMY630 : std_logic_vector(0 to 31) ;
  signal DUMMY631 : std_logic_vector(0 to 31) ;
  signal DUMMY632 : std_logic_vector(0 to 31) ;
  signal DUMMY633 : std_logic_vector(0 to 31) ;
  signal DUMMY634 : std_logic_vector(0 to 31) ;
  signal DUMMY635 : std_logic_vector(0 to 31) ;
  signal DUMMY636 : std_logic_vector(0 to 31) ;
  signal DUMMY637 : std_logic_vector(0 to 31) ;
  signal _zy_simnet_dio_718 : std_logic ;
  signal DUMMY638 : std_logic ;
  signal DUMMY639 : std_logic ;
  signal DUMMY640 : std_logic ;
  signal DUMMY641 : std_logic ;
  signal DUMMY642 : std_logic ;
  signal DUMMY643 : std_logic_vector(0 to 6) ;
  signal DUMMY644 : std_logic_vector(0 to 31) ;
  signal DUMMY645 : std_logic_vector(0 to 31) ;
  signal DUMMY646 : std_logic_vector(0 to 31) ;
  signal DUMMY647 : std_logic_vector(0 to 31) ;
  signal DUMMY648 : std_logic_vector(0 to 28) ;
  signal DUMMY649 : std_logic_vector(0 to 10) ;
  signal DUMMY650 : std_logic_vector(0 to 31) ;
  signal DUMMY651 : std_logic_vector(0 to 31) ;
  signal DUMMY652 : std_logic_vector(0 to 9) ;
  signal DUMMY653 : std_logic_vector(0 to 9) ;
  signal DUMMY654 : std_logic_vector(0 to 9) ;
  signal DUMMY655 : std_logic_vector(0 to 9) ;
  signal DUMMY656 : std_logic_vector(0 to 6) ;
  signal DUMMY657 : std_logic_vector(0 to 31) ;
  signal DUMMY658 : std_logic_vector(0 to 31) ;
  signal DUMMY659 : std_logic_vector(0 to 31) ;
  signal DUMMY660 : std_logic_vector(0 to 31) ;
  signal DUMMY661 : std_logic_vector(0 to 11) ;
  signal DUMMY662 : std_logic_vector(0 to 28) ;
  signal DUMMY663 : std_logic_vector(0 to 10) ;
  signal DUMMY664 : std_logic_vector(0 to 9) ;
  signal DUMMY665 : std_logic_vector(0 to 31) ;
  signal DUMMY666 : std_logic_vector(0 to 31) ;
  signal DUMMY667 : std_logic_vector(0 to 9) ;
  signal DUMMY668 : std_logic_vector(0 to 31) ;
  signal DUMMY669 : std_logic_vector(0 to 31) ;
  signal DUMMY670 : std_logic_vector(0 to 9) ;
  signal DUMMY671 : std_logic_vector(0 to 31) ;
  signal DUMMY672 : std_logic_vector(0 to 31) ;
  signal DUMMY673 : std_logic_vector(0 to 9) ;
  signal DUMMY674 : std_logic_vector(0 to 31) ;
  signal DUMMY675 : std_logic_vector(0 to 31) ;
  signal DUMMY676 : std_logic_vector(0 to 4) ;
  signal DUMMY677 : std_logic ;
  signal DUMMY678 : std_logic ;
  signal DUMMY679 : std_logic ;
  signal DUMMY680 : std_logic ;
  signal DUMMY681 : std_logic ;
  signal DUMMY682 : std_logic ;
  signal DUMMY683 : std_logic ;
  signal DUMMY684 : std_logic ;
  signal DUMMY685 : std_logic ;
  signal DUMMY686 : std_logic ;
  signal DUMMY687 : std_logic ;
  signal DUMMY688 : std_logic_vector(0 to 31) ;
  signal DUMMY689 : std_logic_vector(0 to 10) ;
  signal DUMMY690 : std_logic_vector(0 to 4) ;
  signal DUMMY691 : std_logic_vector(0 to 2) ;
  signal DUMMY692 : std_logic_vector(0 to 4) ;
  signal DUMMY693 : std_logic_vector(0 to 4) ;
  signal DUMMY694 : std_logic_vector(0 to 15) ;
  signal DUMMY695 : std_logic_vector(0 to 3) ;
  signal DUMMY696 : std_logic_vector(0 to 63) ;
  signal DUMMY697 : std_logic_vector(0 to 10) ;
  signal DUMMY698 : std_logic_vector(0 to 3) ;
  signal DUMMY699 : std_logic_vector(0 to 4) ;
  signal DUMMY700 : std_logic ;
  signal DUMMY701 : std_logic_vector(0 to 63) ;
  signal DUMMY702 : std_logic_vector(0 to 2) ;
  signal DUMMY703 : std_logic_vector(0 to 4) ;
  signal DUMMY704 : std_logic_vector(0 to 4) ;
  signal DUMMY705 : std_logic_vector(0 to 15) ;
  signal DUMMY706 : std_logic_vector(0 to 3) ;
  signal DUMMY707 : std_logic_vector(0 to 63) ;
  signal DUMMY708 : std_logic_vector(0 to 10) ;
  signal DUMMY709 : std_logic_vector(0 to 3) ;
  signal DUMMY710 : std_logic_vector(0 to 4) ;
  signal DUMMY711 : std_logic ;
  signal DUMMY712 : std_logic_vector(0 to 63) ;
  signal DUMMY713 : std_logic_vector(0 to 2) ;
  signal DUMMY714 : std_logic_vector(0 to 4) ;
  signal DUMMY715 : std_logic_vector(0 to 4) ;
  signal DUMMY716 : std_logic_vector(0 to 15) ;
  signal DUMMY717 : std_logic_vector(0 to 3) ;
  signal DUMMY718 : std_logic_vector(0 to 31) ;
  signal DUMMY719 : std_logic_vector(0 to 10) ;
  signal DUMMY720 : std_logic_vector(0 to 3) ;
  signal DUMMY721 : std_logic_vector(0 to 4) ;
  signal DUMMY722 : std_logic ;
  signal DUMMY723 : std_logic_vector(0 to 31) ;
  signal axi_term_bimc_idat : std_logic ;
  signal axi_term_bimc_isync : std_logic ;
  signal bimc_cmd2 : std_logic_vector(10 downto 0) ;
  signal bimc_dbgcmd0 : std_logic_vector(31 downto 0) ;
  signal bimc_dbgcmd1 : std_logic_vector(31 downto 0) ;
  signal bimc_dbgcmd2 : std_logic_vector(9 downto 0) ;
  signal bimc_ecc_correctable_error_cnt : std_logic_vector(31 downto 0) ;
  signal bimc_ecc_uncorrectable_error_cnt : std_logic_vector(31 downto 0) ;
  signal bimc_eccpar_debug : std_logic_vector(28 downto 0) ;
  signal bimc_global_config : std_logic_vector(31 downto 0) ;
  signal bimc_interrupt : std_logic ;
  signal bimc_memid : std_logic_vector(11 downto 0) ;
  signal bimc_monitor : std_logic_vector(6 downto 0) ;
  signal bimc_parity_error_cnt : std_logic_vector(31 downto 0) ;
  signal bimc_pollrsp0 : std_logic_vector(31 downto 0) ;
  signal bimc_pollrsp1 : std_logic_vector(31 downto 0) ;
  signal bimc_pollrsp2 : std_logic_vector(9 downto 0) ;
  signal bimc_rxcmd0 : std_logic_vector(31 downto 0) ;
  signal bimc_rxcmd1 : std_logic_vector(31 downto 0) ;
  signal bimc_rxcmd2 : std_logic_vector(9 downto 0) ;
  signal bimc_rxrsp0 : std_logic_vector(31 downto 0) ;
  signal bimc_rxrsp1 : std_logic_vector(31 downto 0) ;
  signal bimc_rxrsp2 : std_logic_vector(9 downto 0) ;
  signal cceip0_im_rdy : std_logic ;
  signal cceip0_ism_bimc_idat : std_logic ;
  signal cceip0_ism_bimc_isync : std_logic ;
  signal cceip0_ism_mbe : std_logic ;
  signal cceip1_im_rdy : std_logic ;
  signal cceip1_ism_idat : std_logic ;
  signal cceip1_ism_isync : std_logic ;
  signal cceip1_ism_mbe : std_logic ;
  signal cceip2_im_rdy : std_logic ;
  signal cceip2_ism_idat : std_logic ;
  signal cceip2_ism_isync : std_logic ;
  signal cceip2_ism_mbe : std_logic ;
  signal cceip3_im_rdy : std_logic ;
  signal cceip3_ism_idat : std_logic ;
  signal cceip3_ism_isync : std_logic ;
  signal cceip3_ism_mbe : std_logic ;
  signal cddip0_im_rdy : std_logic ;
  signal cddip0_ism_idat : std_logic ;
  signal cddip0_ism_isync : std_logic ;
  signal cddip0_ism_mbe : std_logic ;
  signal cddip1_im_rdy : std_logic ;
  signal cddip1_ism_idat : std_logic ;
  signal cddip1_ism_isync : std_logic ;
  signal cddip1_ism_mbe : std_logic ;
  signal cddip2_im_rdy : std_logic ;
  signal cddip2_ism_idat : std_logic ;
  signal cddip2_ism_isync : std_logic ;
  signal cddip2_ism_mbe : std_logic ;
  signal cddip3_im_rdy : std_logic ;
  signal cddip3_ism_idat : std_logic ;
  signal cddip3_ism_isync : std_logic ;
  signal cddip3_ism_mbe : std_logic ;
  signal cddip3_ism_odat : std_logic ;
  signal cddip3_ism_osync : std_logic ;
  signal ckv_bimc_idat : std_logic ;
  signal ckv_bimc_isync : std_logic ;
  signal ckv_capability_lst : std_logic_vector(15 downto 0) ;
  signal ckv_capability_type : std_logic_vector(3 downto 0) ;
  signal ckv_cmnd_addr : std_logic_vector(14 downto 0) ;
  signal ckv_cmnd_op : std_logic_vector(3 downto 0) ;
  signal ckv_ia_capability : work.cr_kme_regfilePKG.ckv_ia_capability_t ;
  signal ckv_ia_rdata_part0 : std_logic_vector(31 downto 0) ;
  signal ckv_ia_rdata_part1 : std_logic_vector(31 downto 0) ;
  signal ckv_ia_status : work.cr_kme_regfilePKG.ckv_ia_status_t ;
  signal ckv_rd_dat : std_logic_vector(63 downto 0) ;
  signal ckv_stat_addr : std_logic_vector(14 downto 0) ;
  signal ckv_stat_code : std_logic_vector(2 downto 0) ;
  signal ckv_stat_datawords : std_logic_vector(4 downto 0) ;
  signal ckv_wr_dat : std_logic_vector(63 downto 0) ;
  signal disable_ckv_kim_ism_reads : std_logic ;
  signal engine_sticky_status : std_logic_vector(7 downto 0) ;
  signal interrupt_status : std_logic_vector(4 downto 0) ;
  signal kdf_drbg_ctrl : std_logic_vector(1 downto 0) ;
  signal kim_bimc_idat : std_logic ;
  signal kim_bimc_isync : std_logic ;
  signal kim_capability_lst : std_logic_vector(15 downto 0) ;
  signal kim_capability_type : std_logic_vector(3 downto 0) ;
  signal kim_cmnd_addr : std_logic_vector(13 downto 0) ;
  signal kim_cmnd_op : std_logic_vector(3 downto 0) ;
  signal kim_ia_capability : work.cr_kme_regfilePKG.kim_ia_capability_t ;
  signal kim_ia_rdata_part0 : std_logic_vector(20 downto 0) ;
  signal kim_ia_rdata_part1 : std_logic_vector(16 downto 0) ;
  signal kim_ia_status : work.cr_kme_regfilePKG.kim_ia_status_t ;
  signal kim_rd_dat : std_logic_vector(37 downto 0) ;
  signal kim_stat_addr : std_logic_vector(13 downto 0) ;
  signal kim_stat_code : std_logic_vector(2 downto 0) ;
  signal kim_stat_datawords : std_logic_vector(4 downto 0) ;
  signal kim_wr_dat : std_logic_vector(37 downto 0) ;
  signal locl_ack : std_logic ;
  signal locl_err_ack : std_logic ;
  signal locl_rd_data : std_logic_vector(31 downto 0) ;
  signal locl_rd_strb : std_logic ;
  signal locl_wr_strb : std_logic ;
  signal o_bimc_cmd0 : std_logic_vector(31 downto 0) ;
  signal o_bimc_cmd1 : std_logic_vector(31 downto 0) ;
  signal o_bimc_cmd2 : std_logic_vector(10 downto 0) ;
  signal o_bimc_dbgcmd2 : std_logic_vector(9 downto 0) ;
  signal o_bimc_ecc_correctable_error_cnt : std_logic_vector(31 downto 0) ;
  signal o_bimc_ecc_uncorrectable_error_cnt : std_logic_vector(31 downto 0) ;
  signal o_bimc_eccpar_debug : std_logic_vector(28 downto 0) ;
  signal o_bimc_global_config : std_logic_vector(31 downto 0) ;
  signal o_bimc_monitor_mask : std_logic_vector(6 downto 0) ;
  signal o_bimc_parity_error_cnt : std_logic_vector(31 downto 0) ;
  signal o_bimc_pollrsp2 : std_logic_vector(9 downto 0) ;
  signal o_bimc_rxcmd2 : std_logic_vector(9 downto 0) ;
  signal o_bimc_rxrsp2 : std_logic_vector(9 downto 0) ;
  signal o_ckv_ia_config : std_logic_vector(18 downto 0) ;
  signal o_ckv_ia_wdata_part0 : std_logic_vector(31 downto 0) ;
  signal o_ckv_ia_wdata_part1 : std_logic_vector(31 downto 0) ;
  signal o_disable_ckv_kim_ism_reads : std_logic ;
  signal o_engine_sticky_status : std_logic_vector(7 downto 0) ;
  signal o_interrupt_mask : std_logic_vector(4 downto 0) ;
  signal o_kdf_drbg_ctrl : std_logic_vector(1 downto 0) ;
  signal o_kdf_drbg_seed_0_reseed_interval_0 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_reseed_interval_1 : std_logic_vector(15 downto 0) ;
  signal o_kdf_drbg_seed_0_state_key_127_96 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_state_key_159_128 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_state_key_191_160 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_state_key_223_192 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_state_key_255_224 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_state_key_31_0 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_state_key_63_32 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_state_key_95_64 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_state_value_127_96 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_state_value_31_0 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_state_value_63_32 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_0_state_value_95_64 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_reseed_interval_0 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_reseed_interval_1 : std_logic_vector(15 downto 0) ;
  signal o_kdf_drbg_seed_1_state_key_127_96 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_state_key_159_128 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_state_key_191_160 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_state_key_223_192 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_state_key_255_224 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_state_key_31_0 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_state_key_63_32 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_state_key_95_64 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_state_value_127_96 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_state_value_31_0 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_state_value_63_32 : std_logic_vector(31 downto 0) ;
  signal o_kdf_drbg_seed_1_state_value_95_64 : std_logic_vector(31 downto 0) ;
  signal o_kim_ia_config : std_logic_vector(17 downto 0) ;
  signal o_kim_ia_wdata_part0 : std_logic_vector(20 downto 0) ;
  signal o_kim_ia_wdata_part1 : std_logic_vector(16 downto 0) ;
  signal o_send_kme_ib_beat : std_logic ;
  signal o_tready_override_val : std_logic ;
  signal regs_sa_ctrl : std_logic_vector(31 downto 0) ;
  signal send_kme_ib_beat : std_logic ;
  signal set_drbg_expired_int : std_logic ;
  signal wr_data : std_logic_vector(31 downto 0) ;
  signal wr_stb : std_logic ;
  signal reg_addr : std_logic_vector(10 downto 0) ;
  signal locl_addr : std_logic_vector(10 downto 0) ;
  signal locl_wr_data : std_logic_vector(31 downto 0) ;
  signal spare : work.cr_kme_regfilePKG.spare_t ;
  signal cceip0_out_ia_wdata : work.cr_kme_regfilePKG.cceip0_out_t ;
  signal cceip0_out_ia_config : work.cr_kme_regfilePKG.cceip0_out_ia_config_t ;
  signal cceip0_out_ia_rdata : work.cr_kme_regfilePKG.cceip0_out_t ;
  signal cceip0_out_ia_status : work.cr_kme_regfilePKG.cceip0_out_ia_status_t ;
  signal cceip0_out_ia_capability :
   work.cr_kme_regfilePKG.cceip0_out_ia_capability_t ;
  signal cceip0_out_im_status : work.cr_kme_regfilePKG.cceip0_out_im_status_t ;
  signal cceip0_out_im_config : work.cr_kme_regfilePKG.cceip0_out_im_config_t ;
  signal cddip0_out_ia_wdata : work.cr_kme_regfilePKG.cddip0_out_t ;
  signal cddip0_out_ia_config : work.cr_kme_regfilePKG.cddip0_out_ia_config_t ;
  signal cddip0_out_ia_rdata : work.cr_kme_regfilePKG.cddip0_out_t ;
  signal cddip0_out_ia_status : work.cr_kme_regfilePKG.cddip0_out_ia_status_t ;
  signal cddip0_out_ia_capability :
   work.cr_kme_regfilePKG.cddip0_out_ia_capability_t ;
  signal cddip0_out_im_status : work.cr_kme_regfilePKG.cddip0_out_im_status_t ;
  signal cddip0_out_im_config : work.cr_kme_regfilePKG.cddip0_out_im_config_t ;
  signal cceip1_out_ia_wdata : work.cr_kme_regfilePKG.cceip1_out_t ;
  signal cceip1_out_ia_config : work.cr_kme_regfilePKG.cceip1_out_ia_config_t ;
  signal cceip1_out_ia_rdata : work.cr_kme_regfilePKG.cceip1_out_t ;
  signal cceip1_out_ia_status : work.cr_kme_regfilePKG.cceip1_out_ia_status_t ;
  signal cceip1_out_ia_capability :
   work.cr_kme_regfilePKG.cceip1_out_ia_capability_t ;
  signal cceip1_out_im_status : work.cr_kme_regfilePKG.cceip1_out_im_status_t ;
  signal cceip1_out_im_config : work.cr_kme_regfilePKG.cceip1_out_im_config_t ;
  signal cddip1_out_ia_wdata : work.cr_kme_regfilePKG.cddip1_out_t ;
  signal cddip1_out_ia_config : work.cr_kme_regfilePKG.cddip1_out_ia_config_t ;
  signal cddip1_out_ia_rdata : work.cr_kme_regfilePKG.cddip1_out_t ;
  signal cddip1_out_ia_status : work.cr_kme_regfilePKG.cddip1_out_ia_status_t ;
  signal cddip1_out_ia_capability :
   work.cr_kme_regfilePKG.cddip1_out_ia_capability_t ;
  signal cddip1_out_im_status : work.cr_kme_regfilePKG.cddip1_out_im_status_t ;
  signal cddip1_out_im_config : work.cr_kme_regfilePKG.cddip1_out_im_config_t ;
  signal cceip2_out_ia_wdata : work.cr_kme_regfilePKG.cceip2_out_t ;
  signal cceip2_out_ia_config : work.cr_kme_regfilePKG.cceip2_out_ia_config_t ;
  signal cceip2_out_ia_rdata : work.cr_kme_regfilePKG.cceip2_out_t ;
  signal cceip2_out_ia_status : work.cr_kme_regfilePKG.cceip2_out_ia_status_t ;
  signal cceip2_out_ia_capability :
   work.cr_kme_regfilePKG.cceip2_out_ia_capability_t ;
  signal cceip2_out_im_status : work.cr_kme_regfilePKG.cceip2_out_im_status_t ;
  signal cceip2_out_im_config : work.cr_kme_regfilePKG.cceip2_out_im_config_t ;
  signal cddip2_out_ia_wdata : work.cr_kme_regfilePKG.cddip2_out_t ;
  signal cddip2_out_ia_config : work.cr_kme_regfilePKG.cddip2_out_ia_config_t ;
  signal cddip2_out_ia_rdata : work.cr_kme_regfilePKG.cddip2_out_t ;
  signal cddip2_out_ia_status : work.cr_kme_regfilePKG.cddip2_out_ia_status_t ;
  signal cddip2_out_ia_capability :
   work.cr_kme_regfilePKG.cddip2_out_ia_capability_t ;
  signal cddip2_out_im_status : work.cr_kme_regfilePKG.cddip2_out_im_status_t ;
  signal cddip2_out_im_config : work.cr_kme_regfilePKG.cddip2_out_im_config_t ;
  signal cceip3_out_ia_wdata : work.cr_kme_regfilePKG.cceip3_out_t ;
  signal cceip3_out_ia_config : work.cr_kme_regfilePKG.cceip3_out_ia_config_t ;
  signal cceip3_out_ia_rdata : work.cr_kme_regfilePKG.cceip3_out_t ;
  signal cceip3_out_ia_status : work.cr_kme_regfilePKG.cceip3_out_ia_status_t ;
  signal cceip3_out_ia_capability :
   work.cr_kme_regfilePKG.cceip3_out_ia_capability_t ;
  signal cceip3_out_im_status : work.cr_kme_regfilePKG.cceip3_out_im_status_t ;
  signal cceip3_out_im_config : work.cr_kme_regfilePKG.cceip3_out_im_config_t ;
  signal cddip3_out_ia_wdata : work.cr_kme_regfilePKG.cddip3_out_t ;
  signal cddip3_out_ia_config : work.cr_kme_regfilePKG.cddip3_out_ia_config_t ;
  signal cddip3_out_ia_rdata : work.cr_kme_regfilePKG.cddip3_out_t ;
  signal cddip3_out_ia_status : work.cr_kme_regfilePKG.cddip3_out_ia_status_t ;
  signal cddip3_out_ia_capability :
   work.cr_kme_regfilePKG.cddip3_out_ia_capability_t ;
  signal cddip3_out_im_status : work.cr_kme_regfilePKG.cddip3_out_im_status_t ;
  signal cddip3_out_im_config : work.cr_kme_regfilePKG.cddip3_out_im_config_t ;
  signal sa_snapshot_ia_wdata : work.cr_kme_regfilePKG.sa_snapshot_t ;
  signal sa_snapshot_ia_rdata : work.cr_kme_regfilePKG.sa_snapshot_t ;
  signal sa_snapshot_ia_config : work.cr_kme_regfilePKG.sa_snapshot_ia_config_t
   ;
  signal sa_snapshot_ia_status : work.cr_kme_regfilePKG.sa_snapshot_ia_status_t
   ;
  signal sa_snapshot_ia_capability :
   work.cr_kme_regfilePKG.sa_snapshot_ia_capability_t ;
  signal sa_count_ia_wdata : work.cr_kme_regfilePKG.sa_count_t ;
  signal sa_count_ia_rdata : work.cr_kme_regfilePKG.sa_count_t ;
  signal sa_count_ia_config : work.cr_kme_regfilePKG.sa_count_ia_config_t ;
  signal sa_count_ia_status : work.cr_kme_regfilePKG.sa_count_ia_status_t ;
  signal sa_count_ia_capability :
   work.cr_kme_regfilePKG.sa_count_ia_capability_t ;
  signal sa_ctrl_ia_wdata : work.cr_kme_regfilePKG.sa_ctrl_t ;
  signal sa_ctrl_ia_rdata : work.cr_kme_regfilePKG.sa_ctrl_t ;
  signal sa_ctrl_ia_config : work.cr_kme_regfilePKG.sa_ctrl_ia_config_t ;
  signal sa_ctrl_ia_status : work.cr_kme_regfilePKG.sa_ctrl_ia_status_t ;
  signal sa_ctrl_ia_capability : work.cr_kme_regfilePKG.sa_ctrl_ia_capability_t
   ;
  signal sa_ctrl_rst_dat : DUMMY3(31 downto 0) ;
  signal cceip0_im_din : im_din_t ;
  signal cceip0_im_vld : std_logic ;
  signal cddip0_im_din : im_din_t ;
  signal cddip0_im_vld : std_logic ;
  signal cceip1_im_din : im_din_t ;
  signal cceip1_im_vld : std_logic ;
  signal cddip1_im_din : im_din_t ;
  signal cddip1_im_vld : std_logic ;
  signal cceip2_im_din : im_din_t ;
  signal cceip2_im_vld : std_logic ;
  signal cddip2_im_din : im_din_t ;
  signal cddip2_im_vld : std_logic ;
  signal cceip3_im_din : im_din_t ;
  signal cceip3_im_vld : std_logic ;
  signal cddip3_im_din : im_din_t ;
  signal cddip3_im_vld : std_logic ;
  signal im_available : std_logic_vector(15 downto 0) ;
  signal im_consumed_kme_cceip0 : im_consumed_t ;
  signal im_available_kme_cceip0 : im_available_t ;
  signal im_consumed_kme_cddip0 : im_consumed_t ;
  signal im_available_kme_cddip0 : im_available_t ;
  signal im_consumed_kme_cceip1 : im_consumed_t ;
  signal im_available_kme_cceip1 : im_available_t ;
  signal im_consumed_kme_cddip1 : im_consumed_t ;
  signal im_available_kme_cddip1 : im_available_t ;
  signal im_consumed_kme_cceip2 : im_consumed_t ;
  signal im_available_kme_cceip2 : im_available_t ;
  signal im_consumed_kme_cddip2 : im_consumed_t ;
  signal im_available_kme_cddip2 : im_available_t ;
  signal im_consumed_kme_cceip3 : im_consumed_t ;
  signal im_available_kme_cceip3 : im_available_t ;
  signal im_consumed_kme_cddip3 : im_consumed_t ;
  signal im_available_kme_cddip3 : im_available_t ;
  signal kme_cceip0_ob_out_post : axi4s_dp_bus_t ;
  signal kme_cceip1_ob_out_post : axi4s_dp_bus_t ;
  signal kme_cceip2_ob_out_post : axi4s_dp_bus_t ;
  signal kme_cceip3_ob_out_post : axi4s_dp_bus_t ;
  signal kme_cddip0_ob_out_post : axi4s_dp_bus_t ;
  signal kme_cddip1_ob_out_post : axi4s_dp_bus_t ;
  signal kme_cddip2_ob_out_post : axi4s_dp_bus_t ;
  signal kme_cddip3_ob_out_post : axi4s_dp_bus_t ;
  signal blkid_revid_config : std_logic_vector(31 downto 0) ;
  signal revid_wire : work.cr_kme_regfilePKG.revid_t ;
  signal DUMMY724 : std_logic_vector(2175 downto 0) ;
  signal DUMMY725 : std_logic_vector(0 downto 0) ;
  signal DUMMY726 : std_logic_vector(31 downto 0) ;
  signal DUMMY727 : std_logic_vector(15 downto 0) ;
  signal DUMMY728 : std_logic_vector(15 downto 0) ;
  signal DUMMY729 : std_logic_vector(15 downto 0) ;
  signal DUMMY730 : std_logic_vector(15 downto 0) ;
  signal DUMMY731 : std_logic_vector(15 downto 0) ;
  signal DUMMY732 : std_logic_vector(15 downto 0) ;
  signal DUMMY733 : std_logic_vector(15 downto 0) ;
  signal DUMMY734 : std_logic_vector(15 downto 0) ;
  signal DUMMY735 : std_logic_vector(31 downto 0) ;
  signal DUMMY736 : std_logic_vector(0 downto 0) ;
  signal DUMMY737 : std_logic_vector(0 downto 0) ;
  signal DUMMY738 : std_logic_vector(0 downto 0) ;
  signal DUMMY739 : std_logic_vector(0 downto 0) ;

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 84)
    port map (
       DUMMY6
      ,rbus_ring_o
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY7
      ,kme_cceip0_ob_out
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY8
      ,kme_cceip0_ob_in_mod
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY9
      ,kme_cceip1_ob_out
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY10
      ,kme_cceip1_ob_in_mod
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY11
      ,kme_cceip2_ob_out
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY12
      ,kme_cceip2_ob_in_mod
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY13
      ,kme_cceip3_ob_out
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY14
      ,kme_cceip3_ob_in_mod
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY15
      ,kme_cddip0_ob_out
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY16
      ,kme_cddip0_ob_in_mod
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY17
      ,kme_cddip1_ob_out
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY18
      ,kme_cddip1_ob_in_mod
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY19
      ,kme_cddip2_ob_out
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY20
      ,kme_cddip2_ob_in_mod
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY21
      ,kme_cddip3_ob_out
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY22
      ,kme_cddip3_ob_in_mod
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 38)
    port map (
       DUMMY23
      ,kim_dout
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 2176)
    port map (
       DUMMY24
      ,DUMMY724
    ) ;
  DUMMY724 <= $__pack__(0,labels) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY25
      ,tready_override
    ) ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 7)
    port map (
       DUMMY26
      ,cceip_encrypt_kop_fifo_override
    ) ;
  _zz_strnp_21 : ixc_assign
    generic map(W => 7)
    port map (
       DUMMY27
      ,cceip_validate_kop_fifo_override
    ) ;
  _zz_strnp_22 : ixc_assign
    generic map(W => 7)
    port map (
       DUMMY28
      ,cddip_decrypt_kop_fifo_override
    ) ;
  _zz_strnp_23 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY29
      ,sa_global_ctrl
    ) ;
  _zy_simnet_cio_24 <= '0' ;
  _zz_strnp_24 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY30
      ,locl_addr
    ) ;
  _zz_strnp_25 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY31
      ,locl_wr_strb
    ) ;
  _zz_strnp_26 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY32
      ,locl_wr_data
    ) ;
  _zz_strnp_27 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY33
      ,locl_rd_strb
    ) ;
  _zz_strnp_28 : ixc_assign
    generic map(W => 32)
    port map (
       locl_rd_data
      ,DUMMY34
    ) ;
  _zz_strnp_29 : ixc_assign
    generic map(W => 1)
    port map (
       locl_ack
      ,DUMMY35
    ) ;
  _zz_strnp_30 : ixc_assign
    generic map(W => 1)
    port map (
       locl_err_ack
      ,DUMMY36
    ) ;
  _zz_strnp_31 : ixc_assign
    generic map(W => 25)
    port map (
       spare(31 downto 7)
      ,_zy_simnet_tvar_33
    ) ;
  _zz_strnp_32 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY725
      ,_zy_simnet_tvar_34
    ) ;
  spare(+3) <= it_conv_std_logic(DUMMY725) ;
  _zz_strnp_33 : ixc_assign
    generic map(W => 1)
    port map (
       o_tready_override_val
      ,_zy_simnet_tvar_35
    ) ;
  _zz_strnp_34 : ixc_assign
    generic map(W => 1)
    port map (
       o_disable_ckv_kim_ism_reads
      ,_zy_simnet_tvar_36
    ) ;
  _zz_strnp_35 : ixc_assign
    generic map(W => 1)
    port map (
       o_send_kme_ib_beat
      ,_zy_simnet_tvar_37
    ) ;
  _zz_strnp_36 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY726
      ,_zy_simnet_tvar_32
    ) ;
  ( _zy_simnet_tvar_33(0),_zy_simnet_tvar_33(1),_zy_simnet_tvar_33(2
  ),_zy_simnet_tvar_33(3),_zy_simnet_tvar_33(4),_zy_simnet_tvar_33(5
  ),_zy_simnet_tvar_33(6),_zy_simnet_tvar_33(7),_zy_simnet_tvar_33(8
  ),_zy_simnet_tvar_33(9),_zy_simnet_tvar_33(10),_zy_simnet_tvar_33(11
  ),_zy_simnet_tvar_33(12),_zy_simnet_tvar_33(13),_zy_simnet_tvar_33(14
  ),_zy_simnet_tvar_33(15),_zy_simnet_tvar_33(16),_zy_simnet_tvar_33(17
  ),_zy_simnet_tvar_33(18),_zy_simnet_tvar_33(19),_zy_simnet_tvar_33(20
  ),_zy_simnet_tvar_33(21),_zy_simnet_tvar_33(22),_zy_simnet_tvar_33(23
  ),_zy_simnet_tvar_33(24
  ),kdf_test_mode_en,always_validate_kim_ref,manual_txc,_zy_simnet_tvar_34,_zy_simnet_tvar_35,_zy_simnet_tvar_36,_zy_simnet_tvar_37
   ) <= ext(DUMMY726,32) ;
  _zz_strnp_37 : ixc_assign
    generic map(W => 32)
    port map (
       cceip0_out_ia_wdata(31 downto 0)
      ,DUMMY37
    ) ;
  _zz_strnp_38 : ixc_assign
    generic map(W => 32)
    port map (
       cceip0_out_ia_wdata(32+31 downto 32)
      ,DUMMY38
    ) ;
  _zz_strnp_39 : ixc_assign
    generic map(W => 32)
    port map (
       cceip0_out_ia_wdata(64+31 downto 64)
      ,DUMMY39
    ) ;
  _zz_strnp_40 : ixc_assign
    generic map(W => 13)
    port map (
       cceip0_out_ia_config
      ,DUMMY40
    ) ;
  _zz_strnp_41 : ixc_assign
    generic map(W => 12)
    port map (
       cceip0_out_im_config
      ,DUMMY41
    ) ;
  _zz_strnp_42 : ixc_assign
    generic map(W => 32)
    port map (
       cceip1_out_ia_wdata(31 downto 0)
      ,DUMMY42
    ) ;
  _zz_strnp_43 : ixc_assign
    generic map(W => 32)
    port map (
       cceip1_out_ia_wdata(32+31 downto 32)
      ,DUMMY43
    ) ;
  _zz_strnp_44 : ixc_assign
    generic map(W => 32)
    port map (
       cceip1_out_ia_wdata(64+31 downto 64)
      ,DUMMY44
    ) ;
  _zz_strnp_45 : ixc_assign
    generic map(W => 13)
    port map (
       cceip1_out_ia_config
      ,DUMMY45
    ) ;
  _zz_strnp_46 : ixc_assign
    generic map(W => 12)
    port map (
       cceip1_out_im_config
      ,DUMMY46
    ) ;
  _zz_strnp_47 : ixc_assign
    generic map(W => 32)
    port map (
       cceip2_out_ia_wdata(31 downto 0)
      ,DUMMY47
    ) ;
  _zz_strnp_48 : ixc_assign
    generic map(W => 32)
    port map (
       cceip2_out_ia_wdata(32+31 downto 32)
      ,DUMMY48
    ) ;
  _zz_strnp_49 : ixc_assign
    generic map(W => 32)
    port map (
       cceip2_out_ia_wdata(64+31 downto 64)
      ,DUMMY49
    ) ;
  _zz_strnp_50 : ixc_assign
    generic map(W => 13)
    port map (
       cceip2_out_ia_config
      ,DUMMY50
    ) ;
  _zz_strnp_51 : ixc_assign
    generic map(W => 12)
    port map (
       cceip2_out_im_config
      ,DUMMY51
    ) ;
  _zz_strnp_52 : ixc_assign
    generic map(W => 32)
    port map (
       cceip3_out_ia_wdata(31 downto 0)
      ,DUMMY52
    ) ;
  _zz_strnp_53 : ixc_assign
    generic map(W => 32)
    port map (
       cceip3_out_ia_wdata(32+31 downto 32)
      ,DUMMY53
    ) ;
  _zz_strnp_54 : ixc_assign
    generic map(W => 32)
    port map (
       cceip3_out_ia_wdata(64+31 downto 64)
      ,DUMMY54
    ) ;
  _zz_strnp_55 : ixc_assign
    generic map(W => 13)
    port map (
       cceip3_out_ia_config
      ,DUMMY55
    ) ;
  _zz_strnp_56 : ixc_assign
    generic map(W => 12)
    port map (
       cceip3_out_im_config
      ,DUMMY56
    ) ;
  _zz_strnp_57 : ixc_assign
    generic map(W => 32)
    port map (
       cddip0_out_ia_wdata(31 downto 0)
      ,DUMMY57
    ) ;
  _zz_strnp_58 : ixc_assign
    generic map(W => 32)
    port map (
       cddip0_out_ia_wdata(32+31 downto 32)
      ,DUMMY58
    ) ;
  _zz_strnp_59 : ixc_assign
    generic map(W => 32)
    port map (
       cddip0_out_ia_wdata(64+31 downto 64)
      ,DUMMY59
    ) ;
  _zz_strnp_60 : ixc_assign
    generic map(W => 13)
    port map (
       cddip0_out_ia_config
      ,DUMMY60
    ) ;
  _zz_strnp_61 : ixc_assign
    generic map(W => 12)
    port map (
       cddip0_out_im_config
      ,DUMMY61
    ) ;
  _zz_strnp_62 : ixc_assign
    generic map(W => 32)
    port map (
       cddip1_out_ia_wdata(31 downto 0)
      ,DUMMY62
    ) ;
  _zz_strnp_63 : ixc_assign
    generic map(W => 32)
    port map (
       cddip1_out_ia_wdata(32+31 downto 32)
      ,DUMMY63
    ) ;
  _zz_strnp_64 : ixc_assign
    generic map(W => 32)
    port map (
       cddip1_out_ia_wdata(64+31 downto 64)
      ,DUMMY64
    ) ;
  _zz_strnp_65 : ixc_assign
    generic map(W => 13)
    port map (
       cddip1_out_ia_config
      ,DUMMY65
    ) ;
  _zz_strnp_66 : ixc_assign
    generic map(W => 12)
    port map (
       cddip1_out_im_config
      ,DUMMY66
    ) ;
  _zz_strnp_67 : ixc_assign
    generic map(W => 32)
    port map (
       cddip2_out_ia_wdata(31 downto 0)
      ,DUMMY67
    ) ;
  _zz_strnp_68 : ixc_assign
    generic map(W => 32)
    port map (
       cddip2_out_ia_wdata(32+31 downto 32)
      ,DUMMY68
    ) ;
  _zz_strnp_69 : ixc_assign
    generic map(W => 32)
    port map (
       cddip2_out_ia_wdata(64+31 downto 64)
      ,DUMMY69
    ) ;
  _zz_strnp_70 : ixc_assign
    generic map(W => 13)
    port map (
       cddip2_out_ia_config
      ,DUMMY70
    ) ;
  _zz_strnp_71 : ixc_assign
    generic map(W => 12)
    port map (
       cddip2_out_im_config
      ,DUMMY71
    ) ;
  _zz_strnp_72 : ixc_assign
    generic map(W => 32)
    port map (
       cddip3_out_ia_wdata(31 downto 0)
      ,DUMMY72
    ) ;
  _zz_strnp_73 : ixc_assign
    generic map(W => 32)
    port map (
       cddip3_out_ia_wdata(32+31 downto 32)
      ,DUMMY73
    ) ;
  _zz_strnp_74 : ixc_assign
    generic map(W => 32)
    port map (
       cddip3_out_ia_wdata(64+31 downto 64)
      ,DUMMY74
    ) ;
  _zz_strnp_75 : ixc_assign
    generic map(W => 13)
    port map (
       cddip3_out_ia_config
      ,DUMMY75
    ) ;
  _zz_strnp_76 : ixc_assign
    generic map(W => 12)
    port map (
       cddip3_out_im_config
      ,DUMMY76
    ) ;
  _zz_strnp_77 : ixc_assign
    generic map(W => 32)
    port map (
       o_ckv_ia_wdata_part0
      ,DUMMY77
    ) ;
  _zz_strnp_78 : ixc_assign
    generic map(W => 32)
    port map (
       o_ckv_ia_wdata_part1
      ,DUMMY78
    ) ;
  _zz_strnp_79 : ixc_assign
    generic map(W => 19)
    port map (
       o_ckv_ia_config
      ,DUMMY79
    ) ;
  _zz_strnp_80 : ixc_assign
    generic map(W => 21)
    port map (
       o_kim_ia_wdata_part0
      ,DUMMY80
    ) ;
  _zz_strnp_81 : ixc_assign
    generic map(W => 17)
    port map (
       o_kim_ia_wdata_part1
      ,DUMMY81
    ) ;
  _zz_strnp_82 : ixc_assign
    generic map(W => 18)
    port map (
       o_kim_ia_config
      ,DUMMY82
    ) ;
  _zz_strnp_83 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY727
      ,_zy_simnet_tvar_92
    ) ;
  ( labels(0)(271),labels(0)(270),labels(0)(269),labels(0)(268),labels(0)(267
  ),labels(0)(266),labels(0)(265),labels(0)(8),labels(0)(7),labels(0)(6),labels
  (0)(5),labels(0)(4),labels(0)(3),labels(0)(2),labels(0)(1),labels(0)(0) ) <=
   ext(DUMMY727,16) ;
  _zz_strnp_84 : ixc_assign
    generic map(W => 32)
    port map (
       labels(0)(264 downto 233)
      ,DUMMY83
    ) ;
  _zz_strnp_85 : ixc_assign
    generic map(W => 32)
    port map (
       labels(0)(232 downto 201)
      ,DUMMY84
    ) ;
  _zz_strnp_86 : ixc_assign
    generic map(W => 32)
    port map (
       labels(0)(200 downto 169)
      ,DUMMY85
    ) ;
  _zz_strnp_87 : ixc_assign
    generic map(W => 32)
    port map (
       labels(0)(168 downto 137)
      ,DUMMY86
    ) ;
  _zz_strnp_88 : ixc_assign
    generic map(W => 32)
    port map (
       labels(0)(136 downto 105)
      ,DUMMY87
    ) ;
  _zz_strnp_89 : ixc_assign
    generic map(W => 32)
    port map (
       labels(0)(104 downto 73)
      ,DUMMY88
    ) ;
  _zz_strnp_90 : ixc_assign
    generic map(W => 32)
    port map (
       labels(0)(72 downto 41)
      ,DUMMY89
    ) ;
  _zz_strnp_91 : ixc_assign
    generic map(W => 32)
    port map (
       labels(0)(40 downto 9)
      ,DUMMY90
    ) ;
  _zz_strnp_92 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY728
      ,_zy_simnet_tvar_101
    ) ;
  ( labels(1)(271),labels(1)(270),labels(1)(269),labels(1)(268),labels(1)(267
  ),labels(1)(266),labels(1)(265),labels(1)(8),labels(1)(7),labels(1)(6),labels
  (1)(5),labels(1)(4),labels(1)(3),labels(1)(2),labels(1)(1),labels(1)(0) ) <=
   ext(DUMMY728,16) ;
  _zz_strnp_93 : ixc_assign
    generic map(W => 32)
    port map (
       labels(1)(264 downto 233)
      ,DUMMY91
    ) ;
  _zz_strnp_94 : ixc_assign
    generic map(W => 32)
    port map (
       labels(1)(232 downto 201)
      ,DUMMY92
    ) ;
  _zz_strnp_95 : ixc_assign
    generic map(W => 32)
    port map (
       labels(1)(200 downto 169)
      ,DUMMY93
    ) ;
  _zz_strnp_96 : ixc_assign
    generic map(W => 32)
    port map (
       labels(1)(168 downto 137)
      ,DUMMY94
    ) ;
  _zz_strnp_97 : ixc_assign
    generic map(W => 32)
    port map (
       labels(1)(136 downto 105)
      ,DUMMY95
    ) ;
  _zz_strnp_98 : ixc_assign
    generic map(W => 32)
    port map (
       labels(1)(104 downto 73)
      ,DUMMY96
    ) ;
  _zz_strnp_99 : ixc_assign
    generic map(W => 32)
    port map (
       labels(1)(72 downto 41)
      ,DUMMY97
    ) ;
  _zz_strnp_100 : ixc_assign
    generic map(W => 32)
    port map (
       labels(1)(40 downto 9)
      ,DUMMY98
    ) ;
  _zz_strnp_101 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY729
      ,_zy_simnet_tvar_110
    ) ;
  ( labels(2)(271),labels(2)(270),labels(2)(269),labels(2)(268),labels(2)(267
  ),labels(2)(266),labels(2)(265),labels(2)(8),labels(2)(7),labels(2)(6),labels
  (2)(5),labels(2)(4),labels(2)(3),labels(2)(2),labels(2)(1),labels(2)(0) ) <=
   ext(DUMMY729,16) ;
  _zz_strnp_102 : ixc_assign
    generic map(W => 32)
    port map (
       labels(2)(264 downto 233)
      ,DUMMY99
    ) ;
  _zz_strnp_103 : ixc_assign
    generic map(W => 32)
    port map (
       labels(2)(232 downto 201)
      ,DUMMY100
    ) ;
  _zz_strnp_104 : ixc_assign
    generic map(W => 32)
    port map (
       labels(2)(200 downto 169)
      ,DUMMY101
    ) ;
  _zz_strnp_105 : ixc_assign
    generic map(W => 32)
    port map (
       labels(2)(168 downto 137)
      ,DUMMY102
    ) ;
  _zz_strnp_106 : ixc_assign
    generic map(W => 32)
    port map (
       labels(2)(136 downto 105)
      ,DUMMY103
    ) ;
  _zz_strnp_107 : ixc_assign
    generic map(W => 32)
    port map (
       labels(2)(104 downto 73)
      ,DUMMY104
    ) ;
  _zz_strnp_108 : ixc_assign
    generic map(W => 32)
    port map (
       labels(2)(72 downto 41)
      ,DUMMY105
    ) ;
  _zz_strnp_109 : ixc_assign
    generic map(W => 32)
    port map (
       labels(2)(40 downto 9)
      ,DUMMY106
    ) ;
  _zz_strnp_110 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY730
      ,_zy_simnet_tvar_119
    ) ;
  ( labels(3)(271),labels(3)(270),labels(3)(269),labels(3)(268),labels(3)(267
  ),labels(3)(266),labels(3)(265),labels(3)(8),labels(3)(7),labels(3)(6),labels
  (3)(5),labels(3)(4),labels(3)(3),labels(3)(2),labels(3)(1),labels(3)(0) ) <=
   ext(DUMMY730,16) ;
  _zz_strnp_111 : ixc_assign
    generic map(W => 32)
    port map (
       labels(3)(264 downto 233)
      ,DUMMY107
    ) ;
  _zz_strnp_112 : ixc_assign
    generic map(W => 32)
    port map (
       labels(3)(232 downto 201)
      ,DUMMY108
    ) ;
  _zz_strnp_113 : ixc_assign
    generic map(W => 32)
    port map (
       labels(3)(200 downto 169)
      ,DUMMY109
    ) ;
  _zz_strnp_114 : ixc_assign
    generic map(W => 32)
    port map (
       labels(3)(168 downto 137)
      ,DUMMY110
    ) ;
  _zz_strnp_115 : ixc_assign
    generic map(W => 32)
    port map (
       labels(3)(136 downto 105)
      ,DUMMY111
    ) ;
  _zz_strnp_116 : ixc_assign
    generic map(W => 32)
    port map (
       labels(3)(104 downto 73)
      ,DUMMY112
    ) ;
  _zz_strnp_117 : ixc_assign
    generic map(W => 32)
    port map (
       labels(3)(72 downto 41)
      ,DUMMY113
    ) ;
  _zz_strnp_118 : ixc_assign
    generic map(W => 32)
    port map (
       labels(3)(40 downto 9)
      ,DUMMY114
    ) ;
  _zz_strnp_119 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY731
      ,_zy_simnet_tvar_128
    ) ;
  ( labels(4)(271),labels(4)(270),labels(4)(269),labels(4)(268),labels(4)(267
  ),labels(4)(266),labels(4)(265),labels(4)(8),labels(4)(7),labels(4)(6),labels
  (4)(5),labels(4)(4),labels(4)(3),labels(4)(2),labels(4)(1),labels(4)(0) ) <=
   ext(DUMMY731,16) ;
  _zz_strnp_120 : ixc_assign
    generic map(W => 32)
    port map (
       labels(4)(264 downto 233)
      ,DUMMY115
    ) ;
  _zz_strnp_121 : ixc_assign
    generic map(W => 32)
    port map (
       labels(4)(232 downto 201)
      ,DUMMY116
    ) ;
  _zz_strnp_122 : ixc_assign
    generic map(W => 32)
    port map (
       labels(4)(200 downto 169)
      ,DUMMY117
    ) ;
  _zz_strnp_123 : ixc_assign
    generic map(W => 32)
    port map (
       labels(4)(168 downto 137)
      ,DUMMY118
    ) ;
  _zz_strnp_124 : ixc_assign
    generic map(W => 32)
    port map (
       labels(4)(136 downto 105)
      ,DUMMY119
    ) ;
  _zz_strnp_125 : ixc_assign
    generic map(W => 32)
    port map (
       labels(4)(104 downto 73)
      ,DUMMY120
    ) ;
  _zz_strnp_126 : ixc_assign
    generic map(W => 32)
    port map (
       labels(4)(72 downto 41)
      ,DUMMY121
    ) ;
  _zz_strnp_127 : ixc_assign
    generic map(W => 32)
    port map (
       labels(4)(40 downto 9)
      ,DUMMY122
    ) ;
  _zz_strnp_128 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY732
      ,_zy_simnet_tvar_137
    ) ;
  ( labels(5)(271),labels(5)(270),labels(5)(269),labels(5)(268),labels(5)(267
  ),labels(5)(266),labels(5)(265),labels(5)(8),labels(5)(7),labels(5)(6),labels
  (5)(5),labels(5)(4),labels(5)(3),labels(5)(2),labels(5)(1),labels(5)(0) ) <=
   ext(DUMMY732,16) ;
  _zz_strnp_129 : ixc_assign
    generic map(W => 32)
    port map (
       labels(5)(264 downto 233)
      ,DUMMY123
    ) ;
  _zz_strnp_130 : ixc_assign
    generic map(W => 32)
    port map (
       labels(5)(232 downto 201)
      ,DUMMY124
    ) ;
  _zz_strnp_131 : ixc_assign
    generic map(W => 32)
    port map (
       labels(5)(200 downto 169)
      ,DUMMY125
    ) ;
  _zz_strnp_132 : ixc_assign
    generic map(W => 32)
    port map (
       labels(5)(168 downto 137)
      ,DUMMY126
    ) ;
  _zz_strnp_133 : ixc_assign
    generic map(W => 32)
    port map (
       labels(5)(136 downto 105)
      ,DUMMY127
    ) ;
  _zz_strnp_134 : ixc_assign
    generic map(W => 32)
    port map (
       labels(5)(104 downto 73)
      ,DUMMY128
    ) ;
  _zz_strnp_135 : ixc_assign
    generic map(W => 32)
    port map (
       labels(5)(72 downto 41)
      ,DUMMY129
    ) ;
  _zz_strnp_136 : ixc_assign
    generic map(W => 32)
    port map (
       labels(5)(40 downto 9)
      ,DUMMY130
    ) ;
  _zz_strnp_137 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY733
      ,_zy_simnet_tvar_146
    ) ;
  ( labels(6)(271),labels(6)(270),labels(6)(269),labels(6)(268),labels(6)(267
  ),labels(6)(266),labels(6)(265),labels(6)(8),labels(6)(7),labels(6)(6),labels
  (6)(5),labels(6)(4),labels(6)(3),labels(6)(2),labels(6)(1),labels(6)(0) ) <=
   ext(DUMMY733,16) ;
  _zz_strnp_138 : ixc_assign
    generic map(W => 32)
    port map (
       labels(6)(264 downto 233)
      ,DUMMY131
    ) ;
  _zz_strnp_139 : ixc_assign
    generic map(W => 32)
    port map (
       labels(6)(232 downto 201)
      ,DUMMY132
    ) ;
  _zz_strnp_140 : ixc_assign
    generic map(W => 32)
    port map (
       labels(6)(200 downto 169)
      ,DUMMY133
    ) ;
  _zz_strnp_141 : ixc_assign
    generic map(W => 32)
    port map (
       labels(6)(168 downto 137)
      ,DUMMY134
    ) ;
  _zz_strnp_142 : ixc_assign
    generic map(W => 32)
    port map (
       labels(6)(136 downto 105)
      ,DUMMY135
    ) ;
  _zz_strnp_143 : ixc_assign
    generic map(W => 32)
    port map (
       labels(6)(104 downto 73)
      ,DUMMY136
    ) ;
  _zz_strnp_144 : ixc_assign
    generic map(W => 32)
    port map (
       labels(6)(72 downto 41)
      ,DUMMY137
    ) ;
  _zz_strnp_145 : ixc_assign
    generic map(W => 32)
    port map (
       labels(6)(40 downto 9)
      ,DUMMY138
    ) ;
  _zz_strnp_146 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY734
      ,_zy_simnet_tvar_155
    ) ;
  ( labels(7)(271),labels(7)(270),labels(7)(269),labels(7)(268),labels(7)(267
  ),labels(7)(266),labels(7)(265),labels(7)(8),labels(7)(7),labels(7)(6),labels
  (7)(5),labels(7)(4),labels(7)(3),labels(7)(2),labels(7)(1),labels(7)(0) ) <=
   ext(DUMMY734,16) ;
  _zz_strnp_147 : ixc_assign
    generic map(W => 32)
    port map (
       labels(7)(264 downto 233)
      ,DUMMY139
    ) ;
  _zz_strnp_148 : ixc_assign
    generic map(W => 32)
    port map (
       labels(7)(232 downto 201)
      ,DUMMY140
    ) ;
  _zz_strnp_149 : ixc_assign
    generic map(W => 32)
    port map (
       labels(7)(200 downto 169)
      ,DUMMY141
    ) ;
  _zz_strnp_150 : ixc_assign
    generic map(W => 32)
    port map (
       labels(7)(168 downto 137)
      ,DUMMY142
    ) ;
  _zz_strnp_151 : ixc_assign
    generic map(W => 32)
    port map (
       labels(7)(136 downto 105)
      ,DUMMY143
    ) ;
  _zz_strnp_152 : ixc_assign
    generic map(W => 32)
    port map (
       labels(7)(104 downto 73)
      ,DUMMY144
    ) ;
  _zz_strnp_153 : ixc_assign
    generic map(W => 32)
    port map (
       labels(7)(72 downto 41)
      ,DUMMY145
    ) ;
  _zz_strnp_154 : ixc_assign
    generic map(W => 32)
    port map (
       labels(7)(40 downto 9)
      ,DUMMY146
    ) ;
  _zz_strnp_155 : ixc_assign
    generic map(W => 2)
    port map (
       o_kdf_drbg_ctrl
      ,DUMMY147
    ) ;
  _zz_strnp_156 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_key_31_0
      ,DUMMY148
    ) ;
  _zz_strnp_157 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_key_63_32
      ,DUMMY149
    ) ;
  _zz_strnp_158 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_key_95_64
      ,DUMMY150
    ) ;
  _zz_strnp_159 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_key_127_96
      ,DUMMY151
    ) ;
  _zz_strnp_160 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_key_159_128
      ,DUMMY152
    ) ;
  _zz_strnp_161 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_key_191_160
      ,DUMMY153
    ) ;
  _zz_strnp_162 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_key_223_192
      ,DUMMY154
    ) ;
  _zz_strnp_163 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_key_255_224
      ,DUMMY155
    ) ;
  _zz_strnp_164 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_value_31_0
      ,DUMMY156
    ) ;
  _zz_strnp_165 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_value_63_32
      ,DUMMY157
    ) ;
  _zz_strnp_166 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_value_95_64
      ,DUMMY158
    ) ;
  _zz_strnp_167 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_state_value_127_96
      ,DUMMY159
    ) ;
  _zz_strnp_168 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_0_reseed_interval_0
      ,DUMMY160
    ) ;
  _zz_strnp_169 : ixc_assign
    generic map(W => 16)
    port map (
       o_kdf_drbg_seed_0_reseed_interval_1
      ,DUMMY161
    ) ;
  _zz_strnp_170 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_key_31_0
      ,DUMMY162
    ) ;
  _zz_strnp_171 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_key_63_32
      ,DUMMY163
    ) ;
  _zz_strnp_172 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_key_95_64
      ,DUMMY164
    ) ;
  _zz_strnp_173 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_key_127_96
      ,DUMMY165
    ) ;
  _zz_strnp_174 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_key_159_128
      ,DUMMY166
    ) ;
  _zz_strnp_175 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_key_191_160
      ,DUMMY167
    ) ;
  _zz_strnp_176 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_key_223_192
      ,DUMMY168
    ) ;
  _zz_strnp_177 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_key_255_224
      ,DUMMY169
    ) ;
  _zz_strnp_178 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_value_31_0
      ,DUMMY170
    ) ;
  _zz_strnp_179 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_value_63_32
      ,DUMMY171
    ) ;
  _zz_strnp_180 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_value_95_64
      ,DUMMY172
    ) ;
  _zz_strnp_181 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_state_value_127_96
      ,DUMMY173
    ) ;
  _zz_strnp_182 : ixc_assign
    generic map(W => 32)
    port map (
       o_kdf_drbg_seed_1_reseed_interval_0
      ,DUMMY174
    ) ;
  _zz_strnp_183 : ixc_assign
    generic map(W => 16)
    port map (
       o_kdf_drbg_seed_1_reseed_interval_1
      ,DUMMY175
    ) ;
  _zz_strnp_184 : ixc_assign
    generic map(W => 5)
    port map (
       o_interrupt_mask
      ,DUMMY176
    ) ;
  _zz_strnp_185 : ixc_assign
    generic map(W => 8)
    port map (
       o_engine_sticky_status
      ,DUMMY177
    ) ;
  _zz_strnp_186 : ixc_assign
    generic map(W => 7)
    port map (
       o_bimc_monitor_mask
      ,DUMMY178
    ) ;
  _zz_strnp_187 : ixc_assign
    generic map(W => 32)
    port map (
       o_bimc_ecc_uncorrectable_error_cnt
      ,DUMMY179
    ) ;
  _zz_strnp_188 : ixc_assign
    generic map(W => 32)
    port map (
       o_bimc_ecc_correctable_error_cnt
      ,DUMMY180
    ) ;
  _zz_strnp_189 : ixc_assign
    generic map(W => 32)
    port map (
       o_bimc_parity_error_cnt
      ,DUMMY181
    ) ;
  _zz_strnp_190 : ixc_assign
    generic map(W => 32)
    port map (
       o_bimc_global_config
      ,DUMMY182
    ) ;
  _zz_strnp_191 : ixc_assign
    generic map(W => 29)
    port map (
       o_bimc_eccpar_debug
      ,DUMMY183
    ) ;
  _zz_strnp_192 : ixc_assign
    generic map(W => 11)
    port map (
       o_bimc_cmd2
      ,DUMMY184
    ) ;
  _zz_strnp_193 : ixc_assign
    generic map(W => 32)
    port map (
       o_bimc_cmd1
      ,DUMMY185
    ) ;
  _zz_strnp_194 : ixc_assign
    generic map(W => 32)
    port map (
       o_bimc_cmd0
      ,DUMMY186
    ) ;
  _zz_strnp_195 : ixc_assign
    generic map(W => 10)
    port map (
       o_bimc_rxcmd2
      ,DUMMY187
    ) ;
  _zz_strnp_196 : ixc_assign
    generic map(W => 10)
    port map (
       o_bimc_rxrsp2
      ,DUMMY188
    ) ;
  _zz_strnp_197 : ixc_assign
    generic map(W => 10)
    port map (
       o_bimc_pollrsp2
      ,DUMMY189
    ) ;
  _zz_strnp_198 : ixc_assign
    generic map(W => 10)
    port map (
       o_bimc_dbgcmd2
      ,DUMMY190
    ) ;
  _zz_strnp_199 : ixc_assign
    generic map(W => 9)
    port map (
       tready_override
      ,DUMMY191
    ) ;
  _zz_strnp_200 : ixc_assign
    generic map(W => 32)
    port map (
       regs_sa_ctrl
      ,DUMMY192
    ) ;
  _zz_strnp_201 : ixc_assign
    generic map(W => 32)
    port map (
       sa_snapshot_ia_wdata(31 downto 0)
      ,DUMMY193
    ) ;
  _zz_strnp_202 : ixc_assign
    generic map(W => 32)
    port map (
       sa_snapshot_ia_wdata(32+31 downto 32)
      ,DUMMY194
    ) ;
  _zz_strnp_203 : ixc_assign
    generic map(W => 9)
    port map (
       sa_snapshot_ia_config
      ,DUMMY195
    ) ;
  _zz_strnp_204 : ixc_assign
    generic map(W => 32)
    port map (
       sa_count_ia_wdata(31 downto 0)
      ,DUMMY196
    ) ;
  _zz_strnp_205 : ixc_assign
    generic map(W => 32)
    port map (
       sa_count_ia_wdata(32+31 downto 32)
      ,DUMMY197
    ) ;
  _zz_strnp_206 : ixc_assign
    generic map(W => 9)
    port map (
       sa_count_ia_config
      ,DUMMY198
    ) ;
  _zz_strnp_207 : ixc_assign
    generic map(W => 7)
    port map (
       cceip_encrypt_kop_fifo_override
      ,DUMMY199
    ) ;
  _zz_strnp_208 : ixc_assign
    generic map(W => 7)
    port map (
       cceip_validate_kop_fifo_override
      ,DUMMY200
    ) ;
  _zz_strnp_209 : ixc_assign
    generic map(W => 7)
    port map (
       cddip_decrypt_kop_fifo_override
      ,DUMMY201
    ) ;
  _zz_strnp_210 : ixc_assign
    generic map(W => 32)
    port map (
       sa_global_ctrl
      ,DUMMY202
    ) ;
  _zz_strnp_211 : ixc_assign
    generic map(W => 32)
    port map (
       sa_ctrl_ia_wdata(31 downto 0)
      ,DUMMY203
    ) ;
  _zz_strnp_212 : ixc_assign
    generic map(W => 9)
    port map (
       sa_ctrl_ia_config
      ,DUMMY204
    ) ;
  _zz_strnp_213 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY205
      ,blkid_revid_config
    ) ;
  _zz_strnp_214 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY206
      ,revid_wire
    ) ;
  _zz_strnp_215 : ixc_assign
    generic map(W => 32)
    port map (
       _zy_simnet_tvar_226
      ,DUMMY735
    ) ;
  DUMMY735 <= std_logic_vector'(spare(31 downto 7) & kdf_test_mode_en &
   always_validate_kim_ref & manual_txc & spare(+3) & o_tready_override_val &
   disable_ckv_kim_ism_reads & send_kme_ib_beat) ;
  _zz_strnp_216 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY207
      ,cceip0_out_ia_capability
    ) ;
  _zz_strnp_217 : ixc_assign
    generic map(W => 17)
    port map (
       DUMMY208
      ,cceip0_out_ia_status
    ) ;
  _zy_simnet_tvar_229 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip0_out_ia_rdata(31 downto 0) ;
  _zy_simnet_tvar_230 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip0_out_ia_rdata(32+31 downto 32) ;
  _zy_simnet_tvar_231 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip0_out_ia_rdata(64+31 downto 64) ;
  _zz_strnp_218 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY209
      ,cceip0_out_im_status
    ) ;
  _zy_simnet_cio_233 <= "00" ;
  _zz_strnp_219 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY210
      ,cceip1_out_ia_capability
    ) ;
  _zz_strnp_220 : ixc_assign
    generic map(W => 17)
    port map (
       DUMMY211
      ,cceip1_out_ia_status
    ) ;
  _zy_simnet_tvar_236 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip1_out_ia_rdata(31 downto 0) ;
  _zy_simnet_tvar_237 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip1_out_ia_rdata(32+31 downto 32) ;
  _zy_simnet_tvar_238 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip1_out_ia_rdata(64+31 downto 64) ;
  _zz_strnp_221 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY212
      ,cceip1_out_im_status
    ) ;
  _zy_simnet_cio_240 <= "00" ;
  _zz_strnp_222 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY213
      ,cceip2_out_ia_capability
    ) ;
  _zz_strnp_223 : ixc_assign
    generic map(W => 17)
    port map (
       DUMMY214
      ,cceip2_out_ia_status
    ) ;
  _zy_simnet_tvar_243 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip2_out_ia_rdata(31 downto 0) ;
  _zy_simnet_tvar_244 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip2_out_ia_rdata(32+31 downto 32) ;
  _zy_simnet_tvar_245 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip2_out_ia_rdata(64+31 downto 64) ;
  _zz_strnp_224 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY215
      ,cceip2_out_im_status
    ) ;
  _zy_simnet_cio_247 <= "00" ;
  _zz_strnp_225 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY216
      ,cceip3_out_ia_capability
    ) ;
  _zz_strnp_226 : ixc_assign
    generic map(W => 17)
    port map (
       DUMMY217
      ,cceip3_out_ia_status
    ) ;
  _zy_simnet_tvar_250 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip3_out_ia_rdata(31 downto 0) ;
  _zy_simnet_tvar_251 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip3_out_ia_rdata(32+31 downto 32) ;
  _zy_simnet_tvar_252 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cceip3_out_ia_rdata(64+31 downto 64) ;
  _zz_strnp_227 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY218
      ,cceip3_out_im_status
    ) ;
  _zy_simnet_cio_254 <= "00" ;
  _zz_strnp_228 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY219
      ,cddip0_out_ia_capability
    ) ;
  _zz_strnp_229 : ixc_assign
    generic map(W => 17)
    port map (
       DUMMY220
      ,cddip0_out_ia_status
    ) ;
  _zy_simnet_tvar_257 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip0_out_ia_rdata(31 downto 0) ;
  _zy_simnet_tvar_258 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip0_out_ia_rdata(32+31 downto 32) ;
  _zy_simnet_tvar_259 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip0_out_ia_rdata(64+31 downto 64) ;
  _zz_strnp_230 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY221
      ,cddip0_out_im_status
    ) ;
  _zy_simnet_cio_261 <= "00" ;
  _zz_strnp_231 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY222
      ,cddip1_out_ia_capability
    ) ;
  _zz_strnp_232 : ixc_assign
    generic map(W => 17)
    port map (
       DUMMY223
      ,cddip1_out_ia_status
    ) ;
  _zy_simnet_tvar_264 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip1_out_ia_rdata(31 downto 0) ;
  _zy_simnet_tvar_265 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip1_out_ia_rdata(32+31 downto 32) ;
  _zy_simnet_tvar_266 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip1_out_ia_rdata(64+31 downto 64) ;
  _zz_strnp_233 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY224
      ,cddip1_out_im_status
    ) ;
  _zy_simnet_cio_268 <= "00" ;
  _zz_strnp_234 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY225
      ,cddip2_out_ia_capability
    ) ;
  _zz_strnp_235 : ixc_assign
    generic map(W => 17)
    port map (
       DUMMY226
      ,cddip2_out_ia_status
    ) ;
  _zy_simnet_tvar_271 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip2_out_ia_rdata(31 downto 0) ;
  _zy_simnet_tvar_272 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip2_out_ia_rdata(32+31 downto 32) ;
  _zy_simnet_tvar_273 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip2_out_ia_rdata(64+31 downto 64) ;
  _zz_strnp_236 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY227
      ,cddip2_out_im_status
    ) ;
  _zy_simnet_cio_275 <= "00" ;
  _zz_strnp_237 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY228
      ,cddip3_out_ia_capability
    ) ;
  _zz_strnp_238 : ixc_assign
    generic map(W => 17)
    port map (
       DUMMY229
      ,cddip3_out_ia_status
    ) ;
  _zy_simnet_tvar_278 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip3_out_ia_rdata(31 downto 0) ;
  _zy_simnet_tvar_279 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip3_out_ia_rdata(32+31 downto 32) ;
  _zy_simnet_tvar_280 <= "00000000000000000000000000000000" when 
  (disable_ckv_kim_ism_reads)='1' else cddip3_out_ia_rdata(64+31 downto 64) ;
  _zz_strnp_239 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY230
      ,cddip3_out_im_status
    ) ;
  _zy_simnet_cio_282 <= "00" ;
  _zz_strnp_240 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY231
      ,ckv_ia_capability
    ) ;
  _zz_strnp_241 : ixc_assign
    generic map(W => 23)
    port map (
       DUMMY232
      ,ckv_ia_status
    ) ;
  _zz_strnp_242 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY233
      ,ckv_ia_rdata_part0
    ) ;
  _zz_strnp_243 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY234
      ,ckv_ia_rdata_part1
    ) ;
  _zz_strnp_244 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY235
      ,kim_ia_capability
    ) ;
  _zz_strnp_245 : ixc_assign
    generic map(W => 22)
    port map (
       DUMMY236
      ,kim_ia_status
    ) ;
  _zz_strnp_246 : ixc_assign
    generic map(W => 21)
    port map (
       DUMMY237
      ,kim_ia_rdata_part0
    ) ;
  _zz_strnp_247 : ixc_assign
    generic map(W => 17)
    port map (
       DUMMY238
      ,kim_ia_rdata_part1
    ) ;
  _zz_strnp_248 : ixc_assign
    generic map(W => 2)
    port map (
       DUMMY239
      ,kdf_drbg_ctrl
    ) ;
  _zz_strnp_249 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY240
      ,interrupt_status
    ) ;
  _zz_strnp_250 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY241
      ,engine_sticky_status
    ) ;
  _zz_strnp_251 : ixc_assign
    generic map(W => 7)
    port map (
       DUMMY242
      ,bimc_monitor
    ) ;
  _zz_strnp_252 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY243
      ,bimc_ecc_uncorrectable_error_cnt
    ) ;
  _zz_strnp_253 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY244
      ,bimc_ecc_correctable_error_cnt
    ) ;
  _zz_strnp_254 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY245
      ,bimc_parity_error_cnt
    ) ;
  _zz_strnp_255 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY246
      ,bimc_global_config
    ) ;
  _zz_strnp_256 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY247
      ,bimc_memid
    ) ;
  _zz_strnp_257 : ixc_assign
    generic map(W => 29)
    port map (
       DUMMY248
      ,bimc_eccpar_debug
    ) ;
  _zz_strnp_258 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY249
      ,bimc_cmd2
    ) ;
  _zz_strnp_259 : ixc_assign
    generic map(W => 10)
    port map (
       DUMMY250
      ,bimc_rxcmd2
    ) ;
  _zz_strnp_260 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY251
      ,bimc_rxcmd1
    ) ;
  _zz_strnp_261 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY252
      ,bimc_rxcmd0
    ) ;
  _zz_strnp_262 : ixc_assign
    generic map(W => 10)
    port map (
       DUMMY253
      ,bimc_rxrsp2
    ) ;
  _zz_strnp_263 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY254
      ,bimc_rxrsp1
    ) ;
  _zz_strnp_264 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY255
      ,bimc_rxrsp0
    ) ;
  _zz_strnp_265 : ixc_assign
    generic map(W => 10)
    port map (
       DUMMY256
      ,bimc_pollrsp2
    ) ;
  _zz_strnp_266 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY257
      ,bimc_pollrsp1
    ) ;
  _zz_strnp_267 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY258
      ,bimc_pollrsp0
    ) ;
  _zz_strnp_268 : ixc_assign
    generic map(W => 10)
    port map (
       DUMMY259
      ,bimc_dbgcmd2
    ) ;
  _zz_strnp_269 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY260
      ,bimc_dbgcmd1
    ) ;
  _zz_strnp_270 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY261
      ,bimc_dbgcmd0
    ) ;
  _zz_strnp_271 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY262
      ,im_available
    ) ;
  _zy_simnet_cio_315 <= "0000000000000000" ;
  _zz_strnp_272 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY263
      ,tready_override
    ) ;
  _zz_strnp_273 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY264
      ,regs_sa_ctrl
    ) ;
  _zz_strnp_274 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY265
      ,sa_snapshot_ia_capability
    ) ;
  _zz_strnp_275 : ixc_assign
    generic map(W => 13)
    port map (
       DUMMY266
      ,sa_snapshot_ia_status
    ) ;
  _zz_strnp_276 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY267
      ,sa_snapshot_ia_rdata(31 downto 0)
    ) ;
  _zz_strnp_277 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY268
      ,sa_snapshot_ia_rdata(32+31 downto 32)
    ) ;
  _zz_strnp_278 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY269
      ,sa_count_ia_capability
    ) ;
  _zz_strnp_279 : ixc_assign
    generic map(W => 13)
    port map (
       DUMMY270
      ,sa_count_ia_status
    ) ;
  _zz_strnp_280 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY271
      ,sa_count_ia_rdata(31 downto 0)
    ) ;
  _zz_strnp_281 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY272
      ,sa_count_ia_rdata(32+31 downto 32)
    ) ;
  _zz_strnp_282 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY273
      ,sa_global_ctrl
    ) ;
  _zz_strnp_283 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY274
      ,sa_ctrl_ia_capability
    ) ;
  _zz_strnp_284 : ixc_assign
    generic map(W => 13)
    port map (
       DUMMY275
      ,sa_ctrl_ia_status
    ) ;
  _zz_strnp_285 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY276
      ,sa_ctrl_ia_rdata(31 downto 0)
    ) ;
  _zz_strnp_286 : ixc_assign
    generic map(W => 1)
    port map (
       wr_stb
      ,DUMMY277
    ) ;
  _zz_strnp_287 : ixc_assign
    generic map(W => 32)
    port map (
       wr_data
      ,DUMMY278
    ) ;
  _zz_strnp_288 : ixc_assign
    generic map(W => 11)
    port map (
       reg_addr
      ,DUMMY279
    ) ;
  _zz_strnp_289 : ixc_assign
    generic map(W => 16)
    port map (
       rbus_ring_o(68+15 downto 68)
      ,DUMMY280
    ) ;
  _zz_strnp_290 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY736
      ,DUMMY281
    ) ;
  rbus_ring_o(67) <= it_conv_std_logic(DUMMY736) ;
  _zz_strnp_291 : ixc_assign
    generic map(W => 32)
    port map (
       rbus_ring_o(35+31 downto 35)
      ,DUMMY282
    ) ;
  _zz_strnp_292 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY737
      ,DUMMY283
    ) ;
  rbus_ring_o(34) <= it_conv_std_logic(DUMMY737) ;
  _zz_strnp_293 : ixc_assign
    generic map(W => 11)
    port map (
       locl_addr
      ,DUMMY284
    ) ;
  _zz_strnp_294 : ixc_assign
    generic map(W => 1)
    port map (
       locl_wr_strb
      ,DUMMY285
    ) ;
  _zz_strnp_295 : ixc_assign
    generic map(W => 32)
    port map (
       locl_wr_data
      ,DUMMY286
    ) ;
  _zz_strnp_296 : ixc_assign
    generic map(W => 1)
    port map (
       locl_rd_strb
      ,DUMMY287
    ) ;
  _zz_strnp_297 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY288
      ,locl_rd_data
    ) ;
  _zz_strnp_298 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY289
      ,locl_ack
    ) ;
  _zz_strnp_299 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY290
      ,locl_err_ack
    ) ;
  _zz_strnp_300 : ixc_assign
    generic map(W => 32)
    port map (
       rbus_ring_o(2+31 downto 2)
      ,DUMMY291
    ) ;
  _zz_strnp_301 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY738
      ,DUMMY292
    ) ;
  rbus_ring_o(1) <= it_conv_std_logic(DUMMY738) ;
  _zz_strnp_302 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY739
      ,DUMMY293
    ) ;
  rbus_ring_o(0) <= it_conv_std_logic(DUMMY739) ;
  _zz_strnp_303 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cceip0_ob_in_mod
      ,DUMMY294
    ) ;
  _zz_strnp_304 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip0_ob_out_post
      ,DUMMY295
    ) ;
  _zz_strnp_305 : ixc_assign
    generic map(W => 1)
    port map (
       cceip0_im_vld
      ,DUMMY296
    ) ;
  _zy_simnet_tvar_351 <= o_tready_override_val when (tready_override(0))='1'
   else it_conv_std_logic(kme_cceip0_ob_in) ;
  _zz_strnp_306 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY297
      ,cceip0_im_rdy
    ) ;
  _zz_strnp_307 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cceip1_ob_in_mod
      ,DUMMY298
    ) ;
  _zz_strnp_308 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip1_ob_out_post
      ,DUMMY299
    ) ;
  _zz_strnp_309 : ixc_assign
    generic map(W => 1)
    port map (
       cceip1_im_vld
      ,DUMMY300
    ) ;
  _zy_simnet_tvar_356 <= o_tready_override_val when (tready_override(1))='1'
   else it_conv_std_logic(kme_cceip1_ob_in) ;
  _zz_strnp_310 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY301
      ,cceip1_im_rdy
    ) ;
  _zz_strnp_311 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cceip2_ob_in_mod
      ,DUMMY302
    ) ;
  _zz_strnp_312 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip2_ob_out_post
      ,DUMMY303
    ) ;
  _zz_strnp_313 : ixc_assign
    generic map(W => 1)
    port map (
       cceip2_im_vld
      ,DUMMY304
    ) ;
  _zy_simnet_tvar_361 <= o_tready_override_val when (tready_override(2))='1'
   else it_conv_std_logic(kme_cceip2_ob_in) ;
  _zz_strnp_314 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY305
      ,cceip2_im_rdy
    ) ;
  _zz_strnp_315 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cceip3_ob_in_mod
      ,DUMMY306
    ) ;
  _zz_strnp_316 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip3_ob_out_post
      ,DUMMY307
    ) ;
  _zz_strnp_317 : ixc_assign
    generic map(W => 1)
    port map (
       cceip3_im_vld
      ,DUMMY308
    ) ;
  _zy_simnet_tvar_366 <= o_tready_override_val when (tready_override(3))='1'
   else it_conv_std_logic(kme_cceip3_ob_in) ;
  _zz_strnp_318 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY309
      ,cceip3_im_rdy
    ) ;
  _zz_strnp_319 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cddip0_ob_in_mod
      ,DUMMY310
    ) ;
  _zz_strnp_320 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip0_ob_out_post
      ,DUMMY311
    ) ;
  _zz_strnp_321 : ixc_assign
    generic map(W => 1)
    port map (
       cddip0_im_vld
      ,DUMMY312
    ) ;
  _zy_simnet_tvar_371 <= o_tready_override_val when (tready_override(4))='1'
   else it_conv_std_logic(kme_cddip0_ob_in) ;
  _zz_strnp_322 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY313
      ,cddip0_im_rdy
    ) ;
  _zz_strnp_323 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cddip1_ob_in_mod
      ,DUMMY314
    ) ;
  _zz_strnp_324 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip1_ob_out_post
      ,DUMMY315
    ) ;
  _zz_strnp_325 : ixc_assign
    generic map(W => 1)
    port map (
       cddip1_im_vld
      ,DUMMY316
    ) ;
  _zy_simnet_tvar_376 <= o_tready_override_val when (tready_override(5))='1'
   else it_conv_std_logic(kme_cddip1_ob_in) ;
  _zz_strnp_326 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY317
      ,cddip1_im_rdy
    ) ;
  _zz_strnp_327 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cddip2_ob_in_mod
      ,DUMMY318
    ) ;
  _zz_strnp_328 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip2_ob_out_post
      ,DUMMY319
    ) ;
  _zz_strnp_329 : ixc_assign
    generic map(W => 1)
    port map (
       cddip2_im_vld
      ,DUMMY320
    ) ;
  _zy_simnet_tvar_381 <= o_tready_override_val when (tready_override(6))='1'
   else it_conv_std_logic(kme_cddip2_ob_in) ;
  _zz_strnp_330 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY321
      ,cddip2_im_rdy
    ) ;
  _zz_strnp_331 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cddip3_ob_in_mod
      ,DUMMY322
    ) ;
  _zz_strnp_332 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip3_ob_out_post
      ,DUMMY323
    ) ;
  _zz_strnp_333 : ixc_assign
    generic map(W => 1)
    port map (
       cddip3_im_vld
      ,DUMMY324
    ) ;
  _zy_simnet_tvar_386 <= o_tready_override_val when (tready_override(7))='1'
   else it_conv_std_logic(kme_cddip3_ob_in) ;
  _zz_strnp_334 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY325
      ,cddip3_im_rdy
    ) ;
  _zz_strnp_335 : ixc_assign
    generic map(W => 3)
    port map (
       cceip0_out_ia_status(14+2 downto 14)
      ,DUMMY326
    ) ;
  _zz_strnp_336 : ixc_assign
    generic map(W => 5)
    port map (
       cceip0_out_ia_status(9+4 downto 9)
      ,DUMMY327
    ) ;
  _zz_strnp_337 : ixc_assign
    generic map(W => 9)
    port map (
       cceip0_out_ia_status(8 downto 0)
      ,DUMMY328
    ) ;
  _zz_strnp_338 : ixc_assign
    generic map(W => 16)
    port map (
       cceip0_out_ia_capability(15 downto 0)
      ,DUMMY329
    ) ;
  _zz_strnp_339 : ixc_assign
    generic map(W => 4)
    port map (
       cceip0_out_ia_capability(16+3 downto 16)
      ,DUMMY330
    ) ;
  _zz_strnp_340 : ixc_assign
    generic map(W => 96)
    port map (
       cceip0_out_ia_rdata
      ,DUMMY331
    ) ;
  _zz_strnp_341 : ixc_assign
    generic map(W => 1)
    port map (
       cceip1_ism_idat
      ,DUMMY332
    ) ;
  _zz_strnp_342 : ixc_assign
    generic map(W => 1)
    port map (
       cceip1_ism_isync
      ,DUMMY333
    ) ;
  _zz_strnp_343 : ixc_assign
    generic map(W => 1)
    port map (
       cceip0_ism_mbe
      ,DUMMY334
    ) ;
  _zz_strnp_344 : ixc_assign
    generic map(W => 1)
    port map (
       cceip0_im_rdy
      ,DUMMY335
    ) ;
  _zz_strnp_345 : ixc_assign
    generic map(W => 2)
    port map (
       im_available_kme_cceip0
      ,DUMMY336
    ) ;
  _zz_strnp_346 : ixc_assign
    generic map(W => 12)
    port map (
       cceip0_out_im_status
      ,DUMMY337
    ) ;
  _zz_strnp_347 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY338
      ,reg_addr
    ) ;
  _zz_strnp_348 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY339
      ,cceip0_out_ia_config(9+3 downto 9)
    ) ;
  _zz_strnp_349 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY340
      ,cceip0_out_ia_config(8 downto 0)
    ) ;
  _zz_strnp_350 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY341
      ,wr_stb
    ) ;
  _zz_strnp_351 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY342
      ,cceip0_out_ia_wdata
    ) ;
  _zy_simnet_cio_405 <= '0' ;
  _zz_strnp_352 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY343
      ,cceip0_ism_bimc_isync
    ) ;
  _zz_strnp_353 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY344
      ,cceip0_ism_bimc_idat
    ) ;
  _zz_strnp_354 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY345
      ,cceip0_im_din
    ) ;
  _zz_strnp_355 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY346
      ,cceip0_im_vld
    ) ;
  _zz_strnp_356 : ixc_assign
    generic map(W => 2)
    port map (
       DUMMY347
      ,im_consumed_kme_cceip0
    ) ;
  _zz_strnp_357 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY348
      ,cceip0_out_im_config
    ) ;
  _zz_strnp_358 : ixc_assign
    generic map(W => 3)
    port map (
       cceip1_out_ia_status(14+2 downto 14)
      ,DUMMY349
    ) ;
  _zz_strnp_359 : ixc_assign
    generic map(W => 5)
    port map (
       cceip1_out_ia_status(9+4 downto 9)
      ,DUMMY350
    ) ;
  _zz_strnp_360 : ixc_assign
    generic map(W => 9)
    port map (
       cceip1_out_ia_status(8 downto 0)
      ,DUMMY351
    ) ;
  _zz_strnp_361 : ixc_assign
    generic map(W => 16)
    port map (
       cceip1_out_ia_capability(15 downto 0)
      ,DUMMY352
    ) ;
  _zz_strnp_362 : ixc_assign
    generic map(W => 4)
    port map (
       cceip1_out_ia_capability(16+3 downto 16)
      ,DUMMY353
    ) ;
  _zz_strnp_363 : ixc_assign
    generic map(W => 96)
    port map (
       cceip1_out_ia_rdata
      ,DUMMY354
    ) ;
  _zz_strnp_364 : ixc_assign
    generic map(W => 1)
    port map (
       cceip2_ism_idat
      ,DUMMY355
    ) ;
  _zz_strnp_365 : ixc_assign
    generic map(W => 1)
    port map (
       cceip2_ism_isync
      ,DUMMY356
    ) ;
  _zz_strnp_366 : ixc_assign
    generic map(W => 1)
    port map (
       cceip1_ism_mbe
      ,DUMMY357
    ) ;
  _zz_strnp_367 : ixc_assign
    generic map(W => 1)
    port map (
       cceip1_im_rdy
      ,DUMMY358
    ) ;
  _zz_strnp_368 : ixc_assign
    generic map(W => 2)
    port map (
       im_available_kme_cceip1
      ,DUMMY359
    ) ;
  _zz_strnp_369 : ixc_assign
    generic map(W => 12)
    port map (
       cceip1_out_im_status
      ,DUMMY360
    ) ;
  _zz_strnp_370 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY361
      ,reg_addr
    ) ;
  _zz_strnp_371 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY362
      ,cceip1_out_ia_config(9+3 downto 9)
    ) ;
  _zz_strnp_372 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY363
      ,cceip1_out_ia_config(8 downto 0)
    ) ;
  _zz_strnp_373 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY364
      ,wr_stb
    ) ;
  _zz_strnp_374 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY365
      ,cceip1_out_ia_wdata
    ) ;
  _zy_simnet_cio_429 <= '0' ;
  _zz_strnp_375 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY366
      ,cceip1_ism_isync
    ) ;
  _zz_strnp_376 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY367
      ,cceip1_ism_idat
    ) ;
  _zz_strnp_377 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY368
      ,cceip1_im_din
    ) ;
  _zz_strnp_378 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY369
      ,cceip1_im_vld
    ) ;
  _zz_strnp_379 : ixc_assign
    generic map(W => 2)
    port map (
       DUMMY370
      ,im_consumed_kme_cceip1
    ) ;
  _zz_strnp_380 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY371
      ,cceip1_out_im_config
    ) ;
  _zz_strnp_381 : ixc_assign
    generic map(W => 3)
    port map (
       cceip2_out_ia_status(14+2 downto 14)
      ,DUMMY372
    ) ;
  _zz_strnp_382 : ixc_assign
    generic map(W => 5)
    port map (
       cceip2_out_ia_status(9+4 downto 9)
      ,DUMMY373
    ) ;
  _zz_strnp_383 : ixc_assign
    generic map(W => 9)
    port map (
       cceip2_out_ia_status(8 downto 0)
      ,DUMMY374
    ) ;
  _zz_strnp_384 : ixc_assign
    generic map(W => 16)
    port map (
       cceip2_out_ia_capability(15 downto 0)
      ,DUMMY375
    ) ;
  _zz_strnp_385 : ixc_assign
    generic map(W => 4)
    port map (
       cceip2_out_ia_capability(16+3 downto 16)
      ,DUMMY376
    ) ;
  _zz_strnp_386 : ixc_assign
    generic map(W => 96)
    port map (
       cceip2_out_ia_rdata
      ,DUMMY377
    ) ;
  _zz_strnp_387 : ixc_assign
    generic map(W => 1)
    port map (
       cceip3_ism_idat
      ,DUMMY378
    ) ;
  _zz_strnp_388 : ixc_assign
    generic map(W => 1)
    port map (
       cceip3_ism_isync
      ,DUMMY379
    ) ;
  _zz_strnp_389 : ixc_assign
    generic map(W => 1)
    port map (
       cceip2_ism_mbe
      ,DUMMY380
    ) ;
  _zz_strnp_390 : ixc_assign
    generic map(W => 1)
    port map (
       cceip2_im_rdy
      ,DUMMY381
    ) ;
  _zz_strnp_391 : ixc_assign
    generic map(W => 2)
    port map (
       im_available_kme_cceip2
      ,DUMMY382
    ) ;
  _zz_strnp_392 : ixc_assign
    generic map(W => 12)
    port map (
       cceip2_out_im_status
      ,DUMMY383
    ) ;
  _zz_strnp_393 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY384
      ,reg_addr
    ) ;
  _zz_strnp_394 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY385
      ,cceip2_out_ia_config(9+3 downto 9)
    ) ;
  _zz_strnp_395 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY386
      ,cceip2_out_ia_config(8 downto 0)
    ) ;
  _zz_strnp_396 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY387
      ,wr_stb
    ) ;
  _zz_strnp_397 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY388
      ,cceip2_out_ia_wdata
    ) ;
  _zy_simnet_cio_453 <= '0' ;
  _zz_strnp_398 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY389
      ,cceip2_ism_isync
    ) ;
  _zz_strnp_399 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY390
      ,cceip2_ism_idat
    ) ;
  _zz_strnp_400 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY391
      ,cceip2_im_din
    ) ;
  _zz_strnp_401 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY392
      ,cceip2_im_vld
    ) ;
  _zz_strnp_402 : ixc_assign
    generic map(W => 2)
    port map (
       DUMMY393
      ,im_consumed_kme_cceip2
    ) ;
  _zz_strnp_403 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY394
      ,cceip2_out_im_config
    ) ;
  _zz_strnp_404 : ixc_assign
    generic map(W => 3)
    port map (
       cceip3_out_ia_status(14+2 downto 14)
      ,DUMMY395
    ) ;
  _zz_strnp_405 : ixc_assign
    generic map(W => 5)
    port map (
       cceip3_out_ia_status(9+4 downto 9)
      ,DUMMY396
    ) ;
  _zz_strnp_406 : ixc_assign
    generic map(W => 9)
    port map (
       cceip3_out_ia_status(8 downto 0)
      ,DUMMY397
    ) ;
  _zz_strnp_407 : ixc_assign
    generic map(W => 16)
    port map (
       cceip3_out_ia_capability(15 downto 0)
      ,DUMMY398
    ) ;
  _zz_strnp_408 : ixc_assign
    generic map(W => 4)
    port map (
       cceip3_out_ia_capability(16+3 downto 16)
      ,DUMMY399
    ) ;
  _zz_strnp_409 : ixc_assign
    generic map(W => 96)
    port map (
       cceip3_out_ia_rdata
      ,DUMMY400
    ) ;
  _zz_strnp_410 : ixc_assign
    generic map(W => 1)
    port map (
       cddip0_ism_idat
      ,DUMMY401
    ) ;
  _zz_strnp_411 : ixc_assign
    generic map(W => 1)
    port map (
       cddip0_ism_isync
      ,DUMMY402
    ) ;
  _zz_strnp_412 : ixc_assign
    generic map(W => 1)
    port map (
       cceip3_ism_mbe
      ,DUMMY403
    ) ;
  _zz_strnp_413 : ixc_assign
    generic map(W => 1)
    port map (
       cceip3_im_rdy
      ,DUMMY404
    ) ;
  _zz_strnp_414 : ixc_assign
    generic map(W => 2)
    port map (
       im_available_kme_cceip3
      ,DUMMY405
    ) ;
  _zz_strnp_415 : ixc_assign
    generic map(W => 12)
    port map (
       cceip3_out_im_status
      ,DUMMY406
    ) ;
  _zz_strnp_416 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY407
      ,reg_addr
    ) ;
  _zz_strnp_417 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY408
      ,cceip3_out_ia_config(9+3 downto 9)
    ) ;
  _zz_strnp_418 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY409
      ,cceip3_out_ia_config(8 downto 0)
    ) ;
  _zz_strnp_419 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY410
      ,wr_stb
    ) ;
  _zz_strnp_420 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY411
      ,cceip3_out_ia_wdata
    ) ;
  _zy_simnet_cio_477 <= '0' ;
  _zz_strnp_421 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY412
      ,cceip3_ism_isync
    ) ;
  _zz_strnp_422 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY413
      ,cceip3_ism_idat
    ) ;
  _zz_strnp_423 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY414
      ,cceip3_im_din
    ) ;
  _zz_strnp_424 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY415
      ,cceip3_im_vld
    ) ;
  _zz_strnp_425 : ixc_assign
    generic map(W => 2)
    port map (
       DUMMY416
      ,im_consumed_kme_cceip3
    ) ;
  _zz_strnp_426 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY417
      ,cceip3_out_im_config
    ) ;
  _zz_strnp_427 : ixc_assign
    generic map(W => 3)
    port map (
       cddip0_out_ia_status(14+2 downto 14)
      ,DUMMY418
    ) ;
  _zz_strnp_428 : ixc_assign
    generic map(W => 5)
    port map (
       cddip0_out_ia_status(9+4 downto 9)
      ,DUMMY419
    ) ;
  _zz_strnp_429 : ixc_assign
    generic map(W => 9)
    port map (
       cddip0_out_ia_status(8 downto 0)
      ,DUMMY420
    ) ;
  _zz_strnp_430 : ixc_assign
    generic map(W => 16)
    port map (
       cddip0_out_ia_capability(15 downto 0)
      ,DUMMY421
    ) ;
  _zz_strnp_431 : ixc_assign
    generic map(W => 4)
    port map (
       cddip0_out_ia_capability(16+3 downto 16)
      ,DUMMY422
    ) ;
  _zz_strnp_432 : ixc_assign
    generic map(W => 96)
    port map (
       cddip0_out_ia_rdata
      ,DUMMY423
    ) ;
  _zz_strnp_433 : ixc_assign
    generic map(W => 1)
    port map (
       cddip1_ism_idat
      ,DUMMY424
    ) ;
  _zz_strnp_434 : ixc_assign
    generic map(W => 1)
    port map (
       cddip1_ism_isync
      ,DUMMY425
    ) ;
  _zz_strnp_435 : ixc_assign
    generic map(W => 1)
    port map (
       cddip0_ism_mbe
      ,DUMMY426
    ) ;
  _zz_strnp_436 : ixc_assign
    generic map(W => 1)
    port map (
       cddip0_im_rdy
      ,DUMMY427
    ) ;
  _zz_strnp_437 : ixc_assign
    generic map(W => 2)
    port map (
       im_available_kme_cddip0
      ,DUMMY428
    ) ;
  _zz_strnp_438 : ixc_assign
    generic map(W => 12)
    port map (
       cddip0_out_im_status
      ,DUMMY429
    ) ;
  _zz_strnp_439 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY430
      ,reg_addr
    ) ;
  _zz_strnp_440 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY431
      ,cddip0_out_ia_config(9+3 downto 9)
    ) ;
  _zz_strnp_441 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY432
      ,cddip0_out_ia_config(8 downto 0)
    ) ;
  _zz_strnp_442 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY433
      ,wr_stb
    ) ;
  _zz_strnp_443 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY434
      ,cddip0_out_ia_wdata
    ) ;
  _zy_simnet_cio_501 <= '0' ;
  _zz_strnp_444 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY435
      ,cddip0_ism_isync
    ) ;
  _zz_strnp_445 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY436
      ,cddip0_ism_idat
    ) ;
  _zz_strnp_446 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY437
      ,cddip0_im_din
    ) ;
  _zz_strnp_447 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY438
      ,cddip0_im_vld
    ) ;
  _zz_strnp_448 : ixc_assign
    generic map(W => 2)
    port map (
       DUMMY439
      ,im_consumed_kme_cddip0
    ) ;
  _zz_strnp_449 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY440
      ,cddip0_out_im_config
    ) ;
  _zz_strnp_450 : ixc_assign
    generic map(W => 3)
    port map (
       cddip1_out_ia_status(14+2 downto 14)
      ,DUMMY441
    ) ;
  _zz_strnp_451 : ixc_assign
    generic map(W => 5)
    port map (
       cddip1_out_ia_status(9+4 downto 9)
      ,DUMMY442
    ) ;
  _zz_strnp_452 : ixc_assign
    generic map(W => 9)
    port map (
       cddip1_out_ia_status(8 downto 0)
      ,DUMMY443
    ) ;
  _zz_strnp_453 : ixc_assign
    generic map(W => 16)
    port map (
       cddip1_out_ia_capability(15 downto 0)
      ,DUMMY444
    ) ;
  _zz_strnp_454 : ixc_assign
    generic map(W => 4)
    port map (
       cddip1_out_ia_capability(16+3 downto 16)
      ,DUMMY445
    ) ;
  _zz_strnp_455 : ixc_assign
    generic map(W => 96)
    port map (
       cddip1_out_ia_rdata
      ,DUMMY446
    ) ;
  _zz_strnp_456 : ixc_assign
    generic map(W => 1)
    port map (
       cddip2_ism_idat
      ,DUMMY447
    ) ;
  _zz_strnp_457 : ixc_assign
    generic map(W => 1)
    port map (
       cddip2_ism_isync
      ,DUMMY448
    ) ;
  _zz_strnp_458 : ixc_assign
    generic map(W => 1)
    port map (
       cddip1_ism_mbe
      ,DUMMY449
    ) ;
  _zz_strnp_459 : ixc_assign
    generic map(W => 1)
    port map (
       cddip1_im_rdy
      ,DUMMY450
    ) ;
  _zz_strnp_460 : ixc_assign
    generic map(W => 2)
    port map (
       im_available_kme_cddip1
      ,DUMMY451
    ) ;
  _zz_strnp_461 : ixc_assign
    generic map(W => 12)
    port map (
       cddip1_out_im_status
      ,DUMMY452
    ) ;
  _zz_strnp_462 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY453
      ,reg_addr
    ) ;
  _zz_strnp_463 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY454
      ,cddip1_out_ia_config(9+3 downto 9)
    ) ;
  _zz_strnp_464 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY455
      ,cddip1_out_ia_config(8 downto 0)
    ) ;
  _zz_strnp_465 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY456
      ,wr_stb
    ) ;
  _zz_strnp_466 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY457
      ,cddip1_out_ia_wdata
    ) ;
  _zy_simnet_cio_525 <= '0' ;
  _zz_strnp_467 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY458
      ,cddip1_ism_isync
    ) ;
  _zz_strnp_468 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY459
      ,cddip1_ism_idat
    ) ;
  _zz_strnp_469 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY460
      ,cddip1_im_din
    ) ;
  _zz_strnp_470 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY461
      ,cddip1_im_vld
    ) ;
  _zz_strnp_471 : ixc_assign
    generic map(W => 2)
    port map (
       DUMMY462
      ,im_consumed_kme_cddip1
    ) ;
  _zz_strnp_472 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY463
      ,cddip1_out_im_config
    ) ;
  _zz_strnp_473 : ixc_assign
    generic map(W => 3)
    port map (
       cddip2_out_ia_status(14+2 downto 14)
      ,DUMMY464
    ) ;
  _zz_strnp_474 : ixc_assign
    generic map(W => 5)
    port map (
       cddip2_out_ia_status(9+4 downto 9)
      ,DUMMY465
    ) ;
  _zz_strnp_475 : ixc_assign
    generic map(W => 9)
    port map (
       cddip2_out_ia_status(8 downto 0)
      ,DUMMY466
    ) ;
  _zz_strnp_476 : ixc_assign
    generic map(W => 16)
    port map (
       cddip2_out_ia_capability(15 downto 0)
      ,DUMMY467
    ) ;
  _zz_strnp_477 : ixc_assign
    generic map(W => 4)
    port map (
       cddip2_out_ia_capability(16+3 downto 16)
      ,DUMMY468
    ) ;
  _zz_strnp_478 : ixc_assign
    generic map(W => 96)
    port map (
       cddip2_out_ia_rdata
      ,DUMMY469
    ) ;
  _zz_strnp_479 : ixc_assign
    generic map(W => 1)
    port map (
       cddip3_ism_idat
      ,DUMMY470
    ) ;
  _zz_strnp_480 : ixc_assign
    generic map(W => 1)
    port map (
       cddip3_ism_isync
      ,DUMMY471
    ) ;
  _zz_strnp_481 : ixc_assign
    generic map(W => 1)
    port map (
       cddip2_ism_mbe
      ,DUMMY472
    ) ;
  _zz_strnp_482 : ixc_assign
    generic map(W => 1)
    port map (
       cddip2_im_rdy
      ,DUMMY473
    ) ;
  _zz_strnp_483 : ixc_assign
    generic map(W => 2)
    port map (
       im_available_kme_cddip2
      ,DUMMY474
    ) ;
  _zz_strnp_484 : ixc_assign
    generic map(W => 12)
    port map (
       cddip2_out_im_status
      ,DUMMY475
    ) ;
  _zz_strnp_485 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY476
      ,reg_addr
    ) ;
  _zz_strnp_486 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY477
      ,cddip2_out_ia_config(9+3 downto 9)
    ) ;
  _zz_strnp_487 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY478
      ,cddip2_out_ia_config(8 downto 0)
    ) ;
  _zz_strnp_488 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY479
      ,wr_stb
    ) ;
  _zz_strnp_489 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY480
      ,cddip2_out_ia_wdata
    ) ;
  _zy_simnet_cio_549 <= '0' ;
  _zz_strnp_490 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY481
      ,cddip2_ism_isync
    ) ;
  _zz_strnp_491 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY482
      ,cddip2_ism_idat
    ) ;
  _zz_strnp_492 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY483
      ,cddip2_im_din
    ) ;
  _zz_strnp_493 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY484
      ,cddip2_im_vld
    ) ;
  _zz_strnp_494 : ixc_assign
    generic map(W => 2)
    port map (
       DUMMY485
      ,im_consumed_kme_cddip2
    ) ;
  _zz_strnp_495 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY486
      ,cddip2_out_im_config
    ) ;
  _zz_strnp_496 : ixc_assign
    generic map(W => 3)
    port map (
       cddip3_out_ia_status(14+2 downto 14)
      ,DUMMY487
    ) ;
  _zz_strnp_497 : ixc_assign
    generic map(W => 5)
    port map (
       cddip3_out_ia_status(9+4 downto 9)
      ,DUMMY488
    ) ;
  _zz_strnp_498 : ixc_assign
    generic map(W => 9)
    port map (
       cddip3_out_ia_status(8 downto 0)
      ,DUMMY489
    ) ;
  _zz_strnp_499 : ixc_assign
    generic map(W => 16)
    port map (
       cddip3_out_ia_capability(15 downto 0)
      ,DUMMY490
    ) ;
  _zz_strnp_500 : ixc_assign
    generic map(W => 4)
    port map (
       cddip3_out_ia_capability(16+3 downto 16)
      ,DUMMY491
    ) ;
  _zz_strnp_501 : ixc_assign
    generic map(W => 96)
    port map (
       cddip3_out_ia_rdata
      ,DUMMY492
    ) ;
  _zz_strnp_502 : ixc_assign
    generic map(W => 1)
    port map (
       cddip3_ism_odat
      ,DUMMY493
    ) ;
  _zz_strnp_503 : ixc_assign
    generic map(W => 1)
    port map (
       cddip3_ism_osync
      ,DUMMY494
    ) ;
  _zz_strnp_504 : ixc_assign
    generic map(W => 1)
    port map (
       cddip3_ism_mbe
      ,DUMMY495
    ) ;
  _zz_strnp_505 : ixc_assign
    generic map(W => 1)
    port map (
       cddip3_im_rdy
      ,DUMMY496
    ) ;
  _zz_strnp_506 : ixc_assign
    generic map(W => 2)
    port map (
       im_available_kme_cddip3
      ,DUMMY497
    ) ;
  _zz_strnp_507 : ixc_assign
    generic map(W => 12)
    port map (
       cddip3_out_im_status
      ,DUMMY498
    ) ;
  _zz_strnp_508 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY499
      ,reg_addr
    ) ;
  _zz_strnp_509 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY500
      ,cddip3_out_ia_config(9+3 downto 9)
    ) ;
  _zz_strnp_510 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY501
      ,cddip3_out_ia_config(8 downto 0)
    ) ;
  _zz_strnp_511 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY502
      ,wr_stb
    ) ;
  _zz_strnp_512 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY503
      ,cddip3_out_ia_wdata
    ) ;
  _zy_simnet_cio_573 <= '0' ;
  _zz_strnp_513 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY504
      ,cddip3_ism_isync
    ) ;
  _zz_strnp_514 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY505
      ,cddip3_ism_idat
    ) ;
  _zz_strnp_515 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY506
      ,cddip3_im_din
    ) ;
  _zz_strnp_516 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY507
      ,cddip3_im_vld
    ) ;
  _zz_strnp_517 : ixc_assign
    generic map(W => 2)
    port map (
       DUMMY508
      ,im_consumed_kme_cddip3
    ) ;
  _zz_strnp_518 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY509
      ,cddip3_out_im_config
    ) ;
  _zz_strnp_519 : ixc_assign
    generic map(W => 4)
    port map (
       ckv_cmnd_op
      ,DUMMY510
    ) ;
  _zz_strnp_520 : ixc_assign
    generic map(W => 15)
    port map (
       ckv_cmnd_addr
      ,DUMMY511
    ) ;
  _zz_strnp_521 : ixc_assign
    generic map(W => 64)
    port map (
       ckv_wr_dat
      ,DUMMY512
    ) ;
  _zz_strnp_522 : ixc_assign
    generic map(W => 20)
    port map (
       ckv_ia_capability
      ,DUMMY513
    ) ;
  _zz_strnp_523 : ixc_assign
    generic map(W => 32)
    port map (
       ckv_ia_rdata_part0
      ,DUMMY514
    ) ;
  _zz_strnp_524 : ixc_assign
    generic map(W => 32)
    port map (
       ckv_ia_rdata_part1
      ,DUMMY515
    ) ;
  _zz_strnp_525 : ixc_assign
    generic map(W => 23)
    port map (
       ckv_ia_status
      ,DUMMY516
    ) ;
  _zz_strnp_526 : ixc_assign
    generic map(W => 4)
    port map (
       kim_cmnd_op
      ,DUMMY517
    ) ;
  _zz_strnp_527 : ixc_assign
    generic map(W => 14)
    port map (
       kim_cmnd_addr
      ,DUMMY518
    ) ;
  _zz_strnp_528 : ixc_assign
    generic map(W => 38)
    port map (
       kim_wr_dat
      ,DUMMY519
    ) ;
  _zz_strnp_529 : ixc_assign
    generic map(W => 20)
    port map (
       kim_ia_capability
      ,DUMMY520
    ) ;
  _zz_strnp_530 : ixc_assign
    generic map(W => 21)
    port map (
       kim_ia_rdata_part0
      ,DUMMY521
    ) ;
  _zz_strnp_531 : ixc_assign
    generic map(W => 17)
    port map (
       kim_ia_rdata_part1
      ,DUMMY522
    ) ;
  _zz_strnp_532 : ixc_assign
    generic map(W => 22)
    port map (
       kim_ia_status
      ,DUMMY523
    ) ;
  _zz_strnp_533 : ixc_assign
    generic map(W => 8)
    port map (
       engine_sticky_status
      ,DUMMY524
    ) ;
  _zz_strnp_534 : ixc_assign
    generic map(W => 1)
    port map (
       disable_ckv_kim_ism_reads
      ,DUMMY525
    ) ;
  _zz_strnp_535 : ixc_assign
    generic map(W => 1)
    port map (
       send_kme_ib_beat
      ,DUMMY526
    ) ;
  _zz_strnp_536 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip0_ob_out
      ,DUMMY527
    ) ;
  _zz_strnp_537 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip1_ob_out
      ,DUMMY528
    ) ;
  _zz_strnp_538 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip2_ob_out
      ,DUMMY529
    ) ;
  _zz_strnp_539 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip3_ob_out
      ,DUMMY530
    ) ;
  _zz_strnp_540 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip0_ob_out
      ,DUMMY531
    ) ;
  _zz_strnp_541 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip1_ob_out
      ,DUMMY532
    ) ;
  _zz_strnp_542 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip2_ob_out
      ,DUMMY533
    ) ;
  _zz_strnp_543 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip3_ob_out
      ,DUMMY534
    ) ;
  _zz_strnp_544 : ixc_assign
    generic map(W => 1)
    port map (
       axi_term_bimc_isync
      ,DUMMY535
    ) ;
  _zz_strnp_545 : ixc_assign
    generic map(W => 1)
    port map (
       axi_term_bimc_idat
      ,DUMMY536
    ) ;
  _zz_strnp_546 : ixc_assign
    generic map(W => 3)
    port map (
       DUMMY537
      ,ckv_stat_code
    ) ;
  _zz_strnp_547 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY538
      ,ckv_stat_datawords
    ) ;
  _zz_strnp_548 : ixc_assign
    generic map(W => 15)
    port map (
       DUMMY539
      ,ckv_stat_addr
    ) ;
  _zz_strnp_549 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY540
      ,ckv_capability_type
    ) ;
  _zz_strnp_550 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY541
      ,ckv_capability_lst
    ) ;
  _zz_strnp_551 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY542
      ,ckv_rd_dat
    ) ;
  _zz_strnp_552 : ixc_assign
    generic map(W => 19)
    port map (
       DUMMY543
      ,o_ckv_ia_config
    ) ;
  _zz_strnp_553 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY544
      ,o_ckv_ia_wdata_part0
    ) ;
  _zz_strnp_554 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY545
      ,o_ckv_ia_wdata_part1
    ) ;
  _zz_strnp_555 : ixc_assign
    generic map(W => 3)
    port map (
       DUMMY546
      ,kim_stat_code
    ) ;
  _zz_strnp_556 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY547
      ,kim_stat_datawords
    ) ;
  _zz_strnp_557 : ixc_assign
    generic map(W => 14)
    port map (
       DUMMY548
      ,kim_stat_addr
    ) ;
  _zz_strnp_558 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY549
      ,kim_capability_type
    ) ;
  _zz_strnp_559 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY550
      ,kim_capability_lst
    ) ;
  _zz_strnp_560 : ixc_assign
    generic map(W => 38)
    port map (
       DUMMY551
      ,kim_rd_dat
    ) ;
  _zz_strnp_561 : ixc_assign
    generic map(W => 18)
    port map (
       DUMMY552
      ,o_kim_ia_config
    ) ;
  _zz_strnp_562 : ixc_assign
    generic map(W => 21)
    port map (
       DUMMY553
      ,o_kim_ia_wdata_part0
    ) ;
  _zz_strnp_563 : ixc_assign
    generic map(W => 17)
    port map (
       DUMMY554
      ,o_kim_ia_wdata_part1
    ) ;
  _zz_strnp_564 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY555
      ,wr_stb
    ) ;
  _zz_strnp_565 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY556
      ,wr_data
    ) ;
  _zz_strnp_566 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY557
      ,reg_addr
    ) ;
  _zz_strnp_567 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY558
      ,o_engine_sticky_status
    ) ;
  _zz_strnp_568 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY559
      ,o_disable_ckv_kim_ism_reads
    ) ;
  _zz_strnp_569 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY560
      ,o_send_kme_ib_beat
    ) ;
  _zz_strnp_570 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY561
      ,cceip0_out_ia_wdata
    ) ;
  _zz_strnp_571 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY562
      ,tready_override
    ) ;
  _zz_strnp_572 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY563
      ,kme_cceip0_ob_out_post
    ) ;
  _zz_strnp_573 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY564
      ,kme_cceip1_ob_out_post
    ) ;
  _zz_strnp_574 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY565
      ,kme_cceip2_ob_out_post
    ) ;
  _zz_strnp_575 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY566
      ,kme_cceip3_ob_out_post
    ) ;
  _zz_strnp_576 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY567
      ,kme_cddip0_ob_out_post
    ) ;
  _zz_strnp_577 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY568
      ,kme_cddip1_ob_out_post
    ) ;
  _zz_strnp_578 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY569
      ,kme_cddip2_ob_out_post
    ) ;
  _zz_strnp_579 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY570
      ,kme_cddip3_ob_out_post
    ) ;
  _zz_strnp_580 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY571
      ,cddip3_ism_osync
    ) ;
  _zz_strnp_581 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY572
      ,cddip3_ism_odat
    ) ;
  _zz_strnp_582 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY573
      ,reg_addr
    ) ;
  _zz_strnp_583 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY574
      ,ckv_cmnd_op
    ) ;
  _zz_strnp_584 : ixc_assign
    generic map(W => 15)
    port map (
       DUMMY575
      ,ckv_cmnd_addr
    ) ;
  _zz_strnp_585 : ixc_assign
    generic map(W => 3)
    port map (
       ckv_stat_code
      ,DUMMY576
    ) ;
  _zz_strnp_586 : ixc_assign
    generic map(W => 5)
    port map (
       ckv_stat_datawords
      ,DUMMY577
    ) ;
  _zz_strnp_587 : ixc_assign
    generic map(W => 15)
    port map (
       ckv_stat_addr
      ,DUMMY578
    ) ;
  _zz_strnp_588 : ixc_assign
    generic map(W => 16)
    port map (
       ckv_capability_lst
      ,DUMMY579
    ) ;
  _zz_strnp_589 : ixc_assign
    generic map(W => 4)
    port map (
       ckv_capability_type
      ,DUMMY580
    ) ;
  _zz_strnp_590 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY581
      ,wr_stb
    ) ;
  _zz_strnp_591 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY582
      ,ckv_wr_dat
    ) ;
  _zz_strnp_592 : ixc_assign
    generic map(W => 64)
    port map (
       ckv_rd_dat
      ,DUMMY583
    ) ;
  _zy_simnet_cio_654 <= '0' ;
  _zz_strnp_593 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY584
      ,ckv_bimc_isync
    ) ;
  _zz_strnp_594 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY585
      ,ckv_bimc_idat
    ) ;
  _zz_strnp_595 : ixc_assign
    generic map(W => 1)
    port map (
       cceip0_ism_bimc_idat
      ,DUMMY586
    ) ;
  _zz_strnp_596 : ixc_assign
    generic map(W => 1)
    port map (
       cceip0_ism_bimc_isync
      ,DUMMY587
    ) ;
  _zy_simnet_cio_659 <= '0' ;
  _zy_simnet_cio_660 <=
   "0000000000000000000000000000000000000000000000000000000000000000" ;
  _zy_simnet_cio_661 <=
   "0000000000000000000000000000000000000000000000000000000000000000" ;
  _zz_strnp_597 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY588
      ,reg_addr
    ) ;
  _zz_strnp_598 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY589
      ,kim_cmnd_op
    ) ;
  _zz_strnp_599 : ixc_assign
    generic map(W => 14)
    port map (
       DUMMY590
      ,kim_cmnd_addr
    ) ;
  _zz_strnp_600 : ixc_assign
    generic map(W => 3)
    port map (
       kim_stat_code
      ,DUMMY591
    ) ;
  _zz_strnp_601 : ixc_assign
    generic map(W => 5)
    port map (
       kim_stat_datawords
      ,DUMMY592
    ) ;
  _zz_strnp_602 : ixc_assign
    generic map(W => 14)
    port map (
       kim_stat_addr
      ,DUMMY593
    ) ;
  _zz_strnp_603 : ixc_assign
    generic map(W => 16)
    port map (
       kim_capability_lst
      ,DUMMY594
    ) ;
  _zz_strnp_604 : ixc_assign
    generic map(W => 4)
    port map (
       kim_capability_type
      ,DUMMY595
    ) ;
  _zz_strnp_605 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY596
      ,wr_stb
    ) ;
  _zz_strnp_606 : ixc_assign
    generic map(W => 38)
    port map (
       DUMMY597
      ,kim_wr_dat
    ) ;
  _zz_strnp_607 : ixc_assign
    generic map(W => 38)
    port map (
       kim_rd_dat
      ,DUMMY598
    ) ;
  _zy_simnet_cio_674 <= '0' ;
  _zz_strnp_608 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY599
      ,kim_bimc_isync
    ) ;
  _zz_strnp_609 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY600
      ,kim_bimc_idat
    ) ;
  _zz_strnp_610 : ixc_assign
    generic map(W => 1)
    port map (
       ckv_bimc_idat
      ,DUMMY601
    ) ;
  _zz_strnp_611 : ixc_assign
    generic map(W => 1)
    port map (
       ckv_bimc_isync
      ,DUMMY602
    ) ;
  _zy_simnet_cio_679 <= '0' ;
  _zy_simnet_cio_680 <= "00000000000000000000000000000000000000" ;
  _zy_simnet_cio_681 <= "00000000000000000000000000000000000000" ;
  _zz_strnp_612 : ixc_assign
    generic map(W => 38)
    port map (
       kim_dout
      ,DUMMY603
    ) ;
  _zz_strnp_613 : ixc_assign
    generic map(W => 1)
    port map (
       set_drbg_expired_int
      ,DUMMY604
    ) ;
  _zz_strnp_614 : ixc_assign
    generic map(W => 2)
    port map (
       kdf_drbg_ctrl
      ,DUMMY605
    ) ;
  _zz_strnp_615 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY606
      ,wr_stb
    ) ;
  _zz_strnp_616 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY607
      ,wr_data
    ) ;
  _zz_strnp_617 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY608
      ,reg_addr
    ) ;
  _zz_strnp_618 : ixc_assign
    generic map(W => 2)
    port map (
       DUMMY609
      ,o_kdf_drbg_ctrl
    ) ;
  _zz_strnp_619 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY610
      ,o_kdf_drbg_seed_0_reseed_interval_0
    ) ;
  _zz_strnp_620 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY611
      ,o_kdf_drbg_seed_0_reseed_interval_1
    ) ;
  _zz_strnp_621 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY612
      ,o_kdf_drbg_seed_0_state_key_127_96
    ) ;
  _zz_strnp_622 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY613
      ,o_kdf_drbg_seed_0_state_key_159_128
    ) ;
  _zz_strnp_623 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY614
      ,o_kdf_drbg_seed_0_state_key_191_160
    ) ;
  _zz_strnp_624 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY615
      ,o_kdf_drbg_seed_0_state_key_223_192
    ) ;
  _zz_strnp_625 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY616
      ,o_kdf_drbg_seed_0_state_key_255_224
    ) ;
  _zz_strnp_626 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY617
      ,o_kdf_drbg_seed_0_state_key_31_0
    ) ;
  _zz_strnp_627 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY618
      ,o_kdf_drbg_seed_0_state_key_63_32
    ) ;
  _zz_strnp_628 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY619
      ,o_kdf_drbg_seed_0_state_key_95_64
    ) ;
  _zz_strnp_629 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY620
      ,o_kdf_drbg_seed_0_state_value_127_96
    ) ;
  _zz_strnp_630 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY621
      ,o_kdf_drbg_seed_0_state_value_31_0
    ) ;
  _zz_strnp_631 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY622
      ,o_kdf_drbg_seed_0_state_value_63_32
    ) ;
  _zz_strnp_632 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY623
      ,o_kdf_drbg_seed_0_state_value_95_64
    ) ;
  _zz_strnp_633 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY624
      ,o_kdf_drbg_seed_1_reseed_interval_0
    ) ;
  _zz_strnp_634 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY625
      ,o_kdf_drbg_seed_1_reseed_interval_1
    ) ;
  _zz_strnp_635 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY626
      ,o_kdf_drbg_seed_1_state_key_127_96
    ) ;
  _zz_strnp_636 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY627
      ,o_kdf_drbg_seed_1_state_key_159_128
    ) ;
  _zz_strnp_637 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY628
      ,o_kdf_drbg_seed_1_state_key_191_160
    ) ;
  _zz_strnp_638 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY629
      ,o_kdf_drbg_seed_1_state_key_223_192
    ) ;
  _zz_strnp_639 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY630
      ,o_kdf_drbg_seed_1_state_key_255_224
    ) ;
  _zz_strnp_640 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY631
      ,o_kdf_drbg_seed_1_state_key_31_0
    ) ;
  _zz_strnp_641 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY632
      ,o_kdf_drbg_seed_1_state_key_63_32
    ) ;
  _zz_strnp_642 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY633
      ,o_kdf_drbg_seed_1_state_key_95_64
    ) ;
  _zz_strnp_643 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY634
      ,o_kdf_drbg_seed_1_state_value_127_96
    ) ;
  _zz_strnp_644 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY635
      ,o_kdf_drbg_seed_1_state_value_31_0
    ) ;
  _zz_strnp_645 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY636
      ,o_kdf_drbg_seed_1_state_value_63_32
    ) ;
  _zz_strnp_646 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY637
      ,o_kdf_drbg_seed_1_state_value_95_64
    ) ;
  _zz_strnp_647 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_interrupt
      ,DUMMY638
    ) ;
  _zz_strnp_648 : ixc_assign
    generic map(W => 1)
    port map (
       kim_bimc_idat
      ,DUMMY639
    ) ;
  _zz_strnp_649 : ixc_assign
    generic map(W => 1)
    port map (
       kim_bimc_isync
      ,DUMMY640
    ) ;
  _zz_strnp_650 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY641
      ,axi_term_bimc_idat
    ) ;
  _zz_strnp_651 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY642
      ,axi_term_bimc_isync
    ) ;
  _zz_strnp_652 : ixc_assign
    generic map(W => 7)
    port map (
       DUMMY643
      ,o_bimc_monitor_mask
    ) ;
  _zz_strnp_653 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY644
      ,o_bimc_ecc_uncorrectable_error_cnt
    ) ;
  _zz_strnp_654 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY645
      ,o_bimc_ecc_correctable_error_cnt
    ) ;
  _zz_strnp_655 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY646
      ,o_bimc_parity_error_cnt
    ) ;
  _zz_strnp_656 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY647
      ,o_bimc_global_config
    ) ;
  _zz_strnp_657 : ixc_assign
    generic map(W => 29)
    port map (
       DUMMY648
      ,o_bimc_eccpar_debug
    ) ;
  _zz_strnp_658 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY649
      ,o_bimc_cmd2
    ) ;
  _zz_strnp_659 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY650
      ,o_bimc_cmd1
    ) ;
  _zz_strnp_660 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY651
      ,o_bimc_cmd0
    ) ;
  _zz_strnp_661 : ixc_assign
    generic map(W => 10)
    port map (
       DUMMY652
      ,o_bimc_rxcmd2
    ) ;
  _zz_strnp_662 : ixc_assign
    generic map(W => 10)
    port map (
       DUMMY653
      ,o_bimc_rxrsp2
    ) ;
  _zz_strnp_663 : ixc_assign
    generic map(W => 10)
    port map (
       DUMMY654
      ,o_bimc_pollrsp2
    ) ;
  _zz_strnp_664 : ixc_assign
    generic map(W => 10)
    port map (
       DUMMY655
      ,o_bimc_dbgcmd2
    ) ;
  _zz_strnp_665 : ixc_assign
    generic map(W => 7)
    port map (
       bimc_monitor
      ,DUMMY656
    ) ;
  _zz_strnp_666 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_ecc_uncorrectable_error_cnt
      ,DUMMY657
    ) ;
  _zz_strnp_667 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_ecc_correctable_error_cnt
      ,DUMMY658
    ) ;
  _zz_strnp_668 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_parity_error_cnt
      ,DUMMY659
    ) ;
  _zz_strnp_669 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_global_config
      ,DUMMY660
    ) ;
  _zz_strnp_670 : ixc_assign
    generic map(W => 12)
    port map (
       bimc_memid
      ,DUMMY661
    ) ;
  _zz_strnp_671 : ixc_assign
    generic map(W => 29)
    port map (
       bimc_eccpar_debug
      ,DUMMY662
    ) ;
  _zz_strnp_672 : ixc_assign
    generic map(W => 11)
    port map (
       bimc_cmd2
      ,DUMMY663
    ) ;
  _zz_strnp_673 : ixc_assign
    generic map(W => 10)
    port map (
       bimc_rxcmd2
      ,DUMMY664
    ) ;
  _zz_strnp_674 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_rxcmd1
      ,DUMMY665
    ) ;
  _zz_strnp_675 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_rxcmd0
      ,DUMMY666
    ) ;
  _zz_strnp_676 : ixc_assign
    generic map(W => 10)
    port map (
       bimc_rxrsp2
      ,DUMMY667
    ) ;
  _zz_strnp_677 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_rxrsp1
      ,DUMMY668
    ) ;
  _zz_strnp_678 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_rxrsp0
      ,DUMMY669
    ) ;
  _zz_strnp_679 : ixc_assign
    generic map(W => 10)
    port map (
       bimc_pollrsp2
      ,DUMMY670
    ) ;
  _zz_strnp_680 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_pollrsp1
      ,DUMMY671
    ) ;
  _zz_strnp_681 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_pollrsp0
      ,DUMMY672
    ) ;
  _zz_strnp_682 : ixc_assign
    generic map(W => 10)
    port map (
       bimc_dbgcmd2
      ,DUMMY673
    ) ;
  _zz_strnp_683 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_dbgcmd1
      ,DUMMY674
    ) ;
  _zz_strnp_684 : ixc_assign
    generic map(W => 32)
    port map (
       bimc_dbgcmd0
      ,DUMMY675
    ) ;
  _zz_strnp_685 : ixc_assign
    generic map(W => 5)
    port map (
       interrupt_status
      ,DUMMY676
    ) ;
  _zz_strnp_686 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY677
      ,set_drbg_expired_int
    ) ;
  _zz_strnp_687 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY678
      ,cceip0_ism_mbe
    ) ;
  _zz_strnp_688 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY679
      ,cceip1_ism_mbe
    ) ;
  _zz_strnp_689 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY680
      ,cceip2_ism_mbe
    ) ;
  _zz_strnp_690 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY681
      ,cceip3_ism_mbe
    ) ;
  _zz_strnp_691 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY682
      ,cddip0_ism_mbe
    ) ;
  _zz_strnp_692 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY683
      ,cddip1_ism_mbe
    ) ;
  _zz_strnp_693 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY684
      ,cddip2_ism_mbe
    ) ;
  _zz_strnp_694 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY685
      ,cddip3_ism_mbe
    ) ;
  _zz_strnp_695 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY686
      ,bimc_interrupt
    ) ;
  _zz_strnp_696 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY687
      ,wr_stb
    ) ;
  _zz_strnp_697 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY688
      ,wr_data
    ) ;
  _zz_strnp_698 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY689
      ,reg_addr
    ) ;
  _zz_strnp_699 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY690
      ,o_interrupt_mask
    ) ;
  _zz_strnp_700 : ixc_assign
    generic map(W => 3)
    port map (
       sa_snapshot_ia_status(10+2 downto 10)
      ,DUMMY691
    ) ;
  _zz_strnp_701 : ixc_assign
    generic map(W => 5)
    port map (
       sa_snapshot_ia_status(5+4 downto 5)
      ,DUMMY692
    ) ;
  _zz_strnp_702 : ixc_assign
    generic map(W => 5)
    port map (
       sa_snapshot_ia_status(4 downto 0)
      ,DUMMY693
    ) ;
  _zz_strnp_703 : ixc_assign
    generic map(W => 16)
    port map (
       sa_snapshot_ia_capability(15 downto 0)
      ,DUMMY694
    ) ;
  _zz_strnp_704 : ixc_assign
    generic map(W => 4)
    port map (
       sa_snapshot_ia_capability(16+3 downto 16)
      ,DUMMY695
    ) ;
  _zz_strnp_705 : ixc_assign
    generic map(W => 64)
    port map (
       sa_snapshot_ia_rdata
      ,DUMMY696
    ) ;
  _zz_strnp_706 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY697
      ,reg_addr
    ) ;
  _zz_strnp_707 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY698
      ,sa_snapshot_ia_config(5+3 downto 5)
    ) ;
  _zz_strnp_708 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY699
      ,sa_snapshot_ia_config(4 downto 0)
    ) ;
  _zz_strnp_709 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY700
      ,wr_stb
    ) ;
  _zz_strnp_710 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY701
      ,sa_snapshot_ia_wdata
    ) ;
  _zz_strnp_711 : ixc_assign
    generic map(W => 3)
    port map (
       sa_count_ia_status(10+2 downto 10)
      ,DUMMY702
    ) ;
  _zz_strnp_712 : ixc_assign
    generic map(W => 5)
    port map (
       sa_count_ia_status(5+4 downto 5)
      ,DUMMY703
    ) ;
  _zz_strnp_713 : ixc_assign
    generic map(W => 5)
    port map (
       sa_count_ia_status(4 downto 0)
      ,DUMMY704
    ) ;
  _zz_strnp_714 : ixc_assign
    generic map(W => 16)
    port map (
       sa_count_ia_capability(15 downto 0)
      ,DUMMY705
    ) ;
  _zz_strnp_715 : ixc_assign
    generic map(W => 4)
    port map (
       sa_count_ia_capability(16+3 downto 16)
      ,DUMMY706
    ) ;
  _zz_strnp_716 : ixc_assign
    generic map(W => 64)
    port map (
       sa_count_ia_rdata
      ,DUMMY707
    ) ;
  _zz_strnp_717 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY708
      ,reg_addr
    ) ;
  _zz_strnp_718 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY709
      ,sa_count_ia_config(5+3 downto 5)
    ) ;
  _zz_strnp_719 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY710
      ,sa_count_ia_config(4 downto 0)
    ) ;
  _zz_strnp_720 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY711
      ,wr_stb
    ) ;
  _zz_strnp_721 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY712
      ,sa_count_ia_wdata
    ) ;
  _zz_strnp_722 : ixc_assign
    generic map(W => 3)
    port map (
       sa_ctrl_ia_status(10+2 downto 10)
      ,DUMMY713
    ) ;
  _zz_strnp_723 : ixc_assign
    generic map(W => 5)
    port map (
       sa_ctrl_ia_status(5+4 downto 5)
      ,DUMMY714
    ) ;
  _zz_strnp_724 : ixc_assign
    generic map(W => 5)
    port map (
       sa_ctrl_ia_status(4 downto 0)
      ,DUMMY715
    ) ;
  _zz_strnp_725 : ixc_assign
    generic map(W => 16)
    port map (
       sa_ctrl_ia_capability(15 downto 0)
      ,DUMMY716
    ) ;
  _zz_strnp_726 : ixc_assign
    generic map(W => 4)
    port map (
       sa_ctrl_ia_capability(16+3 downto 16)
      ,DUMMY717
    ) ;
  _zz_strnp_727 : ixc_assign
    generic map(W => 32)
    port map (
       sa_ctrl_ia_rdata
      ,DUMMY718
    ) ;
  _zz_strnp_728 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY719
      ,reg_addr
    ) ;
  _zz_strnp_729 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY720
      ,sa_ctrl_ia_config(5+3 downto 5)
    ) ;
  _zz_strnp_730 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY721
      ,sa_ctrl_ia_config(4 downto 0)
    ) ;
  _zz_strnp_731 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY722
      ,wr_stb
    ) ;
  _zz_strnp_732 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY723
      ,sa_ctrl_ia_wdata
    ) ;
  u_cr_kme_regs : cr_kme_regs
    port map (
       clk => clk
      ,i_reset_ => rst_n
      ,i_sw_init => _zy_simnet_cio_24
      ,i_addr => DUMMY30
      ,i_wr_strb => DUMMY31
      ,i_wr_data => DUMMY32
      ,i_rd_strb => DUMMY33
      ,o_rd_data => DUMMY34
      ,o_ack => DUMMY35
      ,o_err_ack => DUMMY36
      ,o_spare_config => _zy_simnet_tvar_32
      ,o_cceip0_out_ia_wdata_part0 => DUMMY37
      ,o_cceip0_out_ia_wdata_part1 => DUMMY38
      ,o_cceip0_out_ia_wdata_part2 => DUMMY39
      ,o_cceip0_out_ia_config => DUMMY40
      ,o_cceip0_out_im_config => DUMMY41
      ,o_cceip0_out_im_read_done => _zy_simnet_dio_43
      ,o_cceip1_out_ia_wdata_part0 => DUMMY42
      ,o_cceip1_out_ia_wdata_part1 => DUMMY43
      ,o_cceip1_out_ia_wdata_part2 => DUMMY44
      ,o_cceip1_out_ia_config => DUMMY45
      ,o_cceip1_out_im_config => DUMMY46
      ,o_cceip1_out_im_read_done => _zy_simnet_dio_49
      ,o_cceip2_out_ia_wdata_part0 => DUMMY47
      ,o_cceip2_out_ia_wdata_part1 => DUMMY48
      ,o_cceip2_out_ia_wdata_part2 => DUMMY49
      ,o_cceip2_out_ia_config => DUMMY50
      ,o_cceip2_out_im_config => DUMMY51
      ,o_cceip2_out_im_read_done => _zy_simnet_dio_55
      ,o_cceip3_out_ia_wdata_part0 => DUMMY52
      ,o_cceip3_out_ia_wdata_part1 => DUMMY53
      ,o_cceip3_out_ia_wdata_part2 => DUMMY54
      ,o_cceip3_out_ia_config => DUMMY55
      ,o_cceip3_out_im_config => DUMMY56
      ,o_cceip3_out_im_read_done => _zy_simnet_dio_61
      ,o_cddip0_out_ia_wdata_part0 => DUMMY57
      ,o_cddip0_out_ia_wdata_part1 => DUMMY58
      ,o_cddip0_out_ia_wdata_part2 => DUMMY59
      ,o_cddip0_out_ia_config => DUMMY60
      ,o_cddip0_out_im_config => DUMMY61
      ,o_cddip0_out_im_read_done => _zy_simnet_dio_67
      ,o_cddip1_out_ia_wdata_part0 => DUMMY62
      ,o_cddip1_out_ia_wdata_part1 => DUMMY63
      ,o_cddip1_out_ia_wdata_part2 => DUMMY64
      ,o_cddip1_out_ia_config => DUMMY65
      ,o_cddip1_out_im_config => DUMMY66
      ,o_cddip1_out_im_read_done => _zy_simnet_dio_73
      ,o_cddip2_out_ia_wdata_part0 => DUMMY67
      ,o_cddip2_out_ia_wdata_part1 => DUMMY68
      ,o_cddip2_out_ia_wdata_part2 => DUMMY69
      ,o_cddip2_out_ia_config => DUMMY70
      ,o_cddip2_out_im_config => DUMMY71
      ,o_cddip2_out_im_read_done => _zy_simnet_dio_79
      ,o_cddip3_out_ia_wdata_part0 => DUMMY72
      ,o_cddip3_out_ia_wdata_part1 => DUMMY73
      ,o_cddip3_out_ia_wdata_part2 => DUMMY74
      ,o_cddip3_out_ia_config => DUMMY75
      ,o_cddip3_out_im_config => DUMMY76
      ,o_cddip3_out_im_read_done => _zy_simnet_dio_85
      ,o_ckv_ia_wdata_part0 => DUMMY77
      ,o_ckv_ia_wdata_part1 => DUMMY78
      ,o_ckv_ia_config => DUMMY79
      ,o_kim_ia_wdata_part0 => DUMMY80
      ,o_kim_ia_wdata_part1 => DUMMY81
      ,o_kim_ia_config => DUMMY82
      ,o_label0_config => _zy_simnet_tvar_92
      ,o_label0_data7 => DUMMY83
      ,o_label0_data6 => DUMMY84
      ,o_label0_data5 => DUMMY85
      ,o_label0_data4 => DUMMY86
      ,o_label0_data3 => DUMMY87
      ,o_label0_data2 => DUMMY88
      ,o_label0_data1 => DUMMY89
      ,o_label0_data0 => DUMMY90
      ,o_label1_config => _zy_simnet_tvar_101
      ,o_label1_data7 => DUMMY91
      ,o_label1_data6 => DUMMY92
      ,o_label1_data5 => DUMMY93
      ,o_label1_data4 => DUMMY94
      ,o_label1_data3 => DUMMY95
      ,o_label1_data2 => DUMMY96
      ,o_label1_data1 => DUMMY97
      ,o_label1_data0 => DUMMY98
      ,o_label2_config => _zy_simnet_tvar_110
      ,o_label2_data7 => DUMMY99
      ,o_label2_data6 => DUMMY100
      ,o_label2_data5 => DUMMY101
      ,o_label2_data4 => DUMMY102
      ,o_label2_data3 => DUMMY103
      ,o_label2_data2 => DUMMY104
      ,o_label2_data1 => DUMMY105
      ,o_label2_data0 => DUMMY106
      ,o_label3_config => _zy_simnet_tvar_119
      ,o_label3_data7 => DUMMY107
      ,o_label3_data6 => DUMMY108
      ,o_label3_data5 => DUMMY109
      ,o_label3_data4 => DUMMY110
      ,o_label3_data3 => DUMMY111
      ,o_label3_data2 => DUMMY112
      ,o_label3_data1 => DUMMY113
      ,o_label3_data0 => DUMMY114
      ,o_label4_config => _zy_simnet_tvar_128
      ,o_label4_data7 => DUMMY115
      ,o_label4_data6 => DUMMY116
      ,o_label4_data5 => DUMMY117
      ,o_label4_data4 => DUMMY118
      ,o_label4_data3 => DUMMY119
      ,o_label4_data2 => DUMMY120
      ,o_label4_data1 => DUMMY121
      ,o_label4_data0 => DUMMY122
      ,o_label5_config => _zy_simnet_tvar_137
      ,o_label5_data7 => DUMMY123
      ,o_label5_data6 => DUMMY124
      ,o_label5_data5 => DUMMY125
      ,o_label5_data4 => DUMMY126
      ,o_label5_data3 => DUMMY127
      ,o_label5_data2 => DUMMY128
      ,o_label5_data1 => DUMMY129
      ,o_label5_data0 => DUMMY130
      ,o_label6_config => _zy_simnet_tvar_146
      ,o_label6_data7 => DUMMY131
      ,o_label6_data6 => DUMMY132
      ,o_label6_data5 => DUMMY133
      ,o_label6_data4 => DUMMY134
      ,o_label6_data3 => DUMMY135
      ,o_label6_data2 => DUMMY136
      ,o_label6_data1 => DUMMY137
      ,o_label6_data0 => DUMMY138
      ,o_label7_config => _zy_simnet_tvar_155
      ,o_label7_data7 => DUMMY139
      ,o_label7_data6 => DUMMY140
      ,o_label7_data5 => DUMMY141
      ,o_label7_data4 => DUMMY142
      ,o_label7_data3 => DUMMY143
      ,o_label7_data2 => DUMMY144
      ,o_label7_data1 => DUMMY145
      ,o_label7_data0 => DUMMY146
      ,o_kdf_drbg_ctrl => DUMMY147
      ,o_kdf_drbg_seed_0_state_key_31_0 => DUMMY148
      ,o_kdf_drbg_seed_0_state_key_63_32 => DUMMY149
      ,o_kdf_drbg_seed_0_state_key_95_64 => DUMMY150
      ,o_kdf_drbg_seed_0_state_key_127_96 => DUMMY151
      ,o_kdf_drbg_seed_0_state_key_159_128 => DUMMY152
      ,o_kdf_drbg_seed_0_state_key_191_160 => DUMMY153
      ,o_kdf_drbg_seed_0_state_key_223_192 => DUMMY154
      ,o_kdf_drbg_seed_0_state_key_255_224 => DUMMY155
      ,o_kdf_drbg_seed_0_state_value_31_0 => DUMMY156
      ,o_kdf_drbg_seed_0_state_value_63_32 => DUMMY157
      ,o_kdf_drbg_seed_0_state_value_95_64 => DUMMY158
      ,o_kdf_drbg_seed_0_state_value_127_96 => DUMMY159
      ,o_kdf_drbg_seed_0_reseed_interval_0 => DUMMY160
      ,o_kdf_drbg_seed_0_reseed_interval_1 => DUMMY161
      ,o_kdf_drbg_seed_1_state_key_31_0 => DUMMY162
      ,o_kdf_drbg_seed_1_state_key_63_32 => DUMMY163
      ,o_kdf_drbg_seed_1_state_key_95_64 => DUMMY164
      ,o_kdf_drbg_seed_1_state_key_127_96 => DUMMY165
      ,o_kdf_drbg_seed_1_state_key_159_128 => DUMMY166
      ,o_kdf_drbg_seed_1_state_key_191_160 => DUMMY167
      ,o_kdf_drbg_seed_1_state_key_223_192 => DUMMY168
      ,o_kdf_drbg_seed_1_state_key_255_224 => DUMMY169
      ,o_kdf_drbg_seed_1_state_value_31_0 => DUMMY170
      ,o_kdf_drbg_seed_1_state_value_63_32 => DUMMY171
      ,o_kdf_drbg_seed_1_state_value_95_64 => DUMMY172
      ,o_kdf_drbg_seed_1_state_value_127_96 => DUMMY173
      ,o_kdf_drbg_seed_1_reseed_interval_0 => DUMMY174
      ,o_kdf_drbg_seed_1_reseed_interval_1 => DUMMY175
      ,o_interrupt_status => _zy_simnet_dio_193
      ,o_interrupt_mask => DUMMY176
      ,o_engine_sticky_status => DUMMY177
      ,o_bimc_monitor_mask => DUMMY178
      ,o_bimc_ecc_uncorrectable_error_cnt => DUMMY179
      ,o_bimc_ecc_correctable_error_cnt => DUMMY180
      ,o_bimc_parity_error_cnt => DUMMY181
      ,o_bimc_global_config => DUMMY182
      ,o_bimc_eccpar_debug => DUMMY183
      ,o_bimc_cmd2 => DUMMY184
      ,o_bimc_cmd1 => DUMMY185
      ,o_bimc_cmd0 => DUMMY186
      ,o_bimc_rxcmd2 => DUMMY187
      ,o_bimc_rxrsp2 => DUMMY188
      ,o_bimc_pollrsp2 => DUMMY189
      ,o_bimc_dbgcmd2 => DUMMY190
      ,o_im_consumed => _zy_simnet_dio_209
      ,o_tready_override => DUMMY191
      ,o_regs_sa_ctrl => DUMMY192
      ,o_sa_snapshot_ia_wdata_part0 => DUMMY193
      ,o_sa_snapshot_ia_wdata_part1 => DUMMY194
      ,o_sa_snapshot_ia_config => DUMMY195
      ,o_sa_count_ia_wdata_part0 => DUMMY196
      ,o_sa_count_ia_wdata_part1 => DUMMY197
      ,o_sa_count_ia_config => DUMMY198
      ,o_cceip_encrypt_kop_fifo_override => DUMMY199
      ,o_cceip_validate_kop_fifo_override => DUMMY200
      ,o_cddip_decrypt_kop_fifo_override => DUMMY201
      ,o_sa_global_ctrl => DUMMY202
      ,o_sa_ctrl_ia_wdata_part0 => DUMMY203
      ,o_sa_ctrl_ia_config => DUMMY204
      ,o_kdf_test_key_size_config => kdf_test_key_size
      ,i_blkid_revid_config => DUMMY205
      ,i_revision_config => DUMMY206
      ,i_spare_config => _zy_simnet_tvar_226
      ,i_cceip0_out_ia_capability => DUMMY207
      ,i_cceip0_out_ia_status => DUMMY208
      ,i_cceip0_out_ia_rdata_part0 => _zy_simnet_tvar_229
      ,i_cceip0_out_ia_rdata_part1 => _zy_simnet_tvar_230
      ,i_cceip0_out_ia_rdata_part2 => _zy_simnet_tvar_231
      ,i_cceip0_out_im_status => DUMMY209
      ,i_cceip0_out_im_read_done => _zy_simnet_cio_233
      ,i_cceip1_out_ia_capability => DUMMY210
      ,i_cceip1_out_ia_status => DUMMY211
      ,i_cceip1_out_ia_rdata_part0 => _zy_simnet_tvar_236
      ,i_cceip1_out_ia_rdata_part1 => _zy_simnet_tvar_237
      ,i_cceip1_out_ia_rdata_part2 => _zy_simnet_tvar_238
      ,i_cceip1_out_im_status => DUMMY212
      ,i_cceip1_out_im_read_done => _zy_simnet_cio_240
      ,i_cceip2_out_ia_capability => DUMMY213
      ,i_cceip2_out_ia_status => DUMMY214
      ,i_cceip2_out_ia_rdata_part0 => _zy_simnet_tvar_243
      ,i_cceip2_out_ia_rdata_part1 => _zy_simnet_tvar_244
      ,i_cceip2_out_ia_rdata_part2 => _zy_simnet_tvar_245
      ,i_cceip2_out_im_status => DUMMY215
      ,i_cceip2_out_im_read_done => _zy_simnet_cio_247
      ,i_cceip3_out_ia_capability => DUMMY216
      ,i_cceip3_out_ia_status => DUMMY217
      ,i_cceip3_out_ia_rdata_part0 => _zy_simnet_tvar_250
      ,i_cceip3_out_ia_rdata_part1 => _zy_simnet_tvar_251
      ,i_cceip3_out_ia_rdata_part2 => _zy_simnet_tvar_252
      ,i_cceip3_out_im_status => DUMMY218
      ,i_cceip3_out_im_read_done => _zy_simnet_cio_254
      ,i_cddip0_out_ia_capability => DUMMY219
      ,i_cddip0_out_ia_status => DUMMY220
      ,i_cddip0_out_ia_rdata_part0 => _zy_simnet_tvar_257
      ,i_cddip0_out_ia_rdata_part1 => _zy_simnet_tvar_258
      ,i_cddip0_out_ia_rdata_part2 => _zy_simnet_tvar_259
      ,i_cddip0_out_im_status => DUMMY221
      ,i_cddip0_out_im_read_done => _zy_simnet_cio_261
      ,i_cddip1_out_ia_capability => DUMMY222
      ,i_cddip1_out_ia_status => DUMMY223
      ,i_cddip1_out_ia_rdata_part0 => _zy_simnet_tvar_264
      ,i_cddip1_out_ia_rdata_part1 => _zy_simnet_tvar_265
      ,i_cddip1_out_ia_rdata_part2 => _zy_simnet_tvar_266
      ,i_cddip1_out_im_status => DUMMY224
      ,i_cddip1_out_im_read_done => _zy_simnet_cio_268
      ,i_cddip2_out_ia_capability => DUMMY225
      ,i_cddip2_out_ia_status => DUMMY226
      ,i_cddip2_out_ia_rdata_part0 => _zy_simnet_tvar_271
      ,i_cddip2_out_ia_rdata_part1 => _zy_simnet_tvar_272
      ,i_cddip2_out_ia_rdata_part2 => _zy_simnet_tvar_273
      ,i_cddip2_out_im_status => DUMMY227
      ,i_cddip2_out_im_read_done => _zy_simnet_cio_275
      ,i_cddip3_out_ia_capability => DUMMY228
      ,i_cddip3_out_ia_status => DUMMY229
      ,i_cddip3_out_ia_rdata_part0 => _zy_simnet_tvar_278
      ,i_cddip3_out_ia_rdata_part1 => _zy_simnet_tvar_279
      ,i_cddip3_out_ia_rdata_part2 => _zy_simnet_tvar_280
      ,i_cddip3_out_im_status => DUMMY230
      ,i_cddip3_out_im_read_done => _zy_simnet_cio_282
      ,i_ckv_ia_capability => DUMMY231
      ,i_ckv_ia_status => DUMMY232
      ,i_ckv_ia_rdata_part0 => DUMMY233
      ,i_ckv_ia_rdata_part1 => DUMMY234
      ,i_kim_ia_capability => DUMMY235
      ,i_kim_ia_status => DUMMY236
      ,i_kim_ia_rdata_part0 => DUMMY237
      ,i_kim_ia_rdata_part1 => DUMMY238
      ,i_kdf_drbg_ctrl => DUMMY239
      ,i_interrupt_status => DUMMY240
      ,i_engine_sticky_status => DUMMY241
      ,i_bimc_monitor => DUMMY242
      ,i_bimc_ecc_uncorrectable_error_cnt => DUMMY243
      ,i_bimc_ecc_correctable_error_cnt => DUMMY244
      ,i_bimc_parity_error_cnt => DUMMY245
      ,i_bimc_global_config => DUMMY246
      ,i_bimc_memid => DUMMY247
      ,i_bimc_eccpar_debug => DUMMY248
      ,i_bimc_cmd2 => DUMMY249
      ,i_bimc_rxcmd2 => DUMMY250
      ,i_bimc_rxcmd1 => DUMMY251
      ,i_bimc_rxcmd0 => DUMMY252
      ,i_bimc_rxrsp2 => DUMMY253
      ,i_bimc_rxrsp1 => DUMMY254
      ,i_bimc_rxrsp0 => DUMMY255
      ,i_bimc_pollrsp2 => DUMMY256
      ,i_bimc_pollrsp1 => DUMMY257
      ,i_bimc_pollrsp0 => DUMMY258
      ,i_bimc_dbgcmd2 => DUMMY259
      ,i_bimc_dbgcmd1 => DUMMY260
      ,i_bimc_dbgcmd0 => DUMMY261
      ,i_im_available => DUMMY262
      ,i_im_consumed => _zy_simnet_cio_315
      ,i_tready_override => DUMMY263
      ,i_regs_sa_ctrl => DUMMY264
      ,i_sa_snapshot_ia_capability => DUMMY265
      ,i_sa_snapshot_ia_status => DUMMY266
      ,i_sa_snapshot_ia_rdata_part0 => DUMMY267
      ,i_sa_snapshot_ia_rdata_part1 => DUMMY268
      ,i_sa_count_ia_capability => DUMMY269
      ,i_sa_count_ia_status => DUMMY270
      ,i_sa_count_ia_rdata_part0 => DUMMY271
      ,i_sa_count_ia_rdata_part1 => DUMMY272
      ,i_idle_components => idle_components
      ,i_sa_global_ctrl => DUMMY273
      ,i_sa_ctrl_ia_capability => DUMMY274
      ,i_sa_ctrl_ia_status => DUMMY275
      ,i_sa_ctrl_ia_rdata_part0 => DUMMY276
      ,o_reg_written => DUMMY277
      ,o_reg_read => _zy_simnet_dio_331
      ,o_reg_wr_data => DUMMY278
      ,o_reg_addr => DUMMY279
    ) ;
  u_nx_rbus_ring : nx_rbus_ring
    port map (
       clk => clk
      ,rst_n => rst_n
      ,cfg_start_addr => cfg_start_addr
      ,cfg_end_addr => cfg_end_addr
      ,rbus_addr_i => rbus_ring_i(68+15 downto 68)
      ,rbus_wr_strb_i => rbus_ring_i(67)
      ,rbus_wr_data_i => rbus_ring_i(35+31 downto 35)
      ,rbus_rd_strb_i => rbus_ring_i(34)
      ,rbus_addr_o => DUMMY280
      ,rbus_wr_strb_o => DUMMY281
      ,rbus_wr_data_o => DUMMY282
      ,rbus_rd_strb_o => DUMMY283
      ,locl_addr_o => DUMMY284
      ,locl_wr_strb_o => DUMMY285
      ,locl_wr_data_o => DUMMY286
      ,locl_rd_strb_o => DUMMY287
      ,rbus_rd_data_i => rbus_ring_i(2+31 downto 2)
      ,rbus_ack_i => rbus_ring_i(1)
      ,rbus_err_ack_i => rbus_ring_i(0)
      ,locl_rd_data_i => DUMMY288
      ,locl_ack_i => DUMMY289
      ,locl_err_ack_i => DUMMY290
      ,rbus_rd_data_o => DUMMY291
      ,rbus_ack_o => DUMMY292
      ,rbus_err_ack_o => DUMMY293
    ) ;
  nx_interface_monitor_pipe_cceip0 : nx_interface_monitor_pipe
    port map (
       ob_in_mod => DUMMY294
      ,ob_out => DUMMY295
      ,im_vld => DUMMY296
      ,clk => clk
      ,rst_n => rst_n
      ,ob_out_pre => kme_cceip0_ob_out_pre
      ,ob_in => _zy_simnet_tvar_351
      ,im_rdy => DUMMY297
    ) ;
  nx_interface_monitor_pipe_cceip1 : nx_interface_monitor_pipe
    port map (
       ob_in_mod => DUMMY298
      ,ob_out => DUMMY299
      ,im_vld => DUMMY300
      ,clk => clk
      ,rst_n => rst_n
      ,ob_out_pre => kme_cceip1_ob_out_pre
      ,ob_in => _zy_simnet_tvar_356
      ,im_rdy => DUMMY301
    ) ;
  nx_interface_monitor_pipe_cceip2 : nx_interface_monitor_pipe
    port map (
       ob_in_mod => DUMMY302
      ,ob_out => DUMMY303
      ,im_vld => DUMMY304
      ,clk => clk
      ,rst_n => rst_n
      ,ob_out_pre => kme_cceip2_ob_out_pre
      ,ob_in => _zy_simnet_tvar_361
      ,im_rdy => DUMMY305
    ) ;
  nx_interface_monitor_pipe_cceip3 : nx_interface_monitor_pipe
    port map (
       ob_in_mod => DUMMY306
      ,ob_out => DUMMY307
      ,im_vld => DUMMY308
      ,clk => clk
      ,rst_n => rst_n
      ,ob_out_pre => kme_cceip3_ob_out_pre
      ,ob_in => _zy_simnet_tvar_366
      ,im_rdy => DUMMY309
    ) ;
  nx_interface_monitor_pipe_cddip0 : nx_interface_monitor_pipe
    port map (
       ob_in_mod => DUMMY310
      ,ob_out => DUMMY311
      ,im_vld => DUMMY312
      ,clk => clk
      ,rst_n => rst_n
      ,ob_out_pre => kme_cddip0_ob_out_pre
      ,ob_in => _zy_simnet_tvar_371
      ,im_rdy => DUMMY313
    ) ;
  nx_interface_monitor_pipe_cddip1 : nx_interface_monitor_pipe
    port map (
       ob_in_mod => DUMMY314
      ,ob_out => DUMMY315
      ,im_vld => DUMMY316
      ,clk => clk
      ,rst_n => rst_n
      ,ob_out_pre => kme_cddip1_ob_out_pre
      ,ob_in => _zy_simnet_tvar_376
      ,im_rdy => DUMMY317
    ) ;
  nx_interface_monitor_pipe_cddip2 : nx_interface_monitor_pipe
    port map (
       ob_in_mod => DUMMY318
      ,ob_out => DUMMY319
      ,im_vld => DUMMY320
      ,clk => clk
      ,rst_n => rst_n
      ,ob_out_pre => kme_cddip2_ob_out_pre
      ,ob_in => _zy_simnet_tvar_381
      ,im_rdy => DUMMY321
    ) ;
  nx_interface_monitor_pipe_cddip3 : nx_interface_monitor_pipe
    port map (
       ob_in_mod => DUMMY322
      ,ob_out => DUMMY323
      ,im_vld => DUMMY324
      ,clk => clk
      ,rst_n => rst_n
      ,ob_out_pre => kme_cddip3_ob_out_pre
      ,ob_in => _zy_simnet_tvar_386
      ,im_rdy => DUMMY325
    ) ;
  u_nx_interface_monitor_cceip0 : nx_interface_monitor_xcm104
    port map (
       stat_code => DUMMY326
      ,stat_datawords => DUMMY327
      ,stat_addr => DUMMY328
      ,capability_lst => DUMMY329
      ,capability_type => DUMMY330
      ,rd_dat => DUMMY331
      ,bimc_odat => DUMMY332
      ,bimc_osync => DUMMY333
      ,ro_uncorrectable_ecc_error => DUMMY334
      ,im_rdy => DUMMY335
      ,im_available => DUMMY336
      ,im_status => DUMMY337
      ,clk => clk
      ,rst_n => rst_n
      ,reg_addr => DUMMY338
      ,cmnd_op => DUMMY339
      ,cmnd_addr => DUMMY340
      ,wr_stb => DUMMY341
      ,wr_dat => DUMMY342
      ,ovstb => ovstb
      ,lvm => lvm
      ,mlvm => mlvm
      ,mrdten => _zy_simnet_cio_405
      ,bimc_rst_n => bimc_rst_n
      ,bimc_isync => DUMMY343
      ,bimc_idat => DUMMY344
      ,im_din => DUMMY345
      ,im_vld => DUMMY346
      ,im_consumed => DUMMY347
      ,im_config => DUMMY348
    ) ;
  u_nx_interface_monitor_cceip1 : nx_interface_monitor_xcm103
    port map (
       stat_code => DUMMY349
      ,stat_datawords => DUMMY350
      ,stat_addr => DUMMY351
      ,capability_lst => DUMMY352
      ,capability_type => DUMMY353
      ,rd_dat => DUMMY354
      ,bimc_odat => DUMMY355
      ,bimc_osync => DUMMY356
      ,ro_uncorrectable_ecc_error => DUMMY357
      ,im_rdy => DUMMY358
      ,im_available => DUMMY359
      ,im_status => DUMMY360
      ,clk => clk
      ,rst_n => rst_n
      ,reg_addr => DUMMY361
      ,cmnd_op => DUMMY362
      ,cmnd_addr => DUMMY363
      ,wr_stb => DUMMY364
      ,wr_dat => DUMMY365
      ,ovstb => ovstb
      ,lvm => lvm
      ,mlvm => mlvm
      ,mrdten => _zy_simnet_cio_429
      ,bimc_rst_n => bimc_rst_n
      ,bimc_isync => DUMMY366
      ,bimc_idat => DUMMY367
      ,im_din => DUMMY368
      ,im_vld => DUMMY369
      ,im_consumed => DUMMY370
      ,im_config => DUMMY371
    ) ;
  u_nx_interface_monitor_cceip2 : nx_interface_monitor_xcm102
    port map (
       stat_code => DUMMY372
      ,stat_datawords => DUMMY373
      ,stat_addr => DUMMY374
      ,capability_lst => DUMMY375
      ,capability_type => DUMMY376
      ,rd_dat => DUMMY377
      ,bimc_odat => DUMMY378
      ,bimc_osync => DUMMY379
      ,ro_uncorrectable_ecc_error => DUMMY380
      ,im_rdy => DUMMY381
      ,im_available => DUMMY382
      ,im_status => DUMMY383
      ,clk => clk
      ,rst_n => rst_n
      ,reg_addr => DUMMY384
      ,cmnd_op => DUMMY385
      ,cmnd_addr => DUMMY386
      ,wr_stb => DUMMY387
      ,wr_dat => DUMMY388
      ,ovstb => ovstb
      ,lvm => lvm
      ,mlvm => mlvm
      ,mrdten => _zy_simnet_cio_453
      ,bimc_rst_n => bimc_rst_n
      ,bimc_isync => DUMMY389
      ,bimc_idat => DUMMY390
      ,im_din => DUMMY391
      ,im_vld => DUMMY392
      ,im_consumed => DUMMY393
      ,im_config => DUMMY394
    ) ;
  u_nx_interface_monitor_cceip3 : nx_interface_monitor_xcm101
    port map (
       stat_code => DUMMY395
      ,stat_datawords => DUMMY396
      ,stat_addr => DUMMY397
      ,capability_lst => DUMMY398
      ,capability_type => DUMMY399
      ,rd_dat => DUMMY400
      ,bimc_odat => DUMMY401
      ,bimc_osync => DUMMY402
      ,ro_uncorrectable_ecc_error => DUMMY403
      ,im_rdy => DUMMY404
      ,im_available => DUMMY405
      ,im_status => DUMMY406
      ,clk => clk
      ,rst_n => rst_n
      ,reg_addr => DUMMY407
      ,cmnd_op => DUMMY408
      ,cmnd_addr => DUMMY409
      ,wr_stb => DUMMY410
      ,wr_dat => DUMMY411
      ,ovstb => ovstb
      ,lvm => lvm
      ,mlvm => mlvm
      ,mrdten => _zy_simnet_cio_477
      ,bimc_rst_n => bimc_rst_n
      ,bimc_isync => DUMMY412
      ,bimc_idat => DUMMY413
      ,im_din => DUMMY414
      ,im_vld => DUMMY415
      ,im_consumed => DUMMY416
      ,im_config => DUMMY417
    ) ;
  u_nx_interface_monitor_cddip0 : nx_interface_monitor_xcm100
    port map (
       stat_code => DUMMY418
      ,stat_datawords => DUMMY419
      ,stat_addr => DUMMY420
      ,capability_lst => DUMMY421
      ,capability_type => DUMMY422
      ,rd_dat => DUMMY423
      ,bimc_odat => DUMMY424
      ,bimc_osync => DUMMY425
      ,ro_uncorrectable_ecc_error => DUMMY426
      ,im_rdy => DUMMY427
      ,im_available => DUMMY428
      ,im_status => DUMMY429
      ,clk => clk
      ,rst_n => rst_n
      ,reg_addr => DUMMY430
      ,cmnd_op => DUMMY431
      ,cmnd_addr => DUMMY432
      ,wr_stb => DUMMY433
      ,wr_dat => DUMMY434
      ,ovstb => ovstb
      ,lvm => lvm
      ,mlvm => mlvm
      ,mrdten => _zy_simnet_cio_501
      ,bimc_rst_n => bimc_rst_n
      ,bimc_isync => DUMMY435
      ,bimc_idat => DUMMY436
      ,im_din => DUMMY437
      ,im_vld => DUMMY438
      ,im_consumed => DUMMY439
      ,im_config => DUMMY440
    ) ;
  u_nx_interface_monitor_cddip1 : nx_interface_monitor_xcm99
    port map (
       stat_code => DUMMY441
      ,stat_datawords => DUMMY442
      ,stat_addr => DUMMY443
      ,capability_lst => DUMMY444
      ,capability_type => DUMMY445
      ,rd_dat => DUMMY446
      ,bimc_odat => DUMMY447
      ,bimc_osync => DUMMY448
      ,ro_uncorrectable_ecc_error => DUMMY449
      ,im_rdy => DUMMY450
      ,im_available => DUMMY451
      ,im_status => DUMMY452
      ,clk => clk
      ,rst_n => rst_n
      ,reg_addr => DUMMY453
      ,cmnd_op => DUMMY454
      ,cmnd_addr => DUMMY455
      ,wr_stb => DUMMY456
      ,wr_dat => DUMMY457
      ,ovstb => ovstb
      ,lvm => lvm
      ,mlvm => mlvm
      ,mrdten => _zy_simnet_cio_525
      ,bimc_rst_n => bimc_rst_n
      ,bimc_isync => DUMMY458
      ,bimc_idat => DUMMY459
      ,im_din => DUMMY460
      ,im_vld => DUMMY461
      ,im_consumed => DUMMY462
      ,im_config => DUMMY463
    ) ;
  u_nx_interface_monitor_cddip2 : nx_interface_monitor_xcm98
    port map (
       stat_code => DUMMY464
      ,stat_datawords => DUMMY465
      ,stat_addr => DUMMY466
      ,capability_lst => DUMMY467
      ,capability_type => DUMMY468
      ,rd_dat => DUMMY469
      ,bimc_odat => DUMMY470
      ,bimc_osync => DUMMY471
      ,ro_uncorrectable_ecc_error => DUMMY472
      ,im_rdy => DUMMY473
      ,im_available => DUMMY474
      ,im_status => DUMMY475
      ,clk => clk
      ,rst_n => rst_n
      ,reg_addr => DUMMY476
      ,cmnd_op => DUMMY477
      ,cmnd_addr => DUMMY478
      ,wr_stb => DUMMY479
      ,wr_dat => DUMMY480
      ,ovstb => ovstb
      ,lvm => lvm
      ,mlvm => mlvm
      ,mrdten => _zy_simnet_cio_549
      ,bimc_rst_n => bimc_rst_n
      ,bimc_isync => DUMMY481
      ,bimc_idat => DUMMY482
      ,im_din => DUMMY483
      ,im_vld => DUMMY484
      ,im_consumed => DUMMY485
      ,im_config => DUMMY486
    ) ;
  u_nx_interface_monitor_cddip3 : nx_interface_monitor_xcm97
    port map (
       stat_code => DUMMY487
      ,stat_datawords => DUMMY488
      ,stat_addr => DUMMY489
      ,capability_lst => DUMMY490
      ,capability_type => DUMMY491
      ,rd_dat => DUMMY492
      ,bimc_odat => DUMMY493
      ,bimc_osync => DUMMY494
      ,ro_uncorrectable_ecc_error => DUMMY495
      ,im_rdy => DUMMY496
      ,im_available => DUMMY497
      ,im_status => DUMMY498
      ,clk => clk
      ,rst_n => rst_n
      ,reg_addr => DUMMY499
      ,cmnd_op => DUMMY500
      ,cmnd_addr => DUMMY501
      ,wr_stb => DUMMY502
      ,wr_dat => DUMMY503
      ,ovstb => ovstb
      ,lvm => lvm
      ,mlvm => mlvm
      ,mrdten => _zy_simnet_cio_573
      ,bimc_rst_n => bimc_rst_n
      ,bimc_isync => DUMMY504
      ,bimc_idat => DUMMY505
      ,im_din => DUMMY506
      ,im_vld => DUMMY507
      ,im_consumed => DUMMY508
      ,im_config => DUMMY509
    ) ;
  regfile_glue : cr_kme_regfile_glue
    port map (
       ckv_cmnd_op => DUMMY510
      ,ckv_cmnd_addr => DUMMY511
      ,ckv_wr_dat => DUMMY512
      ,ckv_ia_capability => DUMMY513
      ,ckv_ia_rdata_part0 => DUMMY514
      ,ckv_ia_rdata_part1 => DUMMY515
      ,ckv_ia_status => DUMMY516
      ,kim_cmnd_op => DUMMY517
      ,kim_cmnd_addr => DUMMY518
      ,kim_wr_dat => DUMMY519
      ,kim_ia_capability => DUMMY520
      ,kim_ia_rdata_part0 => DUMMY521
      ,kim_ia_rdata_part1 => DUMMY522
      ,kim_ia_status => DUMMY523
      ,engine_sticky_status => DUMMY524
      ,disable_ckv_kim_ism_reads => DUMMY525
      ,send_kme_ib_beat => DUMMY526
      ,debug_kme_ib_tvalid => debug_kme_ib_tvalid
      ,debug_kme_ib_tlast => debug_kme_ib_tlast
      ,debug_kme_ib_tid => debug_kme_ib_tid
      ,debug_kme_ib_tstrb => debug_kme_ib_tstrb
      ,debug_kme_ib_tuser => debug_kme_ib_tuser
      ,debug_kme_ib_tdata => debug_kme_ib_tdata
      ,kme_cceip0_ob_out => DUMMY527
      ,kme_cceip1_ob_out => DUMMY528
      ,kme_cceip2_ob_out => DUMMY529
      ,kme_cceip3_ob_out => DUMMY530
      ,kme_cddip0_ob_out => DUMMY531
      ,kme_cddip1_ob_out => DUMMY532
      ,kme_cddip2_ob_out => DUMMY533
      ,kme_cddip3_ob_out => DUMMY534
      ,cceip_encrypt_bimc_isync => cceip_encrypt_bimc_isync
      ,cceip_encrypt_bimc_idat => cceip_encrypt_bimc_idat
      ,cceip_validate_bimc_isync => cceip_validate_bimc_isync
      ,cceip_validate_bimc_idat => cceip_validate_bimc_idat
      ,cddip_decrypt_bimc_isync => cddip_decrypt_bimc_isync
      ,cddip_decrypt_bimc_idat => cddip_decrypt_bimc_idat
      ,axi_bimc_isync => axi_bimc_isync
      ,axi_bimc_idat => axi_bimc_idat
      ,axi_term_bimc_isync => DUMMY535
      ,axi_term_bimc_idat => DUMMY536
      ,clk => clk
      ,rst_n => rst_n
      ,ckv_stat_code => DUMMY537
      ,ckv_stat_datawords => DUMMY538
      ,ckv_stat_addr => DUMMY539
      ,ckv_capability_type => DUMMY540
      ,ckv_capability_lst => DUMMY541
      ,ckv_rd_dat => DUMMY542
      ,o_ckv_ia_config => DUMMY543
      ,o_ckv_ia_wdata_part0 => DUMMY544
      ,o_ckv_ia_wdata_part1 => DUMMY545
      ,kim_stat_code => DUMMY546
      ,kim_stat_datawords => DUMMY547
      ,kim_stat_addr => DUMMY548
      ,kim_capability_type => DUMMY549
      ,kim_capability_lst => DUMMY550
      ,kim_rd_dat => DUMMY551
      ,o_kim_ia_config => DUMMY552
      ,o_kim_ia_wdata_part0 => DUMMY553
      ,o_kim_ia_wdata_part1 => DUMMY554
      ,set_rsm_is_backpressuring => set_rsm_is_backpressuring
      ,wr_stb => DUMMY555
      ,wr_data => DUMMY556
      ,reg_addr => DUMMY557
      ,o_engine_sticky_status => DUMMY558
      ,o_disable_ckv_kim_ism_reads => DUMMY559
      ,o_send_kme_ib_beat => DUMMY560
      ,cceip0_out_ia_wdata => DUMMY561
      ,debug_kme_ib_tready => debug_kme_ib_tready
      ,tready_override => DUMMY562
      ,kme_cceip0_ob_out_post => DUMMY563
      ,kme_cceip1_ob_out_post => DUMMY564
      ,kme_cceip2_ob_out_post => DUMMY565
      ,kme_cceip3_ob_out_post => DUMMY566
      ,kme_cddip0_ob_out_post => DUMMY567
      ,kme_cddip1_ob_out_post => DUMMY568
      ,kme_cddip2_ob_out_post => DUMMY569
      ,kme_cddip3_ob_out_post => DUMMY570
      ,cddip3_ism_osync => DUMMY571
      ,cddip3_ism_odat => DUMMY572
      ,cceip_encrypt_bimc_osync => cceip_encrypt_bimc_osync
      ,cceip_encrypt_bimc_odat => cceip_encrypt_bimc_odat
      ,cceip_validate_bimc_osync => cceip_validate_bimc_osync
      ,cceip_validate_bimc_odat => cceip_validate_bimc_odat
      ,cddip_decrypt_bimc_osync => cddip_decrypt_bimc_osync
      ,cddip_decrypt_bimc_odat => cddip_decrypt_bimc_odat
      ,axi_bimc_osync => axi_bimc_osync
      ,axi_bimc_odat => axi_bimc_odat
    ) ;
  ckv_indirect_access : nx_ram_1rw_indirect_access_xcm123
    port map (
       clk => clk
      ,rst_n => rst_n
      ,reg_addr => DUMMY573
      ,cmnd_op => DUMMY574
      ,cmnd_addr => DUMMY575
      ,stat_code => DUMMY576
      ,stat_datawords => DUMMY577
      ,stat_addr => DUMMY578
      ,capability_lst => DUMMY579
      ,capability_type => DUMMY580
      ,wr_stb => DUMMY581
      ,wr_dat => DUMMY582
      ,rd_dat => DUMMY583
      ,ovstb => ovstb
      ,lvm => lvm
      ,mlvm => mlvm
      ,mrdten => _zy_simnet_cio_654
      ,bimc_rst_n => bimc_rst_n
      ,bimc_isync => DUMMY584
      ,bimc_idat => DUMMY585
      ,bimc_odat => DUMMY586
      ,bimc_osync => DUMMY587
      ,ro_uncorrectable_ecc_error => ckv_mbe
      ,hw_add => ckv_addr
      ,hw_we => _zy_simnet_cio_659
      ,hw_bwe => _zy_simnet_cio_660
      ,hw_cs => ckv_rd
      ,hw_din => _zy_simnet_cio_661
      ,hw_dout => ckv_dout
      ,hw_yield => _zy_simnet_dio_662
    ) ;
  kim_indirect_access : nx_ram_1rw_indirect_access_xcm122
    port map (
       clk => clk
      ,rst_n => rst_n
      ,reg_addr => DUMMY588
      ,cmnd_op => DUMMY589
      ,cmnd_addr => DUMMY590
      ,stat_code => DUMMY591
      ,stat_datawords => DUMMY592
      ,stat_addr => DUMMY593
      ,capability_lst => DUMMY594
      ,capability_type => DUMMY595
      ,wr_stb => DUMMY596
      ,wr_dat => DUMMY597
      ,rd_dat => DUMMY598
      ,ovstb => ovstb
      ,lvm => lvm
      ,mlvm => mlvm
      ,mrdten => _zy_simnet_cio_674
      ,bimc_rst_n => bimc_rst_n
      ,bimc_isync => DUMMY599
      ,bimc_idat => DUMMY600
      ,bimc_odat => DUMMY601
      ,bimc_osync => DUMMY602
      ,ro_uncorrectable_ecc_error => kim_mbe
      ,hw_add => kim_addr
      ,hw_we => _zy_simnet_cio_679
      ,hw_bwe => _zy_simnet_cio_680
      ,hw_cs => kim_rd
      ,hw_din => _zy_simnet_cio_681
      ,hw_dout => DUMMY603
      ,hw_yield => _zy_simnet_dio_683
    ) ;
  drbg_register_gen : cr_kme_drbg_reggen
    port map (
       set_drbg_expired_int => DUMMY604
      ,kdf_drbg_ctrl => DUMMY605
      ,seed0_valid => seed0_valid
      ,seed0_internal_state_key => seed0_internal_state_key
      ,seed0_internal_state_value => seed0_internal_state_value
      ,seed0_reseed_interval => seed0_reseed_interval
      ,seed1_valid => seed1_valid
      ,seed1_internal_state_key => seed1_internal_state_key
      ,seed1_internal_state_value => seed1_internal_state_value
      ,seed1_reseed_interval => seed1_reseed_interval
      ,clk => clk
      ,rst_n => rst_n
      ,wr_stb => DUMMY606
      ,wr_data => DUMMY607
      ,reg_addr => DUMMY608
      ,o_kdf_drbg_ctrl => DUMMY609
      ,o_kdf_drbg_seed_0_reseed_interval_0 => DUMMY610
      ,o_kdf_drbg_seed_0_reseed_interval_1 => DUMMY611
      ,o_kdf_drbg_seed_0_state_key_127_96 => DUMMY612
      ,o_kdf_drbg_seed_0_state_key_159_128 => DUMMY613
      ,o_kdf_drbg_seed_0_state_key_191_160 => DUMMY614
      ,o_kdf_drbg_seed_0_state_key_223_192 => DUMMY615
      ,o_kdf_drbg_seed_0_state_key_255_224 => DUMMY616
      ,o_kdf_drbg_seed_0_state_key_31_0 => DUMMY617
      ,o_kdf_drbg_seed_0_state_key_63_32 => DUMMY618
      ,o_kdf_drbg_seed_0_state_key_95_64 => DUMMY619
      ,o_kdf_drbg_seed_0_state_value_127_96 => DUMMY620
      ,o_kdf_drbg_seed_0_state_value_31_0 => DUMMY621
      ,o_kdf_drbg_seed_0_state_value_63_32 => DUMMY622
      ,o_kdf_drbg_seed_0_state_value_95_64 => DUMMY623
      ,o_kdf_drbg_seed_1_reseed_interval_0 => DUMMY624
      ,o_kdf_drbg_seed_1_reseed_interval_1 => DUMMY625
      ,o_kdf_drbg_seed_1_state_key_127_96 => DUMMY626
      ,o_kdf_drbg_seed_1_state_key_159_128 => DUMMY627
      ,o_kdf_drbg_seed_1_state_key_191_160 => DUMMY628
      ,o_kdf_drbg_seed_1_state_key_223_192 => DUMMY629
      ,o_kdf_drbg_seed_1_state_key_255_224 => DUMMY630
      ,o_kdf_drbg_seed_1_state_key_31_0 => DUMMY631
      ,o_kdf_drbg_seed_1_state_key_63_32 => DUMMY632
      ,o_kdf_drbg_seed_1_state_key_95_64 => DUMMY633
      ,o_kdf_drbg_seed_1_state_value_127_96 => DUMMY634
      ,o_kdf_drbg_seed_1_state_value_31_0 => DUMMY635
      ,o_kdf_drbg_seed_1_state_value_63_32 => DUMMY636
      ,o_kdf_drbg_seed_1_state_value_95_64 => DUMMY637
      ,seed0_invalidate => seed0_invalidate
      ,seed1_invalidate => seed1_invalidate
    ) ;
  DUMMY740 : bimc_master
    port map (
       bimc_ecc_error => _zy_simnet_dio_718
      ,bimc_interrupt => DUMMY638
      ,bimc_odat => DUMMY639
      ,bimc_osync => DUMMY640
      ,bimc_rst_n => bimc_rst_n
      ,clk => clk
      ,rst_n => rst_n
      ,bimc_idat => DUMMY641
      ,bimc_isync => DUMMY642
      ,o_bimc_monitor_mask => DUMMY643
      ,o_bimc_ecc_uncorrectable_error_cnt => DUMMY644
      ,o_bimc_ecc_correctable_error_cnt => DUMMY645
      ,o_bimc_parity_error_cnt => DUMMY646
      ,o_bimc_global_config => DUMMY647
      ,o_bimc_eccpar_debug => DUMMY648
      ,o_bimc_cmd2 => DUMMY649
      ,o_bimc_cmd1 => DUMMY650
      ,o_bimc_cmd0 => DUMMY651
      ,o_bimc_rxcmd2 => DUMMY652
      ,o_bimc_rxrsp2 => DUMMY653
      ,o_bimc_pollrsp2 => DUMMY654
      ,o_bimc_dbgcmd2 => DUMMY655
      ,i_bimc_monitor => DUMMY656
      ,i_bimc_ecc_uncorrectable_error_cnt => DUMMY657
      ,i_bimc_ecc_correctable_error_cnt => DUMMY658
      ,i_bimc_parity_error_cnt => DUMMY659
      ,i_bimc_global_config => DUMMY660
      ,i_bimc_memid => DUMMY661
      ,i_bimc_eccpar_debug => DUMMY662
      ,i_bimc_cmd2 => DUMMY663
      ,i_bimc_rxcmd2 => DUMMY664
      ,i_bimc_rxcmd1 => DUMMY665
      ,i_bimc_rxcmd0 => DUMMY666
      ,i_bimc_rxrsp2 => DUMMY667
      ,i_bimc_rxrsp1 => DUMMY668
      ,i_bimc_rxrsp0 => DUMMY669
      ,i_bimc_pollrsp2 => DUMMY670
      ,i_bimc_pollrsp1 => DUMMY671
      ,i_bimc_pollrsp0 => DUMMY672
      ,i_bimc_dbgcmd2 => DUMMY673
      ,i_bimc_dbgcmd1 => DUMMY674
      ,i_bimc_dbgcmd0 => DUMMY675
    ) ;
  int_handler : cr_kme_int_handler
    port map (
       kme_interrupt => kme_interrupt
      ,interrupt_status => DUMMY676
      ,suppress_key_tlvs => suppress_key_tlvs
      ,clk => clk
      ,rst_n => rst_n
      ,set_drbg_expired_int => DUMMY677
      ,set_txc_bp_int => set_txc_bp_int
      ,set_gcm_tag_fail_int => set_gcm_tag_fail_int
      ,set_key_tlv_miscmp_int => set_key_tlv_miscmp_int
      ,set_tlv_bip2_error_int => set_tlv_bip2_error_int
      ,cceip0_ism_mbe => DUMMY678
      ,cceip1_ism_mbe => DUMMY679
      ,cceip2_ism_mbe => DUMMY680
      ,cceip3_ism_mbe => DUMMY681
      ,cddip0_ism_mbe => DUMMY682
      ,cddip1_ism_mbe => DUMMY683
      ,cddip2_ism_mbe => DUMMY684
      ,cddip3_ism_mbe => DUMMY685
      ,kim_mbe => kim_mbe
      ,ckv_mbe => ckv_mbe
      ,cceip_encrypt_mbe => cceip_encrypt_mbe
      ,cceip_validate_mbe => cceip_validate_mbe
      ,cddip_decrypt_mbe => cddip_decrypt_mbe
      ,axi_mbe => axi_mbe
      ,bimc_interrupt => DUMMY686
      ,wr_stb => DUMMY687
      ,wr_data => DUMMY688
      ,reg_addr => DUMMY689
      ,o_interrupt_mask => DUMMY690
    ) ;
  u_SA_SNAPSHOT : nx_roreg_indirect_access_xcm130
    port map (
       stat_code => DUMMY691
      ,stat_datawords => DUMMY692
      ,stat_addr => DUMMY693
      ,capability_lst => DUMMY694
      ,capability_type => DUMMY695
      ,rd_dat => DUMMY696
      ,clk => clk
      ,rst_n => rst_n
      ,addr => DUMMY697
      ,cmnd_op => DUMMY698
      ,cmnd_addr => DUMMY699
      ,wr_stb => DUMMY700
      ,wr_dat => DUMMY701
      ,mem_a => sa_snapshot
    ) ;
  u_SA_COUNT : nx_roreg_indirect_access_xcm129
    port map (
       stat_code => DUMMY702
      ,stat_datawords => DUMMY703
      ,stat_addr => DUMMY704
      ,capability_lst => DUMMY705
      ,capability_type => DUMMY706
      ,rd_dat => DUMMY707
      ,clk => clk
      ,rst_n => rst_n
      ,addr => DUMMY708
      ,cmnd_op => DUMMY709
      ,cmnd_addr => DUMMY710
      ,wr_stb => DUMMY711
      ,wr_dat => DUMMY712
      ,mem_a => sa_count
    ) ;
  u_SA_CTRL : nx_reg_indirect_access
    port map (
       stat_code => DUMMY713
      ,stat_datawords => DUMMY714
      ,stat_addr => DUMMY715
      ,capability_lst => DUMMY716
      ,capability_type => DUMMY717
      ,rd_dat => DUMMY718
      ,mem_a => sa_ctrl
      ,clk => clk
      ,rst_n => rst_n
      ,addr => DUMMY719
      ,cmnd_op => DUMMY720
      ,cmnd_addr => DUMMY721
      ,wr_stb => DUMMY722
      ,wr_dat => DUMMY723
      ,rst_dat => sa_ctrl_rst_dat
    ) ;

  process --:o3942
  (**) -- always_comb
  begin
    cceip0_im_din(31) <= kme_cceip0_ob_out_pre(+1+64) ;
    cceip0_im_din(23+7 downto 23) <= kme_cceip0_ob_out_pre(72+7 downto 72) ;
    cceip0_im_din(22 downto 15) <= "00000000" ;
    cceip0_im_din(+14) <= it_conv_std_logic(kme_cceip0_ob_out_pre(80 downto 80))
     ;
    cceip0_im_din(13 downto 6) <= kme_cceip0_ob_out_pre(64+7 downto 64) ;
    cceip0_im_din(5 downto 0) <= "000000" ;
    cceip0_im_din(32+63 downto 32) <= kme_cceip0_ob_out_pre(63 downto 0) ;
    cceip1_im_din(31) <= kme_cceip1_ob_out_pre(+1+64) ;
    cceip1_im_din(23+7 downto 23) <= kme_cceip1_ob_out_pre(72+7 downto 72) ;
    cceip1_im_din(22 downto 15) <= "00000000" ;
    cceip1_im_din(+14) <= it_conv_std_logic(kme_cceip1_ob_out_pre(80 downto 80))
     ;
    cceip1_im_din(13 downto 6) <= kme_cceip1_ob_out_pre(64+7 downto 64) ;
    cceip1_im_din(5 downto 0) <= "000000" ;
    cceip1_im_din(32+63 downto 32) <= kme_cceip1_ob_out_pre(63 downto 0) ;
    cceip2_im_din(31) <= kme_cceip2_ob_out_pre(+1+64) ;
    cceip2_im_din(23+7 downto 23) <= kme_cceip2_ob_out_pre(72+7 downto 72) ;
    cceip2_im_din(22 downto 15) <= "00000000" ;
    cceip2_im_din(+14) <= it_conv_std_logic(kme_cceip2_ob_out_pre(80 downto 80))
     ;
    cceip2_im_din(13 downto 6) <= kme_cceip2_ob_out_pre(64+7 downto 64) ;
    cceip2_im_din(5 downto 0) <= "000000" ;
    cceip2_im_din(32+63 downto 32) <= kme_cceip2_ob_out_pre(63 downto 0) ;
    cceip3_im_din(31) <= kme_cceip3_ob_out_pre(+1+64) ;
    cceip3_im_din(23+7 downto 23) <= kme_cceip3_ob_out_pre(72+7 downto 72) ;
    cceip3_im_din(22 downto 15) <= "00000000" ;
    cceip3_im_din(+14) <= it_conv_std_logic(kme_cceip3_ob_out_pre(80 downto 80))
     ;
    cceip3_im_din(13 downto 6) <= kme_cceip3_ob_out_pre(64+7 downto 64) ;
    cceip3_im_din(5 downto 0) <= "000000" ;
    cceip3_im_din(32+63 downto 32) <= kme_cceip3_ob_out_pre(63 downto 0) ;
    cddip0_im_din(31) <= kme_cddip0_ob_out_pre(+1+64) ;
    cddip0_im_din(23+7 downto 23) <= kme_cddip0_ob_out_pre(72+7 downto 72) ;
    cddip0_im_din(22 downto 15) <= "00000000" ;
    cddip0_im_din(+14) <= it_conv_std_logic(kme_cddip0_ob_out_pre(80 downto 80))
     ;
    cddip0_im_din(13 downto 6) <= kme_cddip0_ob_out_pre(64+7 downto 64) ;
    cddip0_im_din(5 downto 0) <= "000000" ;
    cddip0_im_din(32+63 downto 32) <= kme_cddip0_ob_out_pre(63 downto 0) ;
    cddip1_im_din(31) <= kme_cddip1_ob_out_pre(+1+64) ;
    cddip1_im_din(23+7 downto 23) <= kme_cddip1_ob_out_pre(72+7 downto 72) ;
    cddip1_im_din(22 downto 15) <= "00000000" ;
    cddip1_im_din(+14) <= it_conv_std_logic(kme_cddip1_ob_out_pre(80 downto 80))
     ;
    cddip1_im_din(13 downto 6) <= kme_cddip1_ob_out_pre(64+7 downto 64) ;
    cddip1_im_din(5 downto 0) <= "000000" ;
    cddip1_im_din(32+63 downto 32) <= kme_cddip1_ob_out_pre(63 downto 0) ;
    cddip2_im_din(31) <= kme_cddip2_ob_out_pre(+1+64) ;
    cddip2_im_din(23+7 downto 23) <= kme_cddip2_ob_out_pre(72+7 downto 72) ;
    cddip2_im_din(22 downto 15) <= "00000000" ;
    cddip2_im_din(+14) <= it_conv_std_logic(kme_cddip2_ob_out_pre(80 downto 80))
     ;
    cddip2_im_din(13 downto 6) <= kme_cddip2_ob_out_pre(64+7 downto 64) ;
    cddip2_im_din(5 downto 0) <= "000000" ;
    cddip2_im_din(32+63 downto 32) <= kme_cddip2_ob_out_pre(63 downto 0) ;
    cddip3_im_din(31) <= kme_cddip3_ob_out_pre(+1+64) ;
    cddip3_im_din(23+7 downto 23) <= kme_cddip3_ob_out_pre(72+7 downto 72) ;
    cddip3_im_din(22 downto 15) <= "00000000" ;
    cddip3_im_din(+14) <= it_conv_std_logic(kme_cddip3_ob_out_pre(80 downto 80))
     ;
    cddip3_im_din(13 downto 6) <= kme_cddip3_ob_out_pre(64+7 downto 64) ;
    cddip3_im_din(5 downto 0) <= "000000" ;
    cddip3_im_din(32+63 downto 32) <= kme_cddip3_ob_out_pre(63 downto 0) ;
  end process ;

  process --:o4001
  (**) -- always_comb
  begin
    blkid_revid_config <= std_logic_vector'(std_logic_vector'("1100111100000000"
    ) & std_logic_vector'("00000000") & revid_wire) ;
  end process ;

  unmblk0 :
  process --:o4003
  (**) -- always_comb
    variable ii : integer ;
  begin
    for ii in 0 to 31 loop --:o4006
      sa_ctrl_rst_dat(ii) <= "00000000000000000000000000000000" ;
    end loop;
  end process ;

  process --:o4011
  (**) -- always_comb
  begin
    im_available(0) <= im_available_kme_cceip0(0) ;
    im_available(8) <= im_available_kme_cddip0(0) ;
    im_available(2) <= im_available_kme_cceip1(0) ;
    im_available(10) <= im_available_kme_cddip1(0) ;
    im_available(4) <= im_available_kme_cceip2(0) ;
    im_available(12) <= im_available_kme_cddip2(0) ;
    im_available(6) <= im_available_kme_cceip3(0) ;
    im_available(14) <= im_available_kme_cddip3(0) ;
    im_available(1) <= im_available_kme_cceip0(1) ;
    im_available(9) <= im_available_kme_cddip0(1) ;
    im_available(3) <= im_available_kme_cceip1(1) ;
    im_available(11) <= im_available_kme_cddip1(1) ;
    im_available(5) <= im_available_kme_cceip2(1) ;
    im_available(13) <= im_available_kme_cddip2(1) ;
    im_available(7) <= im_available_kme_cceip3(1) ;
    im_available(15) <= im_available_kme_cddip3(1) ;
  end process ;

  process --:o4030
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      im_consumed_kme_cceip0(1) <= '0' ;
      im_consumed_kme_cceip0(0) <= '0' ;
      im_consumed_kme_cceip1(1) <= '0' ;
      im_consumed_kme_cceip1(0) <= '0' ;
      im_consumed_kme_cceip2(1) <= '0' ;
      im_consumed_kme_cceip2(0) <= '0' ;
      im_consumed_kme_cceip3(1) <= '0' ;
      im_consumed_kme_cceip3(0) <= '0' ;
      im_consumed_kme_cddip0(1) <= '0' ;
      im_consumed_kme_cddip0(0) <= '0' ;
      im_consumed_kme_cddip1(1) <= '0' ;
      im_consumed_kme_cddip1(0) <= '0' ;
      im_consumed_kme_cddip2(1) <= '0' ;
      im_consumed_kme_cddip2(0) <= '0' ;
      im_consumed_kme_cddip3(1) <= '0' ;
      im_consumed_kme_cddip3(0) <= '0' ;
    elsif (clk'event and clk = '1') then
      im_consumed_kme_cceip0(0) <= '0' ;
      im_consumed_kme_cddip0(0) <= '0' ;
      im_consumed_kme_cceip1(0) <= '0' ;
      im_consumed_kme_cddip1(0) <= '0' ;
      im_consumed_kme_cceip2(0) <= '0' ;
      im_consumed_kme_cddip2(0) <= '0' ;
      im_consumed_kme_cceip3(0) <= '0' ;
      im_consumed_kme_cddip3(0) <= '0' ;
      im_consumed_kme_cceip0(1) <= '0' ;
      im_consumed_kme_cddip0(1) <= '0' ;
      im_consumed_kme_cceip1(1) <= '0' ;
      im_consumed_kme_cddip1(1) <= '0' ;
      im_consumed_kme_cceip2(1) <= '0' ;
      im_consumed_kme_cddip2(1) <= '0' ;
      im_consumed_kme_cceip3(1) <= '0' ;
      im_consumed_kme_cddip3(1) <= '0' ;
      if (((wr_stb)='1' and reg_addr = std_logic_vector'("01111110000"))) then
        if (wr_data(0) = '1') then
          im_consumed_kme_cceip0(0) <= '1' ;
        end if;
        if (wr_data(2) = '1') then
          im_consumed_kme_cceip1(0) <= '1' ;
        end if;
        if (wr_data(4) = '1') then
          im_consumed_kme_cceip2(0) <= '1' ;
        end if;
        if (wr_data(6) = '1') then
          im_consumed_kme_cceip3(0) <= '1' ;
        end if;
        if (wr_data(1) = '1') then
          im_consumed_kme_cceip0(1) <= '1' ;
        end if;
        if (wr_data(3) = '1') then
          im_consumed_kme_cceip1(1) <= '1' ;
        end if;
        if (wr_data(5) = '1') then
          im_consumed_kme_cceip2(1) <= '1' ;
        end if;
        if (wr_data(7) = '1') then
          im_consumed_kme_cceip3(1) <= '1' ;
        end if;
        if (wr_data(8) = '1') then
          im_consumed_kme_cddip0(0) <= '1' ;
        end if;
        if (wr_data(10) = '1') then
          im_consumed_kme_cddip1(0) <= '1' ;
        end if;
        if (wr_data(12) = '1') then
          im_consumed_kme_cddip2(0) <= '1' ;
        end if;
        if (wr_data(14) = '1') then
          im_consumed_kme_cddip3(0) <= '1' ;
        end if;
        if (wr_data(9) = '1') then
          im_consumed_kme_cddip0(1) <= '1' ;
        end if;
        if (wr_data(11) = '1') then
          im_consumed_kme_cddip1(1) <= '1' ;
        end if;
        if (wr_data(13) = '1') then
          im_consumed_kme_cddip2(1) <= '1' ;
        end if;
        if (wr_data(15) = '1') then
          im_consumed_kme_cddip3(1) <= '1' ;
        end if;
      end if;
    end if ;
  end process ;
end module;
