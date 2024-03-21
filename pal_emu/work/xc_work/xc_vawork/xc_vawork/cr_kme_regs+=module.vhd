architecture module of cr_kme_regs is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component cr_kme_regs_flops
    port (
      clk : in std_logic := 'X' ;
      i_reset_ : in std_logic := 'X' ;
      i_sw_init : in std_logic := 'X' ;
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
      w_load_spare_config : in std_logic := 'X' ;
      w_load_cceip0_out_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_cceip0_out_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_cceip0_out_ia_wdata_part2 : in std_logic := 'X' ;
      w_load_cceip0_out_ia_config : in std_logic := 'X' ;
      w_load_cceip0_out_im_config : in std_logic := 'X' ;
      w_load_cceip0_out_im_read_done : in std_logic := 'X' ;
      w_load_cceip1_out_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_cceip1_out_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_cceip1_out_ia_wdata_part2 : in std_logic := 'X' ;
      w_load_cceip1_out_ia_config : in std_logic := 'X' ;
      w_load_cceip1_out_im_config : in std_logic := 'X' ;
      w_load_cceip1_out_im_read_done : in std_logic := 'X' ;
      w_load_cceip2_out_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_cceip2_out_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_cceip2_out_ia_wdata_part2 : in std_logic := 'X' ;
      w_load_cceip2_out_ia_config : in std_logic := 'X' ;
      w_load_cceip2_out_im_config : in std_logic := 'X' ;
      w_load_cceip2_out_im_read_done : in std_logic := 'X' ;
      w_load_cceip3_out_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_cceip3_out_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_cceip3_out_ia_wdata_part2 : in std_logic := 'X' ;
      w_load_cceip3_out_ia_config : in std_logic := 'X' ;
      w_load_cceip3_out_im_config : in std_logic := 'X' ;
      w_load_cceip3_out_im_read_done : in std_logic := 'X' ;
      w_load_cddip0_out_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_cddip0_out_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_cddip0_out_ia_wdata_part2 : in std_logic := 'X' ;
      w_load_cddip0_out_ia_config : in std_logic := 'X' ;
      w_load_cddip0_out_im_config : in std_logic := 'X' ;
      w_load_cddip0_out_im_read_done : in std_logic := 'X' ;
      w_load_cddip1_out_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_cddip1_out_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_cddip1_out_ia_wdata_part2 : in std_logic := 'X' ;
      w_load_cddip1_out_ia_config : in std_logic := 'X' ;
      w_load_cddip1_out_im_config : in std_logic := 'X' ;
      w_load_cddip1_out_im_read_done : in std_logic := 'X' ;
      w_load_cddip2_out_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_cddip2_out_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_cddip2_out_ia_wdata_part2 : in std_logic := 'X' ;
      w_load_cddip2_out_ia_config : in std_logic := 'X' ;
      w_load_cddip2_out_im_config : in std_logic := 'X' ;
      w_load_cddip2_out_im_read_done : in std_logic := 'X' ;
      w_load_cddip3_out_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_cddip3_out_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_cddip3_out_ia_wdata_part2 : in std_logic := 'X' ;
      w_load_cddip3_out_ia_config : in std_logic := 'X' ;
      w_load_cddip3_out_im_config : in std_logic := 'X' ;
      w_load_cddip3_out_im_read_done : in std_logic := 'X' ;
      w_load_ckv_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_ckv_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_ckv_ia_config : in std_logic := 'X' ;
      w_load_kim_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_kim_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_kim_ia_config : in std_logic := 'X' ;
      w_load_label0_config : in std_logic := 'X' ;
      w_load_label0_data7 : in std_logic := 'X' ;
      w_load_label0_data6 : in std_logic := 'X' ;
      w_load_label0_data5 : in std_logic := 'X' ;
      w_load_label0_data4 : in std_logic := 'X' ;
      w_load_label0_data3 : in std_logic := 'X' ;
      w_load_label0_data2 : in std_logic := 'X' ;
      w_load_label0_data1 : in std_logic := 'X' ;
      w_load_label0_data0 : in std_logic := 'X' ;
      w_load_label1_config : in std_logic := 'X' ;
      w_load_label1_data7 : in std_logic := 'X' ;
      w_load_label1_data6 : in std_logic := 'X' ;
      w_load_label1_data5 : in std_logic := 'X' ;
      w_load_label1_data4 : in std_logic := 'X' ;
      w_load_label1_data3 : in std_logic := 'X' ;
      w_load_label1_data2 : in std_logic := 'X' ;
      w_load_label1_data1 : in std_logic := 'X' ;
      w_load_label1_data0 : in std_logic := 'X' ;
      w_load_label2_config : in std_logic := 'X' ;
      w_load_label2_data7 : in std_logic := 'X' ;
      w_load_label2_data6 : in std_logic := 'X' ;
      w_load_label2_data5 : in std_logic := 'X' ;
      w_load_label2_data4 : in std_logic := 'X' ;
      w_load_label2_data3 : in std_logic := 'X' ;
      w_load_label2_data2 : in std_logic := 'X' ;
      w_load_label2_data1 : in std_logic := 'X' ;
      w_load_label2_data0 : in std_logic := 'X' ;
      w_load_label3_config : in std_logic := 'X' ;
      w_load_label3_data7 : in std_logic := 'X' ;
      w_load_label3_data6 : in std_logic := 'X' ;
      w_load_label3_data5 : in std_logic := 'X' ;
      w_load_label3_data4 : in std_logic := 'X' ;
      w_load_label3_data3 : in std_logic := 'X' ;
      w_load_label3_data2 : in std_logic := 'X' ;
      w_load_label3_data1 : in std_logic := 'X' ;
      w_load_label3_data0 : in std_logic := 'X' ;
      w_load_label4_config : in std_logic := 'X' ;
      w_load_label4_data7 : in std_logic := 'X' ;
      w_load_label4_data6 : in std_logic := 'X' ;
      w_load_label4_data5 : in std_logic := 'X' ;
      w_load_label4_data4 : in std_logic := 'X' ;
      w_load_label4_data3 : in std_logic := 'X' ;
      w_load_label4_data2 : in std_logic := 'X' ;
      w_load_label4_data1 : in std_logic := 'X' ;
      w_load_label4_data0 : in std_logic := 'X' ;
      w_load_label5_config : in std_logic := 'X' ;
      w_load_label5_data7 : in std_logic := 'X' ;
      w_load_label5_data6 : in std_logic := 'X' ;
      w_load_label5_data5 : in std_logic := 'X' ;
      w_load_label5_data4 : in std_logic := 'X' ;
      w_load_label5_data3 : in std_logic := 'X' ;
      w_load_label5_data2 : in std_logic := 'X' ;
      w_load_label5_data1 : in std_logic := 'X' ;
      w_load_label5_data0 : in std_logic := 'X' ;
      w_load_label6_config : in std_logic := 'X' ;
      w_load_label6_data7 : in std_logic := 'X' ;
      w_load_label6_data6 : in std_logic := 'X' ;
      w_load_label6_data5 : in std_logic := 'X' ;
      w_load_label6_data4 : in std_logic := 'X' ;
      w_load_label6_data3 : in std_logic := 'X' ;
      w_load_label6_data2 : in std_logic := 'X' ;
      w_load_label6_data1 : in std_logic := 'X' ;
      w_load_label6_data0 : in std_logic := 'X' ;
      w_load_label7_config : in std_logic := 'X' ;
      w_load_label7_data7 : in std_logic := 'X' ;
      w_load_label7_data6 : in std_logic := 'X' ;
      w_load_label7_data5 : in std_logic := 'X' ;
      w_load_label7_data4 : in std_logic := 'X' ;
      w_load_label7_data3 : in std_logic := 'X' ;
      w_load_label7_data2 : in std_logic := 'X' ;
      w_load_label7_data1 : in std_logic := 'X' ;
      w_load_label7_data0 : in std_logic := 'X' ;
      w_load_kdf_drbg_ctrl : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_key_31_0 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_key_63_32 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_key_95_64 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_key_127_96 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_key_159_128 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_key_191_160 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_key_223_192 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_key_255_224 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_value_31_0 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_value_63_32 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_value_95_64 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_state_value_127_96 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_reseed_interval_0 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_0_reseed_interval_1 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_key_31_0 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_key_63_32 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_key_95_64 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_key_127_96 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_key_159_128 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_key_191_160 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_key_223_192 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_key_255_224 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_value_31_0 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_value_63_32 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_value_95_64 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_state_value_127_96 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_reseed_interval_0 : in std_logic := 'X' ;
      w_load_kdf_drbg_seed_1_reseed_interval_1 : in std_logic := 'X' ;
      w_load_interrupt_status : in std_logic := 'X' ;
      w_load_interrupt_mask : in std_logic := 'X' ;
      w_load_engine_sticky_status : in std_logic := 'X' ;
      w_load_bimc_monitor_mask : in std_logic := 'X' ;
      w_load_bimc_ecc_uncorrectable_error_cnt : in std_logic := 'X' ;
      w_load_bimc_ecc_correctable_error_cnt : in std_logic := 'X' ;
      w_load_bimc_parity_error_cnt : in std_logic := 'X' ;
      w_load_bimc_global_config : in std_logic := 'X' ;
      w_load_bimc_eccpar_debug : in std_logic := 'X' ;
      w_load_bimc_cmd2 : in std_logic := 'X' ;
      w_load_bimc_cmd1 : in std_logic := 'X' ;
      w_load_bimc_cmd0 : in std_logic := 'X' ;
      w_load_bimc_rxcmd2 : in std_logic := 'X' ;
      w_load_bimc_rxrsp2 : in std_logic := 'X' ;
      w_load_bimc_pollrsp2 : in std_logic := 'X' ;
      w_load_bimc_dbgcmd2 : in std_logic := 'X' ;
      w_load_im_consumed : in std_logic := 'X' ;
      w_load_tready_override : in std_logic := 'X' ;
      w_load_regs_sa_ctrl : in std_logic := 'X' ;
      w_load_sa_snapshot_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_sa_snapshot_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_sa_snapshot_ia_config : in std_logic := 'X' ;
      w_load_sa_count_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_sa_count_ia_wdata_part1 : in std_logic := 'X' ;
      w_load_sa_count_ia_config : in std_logic := 'X' ;
      w_load_cceip_encrypt_kop_fifo_override : in std_logic := 'X' ;
      w_load_cceip_validate_kop_fifo_override : in std_logic := 'X' ;
      w_load_cddip_decrypt_kop_fifo_override : in std_logic := 'X' ;
      w_load_sa_global_ctrl : in std_logic := 'X' ;
      w_load_sa_ctrl_ia_wdata_part0 : in std_logic := 'X' ;
      w_load_sa_ctrl_ia_config : in std_logic := 'X' ;
      w_load_kdf_test_key_size_config : in std_logic := 'X' ;
    f32_data : in std_logic_vector(31 downto 0) := (others => 'X') ) ;
  end component ;

  signal ws_read_addr : std_logic_vector(10 downto 0) ;
  signal ws_addr : std_logic_vector(10 downto 0) ;
  signal n_wr_strobe : std_logic ;
  signal n_rd_strobe : std_logic ;
  signal w_32b_aligned : std_logic ;
  signal w_valid_rd_addr : std_logic ;
  signal w_valid_wr_addr : std_logic ;
  signal w_valid_addr : std_logic ;
  signal w_do_write : std_logic ;
  signal w_do_read : std_logic ;
  signal w_next_state : std_logic_vector(2 downto 0) ;
  signal w_next_ack : std_logic ;
  signal w_next_err_ack : std_logic ;
  signal r32_formatted_reg_data : std_logic_vector(31 downto 0) ;
  signal w_load_spare_config : std_logic ;
  signal w_load_cceip0_out_ia_wdata_part0 : std_logic ;
  signal w_load_cceip0_out_ia_wdata_part1 : std_logic ;
  signal w_load_cceip0_out_ia_wdata_part2 : std_logic ;
  signal w_load_cceip0_out_ia_config : std_logic ;
  signal w_load_cceip0_out_im_config : std_logic ;
  signal w_load_cceip0_out_im_read_done : std_logic ;
  signal w_load_cceip1_out_ia_wdata_part0 : std_logic ;
  signal w_load_cceip1_out_ia_wdata_part1 : std_logic ;
  signal w_load_cceip1_out_ia_wdata_part2 : std_logic ;
  signal w_load_cceip1_out_ia_config : std_logic ;
  signal w_load_cceip1_out_im_config : std_logic ;
  signal w_load_cceip1_out_im_read_done : std_logic ;
  signal w_load_cceip2_out_ia_wdata_part0 : std_logic ;
  signal w_load_cceip2_out_ia_wdata_part1 : std_logic ;
  signal w_load_cceip2_out_ia_wdata_part2 : std_logic ;
  signal w_load_cceip2_out_ia_config : std_logic ;
  signal w_load_cceip2_out_im_config : std_logic ;
  signal w_load_cceip2_out_im_read_done : std_logic ;
  signal w_load_cceip3_out_ia_wdata_part0 : std_logic ;
  signal w_load_cceip3_out_ia_wdata_part1 : std_logic ;
  signal w_load_cceip3_out_ia_wdata_part2 : std_logic ;
  signal w_load_cceip3_out_ia_config : std_logic ;
  signal w_load_cceip3_out_im_config : std_logic ;
  signal w_load_cceip3_out_im_read_done : std_logic ;
  signal w_load_cddip0_out_ia_wdata_part0 : std_logic ;
  signal w_load_cddip0_out_ia_wdata_part1 : std_logic ;
  signal w_load_cddip0_out_ia_wdata_part2 : std_logic ;
  signal w_load_cddip0_out_ia_config : std_logic ;
  signal w_load_cddip0_out_im_config : std_logic ;
  signal w_load_cddip0_out_im_read_done : std_logic ;
  signal w_load_cddip1_out_ia_wdata_part0 : std_logic ;
  signal w_load_cddip1_out_ia_wdata_part1 : std_logic ;
  signal w_load_cddip1_out_ia_wdata_part2 : std_logic ;
  signal w_load_cddip1_out_ia_config : std_logic ;
  signal w_load_cddip1_out_im_config : std_logic ;
  signal w_load_cddip1_out_im_read_done : std_logic ;
  signal w_load_cddip2_out_ia_wdata_part0 : std_logic ;
  signal w_load_cddip2_out_ia_wdata_part1 : std_logic ;
  signal w_load_cddip2_out_ia_wdata_part2 : std_logic ;
  signal w_load_cddip2_out_ia_config : std_logic ;
  signal w_load_cddip2_out_im_config : std_logic ;
  signal w_load_cddip2_out_im_read_done : std_logic ;
  signal w_load_cddip3_out_ia_wdata_part0 : std_logic ;
  signal w_load_cddip3_out_ia_wdata_part1 : std_logic ;
  signal w_load_cddip3_out_ia_wdata_part2 : std_logic ;
  signal w_load_cddip3_out_ia_config : std_logic ;
  signal w_load_cddip3_out_im_config : std_logic ;
  signal w_load_cddip3_out_im_read_done : std_logic ;
  signal w_load_ckv_ia_wdata_part0 : std_logic ;
  signal w_load_ckv_ia_wdata_part1 : std_logic ;
  signal w_load_ckv_ia_config : std_logic ;
  signal w_load_kim_ia_wdata_part0 : std_logic ;
  signal w_load_kim_ia_wdata_part1 : std_logic ;
  signal w_load_kim_ia_config : std_logic ;
  signal w_load_label0_config : std_logic ;
  signal w_load_label0_data7 : std_logic ;
  signal w_load_label0_data6 : std_logic ;
  signal w_load_label0_data5 : std_logic ;
  signal w_load_label0_data4 : std_logic ;
  signal w_load_label0_data3 : std_logic ;
  signal w_load_label0_data2 : std_logic ;
  signal w_load_label0_data1 : std_logic ;
  signal w_load_label0_data0 : std_logic ;
  signal w_load_label1_config : std_logic ;
  signal w_load_label1_data7 : std_logic ;
  signal w_load_label1_data6 : std_logic ;
  signal w_load_label1_data5 : std_logic ;
  signal w_load_label1_data4 : std_logic ;
  signal w_load_label1_data3 : std_logic ;
  signal w_load_label1_data2 : std_logic ;
  signal w_load_label1_data1 : std_logic ;
  signal w_load_label1_data0 : std_logic ;
  signal w_load_label2_config : std_logic ;
  signal w_load_label2_data7 : std_logic ;
  signal w_load_label2_data6 : std_logic ;
  signal w_load_label2_data5 : std_logic ;
  signal w_load_label2_data4 : std_logic ;
  signal w_load_label2_data3 : std_logic ;
  signal w_load_label2_data2 : std_logic ;
  signal w_load_label2_data1 : std_logic ;
  signal w_load_label2_data0 : std_logic ;
  signal w_load_label3_config : std_logic ;
  signal w_load_label3_data7 : std_logic ;
  signal w_load_label3_data6 : std_logic ;
  signal w_load_label3_data5 : std_logic ;
  signal w_load_label3_data4 : std_logic ;
  signal w_load_label3_data3 : std_logic ;
  signal w_load_label3_data2 : std_logic ;
  signal w_load_label3_data1 : std_logic ;
  signal w_load_label3_data0 : std_logic ;
  signal w_load_label4_config : std_logic ;
  signal w_load_label4_data7 : std_logic ;
  signal w_load_label4_data6 : std_logic ;
  signal w_load_label4_data5 : std_logic ;
  signal w_load_label4_data4 : std_logic ;
  signal w_load_label4_data3 : std_logic ;
  signal w_load_label4_data2 : std_logic ;
  signal w_load_label4_data1 : std_logic ;
  signal w_load_label4_data0 : std_logic ;
  signal w_load_label5_config : std_logic ;
  signal w_load_label5_data7 : std_logic ;
  signal w_load_label5_data6 : std_logic ;
  signal w_load_label5_data5 : std_logic ;
  signal w_load_label5_data4 : std_logic ;
  signal w_load_label5_data3 : std_logic ;
  signal w_load_label5_data2 : std_logic ;
  signal w_load_label5_data1 : std_logic ;
  signal w_load_label5_data0 : std_logic ;
  signal w_load_label6_config : std_logic ;
  signal w_load_label6_data7 : std_logic ;
  signal w_load_label6_data6 : std_logic ;
  signal w_load_label6_data5 : std_logic ;
  signal w_load_label6_data4 : std_logic ;
  signal w_load_label6_data3 : std_logic ;
  signal w_load_label6_data2 : std_logic ;
  signal w_load_label6_data1 : std_logic ;
  signal w_load_label6_data0 : std_logic ;
  signal w_load_label7_config : std_logic ;
  signal w_load_label7_data7 : std_logic ;
  signal w_load_label7_data6 : std_logic ;
  signal w_load_label7_data5 : std_logic ;
  signal w_load_label7_data4 : std_logic ;
  signal w_load_label7_data3 : std_logic ;
  signal w_load_label7_data2 : std_logic ;
  signal w_load_label7_data1 : std_logic ;
  signal w_load_label7_data0 : std_logic ;
  signal w_load_kdf_drbg_ctrl : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_key_31_0 : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_key_63_32 : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_key_95_64 : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_key_127_96 : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_key_159_128 : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_key_191_160 : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_key_223_192 : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_key_255_224 : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_value_31_0 : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_value_63_32 : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_value_95_64 : std_logic ;
  signal w_load_kdf_drbg_seed_0_state_value_127_96 : std_logic ;
  signal w_load_kdf_drbg_seed_0_reseed_interval_0 : std_logic ;
  signal w_load_kdf_drbg_seed_0_reseed_interval_1 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_key_31_0 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_key_63_32 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_key_95_64 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_key_127_96 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_key_159_128 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_key_191_160 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_key_223_192 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_key_255_224 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_value_31_0 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_value_63_32 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_value_95_64 : std_logic ;
  signal w_load_kdf_drbg_seed_1_state_value_127_96 : std_logic ;
  signal w_load_kdf_drbg_seed_1_reseed_interval_0 : std_logic ;
  signal w_load_kdf_drbg_seed_1_reseed_interval_1 : std_logic ;
  signal w_load_interrupt_status : std_logic ;
  signal w_load_interrupt_mask : std_logic ;
  signal w_load_engine_sticky_status : std_logic ;
  signal w_load_bimc_monitor_mask : std_logic ;
  signal w_load_bimc_ecc_uncorrectable_error_cnt : std_logic ;
  signal w_load_bimc_ecc_correctable_error_cnt : std_logic ;
  signal w_load_bimc_parity_error_cnt : std_logic ;
  signal w_load_bimc_global_config : std_logic ;
  signal w_load_bimc_eccpar_debug : std_logic ;
  signal w_load_bimc_cmd2 : std_logic ;
  signal w_load_bimc_cmd1 : std_logic ;
  signal w_load_bimc_cmd0 : std_logic ;
  signal w_load_bimc_rxcmd2 : std_logic ;
  signal w_load_bimc_rxrsp2 : std_logic ;
  signal w_load_bimc_pollrsp2 : std_logic ;
  signal w_load_bimc_dbgcmd2 : std_logic ;
  signal w_load_im_consumed : std_logic ;
  signal w_load_tready_override : std_logic ;
  signal w_load_regs_sa_ctrl : std_logic ;
  signal w_load_sa_snapshot_ia_wdata_part0 : std_logic ;
  signal w_load_sa_snapshot_ia_wdata_part1 : std_logic ;
  signal w_load_sa_snapshot_ia_config : std_logic ;
  signal w_load_sa_count_ia_wdata_part0 : std_logic ;
  signal w_load_sa_count_ia_wdata_part1 : std_logic ;
  signal w_load_sa_count_ia_config : std_logic ;
  signal w_load_cceip_encrypt_kop_fifo_override : std_logic ;
  signal w_load_cceip_validate_kop_fifo_override : std_logic ;
  signal w_load_cddip_decrypt_kop_fifo_override : std_logic ;
  signal w_load_sa_global_ctrl : std_logic ;
  signal w_load_sa_ctrl_ia_wdata_part0 : std_logic ;
  signal w_load_sa_ctrl_ia_config : std_logic ;
  signal w_load_kdf_test_key_size_config : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic_vector(0 to 10) ;
  signal DUMMY4 : std_logic_vector(0 to 31) ;
  signal n_write : std_logic ;
  signal f_state : std_logic_vector(2 downto 0) ;
  signal f_prev_do_read : std_logic ;
  signal f_ack : std_logic ;
  signal f_err_ack : std_logic ;
  signal r32_mux_0_data : std_logic_vector(31 downto 0) ;
  signal f32_mux_0_data : std_logic_vector(31 downto 0) ;
  signal r32_mux_1_data : std_logic_vector(31 downto 0) ;
  signal f32_mux_1_data : std_logic_vector(31 downto 0) ;
  signal r32_mux_2_data : std_logic_vector(31 downto 0) ;
  signal f32_mux_2_data : std_logic_vector(31 downto 0) ;
  signal r32_mux_3_data : std_logic_vector(31 downto 0) ;
  signal f32_mux_3_data : std_logic_vector(31 downto 0) ;
  signal r32_mux_4_data : std_logic_vector(31 downto 0) ;
  signal f32_mux_4_data : std_logic_vector(31 downto 0) ;
  signal r32_mux_5_data : std_logic_vector(31 downto 0) ;
  signal f32_mux_5_data : std_logic_vector(31 downto 0) ;
  signal r32_mux_6_data : std_logic_vector(31 downto 0) ;
  signal f32_mux_6_data : std_logic_vector(31 downto 0) ;
  signal r32_mux_7_data : std_logic_vector(31 downto 0) ;
  signal f32_mux_7_data : std_logic_vector(31 downto 0) ;
  signal r32_mux_8_data : std_logic_vector(31 downto 0) ;
  signal f32_mux_8_data : std_logic_vector(31 downto 0) ;
  signal f32_data : std_logic_vector(31 downto 0) ;

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 11)
    port map (
       ws_read_addr
      ,o_reg_addr
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 11)
    port map (
       ws_addr
      ,o_reg_addr
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 1)
    port map (
       n_wr_strobe
      ,i_wr_strb
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 1)
    port map (
       n_rd_strobe
      ,i_rd_strb
    ) ;
  w_32b_aligned <= boolean_to_std(o_reg_addr(1 downto 0) = std_logic_vector'
  ("00")) ;
  w_valid_rd_addr <= boolean_to_std((((w_32b_aligned)='1' and ws_addr >=
   std_logic_vector'("00000000000") and ws_addr <= std_logic_vector'
  ("00111000000")) or ((w_32b_aligned)='1' and ws_addr >= std_logic_vector'
  ("00111001000") and ws_addr <= std_logic_vector'("00111101000")) or (
  (w_32b_aligned)='1' and ws_addr >= std_logic_vector'("00111110000") and
   ws_addr <= std_logic_vector'("01000010000")) or ((w_32b_aligned)='1' and
   ws_addr >= std_logic_vector'("01000011000") and ws_addr <= std_logic_vector'
  ("01000111000")) or ((w_32b_aligned)='1' and ws_addr >= std_logic_vector'
  ("01001000000") and ws_addr <= std_logic_vector'("01001100000")) or (
  (w_32b_aligned)='1' and ws_addr >= std_logic_vector'("01001101000") and
   ws_addr <= std_logic_vector'("01010001000")) or ((w_32b_aligned)='1' and
   ws_addr >= std_logic_vector'("01010010000") and ws_addr <= std_logic_vector'
  ("01010110000")) or ((w_32b_aligned)='1' and ws_addr >= std_logic_vector'
  ("01010111000") and ws_addr <= std_logic_vector'("01011011000")) or (
  (w_32b_aligned)='1' and ws_addr >= std_logic_vector'("01011100000") and
   ws_addr <= std_logic_vector'("01100000000")) or ((w_32b_aligned)='1' and
   ws_addr >= std_logic_vector'("01100001000") and ws_addr <= std_logic_vector'
  ("01110000100")) or ((w_32b_aligned)='1' and ws_addr >= std_logic_vector'
  ("01110001100") and ws_addr <= std_logic_vector'("01111100100")) or (
  (w_32b_aligned)='1' and ws_addr >= std_logic_vector'("01111101100") and
   ws_addr <= std_logic_vector'("10001011100")))) ;
  w_valid_wr_addr <= boolean_to_std((((w_32b_aligned)='1' and ws_addr >=
   std_logic_vector'("00000000000") and ws_addr <= std_logic_vector'
  ("00111000000")) or ((w_32b_aligned)='1' and ws_addr >= std_logic_vector'
  ("00111001000") and ws_addr <= std_logic_vector'("00111101000")) or (
  (w_32b_aligned)='1' and ws_addr >= std_logic_vector'("00111110000") and
   ws_addr <= std_logic_vector'("01000010000")) or ((w_32b_aligned)='1' and
   ws_addr >= std_logic_vector'("01000011000") and ws_addr <= std_logic_vector'
  ("01000111000")) or ((w_32b_aligned)='1' and ws_addr >= std_logic_vector'
  ("01001000000") and ws_addr <= std_logic_vector'("01001100000")) or (
  (w_32b_aligned)='1' and ws_addr >= std_logic_vector'("01001101000") and
   ws_addr <= std_logic_vector'("01010001000")) or ((w_32b_aligned)='1' and
   ws_addr >= std_logic_vector'("01010010000") and ws_addr <= std_logic_vector'
  ("01010110000")) or ((w_32b_aligned)='1' and ws_addr >= std_logic_vector'
  ("01010111000") and ws_addr <= std_logic_vector'("01011011000")) or (
  (w_32b_aligned)='1' and ws_addr >= std_logic_vector'("01011100000") and
   ws_addr <= std_logic_vector'("01100000000")) or ((w_32b_aligned)='1' and
   ws_addr >= std_logic_vector'("01100001000") and ws_addr <= std_logic_vector'
  ("01110000100")) or ((w_32b_aligned)='1' and ws_addr >= std_logic_vector'
  ("01110001100") and ws_addr <= std_logic_vector'("01111100100")) or (
  (w_32b_aligned)='1' and ws_addr >= std_logic_vector'("01111101100") and
   ws_addr <= std_logic_vector'("10001011100")))) ;
  w_valid_addr <= (w_valid_wr_addr or w_valid_rd_addr) ;
  w_do_write <= boolean_to_std(f_state = std_logic_vector'("001")) ;
  w_do_read <= boolean_to_std(f_state = std_logic_vector'("101")) ;
  w_next_state <= "001" when (n_wr_strobe)='1' else "101" when (n_rd_strobe)='1'
   else "011" when f_state = std_logic_vector'("001") else "111" when f_state =
   std_logic_vector'("101") else "000" ;
  w_next_ack <= boolean_to_std(f_state = std_logic_vector'("101")) ;
  w_next_err_ack <= (boolean_to_std(f_state = std_logic_vector'("101")) and not
  (w_valid_rd_addr)) ;
  o_ack <= (f_ack or boolean_to_std(f_state = std_logic_vector'("001"))) ;
  o_err_ack <= (f_err_ack or (boolean_to_std(f_state = std_logic_vector'("001"))
   and not(w_valid_wr_addr))) ;
  r32_formatted_reg_data <= ((((((((f32_mux_0_data or f32_mux_1_data) or
   f32_mux_2_data) or f32_mux_3_data) or f32_mux_4_data) or f32_mux_5_data) or
   f32_mux_6_data) or f32_mux_7_data) or f32_mux_8_data) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 32)
    port map (
       o_reg_wr_data
      ,f32_data
    ) ;
  o_rd_data <= r32_formatted_reg_data when ((o_ack)='1' and (not(n_write))='1')
   else "00000000000000000000000000000000" ;
  w_load_spare_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00000001000"))) ;
  w_load_cceip0_out_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00000010100"))) ;
  w_load_cceip0_out_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00000011000"))) ;
  w_load_cceip0_out_ia_wdata_part2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00000011100"))) ;
  w_load_cceip0_out_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00000100000"))) ;
  w_load_cceip0_out_im_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00000110000"))) ;
  w_load_cceip0_out_im_read_done <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00000111000"))) ;
  w_load_cceip1_out_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00001000100"))) ;
  w_load_cceip1_out_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00001001000"))) ;
  w_load_cceip1_out_ia_wdata_part2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00001001100"))) ;
  w_load_cceip1_out_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00001010000"))) ;
  w_load_cceip1_out_im_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00001100000"))) ;
  w_load_cceip1_out_im_read_done <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00001101000"))) ;
  w_load_cceip2_out_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00001110100"))) ;
  w_load_cceip2_out_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00001111000"))) ;
  w_load_cceip2_out_ia_wdata_part2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00001111100"))) ;
  w_load_cceip2_out_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00010000000"))) ;
  w_load_cceip2_out_im_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00010010000"))) ;
  w_load_cceip2_out_im_read_done <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00010011000"))) ;
  w_load_cceip3_out_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00010100100"))) ;
  w_load_cceip3_out_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00010101000"))) ;
  w_load_cceip3_out_ia_wdata_part2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00010101100"))) ;
  w_load_cceip3_out_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00010110000"))) ;
  w_load_cceip3_out_im_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00011000000"))) ;
  w_load_cceip3_out_im_read_done <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00011001000"))) ;
  w_load_cddip0_out_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00011010100"))) ;
  w_load_cddip0_out_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00011011000"))) ;
  w_load_cddip0_out_ia_wdata_part2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00011011100"))) ;
  w_load_cddip0_out_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00011100000"))) ;
  w_load_cddip0_out_im_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00011110000"))) ;
  w_load_cddip0_out_im_read_done <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00011111000"))) ;
  w_load_cddip1_out_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00100000100"))) ;
  w_load_cddip1_out_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00100001000"))) ;
  w_load_cddip1_out_ia_wdata_part2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00100001100"))) ;
  w_load_cddip1_out_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00100010000"))) ;
  w_load_cddip1_out_im_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00100100000"))) ;
  w_load_cddip1_out_im_read_done <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00100101000"))) ;
  w_load_cddip2_out_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00100110100"))) ;
  w_load_cddip2_out_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00100111000"))) ;
  w_load_cddip2_out_ia_wdata_part2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00100111100"))) ;
  w_load_cddip2_out_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00101000000"))) ;
  w_load_cddip2_out_im_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00101010000"))) ;
  w_load_cddip2_out_im_read_done <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00101011000"))) ;
  w_load_cddip3_out_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00101100100"))) ;
  w_load_cddip3_out_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00101101000"))) ;
  w_load_cddip3_out_ia_wdata_part2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00101101100"))) ;
  w_load_cddip3_out_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00101110000"))) ;
  w_load_cddip3_out_im_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00110000000"))) ;
  w_load_cddip3_out_im_read_done <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00110001000"))) ;
  w_load_ckv_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00110010100"))) ;
  w_load_ckv_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00110011000"))) ;
  w_load_ckv_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00110011100"))) ;
  w_load_kim_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00110110000"))) ;
  w_load_kim_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00110110100"))) ;
  w_load_kim_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00110111000"))) ;
  w_load_label0_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111001000"))) ;
  w_load_label0_data7 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111001100"))) ;
  w_load_label0_data6 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111010000"))) ;
  w_load_label0_data5 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111010100"))) ;
  w_load_label0_data4 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111011000"))) ;
  w_load_label0_data3 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111011100"))) ;
  w_load_label0_data2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111100000"))) ;
  w_load_label0_data1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111100100"))) ;
  w_load_label0_data0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111101000"))) ;
  w_load_label1_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111110000"))) ;
  w_load_label1_data7 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111110100"))) ;
  w_load_label1_data6 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111111000"))) ;
  w_load_label1_data5 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("00111111100"))) ;
  w_load_label1_data4 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000000000"))) ;
  w_load_label1_data3 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000000100"))) ;
  w_load_label1_data2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000001000"))) ;
  w_load_label1_data1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000001100"))) ;
  w_load_label1_data0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000010000"))) ;
  w_load_label2_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000011000"))) ;
  w_load_label2_data7 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000011100"))) ;
  w_load_label2_data6 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000100000"))) ;
  w_load_label2_data5 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000100100"))) ;
  w_load_label2_data4 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000101000"))) ;
  w_load_label2_data3 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000101100"))) ;
  w_load_label2_data2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000110000"))) ;
  w_load_label2_data1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000110100"))) ;
  w_load_label2_data0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01000111000"))) ;
  w_load_label3_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001000000"))) ;
  w_load_label3_data7 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001000100"))) ;
  w_load_label3_data6 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001001000"))) ;
  w_load_label3_data5 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001001100"))) ;
  w_load_label3_data4 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001010000"))) ;
  w_load_label3_data3 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001010100"))) ;
  w_load_label3_data2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001011000"))) ;
  w_load_label3_data1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001011100"))) ;
  w_load_label3_data0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001100000"))) ;
  w_load_label4_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001101000"))) ;
  w_load_label4_data7 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001101100"))) ;
  w_load_label4_data6 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001110000"))) ;
  w_load_label4_data5 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001110100"))) ;
  w_load_label4_data4 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001111000"))) ;
  w_load_label4_data3 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01001111100"))) ;
  w_load_label4_data2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010000000"))) ;
  w_load_label4_data1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010000100"))) ;
  w_load_label4_data0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010001000"))) ;
  w_load_label5_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010010000"))) ;
  w_load_label5_data7 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010010100"))) ;
  w_load_label5_data6 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010011000"))) ;
  w_load_label5_data5 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010011100"))) ;
  w_load_label5_data4 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010100000"))) ;
  w_load_label5_data3 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010100100"))) ;
  w_load_label5_data2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010101000"))) ;
  w_load_label5_data1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010101100"))) ;
  w_load_label5_data0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010110000"))) ;
  w_load_label6_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010111000"))) ;
  w_load_label6_data7 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01010111100"))) ;
  w_load_label6_data6 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011000000"))) ;
  w_load_label6_data5 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011000100"))) ;
  w_load_label6_data4 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011001000"))) ;
  w_load_label6_data3 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011001100"))) ;
  w_load_label6_data2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011010000"))) ;
  w_load_label6_data1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011010100"))) ;
  w_load_label6_data0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011011000"))) ;
  w_load_label7_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011100000"))) ;
  w_load_label7_data7 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011100100"))) ;
  w_load_label7_data6 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011101000"))) ;
  w_load_label7_data5 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011101100"))) ;
  w_load_label7_data4 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011110000"))) ;
  w_load_label7_data3 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011110100"))) ;
  w_load_label7_data2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011111000"))) ;
  w_load_label7_data1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01011111100"))) ;
  w_load_label7_data0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01100000000"))) ;
  w_load_kdf_drbg_ctrl <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01100001000"))) ;
  w_load_kdf_drbg_seed_0_state_key_31_0 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100001100"))) ;
  w_load_kdf_drbg_seed_0_state_key_63_32 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100010000"))) ;
  w_load_kdf_drbg_seed_0_state_key_95_64 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100010100"))) ;
  w_load_kdf_drbg_seed_0_state_key_127_96 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100011000"))) ;
  w_load_kdf_drbg_seed_0_state_key_159_128 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100011100"))) ;
  w_load_kdf_drbg_seed_0_state_key_191_160 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100100000"))) ;
  w_load_kdf_drbg_seed_0_state_key_223_192 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100100100"))) ;
  w_load_kdf_drbg_seed_0_state_key_255_224 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100101000"))) ;
  w_load_kdf_drbg_seed_0_state_value_31_0 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100101100"))) ;
  w_load_kdf_drbg_seed_0_state_value_63_32 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100110000"))) ;
  w_load_kdf_drbg_seed_0_state_value_95_64 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100110100"))) ;
  w_load_kdf_drbg_seed_0_state_value_127_96 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100111000"))) ;
  w_load_kdf_drbg_seed_0_reseed_interval_0 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01100111100"))) ;
  w_load_kdf_drbg_seed_0_reseed_interval_1 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101000000"))) ;
  w_load_kdf_drbg_seed_1_state_key_31_0 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101000100"))) ;
  w_load_kdf_drbg_seed_1_state_key_63_32 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101001000"))) ;
  w_load_kdf_drbg_seed_1_state_key_95_64 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101001100"))) ;
  w_load_kdf_drbg_seed_1_state_key_127_96 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101010000"))) ;
  w_load_kdf_drbg_seed_1_state_key_159_128 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101010100"))) ;
  w_load_kdf_drbg_seed_1_state_key_191_160 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101011000"))) ;
  w_load_kdf_drbg_seed_1_state_key_223_192 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101011100"))) ;
  w_load_kdf_drbg_seed_1_state_key_255_224 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101100000"))) ;
  w_load_kdf_drbg_seed_1_state_value_31_0 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101100100"))) ;
  w_load_kdf_drbg_seed_1_state_value_63_32 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101101000"))) ;
  w_load_kdf_drbg_seed_1_state_value_95_64 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101101100"))) ;
  w_load_kdf_drbg_seed_1_state_value_127_96 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101110000"))) ;
  w_load_kdf_drbg_seed_1_reseed_interval_0 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101110100"))) ;
  w_load_kdf_drbg_seed_1_reseed_interval_1 <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01101111000"))) ;
  w_load_interrupt_status <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01101111100"))) ;
  w_load_interrupt_mask <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01110000000"))) ;
  w_load_engine_sticky_status <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01110000100"))) ;
  w_load_bimc_monitor_mask <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01110010000"))) ;
  w_load_bimc_ecc_uncorrectable_error_cnt <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01110010100"))) ;
  w_load_bimc_ecc_correctable_error_cnt <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("01110011000"))) ;
  w_load_bimc_parity_error_cnt <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01110011100"))) ;
  w_load_bimc_global_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01110100000"))) ;
  w_load_bimc_eccpar_debug <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01110101000"))) ;
  w_load_bimc_cmd2 <= (w_do_write and boolean_to_std(ws_addr = std_logic_vector'
  ("01110101100"))) ;
  w_load_bimc_cmd1 <= (w_do_write and boolean_to_std(ws_addr = std_logic_vector'
  ("01110110000"))) ;
  w_load_bimc_cmd0 <= (w_do_write and boolean_to_std(ws_addr = std_logic_vector'
  ("01110110100"))) ;
  w_load_bimc_rxcmd2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01110111000"))) ;
  w_load_bimc_rxrsp2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01111000100"))) ;
  w_load_bimc_pollrsp2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01111010000"))) ;
  w_load_bimc_dbgcmd2 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01111011100"))) ;
  w_load_im_consumed <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01111110000"))) ;
  w_load_tready_override <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01111110100"))) ;
  w_load_regs_sa_ctrl <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("01111111000"))) ;
  w_load_sa_snapshot_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("10000000100"))) ;
  w_load_sa_snapshot_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("10000001000"))) ;
  w_load_sa_snapshot_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("10000001100"))) ;
  w_load_sa_count_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("10000100000"))) ;
  w_load_sa_count_ia_wdata_part1 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("10000100100"))) ;
  w_load_sa_count_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("10000101000"))) ;
  w_load_cceip_encrypt_kop_fifo_override <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("10000111000"))) ;
  w_load_cceip_validate_kop_fifo_override <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("10000111100"))) ;
  w_load_cddip_decrypt_kop_fifo_override <= (w_do_write and boolean_to_std
  (ws_addr = std_logic_vector'("10001000000"))) ;
  w_load_sa_global_ctrl <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("10001000100"))) ;
  w_load_sa_ctrl_ia_wdata_part0 <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("10001010000"))) ;
  w_load_sa_ctrl_ia_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("10001010100"))) ;
  w_load_kdf_test_key_size_config <= (w_do_write and boolean_to_std(ws_addr =
   std_logic_vector'("10001011100"))) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,o_reg_written
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY2
      ,o_reg_read
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 11)
    port map (
       DUMMY3
      ,o_reg_addr
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY4
      ,f32_data
    ) ;
  u_cr_kme_regs_flops : cr_kme_regs_flops
    port map (
       clk => clk
      ,i_reset_ => i_reset_
      ,i_sw_init => i_sw_init
      ,o_spare_config => o_spare_config
      ,o_cceip0_out_ia_wdata_part0 => o_cceip0_out_ia_wdata_part0
      ,o_cceip0_out_ia_wdata_part1 => o_cceip0_out_ia_wdata_part1
      ,o_cceip0_out_ia_wdata_part2 => o_cceip0_out_ia_wdata_part2
      ,o_cceip0_out_ia_config => o_cceip0_out_ia_config
      ,o_cceip0_out_im_config => o_cceip0_out_im_config
      ,o_cceip0_out_im_read_done => o_cceip0_out_im_read_done
      ,o_cceip1_out_ia_wdata_part0 => o_cceip1_out_ia_wdata_part0
      ,o_cceip1_out_ia_wdata_part1 => o_cceip1_out_ia_wdata_part1
      ,o_cceip1_out_ia_wdata_part2 => o_cceip1_out_ia_wdata_part2
      ,o_cceip1_out_ia_config => o_cceip1_out_ia_config
      ,o_cceip1_out_im_config => o_cceip1_out_im_config
      ,o_cceip1_out_im_read_done => o_cceip1_out_im_read_done
      ,o_cceip2_out_ia_wdata_part0 => o_cceip2_out_ia_wdata_part0
      ,o_cceip2_out_ia_wdata_part1 => o_cceip2_out_ia_wdata_part1
      ,o_cceip2_out_ia_wdata_part2 => o_cceip2_out_ia_wdata_part2
      ,o_cceip2_out_ia_config => o_cceip2_out_ia_config
      ,o_cceip2_out_im_config => o_cceip2_out_im_config
      ,o_cceip2_out_im_read_done => o_cceip2_out_im_read_done
      ,o_cceip3_out_ia_wdata_part0 => o_cceip3_out_ia_wdata_part0
      ,o_cceip3_out_ia_wdata_part1 => o_cceip3_out_ia_wdata_part1
      ,o_cceip3_out_ia_wdata_part2 => o_cceip3_out_ia_wdata_part2
      ,o_cceip3_out_ia_config => o_cceip3_out_ia_config
      ,o_cceip3_out_im_config => o_cceip3_out_im_config
      ,o_cceip3_out_im_read_done => o_cceip3_out_im_read_done
      ,o_cddip0_out_ia_wdata_part0 => o_cddip0_out_ia_wdata_part0
      ,o_cddip0_out_ia_wdata_part1 => o_cddip0_out_ia_wdata_part1
      ,o_cddip0_out_ia_wdata_part2 => o_cddip0_out_ia_wdata_part2
      ,o_cddip0_out_ia_config => o_cddip0_out_ia_config
      ,o_cddip0_out_im_config => o_cddip0_out_im_config
      ,o_cddip0_out_im_read_done => o_cddip0_out_im_read_done
      ,o_cddip1_out_ia_wdata_part0 => o_cddip1_out_ia_wdata_part0
      ,o_cddip1_out_ia_wdata_part1 => o_cddip1_out_ia_wdata_part1
      ,o_cddip1_out_ia_wdata_part2 => o_cddip1_out_ia_wdata_part2
      ,o_cddip1_out_ia_config => o_cddip1_out_ia_config
      ,o_cddip1_out_im_config => o_cddip1_out_im_config
      ,o_cddip1_out_im_read_done => o_cddip1_out_im_read_done
      ,o_cddip2_out_ia_wdata_part0 => o_cddip2_out_ia_wdata_part0
      ,o_cddip2_out_ia_wdata_part1 => o_cddip2_out_ia_wdata_part1
      ,o_cddip2_out_ia_wdata_part2 => o_cddip2_out_ia_wdata_part2
      ,o_cddip2_out_ia_config => o_cddip2_out_ia_config
      ,o_cddip2_out_im_config => o_cddip2_out_im_config
      ,o_cddip2_out_im_read_done => o_cddip2_out_im_read_done
      ,o_cddip3_out_ia_wdata_part0 => o_cddip3_out_ia_wdata_part0
      ,o_cddip3_out_ia_wdata_part1 => o_cddip3_out_ia_wdata_part1
      ,o_cddip3_out_ia_wdata_part2 => o_cddip3_out_ia_wdata_part2
      ,o_cddip3_out_ia_config => o_cddip3_out_ia_config
      ,o_cddip3_out_im_config => o_cddip3_out_im_config
      ,o_cddip3_out_im_read_done => o_cddip3_out_im_read_done
      ,o_ckv_ia_wdata_part0 => o_ckv_ia_wdata_part0
      ,o_ckv_ia_wdata_part1 => o_ckv_ia_wdata_part1
      ,o_ckv_ia_config => o_ckv_ia_config
      ,o_kim_ia_wdata_part0 => o_kim_ia_wdata_part0
      ,o_kim_ia_wdata_part1 => o_kim_ia_wdata_part1
      ,o_kim_ia_config => o_kim_ia_config
      ,o_label0_config => o_label0_config
      ,o_label0_data7 => o_label0_data7
      ,o_label0_data6 => o_label0_data6
      ,o_label0_data5 => o_label0_data5
      ,o_label0_data4 => o_label0_data4
      ,o_label0_data3 => o_label0_data3
      ,o_label0_data2 => o_label0_data2
      ,o_label0_data1 => o_label0_data1
      ,o_label0_data0 => o_label0_data0
      ,o_label1_config => o_label1_config
      ,o_label1_data7 => o_label1_data7
      ,o_label1_data6 => o_label1_data6
      ,o_label1_data5 => o_label1_data5
      ,o_label1_data4 => o_label1_data4
      ,o_label1_data3 => o_label1_data3
      ,o_label1_data2 => o_label1_data2
      ,o_label1_data1 => o_label1_data1
      ,o_label1_data0 => o_label1_data0
      ,o_label2_config => o_label2_config
      ,o_label2_data7 => o_label2_data7
      ,o_label2_data6 => o_label2_data6
      ,o_label2_data5 => o_label2_data5
      ,o_label2_data4 => o_label2_data4
      ,o_label2_data3 => o_label2_data3
      ,o_label2_data2 => o_label2_data2
      ,o_label2_data1 => o_label2_data1
      ,o_label2_data0 => o_label2_data0
      ,o_label3_config => o_label3_config
      ,o_label3_data7 => o_label3_data7
      ,o_label3_data6 => o_label3_data6
      ,o_label3_data5 => o_label3_data5
      ,o_label3_data4 => o_label3_data4
      ,o_label3_data3 => o_label3_data3
      ,o_label3_data2 => o_label3_data2
      ,o_label3_data1 => o_label3_data1
      ,o_label3_data0 => o_label3_data0
      ,o_label4_config => o_label4_config
      ,o_label4_data7 => o_label4_data7
      ,o_label4_data6 => o_label4_data6
      ,o_label4_data5 => o_label4_data5
      ,o_label4_data4 => o_label4_data4
      ,o_label4_data3 => o_label4_data3
      ,o_label4_data2 => o_label4_data2
      ,o_label4_data1 => o_label4_data1
      ,o_label4_data0 => o_label4_data0
      ,o_label5_config => o_label5_config
      ,o_label5_data7 => o_label5_data7
      ,o_label5_data6 => o_label5_data6
      ,o_label5_data5 => o_label5_data5
      ,o_label5_data4 => o_label5_data4
      ,o_label5_data3 => o_label5_data3
      ,o_label5_data2 => o_label5_data2
      ,o_label5_data1 => o_label5_data1
      ,o_label5_data0 => o_label5_data0
      ,o_label6_config => o_label6_config
      ,o_label6_data7 => o_label6_data7
      ,o_label6_data6 => o_label6_data6
      ,o_label6_data5 => o_label6_data5
      ,o_label6_data4 => o_label6_data4
      ,o_label6_data3 => o_label6_data3
      ,o_label6_data2 => o_label6_data2
      ,o_label6_data1 => o_label6_data1
      ,o_label6_data0 => o_label6_data0
      ,o_label7_config => o_label7_config
      ,o_label7_data7 => o_label7_data7
      ,o_label7_data6 => o_label7_data6
      ,o_label7_data5 => o_label7_data5
      ,o_label7_data4 => o_label7_data4
      ,o_label7_data3 => o_label7_data3
      ,o_label7_data2 => o_label7_data2
      ,o_label7_data1 => o_label7_data1
      ,o_label7_data0 => o_label7_data0
      ,o_kdf_drbg_ctrl => o_kdf_drbg_ctrl
      ,o_kdf_drbg_seed_0_state_key_31_0 => o_kdf_drbg_seed_0_state_key_31_0
      ,o_kdf_drbg_seed_0_state_key_63_32 => o_kdf_drbg_seed_0_state_key_63_32
      ,o_kdf_drbg_seed_0_state_key_95_64 => o_kdf_drbg_seed_0_state_key_95_64
      ,o_kdf_drbg_seed_0_state_key_127_96 => o_kdf_drbg_seed_0_state_key_127_96
      ,o_kdf_drbg_seed_0_state_key_159_128 =>
       o_kdf_drbg_seed_0_state_key_159_128
      ,o_kdf_drbg_seed_0_state_key_191_160 =>
       o_kdf_drbg_seed_0_state_key_191_160
      ,o_kdf_drbg_seed_0_state_key_223_192 =>
       o_kdf_drbg_seed_0_state_key_223_192
      ,o_kdf_drbg_seed_0_state_key_255_224 =>
       o_kdf_drbg_seed_0_state_key_255_224
      ,o_kdf_drbg_seed_0_state_value_31_0 => o_kdf_drbg_seed_0_state_value_31_0
      ,o_kdf_drbg_seed_0_state_value_63_32 =>
       o_kdf_drbg_seed_0_state_value_63_32
      ,o_kdf_drbg_seed_0_state_value_95_64 =>
       o_kdf_drbg_seed_0_state_value_95_64
      ,o_kdf_drbg_seed_0_state_value_127_96 =>
       o_kdf_drbg_seed_0_state_value_127_96
      ,o_kdf_drbg_seed_0_reseed_interval_0 =>
       o_kdf_drbg_seed_0_reseed_interval_0
      ,o_kdf_drbg_seed_0_reseed_interval_1 =>
       o_kdf_drbg_seed_0_reseed_interval_1
      ,o_kdf_drbg_seed_1_state_key_31_0 => o_kdf_drbg_seed_1_state_key_31_0
      ,o_kdf_drbg_seed_1_state_key_63_32 => o_kdf_drbg_seed_1_state_key_63_32
      ,o_kdf_drbg_seed_1_state_key_95_64 => o_kdf_drbg_seed_1_state_key_95_64
      ,o_kdf_drbg_seed_1_state_key_127_96 => o_kdf_drbg_seed_1_state_key_127_96
      ,o_kdf_drbg_seed_1_state_key_159_128 =>
       o_kdf_drbg_seed_1_state_key_159_128
      ,o_kdf_drbg_seed_1_state_key_191_160 =>
       o_kdf_drbg_seed_1_state_key_191_160
      ,o_kdf_drbg_seed_1_state_key_223_192 =>
       o_kdf_drbg_seed_1_state_key_223_192
      ,o_kdf_drbg_seed_1_state_key_255_224 =>
       o_kdf_drbg_seed_1_state_key_255_224
      ,o_kdf_drbg_seed_1_state_value_31_0 => o_kdf_drbg_seed_1_state_value_31_0
      ,o_kdf_drbg_seed_1_state_value_63_32 =>
       o_kdf_drbg_seed_1_state_value_63_32
      ,o_kdf_drbg_seed_1_state_value_95_64 =>
       o_kdf_drbg_seed_1_state_value_95_64
      ,o_kdf_drbg_seed_1_state_value_127_96 =>
       o_kdf_drbg_seed_1_state_value_127_96
      ,o_kdf_drbg_seed_1_reseed_interval_0 =>
       o_kdf_drbg_seed_1_reseed_interval_0
      ,o_kdf_drbg_seed_1_reseed_interval_1 =>
       o_kdf_drbg_seed_1_reseed_interval_1
      ,o_interrupt_status => o_interrupt_status
      ,o_interrupt_mask => o_interrupt_mask
      ,o_engine_sticky_status => o_engine_sticky_status
      ,o_bimc_monitor_mask => o_bimc_monitor_mask
      ,o_bimc_ecc_uncorrectable_error_cnt => o_bimc_ecc_uncorrectable_error_cnt
      ,o_bimc_ecc_correctable_error_cnt => o_bimc_ecc_correctable_error_cnt
      ,o_bimc_parity_error_cnt => o_bimc_parity_error_cnt
      ,o_bimc_global_config => o_bimc_global_config
      ,o_bimc_eccpar_debug => o_bimc_eccpar_debug
      ,o_bimc_cmd2 => o_bimc_cmd2
      ,o_bimc_cmd1 => o_bimc_cmd1
      ,o_bimc_cmd0 => o_bimc_cmd0
      ,o_bimc_rxcmd2 => o_bimc_rxcmd2
      ,o_bimc_rxrsp2 => o_bimc_rxrsp2
      ,o_bimc_pollrsp2 => o_bimc_pollrsp2
      ,o_bimc_dbgcmd2 => o_bimc_dbgcmd2
      ,o_im_consumed => o_im_consumed
      ,o_tready_override => o_tready_override
      ,o_regs_sa_ctrl => o_regs_sa_ctrl
      ,o_sa_snapshot_ia_wdata_part0 => o_sa_snapshot_ia_wdata_part0
      ,o_sa_snapshot_ia_wdata_part1 => o_sa_snapshot_ia_wdata_part1
      ,o_sa_snapshot_ia_config => o_sa_snapshot_ia_config
      ,o_sa_count_ia_wdata_part0 => o_sa_count_ia_wdata_part0
      ,o_sa_count_ia_wdata_part1 => o_sa_count_ia_wdata_part1
      ,o_sa_count_ia_config => o_sa_count_ia_config
      ,o_cceip_encrypt_kop_fifo_override => o_cceip_encrypt_kop_fifo_override
      ,o_cceip_validate_kop_fifo_override => o_cceip_validate_kop_fifo_override
      ,o_cddip_decrypt_kop_fifo_override => o_cddip_decrypt_kop_fifo_override
      ,o_sa_global_ctrl => o_sa_global_ctrl
      ,o_sa_ctrl_ia_wdata_part0 => o_sa_ctrl_ia_wdata_part0
      ,o_sa_ctrl_ia_config => o_sa_ctrl_ia_config
      ,o_kdf_test_key_size_config => o_kdf_test_key_size_config
      ,w_load_spare_config => w_load_spare_config
      ,w_load_cceip0_out_ia_wdata_part0 => w_load_cceip0_out_ia_wdata_part0
      ,w_load_cceip0_out_ia_wdata_part1 => w_load_cceip0_out_ia_wdata_part1
      ,w_load_cceip0_out_ia_wdata_part2 => w_load_cceip0_out_ia_wdata_part2
      ,w_load_cceip0_out_ia_config => w_load_cceip0_out_ia_config
      ,w_load_cceip0_out_im_config => w_load_cceip0_out_im_config
      ,w_load_cceip0_out_im_read_done => w_load_cceip0_out_im_read_done
      ,w_load_cceip1_out_ia_wdata_part0 => w_load_cceip1_out_ia_wdata_part0
      ,w_load_cceip1_out_ia_wdata_part1 => w_load_cceip1_out_ia_wdata_part1
      ,w_load_cceip1_out_ia_wdata_part2 => w_load_cceip1_out_ia_wdata_part2
      ,w_load_cceip1_out_ia_config => w_load_cceip1_out_ia_config
      ,w_load_cceip1_out_im_config => w_load_cceip1_out_im_config
      ,w_load_cceip1_out_im_read_done => w_load_cceip1_out_im_read_done
      ,w_load_cceip2_out_ia_wdata_part0 => w_load_cceip2_out_ia_wdata_part0
      ,w_load_cceip2_out_ia_wdata_part1 => w_load_cceip2_out_ia_wdata_part1
      ,w_load_cceip2_out_ia_wdata_part2 => w_load_cceip2_out_ia_wdata_part2
      ,w_load_cceip2_out_ia_config => w_load_cceip2_out_ia_config
      ,w_load_cceip2_out_im_config => w_load_cceip2_out_im_config
      ,w_load_cceip2_out_im_read_done => w_load_cceip2_out_im_read_done
      ,w_load_cceip3_out_ia_wdata_part0 => w_load_cceip3_out_ia_wdata_part0
      ,w_load_cceip3_out_ia_wdata_part1 => w_load_cceip3_out_ia_wdata_part1
      ,w_load_cceip3_out_ia_wdata_part2 => w_load_cceip3_out_ia_wdata_part2
      ,w_load_cceip3_out_ia_config => w_load_cceip3_out_ia_config
      ,w_load_cceip3_out_im_config => w_load_cceip3_out_im_config
      ,w_load_cceip3_out_im_read_done => w_load_cceip3_out_im_read_done
      ,w_load_cddip0_out_ia_wdata_part0 => w_load_cddip0_out_ia_wdata_part0
      ,w_load_cddip0_out_ia_wdata_part1 => w_load_cddip0_out_ia_wdata_part1
      ,w_load_cddip0_out_ia_wdata_part2 => w_load_cddip0_out_ia_wdata_part2
      ,w_load_cddip0_out_ia_config => w_load_cddip0_out_ia_config
      ,w_load_cddip0_out_im_config => w_load_cddip0_out_im_config
      ,w_load_cddip0_out_im_read_done => w_load_cddip0_out_im_read_done
      ,w_load_cddip1_out_ia_wdata_part0 => w_load_cddip1_out_ia_wdata_part0
      ,w_load_cddip1_out_ia_wdata_part1 => w_load_cddip1_out_ia_wdata_part1
      ,w_load_cddip1_out_ia_wdata_part2 => w_load_cddip1_out_ia_wdata_part2
      ,w_load_cddip1_out_ia_config => w_load_cddip1_out_ia_config
      ,w_load_cddip1_out_im_config => w_load_cddip1_out_im_config
      ,w_load_cddip1_out_im_read_done => w_load_cddip1_out_im_read_done
      ,w_load_cddip2_out_ia_wdata_part0 => w_load_cddip2_out_ia_wdata_part0
      ,w_load_cddip2_out_ia_wdata_part1 => w_load_cddip2_out_ia_wdata_part1
      ,w_load_cddip2_out_ia_wdata_part2 => w_load_cddip2_out_ia_wdata_part2
      ,w_load_cddip2_out_ia_config => w_load_cddip2_out_ia_config
      ,w_load_cddip2_out_im_config => w_load_cddip2_out_im_config
      ,w_load_cddip2_out_im_read_done => w_load_cddip2_out_im_read_done
      ,w_load_cddip3_out_ia_wdata_part0 => w_load_cddip3_out_ia_wdata_part0
      ,w_load_cddip3_out_ia_wdata_part1 => w_load_cddip3_out_ia_wdata_part1
      ,w_load_cddip3_out_ia_wdata_part2 => w_load_cddip3_out_ia_wdata_part2
      ,w_load_cddip3_out_ia_config => w_load_cddip3_out_ia_config
      ,w_load_cddip3_out_im_config => w_load_cddip3_out_im_config
      ,w_load_cddip3_out_im_read_done => w_load_cddip3_out_im_read_done
      ,w_load_ckv_ia_wdata_part0 => w_load_ckv_ia_wdata_part0
      ,w_load_ckv_ia_wdata_part1 => w_load_ckv_ia_wdata_part1
      ,w_load_ckv_ia_config => w_load_ckv_ia_config
      ,w_load_kim_ia_wdata_part0 => w_load_kim_ia_wdata_part0
      ,w_load_kim_ia_wdata_part1 => w_load_kim_ia_wdata_part1
      ,w_load_kim_ia_config => w_load_kim_ia_config
      ,w_load_label0_config => w_load_label0_config
      ,w_load_label0_data7 => w_load_label0_data7
      ,w_load_label0_data6 => w_load_label0_data6
      ,w_load_label0_data5 => w_load_label0_data5
      ,w_load_label0_data4 => w_load_label0_data4
      ,w_load_label0_data3 => w_load_label0_data3
      ,w_load_label0_data2 => w_load_label0_data2
      ,w_load_label0_data1 => w_load_label0_data1
      ,w_load_label0_data0 => w_load_label0_data0
      ,w_load_label1_config => w_load_label1_config
      ,w_load_label1_data7 => w_load_label1_data7
      ,w_load_label1_data6 => w_load_label1_data6
      ,w_load_label1_data5 => w_load_label1_data5
      ,w_load_label1_data4 => w_load_label1_data4
      ,w_load_label1_data3 => w_load_label1_data3
      ,w_load_label1_data2 => w_load_label1_data2
      ,w_load_label1_data1 => w_load_label1_data1
      ,w_load_label1_data0 => w_load_label1_data0
      ,w_load_label2_config => w_load_label2_config
      ,w_load_label2_data7 => w_load_label2_data7
      ,w_load_label2_data6 => w_load_label2_data6
      ,w_load_label2_data5 => w_load_label2_data5
      ,w_load_label2_data4 => w_load_label2_data4
      ,w_load_label2_data3 => w_load_label2_data3
      ,w_load_label2_data2 => w_load_label2_data2
      ,w_load_label2_data1 => w_load_label2_data1
      ,w_load_label2_data0 => w_load_label2_data0
      ,w_load_label3_config => w_load_label3_config
      ,w_load_label3_data7 => w_load_label3_data7
      ,w_load_label3_data6 => w_load_label3_data6
      ,w_load_label3_data5 => w_load_label3_data5
      ,w_load_label3_data4 => w_load_label3_data4
      ,w_load_label3_data3 => w_load_label3_data3
      ,w_load_label3_data2 => w_load_label3_data2
      ,w_load_label3_data1 => w_load_label3_data1
      ,w_load_label3_data0 => w_load_label3_data0
      ,w_load_label4_config => w_load_label4_config
      ,w_load_label4_data7 => w_load_label4_data7
      ,w_load_label4_data6 => w_load_label4_data6
      ,w_load_label4_data5 => w_load_label4_data5
      ,w_load_label4_data4 => w_load_label4_data4
      ,w_load_label4_data3 => w_load_label4_data3
      ,w_load_label4_data2 => w_load_label4_data2
      ,w_load_label4_data1 => w_load_label4_data1
      ,w_load_label4_data0 => w_load_label4_data0
      ,w_load_label5_config => w_load_label5_config
      ,w_load_label5_data7 => w_load_label5_data7
      ,w_load_label5_data6 => w_load_label5_data6
      ,w_load_label5_data5 => w_load_label5_data5
      ,w_load_label5_data4 => w_load_label5_data4
      ,w_load_label5_data3 => w_load_label5_data3
      ,w_load_label5_data2 => w_load_label5_data2
      ,w_load_label5_data1 => w_load_label5_data1
      ,w_load_label5_data0 => w_load_label5_data0
      ,w_load_label6_config => w_load_label6_config
      ,w_load_label6_data7 => w_load_label6_data7
      ,w_load_label6_data6 => w_load_label6_data6
      ,w_load_label6_data5 => w_load_label6_data5
      ,w_load_label6_data4 => w_load_label6_data4
      ,w_load_label6_data3 => w_load_label6_data3
      ,w_load_label6_data2 => w_load_label6_data2
      ,w_load_label6_data1 => w_load_label6_data1
      ,w_load_label6_data0 => w_load_label6_data0
      ,w_load_label7_config => w_load_label7_config
      ,w_load_label7_data7 => w_load_label7_data7
      ,w_load_label7_data6 => w_load_label7_data6
      ,w_load_label7_data5 => w_load_label7_data5
      ,w_load_label7_data4 => w_load_label7_data4
      ,w_load_label7_data3 => w_load_label7_data3
      ,w_load_label7_data2 => w_load_label7_data2
      ,w_load_label7_data1 => w_load_label7_data1
      ,w_load_label7_data0 => w_load_label7_data0
      ,w_load_kdf_drbg_ctrl => w_load_kdf_drbg_ctrl
      ,w_load_kdf_drbg_seed_0_state_key_31_0 =>
       w_load_kdf_drbg_seed_0_state_key_31_0
      ,w_load_kdf_drbg_seed_0_state_key_63_32 =>
       w_load_kdf_drbg_seed_0_state_key_63_32
      ,w_load_kdf_drbg_seed_0_state_key_95_64 =>
       w_load_kdf_drbg_seed_0_state_key_95_64
      ,w_load_kdf_drbg_seed_0_state_key_127_96 =>
       w_load_kdf_drbg_seed_0_state_key_127_96
      ,w_load_kdf_drbg_seed_0_state_key_159_128 =>
       w_load_kdf_drbg_seed_0_state_key_159_128
      ,w_load_kdf_drbg_seed_0_state_key_191_160 =>
       w_load_kdf_drbg_seed_0_state_key_191_160
      ,w_load_kdf_drbg_seed_0_state_key_223_192 =>
       w_load_kdf_drbg_seed_0_state_key_223_192
      ,w_load_kdf_drbg_seed_0_state_key_255_224 =>
       w_load_kdf_drbg_seed_0_state_key_255_224
      ,w_load_kdf_drbg_seed_0_state_value_31_0 =>
       w_load_kdf_drbg_seed_0_state_value_31_0
      ,w_load_kdf_drbg_seed_0_state_value_63_32 =>
       w_load_kdf_drbg_seed_0_state_value_63_32
      ,w_load_kdf_drbg_seed_0_state_value_95_64 =>
       w_load_kdf_drbg_seed_0_state_value_95_64
      ,w_load_kdf_drbg_seed_0_state_value_127_96 =>
       w_load_kdf_drbg_seed_0_state_value_127_96
      ,w_load_kdf_drbg_seed_0_reseed_interval_0 =>
       w_load_kdf_drbg_seed_0_reseed_interval_0
      ,w_load_kdf_drbg_seed_0_reseed_interval_1 =>
       w_load_kdf_drbg_seed_0_reseed_interval_1
      ,w_load_kdf_drbg_seed_1_state_key_31_0 =>
       w_load_kdf_drbg_seed_1_state_key_31_0
      ,w_load_kdf_drbg_seed_1_state_key_63_32 =>
       w_load_kdf_drbg_seed_1_state_key_63_32
      ,w_load_kdf_drbg_seed_1_state_key_95_64 =>
       w_load_kdf_drbg_seed_1_state_key_95_64
      ,w_load_kdf_drbg_seed_1_state_key_127_96 =>
       w_load_kdf_drbg_seed_1_state_key_127_96
      ,w_load_kdf_drbg_seed_1_state_key_159_128 =>
       w_load_kdf_drbg_seed_1_state_key_159_128
      ,w_load_kdf_drbg_seed_1_state_key_191_160 =>
       w_load_kdf_drbg_seed_1_state_key_191_160
      ,w_load_kdf_drbg_seed_1_state_key_223_192 =>
       w_load_kdf_drbg_seed_1_state_key_223_192
      ,w_load_kdf_drbg_seed_1_state_key_255_224 =>
       w_load_kdf_drbg_seed_1_state_key_255_224
      ,w_load_kdf_drbg_seed_1_state_value_31_0 =>
       w_load_kdf_drbg_seed_1_state_value_31_0
      ,w_load_kdf_drbg_seed_1_state_value_63_32 =>
       w_load_kdf_drbg_seed_1_state_value_63_32
      ,w_load_kdf_drbg_seed_1_state_value_95_64 =>
       w_load_kdf_drbg_seed_1_state_value_95_64
      ,w_load_kdf_drbg_seed_1_state_value_127_96 =>
       w_load_kdf_drbg_seed_1_state_value_127_96
      ,w_load_kdf_drbg_seed_1_reseed_interval_0 =>
       w_load_kdf_drbg_seed_1_reseed_interval_0
      ,w_load_kdf_drbg_seed_1_reseed_interval_1 =>
       w_load_kdf_drbg_seed_1_reseed_interval_1
      ,w_load_interrupt_status => w_load_interrupt_status
      ,w_load_interrupt_mask => w_load_interrupt_mask
      ,w_load_engine_sticky_status => w_load_engine_sticky_status
      ,w_load_bimc_monitor_mask => w_load_bimc_monitor_mask
      ,w_load_bimc_ecc_uncorrectable_error_cnt =>
       w_load_bimc_ecc_uncorrectable_error_cnt
      ,w_load_bimc_ecc_correctable_error_cnt =>
       w_load_bimc_ecc_correctable_error_cnt
      ,w_load_bimc_parity_error_cnt => w_load_bimc_parity_error_cnt
      ,w_load_bimc_global_config => w_load_bimc_global_config
      ,w_load_bimc_eccpar_debug => w_load_bimc_eccpar_debug
      ,w_load_bimc_cmd2 => w_load_bimc_cmd2
      ,w_load_bimc_cmd1 => w_load_bimc_cmd1
      ,w_load_bimc_cmd0 => w_load_bimc_cmd0
      ,w_load_bimc_rxcmd2 => w_load_bimc_rxcmd2
      ,w_load_bimc_rxrsp2 => w_load_bimc_rxrsp2
      ,w_load_bimc_pollrsp2 => w_load_bimc_pollrsp2
      ,w_load_bimc_dbgcmd2 => w_load_bimc_dbgcmd2
      ,w_load_im_consumed => w_load_im_consumed
      ,w_load_tready_override => w_load_tready_override
      ,w_load_regs_sa_ctrl => w_load_regs_sa_ctrl
      ,w_load_sa_snapshot_ia_wdata_part0 => w_load_sa_snapshot_ia_wdata_part0
      ,w_load_sa_snapshot_ia_wdata_part1 => w_load_sa_snapshot_ia_wdata_part1
      ,w_load_sa_snapshot_ia_config => w_load_sa_snapshot_ia_config
      ,w_load_sa_count_ia_wdata_part0 => w_load_sa_count_ia_wdata_part0
      ,w_load_sa_count_ia_wdata_part1 => w_load_sa_count_ia_wdata_part1
      ,w_load_sa_count_ia_config => w_load_sa_count_ia_config
      ,w_load_cceip_encrypt_kop_fifo_override =>
       w_load_cceip_encrypt_kop_fifo_override
      ,w_load_cceip_validate_kop_fifo_override =>
       w_load_cceip_validate_kop_fifo_override
      ,w_load_cddip_decrypt_kop_fifo_override =>
       w_load_cddip_decrypt_kop_fifo_override
      ,w_load_sa_global_ctrl => w_load_sa_global_ctrl
      ,w_load_sa_ctrl_ia_wdata_part0 => w_load_sa_ctrl_ia_wdata_part0
      ,w_load_sa_ctrl_ia_config => w_load_sa_ctrl_ia_config
      ,w_load_kdf_test_key_size_config => w_load_kdf_test_key_size_config
      ,f32_data => DUMMY4
    ) ;

  process --:o858
  (clk,i_reset_)
  begin
    if (i_reset_ = '0') then
      n_write <= '0' ;
    elsif (clk'event and clk = '1') then
      if (i_sw_init = '1') then
        n_write <= '0' ;
      elsif (i_wr_strb = '1') then
        n_write <= '1' ;
      elsif (o_ack = '1') then
        n_write <= '0' ;
      end if;
    end if ;
  end process ;

  process --:o873
  (**) -- always_comb
  begin
    r32_mux_0_data <= "00000000000000000000000000000000" ;
    r32_mux_1_data <= "00000000000000000000000000000000" ;
    r32_mux_2_data <= "00000000000000000000000000000000" ;
    r32_mux_3_data <= "00000000000000000000000000000000" ;
    r32_mux_4_data <= "00000000000000000000000000000000" ;
    r32_mux_5_data <= "00000000000000000000000000000000" ;
    r32_mux_6_data <= "00000000000000000000000000000000" ;
    r32_mux_7_data <= "00000000000000000000000000000000" ;
    r32_mux_8_data <= "00000000000000000000000000000000" ;

    case ws_read_addr is
      when  "00000000000"  =>
        r32_mux_0_data(15 downto 0) <= i_blkid_revid_config(15 downto 0) ;
        r32_mux_0_data(31 downto 16) <= i_blkid_revid_config(31 downto 16) ;
      when  "00000000100"  =>
        r32_mux_0_data(7 downto 0) <= i_revision_config ;
      when  "00000001000"  =>
        r32_mux_0_data <= i_spare_config ;
      when  "00000001100"  =>
        r32_mux_0_data(0 downto 0) <= i_cceip0_out_ia_capability(0 downto 0) ;
        r32_mux_0_data(1 downto 1) <= i_cceip0_out_ia_capability(1 downto 1) ;
        r32_mux_0_data(2 downto 2) <= i_cceip0_out_ia_capability(2 downto 2) ;
        r32_mux_0_data(3 downto 3) <= i_cceip0_out_ia_capability(3 downto 3) ;
        r32_mux_0_data(4 downto 4) <= i_cceip0_out_ia_capability(4 downto 4) ;
        r32_mux_0_data(5 downto 5) <= i_cceip0_out_ia_capability(5 downto 5) ;
        r32_mux_0_data(6 downto 6) <= i_cceip0_out_ia_capability(6 downto 6) ;
        r32_mux_0_data(7 downto 7) <= i_cceip0_out_ia_capability(7 downto 7) ;
        r32_mux_0_data(8 downto 8) <= i_cceip0_out_ia_capability(8 downto 8) ;
        r32_mux_0_data(9 downto 9) <= i_cceip0_out_ia_capability(9 downto 9) ;
        r32_mux_0_data(13 downto 10) <= i_cceip0_out_ia_capability(13 downto 10)
         ;
        r32_mux_0_data(14 downto 14) <= i_cceip0_out_ia_capability(14 downto 14)
         ;
        r32_mux_0_data(15 downto 15) <= i_cceip0_out_ia_capability(15 downto 15)
         ;
        r32_mux_0_data(31 downto 28) <= i_cceip0_out_ia_capability(19 downto 16)
         ;
      when  "00000010000"  =>
        r32_mux_0_data(8 downto 0) <= i_cceip0_out_ia_status(8 downto 0) ;
        r32_mux_0_data(28 downto 24) <= i_cceip0_out_ia_status(13 downto 9) ;
        r32_mux_0_data(31 downto 29) <= i_cceip0_out_ia_status(16 downto 14) ;
      when  "00000010100"  =>
        r32_mux_0_data(5 downto 0) <= o_cceip0_out_ia_wdata_part0(5 downto 0) ;
        r32_mux_0_data(13 downto 6) <= o_cceip0_out_ia_wdata_part0(13 downto 6)
         ;
        r32_mux_0_data(14 downto 14) <= o_cceip0_out_ia_wdata_part0(14 downto 14
        ) ;
        r32_mux_0_data(22 downto 15) <= o_cceip0_out_ia_wdata_part0(22 downto 15
        ) ;
        r32_mux_0_data(30 downto 23) <= o_cceip0_out_ia_wdata_part0(30 downto 23
        ) ;
        r32_mux_0_data(31 downto 31) <= o_cceip0_out_ia_wdata_part0(31 downto 31
        ) ;
      when  "00000011000"  =>
        r32_mux_0_data <= o_cceip0_out_ia_wdata_part1 ;
      when  "00000011100"  =>
        r32_mux_0_data <= o_cceip0_out_ia_wdata_part2 ;
      when  "00000100000"  =>
        r32_mux_0_data(8 downto 0) <= o_cceip0_out_ia_config(8 downto 0) ;
        r32_mux_0_data(31 downto 28) <= o_cceip0_out_ia_config(12 downto 9) ;
      when  "00000100100"  =>
        r32_mux_0_data(5 downto 0) <= i_cceip0_out_ia_rdata_part0(5 downto 0) ;
        r32_mux_0_data(13 downto 6) <= i_cceip0_out_ia_rdata_part0(13 downto 6)
         ;
        r32_mux_0_data(14 downto 14) <= i_cceip0_out_ia_rdata_part0(14 downto 14
        ) ;
        r32_mux_0_data(22 downto 15) <= i_cceip0_out_ia_rdata_part0(22 downto 15
        ) ;
        r32_mux_0_data(30 downto 23) <= i_cceip0_out_ia_rdata_part0(30 downto 23
        ) ;
        r32_mux_0_data(31 downto 31) <= i_cceip0_out_ia_rdata_part0(31 downto 31
        ) ;
      when  "00000101000"  =>
        r32_mux_0_data <= i_cceip0_out_ia_rdata_part1 ;
      when  "00000101100"  =>
        r32_mux_0_data <= i_cceip0_out_ia_rdata_part2 ;
      when  "00000110000"  =>
        r32_mux_0_data(9 downto 0) <= o_cceip0_out_im_config(9 downto 0) ;
        r32_mux_0_data(31 downto 30) <= o_cceip0_out_im_config(11 downto 10) ;
      when  "00000110100"  =>
        r32_mux_0_data(8 downto 0) <= i_cceip0_out_im_status(8 downto 0) ;
        r32_mux_0_data(29 downto 29) <= i_cceip0_out_im_status(9 downto 9) ;
        r32_mux_0_data(30 downto 30) <= i_cceip0_out_im_status(10 downto 10) ;
        r32_mux_0_data(31 downto 31) <= i_cceip0_out_im_status(11 downto 11) ;
      when  "00000111000"  =>
        r32_mux_0_data(30 downto 30) <= i_cceip0_out_im_read_done(0 downto 0) ;
        r32_mux_0_data(31 downto 31) <= i_cceip0_out_im_read_done(1 downto 1) ;
      when  "00000111100"  =>
        r32_mux_0_data(0 downto 0) <= i_cceip1_out_ia_capability(0 downto 0) ;
        r32_mux_0_data(1 downto 1) <= i_cceip1_out_ia_capability(1 downto 1) ;
        r32_mux_0_data(2 downto 2) <= i_cceip1_out_ia_capability(2 downto 2) ;
        r32_mux_0_data(3 downto 3) <= i_cceip1_out_ia_capability(3 downto 3) ;
        r32_mux_0_data(4 downto 4) <= i_cceip1_out_ia_capability(4 downto 4) ;
        r32_mux_0_data(5 downto 5) <= i_cceip1_out_ia_capability(5 downto 5) ;
        r32_mux_0_data(6 downto 6) <= i_cceip1_out_ia_capability(6 downto 6) ;
        r32_mux_0_data(7 downto 7) <= i_cceip1_out_ia_capability(7 downto 7) ;
        r32_mux_0_data(8 downto 8) <= i_cceip1_out_ia_capability(8 downto 8) ;
        r32_mux_0_data(9 downto 9) <= i_cceip1_out_ia_capability(9 downto 9) ;
        r32_mux_0_data(13 downto 10) <= i_cceip1_out_ia_capability(13 downto 10)
         ;
        r32_mux_0_data(14 downto 14) <= i_cceip1_out_ia_capability(14 downto 14)
         ;
        r32_mux_0_data(15 downto 15) <= i_cceip1_out_ia_capability(15 downto 15)
         ;
        r32_mux_0_data(31 downto 28) <= i_cceip1_out_ia_capability(19 downto 16)
         ;
      when  "00001000000"  =>
        r32_mux_0_data(8 downto 0) <= i_cceip1_out_ia_status(8 downto 0) ;
        r32_mux_0_data(28 downto 24) <= i_cceip1_out_ia_status(13 downto 9) ;
        r32_mux_0_data(31 downto 29) <= i_cceip1_out_ia_status(16 downto 14) ;
      when  "00001000100"  =>
        r32_mux_0_data(5 downto 0) <= o_cceip1_out_ia_wdata_part0(5 downto 0) ;
        r32_mux_0_data(13 downto 6) <= o_cceip1_out_ia_wdata_part0(13 downto 6)
         ;
        r32_mux_0_data(14 downto 14) <= o_cceip1_out_ia_wdata_part0(14 downto 14
        ) ;
        r32_mux_0_data(22 downto 15) <= o_cceip1_out_ia_wdata_part0(22 downto 15
        ) ;
        r32_mux_0_data(30 downto 23) <= o_cceip1_out_ia_wdata_part0(30 downto 23
        ) ;
        r32_mux_0_data(31 downto 31) <= o_cceip1_out_ia_wdata_part0(31 downto 31
        ) ;
      when  "00001001000"  =>
        r32_mux_0_data <= o_cceip1_out_ia_wdata_part1 ;
      when  "00001001100"  =>
        r32_mux_0_data <= o_cceip1_out_ia_wdata_part2 ;
      when  "00001010000"  =>
        r32_mux_0_data(8 downto 0) <= o_cceip1_out_ia_config(8 downto 0) ;
        r32_mux_0_data(31 downto 28) <= o_cceip1_out_ia_config(12 downto 9) ;
      when  "00001010100"  =>
        r32_mux_0_data(5 downto 0) <= i_cceip1_out_ia_rdata_part0(5 downto 0) ;
        r32_mux_0_data(13 downto 6) <= i_cceip1_out_ia_rdata_part0(13 downto 6)
         ;
        r32_mux_0_data(14 downto 14) <= i_cceip1_out_ia_rdata_part0(14 downto 14
        ) ;
        r32_mux_0_data(22 downto 15) <= i_cceip1_out_ia_rdata_part0(22 downto 15
        ) ;
        r32_mux_0_data(30 downto 23) <= i_cceip1_out_ia_rdata_part0(30 downto 23
        ) ;
        r32_mux_0_data(31 downto 31) <= i_cceip1_out_ia_rdata_part0(31 downto 31
        ) ;
      when  "00001011000"  =>
        r32_mux_0_data <= i_cceip1_out_ia_rdata_part1 ;
      when  "00001011100"  =>
        r32_mux_0_data <= i_cceip1_out_ia_rdata_part2 ;
      when  "00001100000"  =>
        r32_mux_0_data(9 downto 0) <= o_cceip1_out_im_config(9 downto 0) ;
        r32_mux_0_data(31 downto 30) <= o_cceip1_out_im_config(11 downto 10) ;
      when  "00001100100"  =>
        r32_mux_0_data(8 downto 0) <= i_cceip1_out_im_status(8 downto 0) ;
        r32_mux_0_data(29 downto 29) <= i_cceip1_out_im_status(9 downto 9) ;
        r32_mux_0_data(30 downto 30) <= i_cceip1_out_im_status(10 downto 10) ;
        r32_mux_0_data(31 downto 31) <= i_cceip1_out_im_status(11 downto 11) ;
      when  "00001101000"  =>
        r32_mux_0_data(30 downto 30) <= i_cceip1_out_im_read_done(0 downto 0) ;
        r32_mux_0_data(31 downto 31) <= i_cceip1_out_im_read_done(1 downto 1) ;
      when  "00001101100"  =>
        r32_mux_0_data(0 downto 0) <= i_cceip2_out_ia_capability(0 downto 0) ;
        r32_mux_0_data(1 downto 1) <= i_cceip2_out_ia_capability(1 downto 1) ;
        r32_mux_0_data(2 downto 2) <= i_cceip2_out_ia_capability(2 downto 2) ;
        r32_mux_0_data(3 downto 3) <= i_cceip2_out_ia_capability(3 downto 3) ;
        r32_mux_0_data(4 downto 4) <= i_cceip2_out_ia_capability(4 downto 4) ;
        r32_mux_0_data(5 downto 5) <= i_cceip2_out_ia_capability(5 downto 5) ;
        r32_mux_0_data(6 downto 6) <= i_cceip2_out_ia_capability(6 downto 6) ;
        r32_mux_0_data(7 downto 7) <= i_cceip2_out_ia_capability(7 downto 7) ;
        r32_mux_0_data(8 downto 8) <= i_cceip2_out_ia_capability(8 downto 8) ;
        r32_mux_0_data(9 downto 9) <= i_cceip2_out_ia_capability(9 downto 9) ;
        r32_mux_0_data(13 downto 10) <= i_cceip2_out_ia_capability(13 downto 10)
         ;
        r32_mux_0_data(14 downto 14) <= i_cceip2_out_ia_capability(14 downto 14)
         ;
        r32_mux_0_data(15 downto 15) <= i_cceip2_out_ia_capability(15 downto 15)
         ;
        r32_mux_0_data(31 downto 28) <= i_cceip2_out_ia_capability(19 downto 16)
         ;
      when  "00001110000"  =>
        r32_mux_0_data(8 downto 0) <= i_cceip2_out_ia_status(8 downto 0) ;
        r32_mux_0_data(28 downto 24) <= i_cceip2_out_ia_status(13 downto 9) ;
        r32_mux_0_data(31 downto 29) <= i_cceip2_out_ia_status(16 downto 14) ;
      when  "00001110100"  =>
        r32_mux_0_data(5 downto 0) <= o_cceip2_out_ia_wdata_part0(5 downto 0) ;
        r32_mux_0_data(13 downto 6) <= o_cceip2_out_ia_wdata_part0(13 downto 6)
         ;
        r32_mux_0_data(14 downto 14) <= o_cceip2_out_ia_wdata_part0(14 downto 14
        ) ;
        r32_mux_0_data(22 downto 15) <= o_cceip2_out_ia_wdata_part0(22 downto 15
        ) ;
        r32_mux_0_data(30 downto 23) <= o_cceip2_out_ia_wdata_part0(30 downto 23
        ) ;
        r32_mux_0_data(31 downto 31) <= o_cceip2_out_ia_wdata_part0(31 downto 31
        ) ;
      when others => null ;
    end case;

    case ws_read_addr is
      when  "00001111000"  =>
        r32_mux_1_data <= o_cceip2_out_ia_wdata_part1 ;
      when  "00001111100"  =>
        r32_mux_1_data <= o_cceip2_out_ia_wdata_part2 ;
      when  "00010000000"  =>
        r32_mux_1_data(8 downto 0) <= o_cceip2_out_ia_config(8 downto 0) ;
        r32_mux_1_data(31 downto 28) <= o_cceip2_out_ia_config(12 downto 9) ;
      when  "00010000100"  =>
        r32_mux_1_data(5 downto 0) <= i_cceip2_out_ia_rdata_part0(5 downto 0) ;
        r32_mux_1_data(13 downto 6) <= i_cceip2_out_ia_rdata_part0(13 downto 6)
         ;
        r32_mux_1_data(14 downto 14) <= i_cceip2_out_ia_rdata_part0(14 downto 14
        ) ;
        r32_mux_1_data(22 downto 15) <= i_cceip2_out_ia_rdata_part0(22 downto 15
        ) ;
        r32_mux_1_data(30 downto 23) <= i_cceip2_out_ia_rdata_part0(30 downto 23
        ) ;
        r32_mux_1_data(31 downto 31) <= i_cceip2_out_ia_rdata_part0(31 downto 31
        ) ;
      when  "00010001000"  =>
        r32_mux_1_data <= i_cceip2_out_ia_rdata_part1 ;
      when  "00010001100"  =>
        r32_mux_1_data <= i_cceip2_out_ia_rdata_part2 ;
      when  "00010010000"  =>
        r32_mux_1_data(9 downto 0) <= o_cceip2_out_im_config(9 downto 0) ;
        r32_mux_1_data(31 downto 30) <= o_cceip2_out_im_config(11 downto 10) ;
      when  "00010010100"  =>
        r32_mux_1_data(8 downto 0) <= i_cceip2_out_im_status(8 downto 0) ;
        r32_mux_1_data(29 downto 29) <= i_cceip2_out_im_status(9 downto 9) ;
        r32_mux_1_data(30 downto 30) <= i_cceip2_out_im_status(10 downto 10) ;
        r32_mux_1_data(31 downto 31) <= i_cceip2_out_im_status(11 downto 11) ;
      when  "00010011000"  =>
        r32_mux_1_data(30 downto 30) <= i_cceip2_out_im_read_done(0 downto 0) ;
        r32_mux_1_data(31 downto 31) <= i_cceip2_out_im_read_done(1 downto 1) ;
      when  "00010011100"  =>
        r32_mux_1_data(0 downto 0) <= i_cceip3_out_ia_capability(0 downto 0) ;
        r32_mux_1_data(1 downto 1) <= i_cceip3_out_ia_capability(1 downto 1) ;
        r32_mux_1_data(2 downto 2) <= i_cceip3_out_ia_capability(2 downto 2) ;
        r32_mux_1_data(3 downto 3) <= i_cceip3_out_ia_capability(3 downto 3) ;
        r32_mux_1_data(4 downto 4) <= i_cceip3_out_ia_capability(4 downto 4) ;
        r32_mux_1_data(5 downto 5) <= i_cceip3_out_ia_capability(5 downto 5) ;
        r32_mux_1_data(6 downto 6) <= i_cceip3_out_ia_capability(6 downto 6) ;
        r32_mux_1_data(7 downto 7) <= i_cceip3_out_ia_capability(7 downto 7) ;
        r32_mux_1_data(8 downto 8) <= i_cceip3_out_ia_capability(8 downto 8) ;
        r32_mux_1_data(9 downto 9) <= i_cceip3_out_ia_capability(9 downto 9) ;
        r32_mux_1_data(13 downto 10) <= i_cceip3_out_ia_capability(13 downto 10)
         ;
        r32_mux_1_data(14 downto 14) <= i_cceip3_out_ia_capability(14 downto 14)
         ;
        r32_mux_1_data(15 downto 15) <= i_cceip3_out_ia_capability(15 downto 15)
         ;
        r32_mux_1_data(31 downto 28) <= i_cceip3_out_ia_capability(19 downto 16)
         ;
      when  "00010100000"  =>
        r32_mux_1_data(8 downto 0) <= i_cceip3_out_ia_status(8 downto 0) ;
        r32_mux_1_data(28 downto 24) <= i_cceip3_out_ia_status(13 downto 9) ;
        r32_mux_1_data(31 downto 29) <= i_cceip3_out_ia_status(16 downto 14) ;
      when  "00010100100"  =>
        r32_mux_1_data(5 downto 0) <= o_cceip3_out_ia_wdata_part0(5 downto 0) ;
        r32_mux_1_data(13 downto 6) <= o_cceip3_out_ia_wdata_part0(13 downto 6)
         ;
        r32_mux_1_data(14 downto 14) <= o_cceip3_out_ia_wdata_part0(14 downto 14
        ) ;
        r32_mux_1_data(22 downto 15) <= o_cceip3_out_ia_wdata_part0(22 downto 15
        ) ;
        r32_mux_1_data(30 downto 23) <= o_cceip3_out_ia_wdata_part0(30 downto 23
        ) ;
        r32_mux_1_data(31 downto 31) <= o_cceip3_out_ia_wdata_part0(31 downto 31
        ) ;
      when  "00010101000"  =>
        r32_mux_1_data <= o_cceip3_out_ia_wdata_part1 ;
      when  "00010101100"  =>
        r32_mux_1_data <= o_cceip3_out_ia_wdata_part2 ;
      when  "00010110000"  =>
        r32_mux_1_data(8 downto 0) <= o_cceip3_out_ia_config(8 downto 0) ;
        r32_mux_1_data(31 downto 28) <= o_cceip3_out_ia_config(12 downto 9) ;
      when  "00010110100"  =>
        r32_mux_1_data(5 downto 0) <= i_cceip3_out_ia_rdata_part0(5 downto 0) ;
        r32_mux_1_data(13 downto 6) <= i_cceip3_out_ia_rdata_part0(13 downto 6)
         ;
        r32_mux_1_data(14 downto 14) <= i_cceip3_out_ia_rdata_part0(14 downto 14
        ) ;
        r32_mux_1_data(22 downto 15) <= i_cceip3_out_ia_rdata_part0(22 downto 15
        ) ;
        r32_mux_1_data(30 downto 23) <= i_cceip3_out_ia_rdata_part0(30 downto 23
        ) ;
        r32_mux_1_data(31 downto 31) <= i_cceip3_out_ia_rdata_part0(31 downto 31
        ) ;
      when  "00010111000"  =>
        r32_mux_1_data <= i_cceip3_out_ia_rdata_part1 ;
      when  "00010111100"  =>
        r32_mux_1_data <= i_cceip3_out_ia_rdata_part2 ;
      when  "00011000000"  =>
        r32_mux_1_data(9 downto 0) <= o_cceip3_out_im_config(9 downto 0) ;
        r32_mux_1_data(31 downto 30) <= o_cceip3_out_im_config(11 downto 10) ;
      when  "00011000100"  =>
        r32_mux_1_data(8 downto 0) <= i_cceip3_out_im_status(8 downto 0) ;
        r32_mux_1_data(29 downto 29) <= i_cceip3_out_im_status(9 downto 9) ;
        r32_mux_1_data(30 downto 30) <= i_cceip3_out_im_status(10 downto 10) ;
        r32_mux_1_data(31 downto 31) <= i_cceip3_out_im_status(11 downto 11) ;
      when  "00011001000"  =>
        r32_mux_1_data(30 downto 30) <= i_cceip3_out_im_read_done(0 downto 0) ;
        r32_mux_1_data(31 downto 31) <= i_cceip3_out_im_read_done(1 downto 1) ;
      when  "00011001100"  =>
        r32_mux_1_data(0 downto 0) <= i_cddip0_out_ia_capability(0 downto 0) ;
        r32_mux_1_data(1 downto 1) <= i_cddip0_out_ia_capability(1 downto 1) ;
        r32_mux_1_data(2 downto 2) <= i_cddip0_out_ia_capability(2 downto 2) ;
        r32_mux_1_data(3 downto 3) <= i_cddip0_out_ia_capability(3 downto 3) ;
        r32_mux_1_data(4 downto 4) <= i_cddip0_out_ia_capability(4 downto 4) ;
        r32_mux_1_data(5 downto 5) <= i_cddip0_out_ia_capability(5 downto 5) ;
        r32_mux_1_data(6 downto 6) <= i_cddip0_out_ia_capability(6 downto 6) ;
        r32_mux_1_data(7 downto 7) <= i_cddip0_out_ia_capability(7 downto 7) ;
        r32_mux_1_data(8 downto 8) <= i_cddip0_out_ia_capability(8 downto 8) ;
        r32_mux_1_data(9 downto 9) <= i_cddip0_out_ia_capability(9 downto 9) ;
        r32_mux_1_data(13 downto 10) <= i_cddip0_out_ia_capability(13 downto 10)
         ;
        r32_mux_1_data(14 downto 14) <= i_cddip0_out_ia_capability(14 downto 14)
         ;
        r32_mux_1_data(15 downto 15) <= i_cddip0_out_ia_capability(15 downto 15)
         ;
        r32_mux_1_data(31 downto 28) <= i_cddip0_out_ia_capability(19 downto 16)
         ;
      when  "00011010000"  =>
        r32_mux_1_data(8 downto 0) <= i_cddip0_out_ia_status(8 downto 0) ;
        r32_mux_1_data(28 downto 24) <= i_cddip0_out_ia_status(13 downto 9) ;
        r32_mux_1_data(31 downto 29) <= i_cddip0_out_ia_status(16 downto 14) ;
      when  "00011010100"  =>
        r32_mux_1_data(5 downto 0) <= o_cddip0_out_ia_wdata_part0(5 downto 0) ;
        r32_mux_1_data(13 downto 6) <= o_cddip0_out_ia_wdata_part0(13 downto 6)
         ;
        r32_mux_1_data(14 downto 14) <= o_cddip0_out_ia_wdata_part0(14 downto 14
        ) ;
        r32_mux_1_data(22 downto 15) <= o_cddip0_out_ia_wdata_part0(22 downto 15
        ) ;
        r32_mux_1_data(30 downto 23) <= o_cddip0_out_ia_wdata_part0(30 downto 23
        ) ;
        r32_mux_1_data(31 downto 31) <= o_cddip0_out_ia_wdata_part0(31 downto 31
        ) ;
      when  "00011011000"  =>
        r32_mux_1_data <= o_cddip0_out_ia_wdata_part1 ;
      when  "00011011100"  =>
        r32_mux_1_data <= o_cddip0_out_ia_wdata_part2 ;
      when  "00011100000"  =>
        r32_mux_1_data(8 downto 0) <= o_cddip0_out_ia_config(8 downto 0) ;
        r32_mux_1_data(31 downto 28) <= o_cddip0_out_ia_config(12 downto 9) ;
      when  "00011100100"  =>
        r32_mux_1_data(5 downto 0) <= i_cddip0_out_ia_rdata_part0(5 downto 0) ;
        r32_mux_1_data(13 downto 6) <= i_cddip0_out_ia_rdata_part0(13 downto 6)
         ;
        r32_mux_1_data(14 downto 14) <= i_cddip0_out_ia_rdata_part0(14 downto 14
        ) ;
        r32_mux_1_data(22 downto 15) <= i_cddip0_out_ia_rdata_part0(22 downto 15
        ) ;
        r32_mux_1_data(30 downto 23) <= i_cddip0_out_ia_rdata_part0(30 downto 23
        ) ;
        r32_mux_1_data(31 downto 31) <= i_cddip0_out_ia_rdata_part0(31 downto 31
        ) ;
      when  "00011101000"  =>
        r32_mux_1_data <= i_cddip0_out_ia_rdata_part1 ;
      when  "00011101100"  =>
        r32_mux_1_data <= i_cddip0_out_ia_rdata_part2 ;
      when others => null ;
    end case;

    case ws_read_addr is
      when  "00011110000"  =>
        r32_mux_2_data(9 downto 0) <= o_cddip0_out_im_config(9 downto 0) ;
        r32_mux_2_data(31 downto 30) <= o_cddip0_out_im_config(11 downto 10) ;
      when  "00011110100"  =>
        r32_mux_2_data(8 downto 0) <= i_cddip0_out_im_status(8 downto 0) ;
        r32_mux_2_data(29 downto 29) <= i_cddip0_out_im_status(9 downto 9) ;
        r32_mux_2_data(30 downto 30) <= i_cddip0_out_im_status(10 downto 10) ;
        r32_mux_2_data(31 downto 31) <= i_cddip0_out_im_status(11 downto 11) ;
      when  "00011111000"  =>
        r32_mux_2_data(30 downto 30) <= i_cddip0_out_im_read_done(0 downto 0) ;
        r32_mux_2_data(31 downto 31) <= i_cddip0_out_im_read_done(1 downto 1) ;
      when  "00011111100"  =>
        r32_mux_2_data(0 downto 0) <= i_cddip1_out_ia_capability(0 downto 0) ;
        r32_mux_2_data(1 downto 1) <= i_cddip1_out_ia_capability(1 downto 1) ;
        r32_mux_2_data(2 downto 2) <= i_cddip1_out_ia_capability(2 downto 2) ;
        r32_mux_2_data(3 downto 3) <= i_cddip1_out_ia_capability(3 downto 3) ;
        r32_mux_2_data(4 downto 4) <= i_cddip1_out_ia_capability(4 downto 4) ;
        r32_mux_2_data(5 downto 5) <= i_cddip1_out_ia_capability(5 downto 5) ;
        r32_mux_2_data(6 downto 6) <= i_cddip1_out_ia_capability(6 downto 6) ;
        r32_mux_2_data(7 downto 7) <= i_cddip1_out_ia_capability(7 downto 7) ;
        r32_mux_2_data(8 downto 8) <= i_cddip1_out_ia_capability(8 downto 8) ;
        r32_mux_2_data(9 downto 9) <= i_cddip1_out_ia_capability(9 downto 9) ;
        r32_mux_2_data(13 downto 10) <= i_cddip1_out_ia_capability(13 downto 10)
         ;
        r32_mux_2_data(14 downto 14) <= i_cddip1_out_ia_capability(14 downto 14)
         ;
        r32_mux_2_data(15 downto 15) <= i_cddip1_out_ia_capability(15 downto 15)
         ;
        r32_mux_2_data(31 downto 28) <= i_cddip1_out_ia_capability(19 downto 16)
         ;
      when  "00100000000"  =>
        r32_mux_2_data(8 downto 0) <= i_cddip1_out_ia_status(8 downto 0) ;
        r32_mux_2_data(28 downto 24) <= i_cddip1_out_ia_status(13 downto 9) ;
        r32_mux_2_data(31 downto 29) <= i_cddip1_out_ia_status(16 downto 14) ;
      when  "00100000100"  =>
        r32_mux_2_data(5 downto 0) <= o_cddip1_out_ia_wdata_part0(5 downto 0) ;
        r32_mux_2_data(13 downto 6) <= o_cddip1_out_ia_wdata_part0(13 downto 6)
         ;
        r32_mux_2_data(14 downto 14) <= o_cddip1_out_ia_wdata_part0(14 downto 14
        ) ;
        r32_mux_2_data(22 downto 15) <= o_cddip1_out_ia_wdata_part0(22 downto 15
        ) ;
        r32_mux_2_data(30 downto 23) <= o_cddip1_out_ia_wdata_part0(30 downto 23
        ) ;
        r32_mux_2_data(31 downto 31) <= o_cddip1_out_ia_wdata_part0(31 downto 31
        ) ;
      when  "00100001000"  =>
        r32_mux_2_data <= o_cddip1_out_ia_wdata_part1 ;
      when  "00100001100"  =>
        r32_mux_2_data <= o_cddip1_out_ia_wdata_part2 ;
      when  "00100010000"  =>
        r32_mux_2_data(8 downto 0) <= o_cddip1_out_ia_config(8 downto 0) ;
        r32_mux_2_data(31 downto 28) <= o_cddip1_out_ia_config(12 downto 9) ;
      when  "00100010100"  =>
        r32_mux_2_data(5 downto 0) <= i_cddip1_out_ia_rdata_part0(5 downto 0) ;
        r32_mux_2_data(13 downto 6) <= i_cddip1_out_ia_rdata_part0(13 downto 6)
         ;
        r32_mux_2_data(14 downto 14) <= i_cddip1_out_ia_rdata_part0(14 downto 14
        ) ;
        r32_mux_2_data(22 downto 15) <= i_cddip1_out_ia_rdata_part0(22 downto 15
        ) ;
        r32_mux_2_data(30 downto 23) <= i_cddip1_out_ia_rdata_part0(30 downto 23
        ) ;
        r32_mux_2_data(31 downto 31) <= i_cddip1_out_ia_rdata_part0(31 downto 31
        ) ;
      when  "00100011000"  =>
        r32_mux_2_data <= i_cddip1_out_ia_rdata_part1 ;
      when  "00100011100"  =>
        r32_mux_2_data <= i_cddip1_out_ia_rdata_part2 ;
      when  "00100100000"  =>
        r32_mux_2_data(9 downto 0) <= o_cddip1_out_im_config(9 downto 0) ;
        r32_mux_2_data(31 downto 30) <= o_cddip1_out_im_config(11 downto 10) ;
      when  "00100100100"  =>
        r32_mux_2_data(8 downto 0) <= i_cddip1_out_im_status(8 downto 0) ;
        r32_mux_2_data(29 downto 29) <= i_cddip1_out_im_status(9 downto 9) ;
        r32_mux_2_data(30 downto 30) <= i_cddip1_out_im_status(10 downto 10) ;
        r32_mux_2_data(31 downto 31) <= i_cddip1_out_im_status(11 downto 11) ;
      when  "00100101000"  =>
        r32_mux_2_data(30 downto 30) <= i_cddip1_out_im_read_done(0 downto 0) ;
        r32_mux_2_data(31 downto 31) <= i_cddip1_out_im_read_done(1 downto 1) ;
      when  "00100101100"  =>
        r32_mux_2_data(0 downto 0) <= i_cddip2_out_ia_capability(0 downto 0) ;
        r32_mux_2_data(1 downto 1) <= i_cddip2_out_ia_capability(1 downto 1) ;
        r32_mux_2_data(2 downto 2) <= i_cddip2_out_ia_capability(2 downto 2) ;
        r32_mux_2_data(3 downto 3) <= i_cddip2_out_ia_capability(3 downto 3) ;
        r32_mux_2_data(4 downto 4) <= i_cddip2_out_ia_capability(4 downto 4) ;
        r32_mux_2_data(5 downto 5) <= i_cddip2_out_ia_capability(5 downto 5) ;
        r32_mux_2_data(6 downto 6) <= i_cddip2_out_ia_capability(6 downto 6) ;
        r32_mux_2_data(7 downto 7) <= i_cddip2_out_ia_capability(7 downto 7) ;
        r32_mux_2_data(8 downto 8) <= i_cddip2_out_ia_capability(8 downto 8) ;
        r32_mux_2_data(9 downto 9) <= i_cddip2_out_ia_capability(9 downto 9) ;
        r32_mux_2_data(13 downto 10) <= i_cddip2_out_ia_capability(13 downto 10)
         ;
        r32_mux_2_data(14 downto 14) <= i_cddip2_out_ia_capability(14 downto 14)
         ;
        r32_mux_2_data(15 downto 15) <= i_cddip2_out_ia_capability(15 downto 15)
         ;
        r32_mux_2_data(31 downto 28) <= i_cddip2_out_ia_capability(19 downto 16)
         ;
      when  "00100110000"  =>
        r32_mux_2_data(8 downto 0) <= i_cddip2_out_ia_status(8 downto 0) ;
        r32_mux_2_data(28 downto 24) <= i_cddip2_out_ia_status(13 downto 9) ;
        r32_mux_2_data(31 downto 29) <= i_cddip2_out_ia_status(16 downto 14) ;
      when  "00100110100"  =>
        r32_mux_2_data(5 downto 0) <= o_cddip2_out_ia_wdata_part0(5 downto 0) ;
        r32_mux_2_data(13 downto 6) <= o_cddip2_out_ia_wdata_part0(13 downto 6)
         ;
        r32_mux_2_data(14 downto 14) <= o_cddip2_out_ia_wdata_part0(14 downto 14
        ) ;
        r32_mux_2_data(22 downto 15) <= o_cddip2_out_ia_wdata_part0(22 downto 15
        ) ;
        r32_mux_2_data(30 downto 23) <= o_cddip2_out_ia_wdata_part0(30 downto 23
        ) ;
        r32_mux_2_data(31 downto 31) <= o_cddip2_out_ia_wdata_part0(31 downto 31
        ) ;
      when  "00100111000"  =>
        r32_mux_2_data <= o_cddip2_out_ia_wdata_part1 ;
      when  "00100111100"  =>
        r32_mux_2_data <= o_cddip2_out_ia_wdata_part2 ;
      when  "00101000000"  =>
        r32_mux_2_data(8 downto 0) <= o_cddip2_out_ia_config(8 downto 0) ;
        r32_mux_2_data(31 downto 28) <= o_cddip2_out_ia_config(12 downto 9) ;
      when  "00101000100"  =>
        r32_mux_2_data(5 downto 0) <= i_cddip2_out_ia_rdata_part0(5 downto 0) ;
        r32_mux_2_data(13 downto 6) <= i_cddip2_out_ia_rdata_part0(13 downto 6)
         ;
        r32_mux_2_data(14 downto 14) <= i_cddip2_out_ia_rdata_part0(14 downto 14
        ) ;
        r32_mux_2_data(22 downto 15) <= i_cddip2_out_ia_rdata_part0(22 downto 15
        ) ;
        r32_mux_2_data(30 downto 23) <= i_cddip2_out_ia_rdata_part0(30 downto 23
        ) ;
        r32_mux_2_data(31 downto 31) <= i_cddip2_out_ia_rdata_part0(31 downto 31
        ) ;
      when  "00101001000"  =>
        r32_mux_2_data <= i_cddip2_out_ia_rdata_part1 ;
      when  "00101001100"  =>
        r32_mux_2_data <= i_cddip2_out_ia_rdata_part2 ;
      when  "00101010000"  =>
        r32_mux_2_data(9 downto 0) <= o_cddip2_out_im_config(9 downto 0) ;
        r32_mux_2_data(31 downto 30) <= o_cddip2_out_im_config(11 downto 10) ;
      when  "00101010100"  =>
        r32_mux_2_data(8 downto 0) <= i_cddip2_out_im_status(8 downto 0) ;
        r32_mux_2_data(29 downto 29) <= i_cddip2_out_im_status(9 downto 9) ;
        r32_mux_2_data(30 downto 30) <= i_cddip2_out_im_status(10 downto 10) ;
        r32_mux_2_data(31 downto 31) <= i_cddip2_out_im_status(11 downto 11) ;
      when  "00101011000"  =>
        r32_mux_2_data(30 downto 30) <= i_cddip2_out_im_read_done(0 downto 0) ;
        r32_mux_2_data(31 downto 31) <= i_cddip2_out_im_read_done(1 downto 1) ;
      when  "00101011100"  =>
        r32_mux_2_data(0 downto 0) <= i_cddip3_out_ia_capability(0 downto 0) ;
        r32_mux_2_data(1 downto 1) <= i_cddip3_out_ia_capability(1 downto 1) ;
        r32_mux_2_data(2 downto 2) <= i_cddip3_out_ia_capability(2 downto 2) ;
        r32_mux_2_data(3 downto 3) <= i_cddip3_out_ia_capability(3 downto 3) ;
        r32_mux_2_data(4 downto 4) <= i_cddip3_out_ia_capability(4 downto 4) ;
        r32_mux_2_data(5 downto 5) <= i_cddip3_out_ia_capability(5 downto 5) ;
        r32_mux_2_data(6 downto 6) <= i_cddip3_out_ia_capability(6 downto 6) ;
        r32_mux_2_data(7 downto 7) <= i_cddip3_out_ia_capability(7 downto 7) ;
        r32_mux_2_data(8 downto 8) <= i_cddip3_out_ia_capability(8 downto 8) ;
        r32_mux_2_data(9 downto 9) <= i_cddip3_out_ia_capability(9 downto 9) ;
        r32_mux_2_data(13 downto 10) <= i_cddip3_out_ia_capability(13 downto 10)
         ;
        r32_mux_2_data(14 downto 14) <= i_cddip3_out_ia_capability(14 downto 14)
         ;
        r32_mux_2_data(15 downto 15) <= i_cddip3_out_ia_capability(15 downto 15)
         ;
        r32_mux_2_data(31 downto 28) <= i_cddip3_out_ia_capability(19 downto 16)
         ;
      when  "00101100000"  =>
        r32_mux_2_data(8 downto 0) <= i_cddip3_out_ia_status(8 downto 0) ;
        r32_mux_2_data(28 downto 24) <= i_cddip3_out_ia_status(13 downto 9) ;
        r32_mux_2_data(31 downto 29) <= i_cddip3_out_ia_status(16 downto 14) ;
      when  "00101100100"  =>
        r32_mux_2_data(5 downto 0) <= o_cddip3_out_ia_wdata_part0(5 downto 0) ;
        r32_mux_2_data(13 downto 6) <= o_cddip3_out_ia_wdata_part0(13 downto 6)
         ;
        r32_mux_2_data(14 downto 14) <= o_cddip3_out_ia_wdata_part0(14 downto 14
        ) ;
        r32_mux_2_data(22 downto 15) <= o_cddip3_out_ia_wdata_part0(22 downto 15
        ) ;
        r32_mux_2_data(30 downto 23) <= o_cddip3_out_ia_wdata_part0(30 downto 23
        ) ;
        r32_mux_2_data(31 downto 31) <= o_cddip3_out_ia_wdata_part0(31 downto 31
        ) ;
      when others => null ;
    end case;

    case ws_read_addr is
      when  "00101101000"  =>
        r32_mux_3_data <= o_cddip3_out_ia_wdata_part1 ;
      when  "00101101100"  =>
        r32_mux_3_data <= o_cddip3_out_ia_wdata_part2 ;
      when  "00101110000"  =>
        r32_mux_3_data(8 downto 0) <= o_cddip3_out_ia_config(8 downto 0) ;
        r32_mux_3_data(31 downto 28) <= o_cddip3_out_ia_config(12 downto 9) ;
      when  "00101110100"  =>
        r32_mux_3_data(5 downto 0) <= i_cddip3_out_ia_rdata_part0(5 downto 0) ;
        r32_mux_3_data(13 downto 6) <= i_cddip3_out_ia_rdata_part0(13 downto 6)
         ;
        r32_mux_3_data(14 downto 14) <= i_cddip3_out_ia_rdata_part0(14 downto 14
        ) ;
        r32_mux_3_data(22 downto 15) <= i_cddip3_out_ia_rdata_part0(22 downto 15
        ) ;
        r32_mux_3_data(30 downto 23) <= i_cddip3_out_ia_rdata_part0(30 downto 23
        ) ;
        r32_mux_3_data(31 downto 31) <= i_cddip3_out_ia_rdata_part0(31 downto 31
        ) ;
      when  "00101111000"  =>
        r32_mux_3_data <= i_cddip3_out_ia_rdata_part1 ;
      when  "00101111100"  =>
        r32_mux_3_data <= i_cddip3_out_ia_rdata_part2 ;
      when  "00110000000"  =>
        r32_mux_3_data(9 downto 0) <= o_cddip3_out_im_config(9 downto 0) ;
        r32_mux_3_data(31 downto 30) <= o_cddip3_out_im_config(11 downto 10) ;
      when  "00110000100"  =>
        r32_mux_3_data(8 downto 0) <= i_cddip3_out_im_status(8 downto 0) ;
        r32_mux_3_data(29 downto 29) <= i_cddip3_out_im_status(9 downto 9) ;
        r32_mux_3_data(30 downto 30) <= i_cddip3_out_im_status(10 downto 10) ;
        r32_mux_3_data(31 downto 31) <= i_cddip3_out_im_status(11 downto 11) ;
      when  "00110001000"  =>
        r32_mux_3_data(30 downto 30) <= i_cddip3_out_im_read_done(0 downto 0) ;
        r32_mux_3_data(31 downto 31) <= i_cddip3_out_im_read_done(1 downto 1) ;
      when  "00110001100"  =>
        r32_mux_3_data(0 downto 0) <= i_ckv_ia_capability(0 downto 0) ;
        r32_mux_3_data(1 downto 1) <= i_ckv_ia_capability(1 downto 1) ;
        r32_mux_3_data(2 downto 2) <= i_ckv_ia_capability(2 downto 2) ;
        r32_mux_3_data(3 downto 3) <= i_ckv_ia_capability(3 downto 3) ;
        r32_mux_3_data(4 downto 4) <= i_ckv_ia_capability(4 downto 4) ;
        r32_mux_3_data(5 downto 5) <= i_ckv_ia_capability(5 downto 5) ;
        r32_mux_3_data(6 downto 6) <= i_ckv_ia_capability(6 downto 6) ;
        r32_mux_3_data(7 downto 7) <= i_ckv_ia_capability(7 downto 7) ;
        r32_mux_3_data(8 downto 8) <= i_ckv_ia_capability(8 downto 8) ;
        r32_mux_3_data(9 downto 9) <= i_ckv_ia_capability(9 downto 9) ;
        r32_mux_3_data(13 downto 10) <= i_ckv_ia_capability(13 downto 10) ;
        r32_mux_3_data(14 downto 14) <= i_ckv_ia_capability(14 downto 14) ;
        r32_mux_3_data(15 downto 15) <= i_ckv_ia_capability(15 downto 15) ;
        r32_mux_3_data(31 downto 28) <= i_ckv_ia_capability(19 downto 16) ;
      when  "00110010000"  =>
        r32_mux_3_data(14 downto 0) <= i_ckv_ia_status(14 downto 0) ;
        r32_mux_3_data(28 downto 24) <= i_ckv_ia_status(19 downto 15) ;
        r32_mux_3_data(31 downto 29) <= i_ckv_ia_status(22 downto 20) ;
      when  "00110010100"  =>
        r32_mux_3_data <= o_ckv_ia_wdata_part0 ;
      when  "00110011000"  =>
        r32_mux_3_data <= o_ckv_ia_wdata_part1 ;
      when  "00110011100"  =>
        r32_mux_3_data(14 downto 0) <= o_ckv_ia_config(14 downto 0) ;
        r32_mux_3_data(31 downto 28) <= o_ckv_ia_config(18 downto 15) ;
      when  "00110100000"  =>
        r32_mux_3_data <= i_ckv_ia_rdata_part0 ;
      when  "00110100100"  =>
        r32_mux_3_data <= i_ckv_ia_rdata_part1 ;
      when  "00110101000"  =>
        r32_mux_3_data(0 downto 0) <= i_kim_ia_capability(0 downto 0) ;
        r32_mux_3_data(1 downto 1) <= i_kim_ia_capability(1 downto 1) ;
        r32_mux_3_data(2 downto 2) <= i_kim_ia_capability(2 downto 2) ;
        r32_mux_3_data(3 downto 3) <= i_kim_ia_capability(3 downto 3) ;
        r32_mux_3_data(4 downto 4) <= i_kim_ia_capability(4 downto 4) ;
        r32_mux_3_data(5 downto 5) <= i_kim_ia_capability(5 downto 5) ;
        r32_mux_3_data(6 downto 6) <= i_kim_ia_capability(6 downto 6) ;
        r32_mux_3_data(7 downto 7) <= i_kim_ia_capability(7 downto 7) ;
        r32_mux_3_data(8 downto 8) <= i_kim_ia_capability(8 downto 8) ;
        r32_mux_3_data(9 downto 9) <= i_kim_ia_capability(9 downto 9) ;
        r32_mux_3_data(13 downto 10) <= i_kim_ia_capability(13 downto 10) ;
        r32_mux_3_data(14 downto 14) <= i_kim_ia_capability(14 downto 14) ;
        r32_mux_3_data(15 downto 15) <= i_kim_ia_capability(15 downto 15) ;
        r32_mux_3_data(31 downto 28) <= i_kim_ia_capability(19 downto 16) ;
      when  "00110101100"  =>
        r32_mux_3_data(13 downto 0) <= i_kim_ia_status(13 downto 0) ;
        r32_mux_3_data(28 downto 24) <= i_kim_ia_status(18 downto 14) ;
        r32_mux_3_data(31 downto 29) <= i_kim_ia_status(21 downto 19) ;
      when  "00110110000"  =>
        r32_mux_3_data(14 downto 0) <= o_kim_ia_wdata_part0(14 downto 0) ;
        r32_mux_3_data(27 downto 26) <= o_kim_ia_wdata_part0(16 downto 15) ;
        r32_mux_3_data(30 downto 28) <= o_kim_ia_wdata_part0(19 downto 17) ;
        r32_mux_3_data(31 downto 31) <= o_kim_ia_wdata_part0(20 downto 20) ;
      when  "00110110100"  =>
        r32_mux_3_data(0 downto 0) <= o_kim_ia_wdata_part1(0 downto 0) ;
        r32_mux_3_data(12 downto 1) <= o_kim_ia_wdata_part1(12 downto 1) ;
        r32_mux_3_data(31 downto 28) <= o_kim_ia_wdata_part1(16 downto 13) ;
      when  "00110111000"  =>
        r32_mux_3_data(13 downto 0) <= o_kim_ia_config(13 downto 0) ;
        r32_mux_3_data(31 downto 28) <= o_kim_ia_config(17 downto 14) ;
      when  "00110111100"  =>
        r32_mux_3_data(14 downto 0) <= i_kim_ia_rdata_part0(14 downto 0) ;
        r32_mux_3_data(27 downto 26) <= i_kim_ia_rdata_part0(16 downto 15) ;
        r32_mux_3_data(30 downto 28) <= i_kim_ia_rdata_part0(19 downto 17) ;
        r32_mux_3_data(31 downto 31) <= i_kim_ia_rdata_part0(20 downto 20) ;
      when  "00111000000"  =>
        r32_mux_3_data(0 downto 0) <= i_kim_ia_rdata_part1(0 downto 0) ;
        r32_mux_3_data(12 downto 1) <= i_kim_ia_rdata_part1(12 downto 1) ;
        r32_mux_3_data(31 downto 28) <= i_kim_ia_rdata_part1(16 downto 13) ;
      when  "00111001000"  =>
        r32_mux_3_data(7 downto 0) <= o_label0_config(7 downto 0) ;
        r32_mux_3_data(8 downto 8) <= o_label0_config(8 downto 8) ;
        r32_mux_3_data(30 downto 25) <= o_label0_config(14 downto 9) ;
        r32_mux_3_data(31 downto 31) <= o_label0_config(15 downto 15) ;
      when  "00111001100"  =>
        r32_mux_3_data <= o_label0_data7 ;
      when  "00111010000"  =>
        r32_mux_3_data <= o_label0_data6 ;
      when  "00111010100"  =>
        r32_mux_3_data <= o_label0_data5 ;
      when  "00111011000"  =>
        r32_mux_3_data <= o_label0_data4 ;
      when  "00111011100"  =>
        r32_mux_3_data <= o_label0_data3 ;
      when  "00111100000"  =>
        r32_mux_3_data <= o_label0_data2 ;
      when others => null ;
    end case;

    case ws_read_addr is
      when  "00111100100"  =>
        r32_mux_4_data <= o_label0_data1 ;
      when  "00111101000"  =>
        r32_mux_4_data <= o_label0_data0 ;
      when  "00111110000"  =>
        r32_mux_4_data(7 downto 0) <= o_label1_config(7 downto 0) ;
        r32_mux_4_data(8 downto 8) <= o_label1_config(8 downto 8) ;
        r32_mux_4_data(30 downto 25) <= o_label1_config(14 downto 9) ;
        r32_mux_4_data(31 downto 31) <= o_label1_config(15 downto 15) ;
      when  "00111110100"  =>
        r32_mux_4_data <= o_label1_data7 ;
      when  "00111111000"  =>
        r32_mux_4_data <= o_label1_data6 ;
      when  "00111111100"  =>
        r32_mux_4_data <= o_label1_data5 ;
      when  "01000000000"  =>
        r32_mux_4_data <= o_label1_data4 ;
      when  "01000000100"  =>
        r32_mux_4_data <= o_label1_data3 ;
      when  "01000001000"  =>
        r32_mux_4_data <= o_label1_data2 ;
      when  "01000001100"  =>
        r32_mux_4_data <= o_label1_data1 ;
      when  "01000010000"  =>
        r32_mux_4_data <= o_label1_data0 ;
      when  "01000011000"  =>
        r32_mux_4_data(7 downto 0) <= o_label2_config(7 downto 0) ;
        r32_mux_4_data(8 downto 8) <= o_label2_config(8 downto 8) ;
        r32_mux_4_data(30 downto 25) <= o_label2_config(14 downto 9) ;
        r32_mux_4_data(31 downto 31) <= o_label2_config(15 downto 15) ;
      when  "01000011100"  =>
        r32_mux_4_data <= o_label2_data7 ;
      when  "01000100000"  =>
        r32_mux_4_data <= o_label2_data6 ;
      when  "01000100100"  =>
        r32_mux_4_data <= o_label2_data5 ;
      when  "01000101000"  =>
        r32_mux_4_data <= o_label2_data4 ;
      when  "01000101100"  =>
        r32_mux_4_data <= o_label2_data3 ;
      when  "01000110000"  =>
        r32_mux_4_data <= o_label2_data2 ;
      when  "01000110100"  =>
        r32_mux_4_data <= o_label2_data1 ;
      when  "01000111000"  =>
        r32_mux_4_data <= o_label2_data0 ;
      when  "01001000000"  =>
        r32_mux_4_data(7 downto 0) <= o_label3_config(7 downto 0) ;
        r32_mux_4_data(8 downto 8) <= o_label3_config(8 downto 8) ;
        r32_mux_4_data(30 downto 25) <= o_label3_config(14 downto 9) ;
        r32_mux_4_data(31 downto 31) <= o_label3_config(15 downto 15) ;
      when  "01001000100"  =>
        r32_mux_4_data <= o_label3_data7 ;
      when  "01001001000"  =>
        r32_mux_4_data <= o_label3_data6 ;
      when  "01001001100"  =>
        r32_mux_4_data <= o_label3_data5 ;
      when  "01001010000"  =>
        r32_mux_4_data <= o_label3_data4 ;
      when  "01001010100"  =>
        r32_mux_4_data <= o_label3_data3 ;
      when  "01001011000"  =>
        r32_mux_4_data <= o_label3_data2 ;
      when  "01001011100"  =>
        r32_mux_4_data <= o_label3_data1 ;
      when  "01001100000"  =>
        r32_mux_4_data <= o_label3_data0 ;
      when  "01001101000"  =>
        r32_mux_4_data(7 downto 0) <= o_label4_config(7 downto 0) ;
        r32_mux_4_data(8 downto 8) <= o_label4_config(8 downto 8) ;
        r32_mux_4_data(30 downto 25) <= o_label4_config(14 downto 9) ;
        r32_mux_4_data(31 downto 31) <= o_label4_config(15 downto 15) ;
      when others => null ;
    end case;

    case ws_read_addr is
      when  "01001101100"  =>
        r32_mux_5_data <= o_label4_data7 ;
      when  "01001110000"  =>
        r32_mux_5_data <= o_label4_data6 ;
      when  "01001110100"  =>
        r32_mux_5_data <= o_label4_data5 ;
      when  "01001111000"  =>
        r32_mux_5_data <= o_label4_data4 ;
      when  "01001111100"  =>
        r32_mux_5_data <= o_label4_data3 ;
      when  "01010000000"  =>
        r32_mux_5_data <= o_label4_data2 ;
      when  "01010000100"  =>
        r32_mux_5_data <= o_label4_data1 ;
      when  "01010001000"  =>
        r32_mux_5_data <= o_label4_data0 ;
      when  "01010010000"  =>
        r32_mux_5_data(7 downto 0) <= o_label5_config(7 downto 0) ;
        r32_mux_5_data(8 downto 8) <= o_label5_config(8 downto 8) ;
        r32_mux_5_data(30 downto 25) <= o_label5_config(14 downto 9) ;
        r32_mux_5_data(31 downto 31) <= o_label5_config(15 downto 15) ;
      when  "01010010100"  =>
        r32_mux_5_data <= o_label5_data7 ;
      when  "01010011000"  =>
        r32_mux_5_data <= o_label5_data6 ;
      when  "01010011100"  =>
        r32_mux_5_data <= o_label5_data5 ;
      when  "01010100000"  =>
        r32_mux_5_data <= o_label5_data4 ;
      when  "01010100100"  =>
        r32_mux_5_data <= o_label5_data3 ;
      when  "01010101000"  =>
        r32_mux_5_data <= o_label5_data2 ;
      when  "01010101100"  =>
        r32_mux_5_data <= o_label5_data1 ;
      when  "01010110000"  =>
        r32_mux_5_data <= o_label5_data0 ;
      when  "01010111000"  =>
        r32_mux_5_data(7 downto 0) <= o_label6_config(7 downto 0) ;
        r32_mux_5_data(8 downto 8) <= o_label6_config(8 downto 8) ;
        r32_mux_5_data(30 downto 25) <= o_label6_config(14 downto 9) ;
        r32_mux_5_data(31 downto 31) <= o_label6_config(15 downto 15) ;
      when  "01010111100"  =>
        r32_mux_5_data <= o_label6_data7 ;
      when  "01011000000"  =>
        r32_mux_5_data <= o_label6_data6 ;
      when  "01011000100"  =>
        r32_mux_5_data <= o_label6_data5 ;
      when  "01011001000"  =>
        r32_mux_5_data <= o_label6_data4 ;
      when  "01011001100"  =>
        r32_mux_5_data <= o_label6_data3 ;
      when  "01011010000"  =>
        r32_mux_5_data <= o_label6_data2 ;
      when  "01011010100"  =>
        r32_mux_5_data <= o_label6_data1 ;
      when  "01011011000"  =>
        r32_mux_5_data <= o_label6_data0 ;
      when  "01011100000"  =>
        r32_mux_5_data(7 downto 0) <= o_label7_config(7 downto 0) ;
        r32_mux_5_data(8 downto 8) <= o_label7_config(8 downto 8) ;
        r32_mux_5_data(30 downto 25) <= o_label7_config(14 downto 9) ;
        r32_mux_5_data(31 downto 31) <= o_label7_config(15 downto 15) ;
      when  "01011100100"  =>
        r32_mux_5_data <= o_label7_data7 ;
      when  "01011101000"  =>
        r32_mux_5_data <= o_label7_data6 ;
      when  "01011101100"  =>
        r32_mux_5_data <= o_label7_data5 ;
      when others => null ;
    end case;

    case ws_read_addr is
      when  "01011110000"  =>
        r32_mux_6_data <= o_label7_data4 ;
      when  "01011110100"  =>
        r32_mux_6_data <= o_label7_data3 ;
      when  "01011111000"  =>
        r32_mux_6_data <= o_label7_data2 ;
      when  "01011111100"  =>
        r32_mux_6_data <= o_label7_data1 ;
      when  "01100000000"  =>
        r32_mux_6_data <= o_label7_data0 ;
      when  "01100001000"  =>
        r32_mux_6_data(1 downto 0) <= i_kdf_drbg_ctrl ;
      when  "01100001100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_key_31_0 ;
      when  "01100010000"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_key_63_32 ;
      when  "01100010100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_key_95_64 ;
      when  "01100011000"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_key_127_96 ;
      when  "01100011100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_key_159_128 ;
      when  "01100100000"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_key_191_160 ;
      when  "01100100100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_key_223_192 ;
      when  "01100101000"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_key_255_224 ;
      when  "01100101100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_value_31_0 ;
      when  "01100110000"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_value_63_32 ;
      when  "01100110100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_value_95_64 ;
      when  "01100111000"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_state_value_127_96 ;
      when  "01100111100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_0_reseed_interval_0 ;
      when  "01101000000"  =>
        r32_mux_6_data(15 downto 0) <= o_kdf_drbg_seed_0_reseed_interval_1 ;
      when  "01101000100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_1_state_key_31_0 ;
      when  "01101001000"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_1_state_key_63_32 ;
      when  "01101001100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_1_state_key_95_64 ;
      when  "01101010000"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_1_state_key_127_96 ;
      when  "01101010100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_1_state_key_159_128 ;
      when  "01101011000"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_1_state_key_191_160 ;
      when  "01101011100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_1_state_key_223_192 ;
      when  "01101100000"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_1_state_key_255_224 ;
      when  "01101100100"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_1_state_value_31_0 ;
      when  "01101101000"  =>
        r32_mux_6_data <= o_kdf_drbg_seed_1_state_value_63_32 ;
      when others => null ;
    end case;

    case ws_read_addr is
      when  "01101101100"  =>
        r32_mux_7_data <= o_kdf_drbg_seed_1_state_value_95_64 ;
      when  "01101110000"  =>
        r32_mux_7_data <= o_kdf_drbg_seed_1_state_value_127_96 ;
      when  "01101110100"  =>
        r32_mux_7_data <= o_kdf_drbg_seed_1_reseed_interval_0 ;
      when  "01101111000"  =>
        r32_mux_7_data(15 downto 0) <= o_kdf_drbg_seed_1_reseed_interval_1 ;
      when  "01101111100"  =>
        r32_mux_7_data(0 downto 0) <= i_interrupt_status(0 downto 0) ;
        r32_mux_7_data(1 downto 1) <= i_interrupt_status(1 downto 1) ;
        r32_mux_7_data(2 downto 2) <= i_interrupt_status(2 downto 2) ;
        r32_mux_7_data(3 downto 3) <= i_interrupt_status(3 downto 3) ;
        r32_mux_7_data(4 downto 4) <= i_interrupt_status(4 downto 4) ;
      when  "01110000000"  =>
        r32_mux_7_data(0 downto 0) <= o_interrupt_mask(0 downto 0) ;
        r32_mux_7_data(1 downto 1) <= o_interrupt_mask(1 downto 1) ;
        r32_mux_7_data(2 downto 2) <= o_interrupt_mask(2 downto 2) ;
        r32_mux_7_data(3 downto 3) <= o_interrupt_mask(3 downto 3) ;
        r32_mux_7_data(4 downto 4) <= o_interrupt_mask(4 downto 4) ;
      when  "01110000100"  =>
        r32_mux_7_data(0 downto 0) <= i_engine_sticky_status(0 downto 0) ;
        r32_mux_7_data(1 downto 1) <= i_engine_sticky_status(1 downto 1) ;
        r32_mux_7_data(2 downto 2) <= i_engine_sticky_status(2 downto 2) ;
        r32_mux_7_data(3 downto 3) <= i_engine_sticky_status(3 downto 3) ;
        r32_mux_7_data(4 downto 4) <= i_engine_sticky_status(4 downto 4) ;
        r32_mux_7_data(5 downto 5) <= i_engine_sticky_status(5 downto 5) ;
        r32_mux_7_data(6 downto 6) <= i_engine_sticky_status(6 downto 6) ;
        r32_mux_7_data(7 downto 7) <= i_engine_sticky_status(7 downto 7) ;
      when  "01110001100"  =>
        r32_mux_7_data(0 downto 0) <= i_bimc_monitor(0 downto 0) ;
        r32_mux_7_data(1 downto 1) <= i_bimc_monitor(1 downto 1) ;
        r32_mux_7_data(2 downto 2) <= i_bimc_monitor(2 downto 2) ;
        r32_mux_7_data(3 downto 3) <= i_bimc_monitor(3 downto 3) ;
        r32_mux_7_data(4 downto 4) <= i_bimc_monitor(4 downto 4) ;
        r32_mux_7_data(5 downto 5) <= i_bimc_monitor(5 downto 5) ;
        r32_mux_7_data(6 downto 6) <= i_bimc_monitor(6 downto 6) ;
      when  "01110010000"  =>
        r32_mux_7_data(0 downto 0) <= o_bimc_monitor_mask(0 downto 0) ;
        r32_mux_7_data(1 downto 1) <= o_bimc_monitor_mask(1 downto 1) ;
        r32_mux_7_data(2 downto 2) <= o_bimc_monitor_mask(2 downto 2) ;
        r32_mux_7_data(3 downto 3) <= o_bimc_monitor_mask(3 downto 3) ;
        r32_mux_7_data(4 downto 4) <= o_bimc_monitor_mask(4 downto 4) ;
        r32_mux_7_data(5 downto 5) <= o_bimc_monitor_mask(5 downto 5) ;
        r32_mux_7_data(6 downto 6) <= o_bimc_monitor_mask(6 downto 6) ;
      when  "01110010100"  =>
        r32_mux_7_data <= i_bimc_ecc_uncorrectable_error_cnt ;
      when  "01110011000"  =>
        r32_mux_7_data <= i_bimc_ecc_correctable_error_cnt ;
      when  "01110011100"  =>
        r32_mux_7_data <= i_bimc_parity_error_cnt ;
      when  "01110100000"  =>
        r32_mux_7_data(0 downto 0) <= i_bimc_global_config(0 downto 0) ;
        r32_mux_7_data(1 downto 1) <= i_bimc_global_config(1 downto 1) ;
        r32_mux_7_data(2 downto 2) <= i_bimc_global_config(2 downto 2) ;
        r32_mux_7_data(3 downto 3) <= i_bimc_global_config(3 downto 3) ;
        r32_mux_7_data(4 downto 4) <= i_bimc_global_config(4 downto 4) ;
        r32_mux_7_data(5 downto 5) <= i_bimc_global_config(5 downto 5) ;
        r32_mux_7_data(31 downto 6) <= i_bimc_global_config(31 downto 6) ;
      when  "01110100100"  =>
        r32_mux_7_data(11 downto 0) <= i_bimc_memid ;
      when  "01110101000"  =>
        r32_mux_7_data(11 downto 0) <= i_bimc_eccpar_debug(11 downto 0) ;
        r32_mux_7_data(15 downto 12) <= i_bimc_eccpar_debug(15 downto 12) ;
        r32_mux_7_data(17 downto 16) <= i_bimc_eccpar_debug(17 downto 16) ;
        r32_mux_7_data(19 downto 18) <= i_bimc_eccpar_debug(19 downto 18) ;
        r32_mux_7_data(21 downto 20) <= i_bimc_eccpar_debug(21 downto 20) ;
        r32_mux_7_data(22 downto 22) <= i_bimc_eccpar_debug(22 downto 22) ;
        r32_mux_7_data(23 downto 23) <= i_bimc_eccpar_debug(23 downto 23) ;
        r32_mux_7_data(27 downto 24) <= i_bimc_eccpar_debug(27 downto 24) ;
        r32_mux_7_data(28 downto 28) <= i_bimc_eccpar_debug(28 downto 28) ;
      when  "01110101100"  =>
        r32_mux_7_data(7 downto 0) <= i_bimc_cmd2(7 downto 0) ;
        r32_mux_7_data(8 downto 8) <= i_bimc_cmd2(8 downto 8) ;
        r32_mux_7_data(9 downto 9) <= i_bimc_cmd2(9 downto 9) ;
        r32_mux_7_data(10 downto 10) <= i_bimc_cmd2(10 downto 10) ;
      when  "01110110000"  =>
        r32_mux_7_data(15 downto 0) <= o_bimc_cmd1(15 downto 0) ;
        r32_mux_7_data(27 downto 16) <= o_bimc_cmd1(27 downto 16) ;
        r32_mux_7_data(31 downto 28) <= o_bimc_cmd1(31 downto 28) ;
      when  "01110110100"  =>
        r32_mux_7_data <= o_bimc_cmd0 ;
      when  "01110111000"  =>
        r32_mux_7_data(7 downto 0) <= i_bimc_rxcmd2(7 downto 0) ;
        r32_mux_7_data(8 downto 8) <= i_bimc_rxcmd2(8 downto 8) ;
        r32_mux_7_data(9 downto 9) <= i_bimc_rxcmd2(9 downto 9) ;
      when  "01110111100"  =>
        r32_mux_7_data(15 downto 0) <= i_bimc_rxcmd1(15 downto 0) ;
        r32_mux_7_data(27 downto 16) <= i_bimc_rxcmd1(27 downto 16) ;
        r32_mux_7_data(31 downto 28) <= i_bimc_rxcmd1(31 downto 28) ;
      when  "01111000000"  =>
        r32_mux_7_data <= i_bimc_rxcmd0 ;
      when  "01111000100"  =>
        r32_mux_7_data(7 downto 0) <= i_bimc_rxrsp2(7 downto 0) ;
        r32_mux_7_data(8 downto 8) <= i_bimc_rxrsp2(8 downto 8) ;
        r32_mux_7_data(9 downto 9) <= i_bimc_rxrsp2(9 downto 9) ;
      when  "01111001000"  =>
        r32_mux_7_data <= i_bimc_rxrsp1 ;
      when  "01111001100"  =>
        r32_mux_7_data <= i_bimc_rxrsp0 ;
      when  "01111010000"  =>
        r32_mux_7_data(7 downto 0) <= i_bimc_pollrsp2(7 downto 0) ;
        r32_mux_7_data(8 downto 8) <= i_bimc_pollrsp2(8 downto 8) ;
        r32_mux_7_data(9 downto 9) <= i_bimc_pollrsp2(9 downto 9) ;
      when  "01111010100"  =>
        r32_mux_7_data <= i_bimc_pollrsp1 ;
      when  "01111011000"  =>
        r32_mux_7_data <= i_bimc_pollrsp0 ;
      when  "01111011100"  =>
        r32_mux_7_data(7 downto 0) <= i_bimc_dbgcmd2(7 downto 0) ;
        r32_mux_7_data(8 downto 8) <= i_bimc_dbgcmd2(8 downto 8) ;
        r32_mux_7_data(9 downto 9) <= i_bimc_dbgcmd2(9 downto 9) ;
      when  "01111100000"  =>
        r32_mux_7_data(15 downto 0) <= i_bimc_dbgcmd1(15 downto 0) ;
        r32_mux_7_data(27 downto 16) <= i_bimc_dbgcmd1(27 downto 16) ;
        r32_mux_7_data(31 downto 28) <= i_bimc_dbgcmd1(31 downto 28) ;
      when  "01111100100"  =>
        r32_mux_7_data <= i_bimc_dbgcmd0 ;
      when others => null ;
    end case;

    case ws_read_addr is
      when  "01111101100"  =>
        r32_mux_8_data(0 downto 0) <= i_im_available(0 downto 0) ;
        r32_mux_8_data(1 downto 1) <= i_im_available(1 downto 1) ;
        r32_mux_8_data(2 downto 2) <= i_im_available(2 downto 2) ;
        r32_mux_8_data(3 downto 3) <= i_im_available(3 downto 3) ;
        r32_mux_8_data(4 downto 4) <= i_im_available(4 downto 4) ;
        r32_mux_8_data(5 downto 5) <= i_im_available(5 downto 5) ;
        r32_mux_8_data(6 downto 6) <= i_im_available(6 downto 6) ;
        r32_mux_8_data(7 downto 7) <= i_im_available(7 downto 7) ;
        r32_mux_8_data(8 downto 8) <= i_im_available(8 downto 8) ;
        r32_mux_8_data(9 downto 9) <= i_im_available(9 downto 9) ;
        r32_mux_8_data(10 downto 10) <= i_im_available(10 downto 10) ;
        r32_mux_8_data(11 downto 11) <= i_im_available(11 downto 11) ;
        r32_mux_8_data(12 downto 12) <= i_im_available(12 downto 12) ;
        r32_mux_8_data(13 downto 13) <= i_im_available(13 downto 13) ;
        r32_mux_8_data(14 downto 14) <= i_im_available(14 downto 14) ;
        r32_mux_8_data(15 downto 15) <= i_im_available(15 downto 15) ;
      when  "01111110000"  =>
        r32_mux_8_data(0 downto 0) <= i_im_consumed(0 downto 0) ;
        r32_mux_8_data(1 downto 1) <= i_im_consumed(1 downto 1) ;
        r32_mux_8_data(2 downto 2) <= i_im_consumed(2 downto 2) ;
        r32_mux_8_data(3 downto 3) <= i_im_consumed(3 downto 3) ;
        r32_mux_8_data(4 downto 4) <= i_im_consumed(4 downto 4) ;
        r32_mux_8_data(5 downto 5) <= i_im_consumed(5 downto 5) ;
        r32_mux_8_data(6 downto 6) <= i_im_consumed(6 downto 6) ;
        r32_mux_8_data(7 downto 7) <= i_im_consumed(7 downto 7) ;
        r32_mux_8_data(8 downto 8) <= i_im_consumed(8 downto 8) ;
        r32_mux_8_data(9 downto 9) <= i_im_consumed(9 downto 9) ;
        r32_mux_8_data(10 downto 10) <= i_im_consumed(10 downto 10) ;
        r32_mux_8_data(11 downto 11) <= i_im_consumed(11 downto 11) ;
        r32_mux_8_data(12 downto 12) <= i_im_consumed(12 downto 12) ;
        r32_mux_8_data(13 downto 13) <= i_im_consumed(13 downto 13) ;
        r32_mux_8_data(14 downto 14) <= i_im_consumed(14 downto 14) ;
        r32_mux_8_data(15 downto 15) <= i_im_consumed(15 downto 15) ;
      when  "01111110100"  =>
        r32_mux_8_data(0 downto 0) <= i_tready_override(0 downto 0) ;
        r32_mux_8_data(1 downto 1) <= i_tready_override(1 downto 1) ;
        r32_mux_8_data(2 downto 2) <= i_tready_override(2 downto 2) ;
        r32_mux_8_data(3 downto 3) <= i_tready_override(3 downto 3) ;
        r32_mux_8_data(4 downto 4) <= i_tready_override(4 downto 4) ;
        r32_mux_8_data(5 downto 5) <= i_tready_override(5 downto 5) ;
        r32_mux_8_data(6 downto 6) <= i_tready_override(6 downto 6) ;
        r32_mux_8_data(7 downto 7) <= i_tready_override(7 downto 7) ;
        r32_mux_8_data(8 downto 8) <= i_tready_override(8 downto 8) ;
      when  "01111111000"  =>
        r32_mux_8_data(0 downto 0) <= i_regs_sa_ctrl(0 downto 0) ;
        r32_mux_8_data(1 downto 1) <= i_regs_sa_ctrl(1 downto 1) ;
        r32_mux_8_data(7 downto 2) <= i_regs_sa_ctrl(7 downto 2) ;
        r32_mux_8_data(12 downto 8) <= i_regs_sa_ctrl(12 downto 8) ;
        r32_mux_8_data(31 downto 13) <= i_regs_sa_ctrl(31 downto 13) ;
      when  "01111111100"  =>
        r32_mux_8_data(0 downto 0) <= i_sa_snapshot_ia_capability(0 downto 0) ;
        r32_mux_8_data(1 downto 1) <= i_sa_snapshot_ia_capability(1 downto 1) ;
        r32_mux_8_data(2 downto 2) <= i_sa_snapshot_ia_capability(2 downto 2) ;
        r32_mux_8_data(3 downto 3) <= i_sa_snapshot_ia_capability(3 downto 3) ;
        r32_mux_8_data(4 downto 4) <= i_sa_snapshot_ia_capability(4 downto 4) ;
        r32_mux_8_data(5 downto 5) <= i_sa_snapshot_ia_capability(5 downto 5) ;
        r32_mux_8_data(6 downto 6) <= i_sa_snapshot_ia_capability(6 downto 6) ;
        r32_mux_8_data(7 downto 7) <= i_sa_snapshot_ia_capability(7 downto 7) ;
        r32_mux_8_data(8 downto 8) <= i_sa_snapshot_ia_capability(8 downto 8) ;
        r32_mux_8_data(9 downto 9) <= i_sa_snapshot_ia_capability(9 downto 9) ;
        r32_mux_8_data(13 downto 10) <= i_sa_snapshot_ia_capability(13 downto 10
        ) ;
        r32_mux_8_data(14 downto 14) <= i_sa_snapshot_ia_capability(14 downto 14
        ) ;
        r32_mux_8_data(15 downto 15) <= i_sa_snapshot_ia_capability(15 downto 15
        ) ;
        r32_mux_8_data(31 downto 28) <= i_sa_snapshot_ia_capability(19 downto 16
        ) ;
      when  "10000000000"  =>
        r32_mux_8_data(4 downto 0) <= i_sa_snapshot_ia_status(4 downto 0) ;
        r32_mux_8_data(28 downto 24) <= i_sa_snapshot_ia_status(9 downto 5) ;
        r32_mux_8_data(31 downto 29) <= i_sa_snapshot_ia_status(12 downto 10) ;
      when  "10000000100"  =>
        r32_mux_8_data(17 downto 0) <= o_sa_snapshot_ia_wdata_part0(17 downto 0)
         ;
        r32_mux_8_data(31 downto 18) <= o_sa_snapshot_ia_wdata_part0(31 downto
         18) ;
      when  "10000001000"  =>
        r32_mux_8_data <= o_sa_snapshot_ia_wdata_part1 ;
      when  "10000001100"  =>
        r32_mux_8_data(4 downto 0) <= o_sa_snapshot_ia_config(4 downto 0) ;
        r32_mux_8_data(31 downto 28) <= o_sa_snapshot_ia_config(8 downto 5) ;
      when  "10000010000"  =>
        r32_mux_8_data(17 downto 0) <= i_sa_snapshot_ia_rdata_part0(17 downto 0)
         ;
        r32_mux_8_data(31 downto 18) <= i_sa_snapshot_ia_rdata_part0(31 downto
         18) ;
      when  "10000010100"  =>
        r32_mux_8_data <= i_sa_snapshot_ia_rdata_part1 ;
      when  "10000011000"  =>
        r32_mux_8_data(0 downto 0) <= i_sa_count_ia_capability(0 downto 0) ;
        r32_mux_8_data(1 downto 1) <= i_sa_count_ia_capability(1 downto 1) ;
        r32_mux_8_data(2 downto 2) <= i_sa_count_ia_capability(2 downto 2) ;
        r32_mux_8_data(3 downto 3) <= i_sa_count_ia_capability(3 downto 3) ;
        r32_mux_8_data(4 downto 4) <= i_sa_count_ia_capability(4 downto 4) ;
        r32_mux_8_data(5 downto 5) <= i_sa_count_ia_capability(5 downto 5) ;
        r32_mux_8_data(6 downto 6) <= i_sa_count_ia_capability(6 downto 6) ;
        r32_mux_8_data(7 downto 7) <= i_sa_count_ia_capability(7 downto 7) ;
        r32_mux_8_data(8 downto 8) <= i_sa_count_ia_capability(8 downto 8) ;
        r32_mux_8_data(9 downto 9) <= i_sa_count_ia_capability(9 downto 9) ;
        r32_mux_8_data(13 downto 10) <= i_sa_count_ia_capability(13 downto 10) ;
        r32_mux_8_data(14 downto 14) <= i_sa_count_ia_capability(14 downto 14) ;
        r32_mux_8_data(15 downto 15) <= i_sa_count_ia_capability(15 downto 15) ;
        r32_mux_8_data(31 downto 28) <= i_sa_count_ia_capability(19 downto 16) ;
      when  "10000011100"  =>
        r32_mux_8_data(4 downto 0) <= i_sa_count_ia_status(4 downto 0) ;
        r32_mux_8_data(28 downto 24) <= i_sa_count_ia_status(9 downto 5) ;
        r32_mux_8_data(31 downto 29) <= i_sa_count_ia_status(12 downto 10) ;
      when  "10000100000"  =>
        r32_mux_8_data(17 downto 0) <= o_sa_count_ia_wdata_part0(17 downto 0) ;
        r32_mux_8_data(31 downto 18) <= o_sa_count_ia_wdata_part0(31 downto 18)
         ;
      when  "10000100100"  =>
        r32_mux_8_data <= o_sa_count_ia_wdata_part1 ;
      when  "10000101000"  =>
        r32_mux_8_data(4 downto 0) <= o_sa_count_ia_config(4 downto 0) ;
        r32_mux_8_data(31 downto 28) <= o_sa_count_ia_config(8 downto 5) ;
      when  "10000101100"  =>
        r32_mux_8_data(17 downto 0) <= i_sa_count_ia_rdata_part0(17 downto 0) ;
        r32_mux_8_data(31 downto 18) <= i_sa_count_ia_rdata_part0(31 downto 18)
         ;
      when  "10000110000"  =>
        r32_mux_8_data <= i_sa_count_ia_rdata_part1 ;
      when  "10000110100"  =>
        r32_mux_8_data(0 downto 0) <= i_idle_components(0 downto 0) ;
        r32_mux_8_data(1 downto 1) <= i_idle_components(1 downto 1) ;
        r32_mux_8_data(2 downto 2) <= i_idle_components(2 downto 2) ;
        r32_mux_8_data(3 downto 3) <= i_idle_components(3 downto 3) ;
        r32_mux_8_data(4 downto 4) <= i_idle_components(4 downto 4) ;
        r32_mux_8_data(5 downto 5) <= i_idle_components(5 downto 5) ;
        r32_mux_8_data(6 downto 6) <= i_idle_components(6 downto 6) ;
        r32_mux_8_data(7 downto 7) <= i_idle_components(7 downto 7) ;
        r32_mux_8_data(8 downto 8) <= i_idle_components(8 downto 8) ;
        r32_mux_8_data(9 downto 9) <= i_idle_components(9 downto 9) ;
        r32_mux_8_data(10 downto 10) <= i_idle_components(10 downto 10) ;
        r32_mux_8_data(11 downto 11) <= i_idle_components(11 downto 11) ;
        r32_mux_8_data(31 downto 12) <= i_idle_components(31 downto 12) ;
      when  "10000111000"  =>
        r32_mux_8_data(0 downto 0) <= o_cceip_encrypt_kop_fifo_override(0 downto
         0) ;
        r32_mux_8_data(1 downto 1) <= o_cceip_encrypt_kop_fifo_override(1 downto
         1) ;
        r32_mux_8_data(2 downto 2) <= o_cceip_encrypt_kop_fifo_override(2 downto
         2) ;
        r32_mux_8_data(3 downto 3) <= o_cceip_encrypt_kop_fifo_override(3 downto
         3) ;
        r32_mux_8_data(4 downto 4) <= o_cceip_encrypt_kop_fifo_override(4 downto
         4) ;
        r32_mux_8_data(5 downto 5) <= o_cceip_encrypt_kop_fifo_override(5 downto
         5) ;
        r32_mux_8_data(6 downto 6) <= o_cceip_encrypt_kop_fifo_override(6 downto
         6) ;
      when  "10000111100"  =>
        r32_mux_8_data(0 downto 0) <= o_cceip_validate_kop_fifo_override(0
         downto 0) ;
        r32_mux_8_data(1 downto 1) <= o_cceip_validate_kop_fifo_override(1
         downto 1) ;
        r32_mux_8_data(2 downto 2) <= o_cceip_validate_kop_fifo_override(2
         downto 2) ;
        r32_mux_8_data(3 downto 3) <= o_cceip_validate_kop_fifo_override(3
         downto 3) ;
        r32_mux_8_data(4 downto 4) <= o_cceip_validate_kop_fifo_override(4
         downto 4) ;
        r32_mux_8_data(5 downto 5) <= o_cceip_validate_kop_fifo_override(5
         downto 5) ;
        r32_mux_8_data(6 downto 6) <= o_cceip_validate_kop_fifo_override(6
         downto 6) ;
      when  "10001000000"  =>
        r32_mux_8_data(0 downto 0) <= o_cddip_decrypt_kop_fifo_override(0 downto
         0) ;
        r32_mux_8_data(1 downto 1) <= o_cddip_decrypt_kop_fifo_override(1 downto
         1) ;
        r32_mux_8_data(2 downto 2) <= o_cddip_decrypt_kop_fifo_override(2 downto
         2) ;
        r32_mux_8_data(3 downto 3) <= o_cddip_decrypt_kop_fifo_override(3 downto
         3) ;
        r32_mux_8_data(4 downto 4) <= o_cddip_decrypt_kop_fifo_override(4 downto
         4) ;
        r32_mux_8_data(5 downto 5) <= o_cddip_decrypt_kop_fifo_override(5 downto
         5) ;
        r32_mux_8_data(6 downto 6) <= o_cddip_decrypt_kop_fifo_override(6 downto
         6) ;
      when  "10001000100"  =>
        r32_mux_8_data(0 downto 0) <= i_sa_global_ctrl(0 downto 0) ;
        r32_mux_8_data(1 downto 1) <= i_sa_global_ctrl(1 downto 1) ;
        r32_mux_8_data(31 downto 2) <= i_sa_global_ctrl(31 downto 2) ;
      when  "10001001000"  =>
        r32_mux_8_data(0 downto 0) <= i_sa_ctrl_ia_capability(0 downto 0) ;
        r32_mux_8_data(1 downto 1) <= i_sa_ctrl_ia_capability(1 downto 1) ;
        r32_mux_8_data(2 downto 2) <= i_sa_ctrl_ia_capability(2 downto 2) ;
        r32_mux_8_data(3 downto 3) <= i_sa_ctrl_ia_capability(3 downto 3) ;
        r32_mux_8_data(4 downto 4) <= i_sa_ctrl_ia_capability(4 downto 4) ;
        r32_mux_8_data(5 downto 5) <= i_sa_ctrl_ia_capability(5 downto 5) ;
        r32_mux_8_data(6 downto 6) <= i_sa_ctrl_ia_capability(6 downto 6) ;
        r32_mux_8_data(7 downto 7) <= i_sa_ctrl_ia_capability(7 downto 7) ;
        r32_mux_8_data(8 downto 8) <= i_sa_ctrl_ia_capability(8 downto 8) ;
        r32_mux_8_data(9 downto 9) <= i_sa_ctrl_ia_capability(9 downto 9) ;
        r32_mux_8_data(13 downto 10) <= i_sa_ctrl_ia_capability(13 downto 10) ;
        r32_mux_8_data(14 downto 14) <= i_sa_ctrl_ia_capability(14 downto 14) ;
        r32_mux_8_data(15 downto 15) <= i_sa_ctrl_ia_capability(15 downto 15) ;
        r32_mux_8_data(31 downto 28) <= i_sa_ctrl_ia_capability(19 downto 16) ;
      when  "10001001100"  =>
        r32_mux_8_data(4 downto 0) <= i_sa_ctrl_ia_status(4 downto 0) ;
        r32_mux_8_data(28 downto 24) <= i_sa_ctrl_ia_status(9 downto 5) ;
        r32_mux_8_data(31 downto 29) <= i_sa_ctrl_ia_status(12 downto 10) ;
      when  "10001010000"  =>
        r32_mux_8_data(4 downto 0) <= o_sa_ctrl_ia_wdata_part0(4 downto 0) ;
        r32_mux_8_data(31 downto 5) <= o_sa_ctrl_ia_wdata_part0(31 downto 5) ;
      when  "10001010100"  =>
        r32_mux_8_data(4 downto 0) <= o_sa_ctrl_ia_config(4 downto 0) ;
        r32_mux_8_data(31 downto 28) <= o_sa_ctrl_ia_config(8 downto 5) ;
      when  "10001011000"  =>
        r32_mux_8_data(4 downto 0) <= i_sa_ctrl_ia_rdata_part0(4 downto 0) ;
        r32_mux_8_data(31 downto 5) <= i_sa_ctrl_ia_rdata_part0(31 downto 5) ;
      when  "10001011100"  =>
        r32_mux_8_data <= o_kdf_test_key_size_config ;
      when others => null ;
    end case;
  end process ;

  process --:o2480
  (clk,i_reset_)
  begin
    if (i_reset_ = '0') then
      f_state <= "000" ;
      f_ack <= '0' ;
      f_err_ack <= '0' ;
      f_prev_do_read <= '0' ;
      o_reg_addr <= "00000000000" ;
      o_reg_written <= '0' ;
      o_reg_read <= '0' ;
      f32_mux_0_data <= "00000000000000000000000000000000" ;
      f32_mux_1_data <= "00000000000000000000000000000000" ;
      f32_mux_2_data <= "00000000000000000000000000000000" ;
      f32_mux_3_data <= "00000000000000000000000000000000" ;
      f32_mux_4_data <= "00000000000000000000000000000000" ;
      f32_mux_5_data <= "00000000000000000000000000000000" ;
      f32_mux_6_data <= "00000000000000000000000000000000" ;
      f32_mux_7_data <= "00000000000000000000000000000000" ;
      f32_mux_8_data <= "00000000000000000000000000000000" ;
    elsif (clk'event and clk = '1') then
      if (i_sw_init = '1') then
        f_state <= "000" ;
        f_ack <= '0' ;
        f_err_ack <= '0' ;
        f_prev_do_read <= '0' ;
        o_reg_addr <= "00000000000" ;
        o_reg_written <= '0' ;
        o_reg_read <= '0' ;
        f32_mux_0_data <= "00000000000000000000000000000000" ;
        f32_mux_1_data <= "00000000000000000000000000000000" ;
        f32_mux_2_data <= "00000000000000000000000000000000" ;
        f32_mux_3_data <= "00000000000000000000000000000000" ;
        f32_mux_4_data <= "00000000000000000000000000000000" ;
        f32_mux_5_data <= "00000000000000000000000000000000" ;
        f32_mux_6_data <= "00000000000000000000000000000000" ;
        f32_mux_7_data <= "00000000000000000000000000000000" ;
        f32_mux_8_data <= "00000000000000000000000000000000" ;
      else
        f_state <= w_next_state ;
        f_ack <= ((w_next_ack and not(i_wr_strb)) and not(i_rd_strb)) ;
        f_err_ack <= w_next_err_ack ;
        f_prev_do_read <= w_do_read ;
        if (((i_wr_strb)='1' or (i_rd_strb)='1')) then
          o_reg_addr <= i_addr ;
        end if;
        o_reg_written <= ((w_do_write and w_32b_aligned) and w_valid_wr_addr) ;
        o_reg_read <= ((w_do_read and w_32b_aligned) and w_valid_rd_addr) ;
        if (w_do_read = '1') then
          f32_mux_0_data <= r32_mux_0_data ;
        end if;
        if (w_do_read = '1') then
          f32_mux_1_data <= r32_mux_1_data ;
        end if;
        if (w_do_read = '1') then
          f32_mux_2_data <= r32_mux_2_data ;
        end if;
        if (w_do_read = '1') then
          f32_mux_3_data <= r32_mux_3_data ;
        end if;
        if (w_do_read = '1') then
          f32_mux_4_data <= r32_mux_4_data ;
        end if;
        if (w_do_read = '1') then
          f32_mux_5_data <= r32_mux_5_data ;
        end if;
        if (w_do_read = '1') then
          f32_mux_6_data <= r32_mux_6_data ;
        end if;
        if (w_do_read = '1') then
          f32_mux_7_data <= r32_mux_7_data ;
        end if;
        if (w_do_read = '1') then
          f32_mux_8_data <= r32_mux_8_data ;
        end if;
      end if;
    end if ;
  end process ;

  process --:o2552
  (clk)
  begin
    if (clk'event and clk = '1') then
      if (i_wr_strb = '1') then
        f32_data <= i_wr_data ;
      end if;
    end if ;
  end process ;
end module;
