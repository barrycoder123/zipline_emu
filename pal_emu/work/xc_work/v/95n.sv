// xc_work/v/95n.sv
// /home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_regs.sv:2516
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module cr_kme_regs_flops(input  clk,input  i_reset_,input  i_sw_init,output reg [31:0] o_spare_config ,output reg [31:0] o_cceip0_out_ia_wdata_part0 ,output reg [31:0] o_cceip0_out_ia_wdata_part1 ,output reg [31:0] o_cceip0_out_ia_wdata_part2 ,output reg [12:0] o_cceip0_out_ia_config ,output reg [11:0] o_cceip0_out_im_config ,output reg [1:0] o_cceip0_out_im_read_done ,output reg [31:0] o_cceip1_out_ia_wdata_part0 ,output reg [31:0] o_cceip1_out_ia_wdata_part1 
,output reg [31:0] o_cceip1_out_ia_wdata_part2 ,output reg [12:0] o_cceip1_out_ia_config ,output reg [11:0] o_cceip1_out_im_config ,output reg [1:0] o_cceip1_out_im_read_done ,output reg [31:0] o_cceip2_out_ia_wdata_part0 ,output reg [31:0] o_cceip2_out_ia_wdata_part1 ,output reg [31:0] o_cceip2_out_ia_wdata_part2 ,output reg [12:0] o_cceip2_out_ia_config ,output reg [11:0] o_cceip2_out_im_config ,output reg [1:0] o_cceip2_out_im_read_done ,output reg [31:0] o_cceip3_out_ia_wdata_part0 ,output reg [31:0] o_cceip3_out_ia_wdata_part1 
,output reg [31:0] o_cceip3_out_ia_wdata_part2 ,output reg [12:0] o_cceip3_out_ia_config ,output reg [11:0] o_cceip3_out_im_config ,output reg [1:0] o_cceip3_out_im_read_done ,output reg [31:0] o_cddip0_out_ia_wdata_part0 ,output reg [31:0] o_cddip0_out_ia_wdata_part1 ,output reg [31:0] o_cddip0_out_ia_wdata_part2 ,output reg [12:0] o_cddip0_out_ia_config ,output reg [11:0] o_cddip0_out_im_config ,output reg [1:0] o_cddip0_out_im_read_done ,output reg [31:0] o_cddip1_out_ia_wdata_part0 ,output reg [31:0] o_cddip1_out_ia_wdata_part1 
,output reg [31:0] o_cddip1_out_ia_wdata_part2 ,output reg [12:0] o_cddip1_out_ia_config ,output reg [11:0] o_cddip1_out_im_config ,output reg [1:0] o_cddip1_out_im_read_done ,output reg [31:0] o_cddip2_out_ia_wdata_part0 ,output reg [31:0] o_cddip2_out_ia_wdata_part1 ,output reg [31:0] o_cddip2_out_ia_wdata_part2 ,output reg [12:0] o_cddip2_out_ia_config ,output reg [11:0] o_cddip2_out_im_config ,output reg [1:0] o_cddip2_out_im_read_done ,output reg [31:0] o_cddip3_out_ia_wdata_part0 ,output reg [31:0] o_cddip3_out_ia_wdata_part1 
,output reg [31:0] o_cddip3_out_ia_wdata_part2 ,output reg [12:0] o_cddip3_out_ia_config ,output reg [11:0] o_cddip3_out_im_config ,output reg [1:0] o_cddip3_out_im_read_done ,output reg [31:0] o_ckv_ia_wdata_part0 ,output reg [31:0] o_ckv_ia_wdata_part1 ,output reg [18:0] o_ckv_ia_config ,output reg [20:0] o_kim_ia_wdata_part0 ,output reg [16:0] o_kim_ia_wdata_part1 ,output reg [17:0] o_kim_ia_config ,output reg [15:0] o_label0_config ,output reg [31:0] o_label0_data7 
,output reg [31:0] o_label0_data6 ,output reg [31:0] o_label0_data5 ,output reg [31:0] o_label0_data4 ,output reg [31:0] o_label0_data3 ,output reg [31:0] o_label0_data2 ,output reg [31:0] o_label0_data1 ,output reg [31:0] o_label0_data0 ,output reg [15:0] o_label1_config ,output reg [31:0] o_label1_data7 ,output reg [31:0] o_label1_data6 ,output reg [31:0] o_label1_data5 ,output reg [31:0] o_label1_data4 
,output reg [31:0] o_label1_data3 ,output reg [31:0] o_label1_data2 ,output reg [31:0] o_label1_data1 ,output reg [31:0] o_label1_data0 ,output reg [15:0] o_label2_config ,output reg [31:0] o_label2_data7 ,output reg [31:0] o_label2_data6 ,output reg [31:0] o_label2_data5 ,output reg [31:0] o_label2_data4 ,output reg [31:0] o_label2_data3 ,output reg [31:0] o_label2_data2 ,output reg [31:0] o_label2_data1 
,output reg [31:0] o_label2_data0 ,output reg [15:0] o_label3_config ,output reg [31:0] o_label3_data7 ,output reg [31:0] o_label3_data6 ,output reg [31:0] o_label3_data5 ,output reg [31:0] o_label3_data4 ,output reg [31:0] o_label3_data3 ,output reg [31:0] o_label3_data2 ,output reg [31:0] o_label3_data1 ,output reg [31:0] o_label3_data0 ,output reg [15:0] o_label4_config ,output reg [31:0] o_label4_data7 
,output reg [31:0] o_label4_data6 ,output reg [31:0] o_label4_data5 ,output reg [31:0] o_label4_data4 ,output reg [31:0] o_label4_data3 ,output reg [31:0] o_label4_data2 ,output reg [31:0] o_label4_data1 ,output reg [31:0] o_label4_data0 ,output reg [15:0] o_label5_config ,output reg [31:0] o_label5_data7 ,output reg [31:0] o_label5_data6 ,output reg [31:0] o_label5_data5 ,output reg [31:0] o_label5_data4 
,output reg [31:0] o_label5_data3 ,output reg [31:0] o_label5_data2 ,output reg [31:0] o_label5_data1 ,output reg [31:0] o_label5_data0 ,output reg [15:0] o_label6_config ,output reg [31:0] o_label6_data7 ,output reg [31:0] o_label6_data6 ,output reg [31:0] o_label6_data5 ,output reg [31:0] o_label6_data4 ,output reg [31:0] o_label6_data3 ,output reg [31:0] o_label6_data2 ,output reg [31:0] o_label6_data1 
,output reg [31:0] o_label6_data0 ,output reg [15:0] o_label7_config ,output reg [31:0] o_label7_data7 ,output reg [31:0] o_label7_data6 ,output reg [31:0] o_label7_data5 ,output reg [31:0] o_label7_data4 ,output reg [31:0] o_label7_data3 ,output reg [31:0] o_label7_data2 ,output reg [31:0] o_label7_data1 ,output reg [31:0] o_label7_data0 ,output reg [1:0] o_kdf_drbg_ctrl ,output reg [31:0] o_kdf_drbg_seed_0_state_key_31_0 
,output reg [31:0] o_kdf_drbg_seed_0_state_key_63_32 ,output reg [31:0] o_kdf_drbg_seed_0_state_key_95_64 ,output reg [31:0] o_kdf_drbg_seed_0_state_key_127_96 ,output reg [31:0] o_kdf_drbg_seed_0_state_key_159_128 ,output reg [31:0] o_kdf_drbg_seed_0_state_key_191_160 ,output reg [31:0] o_kdf_drbg_seed_0_state_key_223_192 ,output reg [31:0] o_kdf_drbg_seed_0_state_key_255_224 ,output reg [31:0] o_kdf_drbg_seed_0_state_value_31_0 ,output reg [31:0] o_kdf_drbg_seed_0_state_value_63_32 ,output reg [31:0] o_kdf_drbg_seed_0_state_value_95_64 ,output reg [31:0] o_kdf_drbg_seed_0_state_value_127_96 ,output reg [31:0] o_kdf_drbg_seed_0_reseed_interval_0 
,output reg [15:0] o_kdf_drbg_seed_0_reseed_interval_1 ,output reg [31:0] o_kdf_drbg_seed_1_state_key_31_0 ,output reg [31:0] o_kdf_drbg_seed_1_state_key_63_32 ,output reg [31:0] o_kdf_drbg_seed_1_state_key_95_64 ,output reg [31:0] o_kdf_drbg_seed_1_state_key_127_96 ,output reg [31:0] o_kdf_drbg_seed_1_state_key_159_128 ,output reg [31:0] o_kdf_drbg_seed_1_state_key_191_160 ,output reg [31:0] o_kdf_drbg_seed_1_state_key_223_192 ,output reg [31:0] o_kdf_drbg_seed_1_state_key_255_224 ,output reg [31:0] o_kdf_drbg_seed_1_state_value_31_0 ,output reg [31:0] o_kdf_drbg_seed_1_state_value_63_32 ,output reg [31:0] o_kdf_drbg_seed_1_state_value_95_64 
,output reg [31:0] o_kdf_drbg_seed_1_state_value_127_96 ,output reg [31:0] o_kdf_drbg_seed_1_reseed_interval_0 ,output reg [15:0] o_kdf_drbg_seed_1_reseed_interval_1 ,output reg [4:0] o_interrupt_status ,output reg [4:0] o_interrupt_mask ,output reg [7:0] o_engine_sticky_status ,output reg [6:0] o_bimc_monitor_mask ,output reg [31:0] o_bimc_ecc_uncorrectable_error_cnt ,output reg [31:0] o_bimc_ecc_correctable_error_cnt ,output reg [31:0] o_bimc_parity_error_cnt ,output reg [31:0] o_bimc_global_config ,output reg [28:0] o_bimc_eccpar_debug 
,output reg [10:0] o_bimc_cmd2 ,output reg [31:0] o_bimc_cmd1 ,output reg [31:0] o_bimc_cmd0 ,output reg [9:0] o_bimc_rxcmd2 ,output reg [9:0] o_bimc_rxrsp2 ,output reg [9:0] o_bimc_pollrsp2 ,output reg [9:0] o_bimc_dbgcmd2 ,output reg [15:0] o_im_consumed ,output reg [8:0] o_tready_override ,output reg [31:0] o_regs_sa_ctrl ,output reg [31:0] o_sa_snapshot_ia_wdata_part0 ,output reg [31:0] o_sa_snapshot_ia_wdata_part1 
,output reg [8:0] o_sa_snapshot_ia_config ,output reg [31:0] o_sa_count_ia_wdata_part0 ,output reg [31:0] o_sa_count_ia_wdata_part1 ,output reg [8:0] o_sa_count_ia_config ,output reg [6:0] o_cceip_encrypt_kop_fifo_override ,output reg [6:0] o_cceip_validate_kop_fifo_override ,output reg [6:0] o_cddip_decrypt_kop_fifo_override ,output reg [31:0] o_sa_global_ctrl ,output reg [31:0] o_sa_ctrl_ia_wdata_part0 ,output reg [8:0] o_sa_ctrl_ia_config ,output reg [31:0] o_kdf_test_key_size_config ,input  w_load_spare_config
,input  w_load_cceip0_out_ia_wdata_part0,input  w_load_cceip0_out_ia_wdata_part1,input  w_load_cceip0_out_ia_wdata_part2,input  w_load_cceip0_out_ia_config,input  w_load_cceip0_out_im_config,input  w_load_cceip0_out_im_read_done,input  w_load_cceip1_out_ia_wdata_part0,input  w_load_cceip1_out_ia_wdata_part1,input  w_load_cceip1_out_ia_wdata_part2,input  w_load_cceip1_out_ia_config,input  w_load_cceip1_out_im_config,input  w_load_cceip1_out_im_read_done
,input  w_load_cceip2_out_ia_wdata_part0,input  w_load_cceip2_out_ia_wdata_part1,input  w_load_cceip2_out_ia_wdata_part2,input  w_load_cceip2_out_ia_config,input  w_load_cceip2_out_im_config,input  w_load_cceip2_out_im_read_done,input  w_load_cceip3_out_ia_wdata_part0,input  w_load_cceip3_out_ia_wdata_part1,input  w_load_cceip3_out_ia_wdata_part2,input  w_load_cceip3_out_ia_config,input  w_load_cceip3_out_im_config,input  w_load_cceip3_out_im_read_done
,input  w_load_cddip0_out_ia_wdata_part0,input  w_load_cddip0_out_ia_wdata_part1,input  w_load_cddip0_out_ia_wdata_part2,input  w_load_cddip0_out_ia_config,input  w_load_cddip0_out_im_config,input  w_load_cddip0_out_im_read_done,input  w_load_cddip1_out_ia_wdata_part0,input  w_load_cddip1_out_ia_wdata_part1,input  w_load_cddip1_out_ia_wdata_part2,input  w_load_cddip1_out_ia_config,input  w_load_cddip1_out_im_config,input  w_load_cddip1_out_im_read_done
,input  w_load_cddip2_out_ia_wdata_part0,input  w_load_cddip2_out_ia_wdata_part1,input  w_load_cddip2_out_ia_wdata_part2,input  w_load_cddip2_out_ia_config,input  w_load_cddip2_out_im_config,input  w_load_cddip2_out_im_read_done,input  w_load_cddip3_out_ia_wdata_part0,input  w_load_cddip3_out_ia_wdata_part1,input  w_load_cddip3_out_ia_wdata_part2,input  w_load_cddip3_out_ia_config,input  w_load_cddip3_out_im_config,input  w_load_cddip3_out_im_read_done
,input  w_load_ckv_ia_wdata_part0,input  w_load_ckv_ia_wdata_part1,input  w_load_ckv_ia_config,input  w_load_kim_ia_wdata_part0,input  w_load_kim_ia_wdata_part1,input  w_load_kim_ia_config,input  w_load_label0_config,input  w_load_label0_data7,input  w_load_label0_data6,input  w_load_label0_data5,input  w_load_label0_data4,input  w_load_label0_data3
,input  w_load_label0_data2,input  w_load_label0_data1,input  w_load_label0_data0,input  w_load_label1_config,input  w_load_label1_data7,input  w_load_label1_data6,input  w_load_label1_data5,input  w_load_label1_data4,input  w_load_label1_data3,input  w_load_label1_data2,input  w_load_label1_data1,input  w_load_label1_data0
,input  w_load_label2_config,input  w_load_label2_data7,input  w_load_label2_data6,input  w_load_label2_data5,input  w_load_label2_data4,input  w_load_label2_data3,input  w_load_label2_data2,input  w_load_label2_data1,input  w_load_label2_data0,input  w_load_label3_config,input  w_load_label3_data7,input  w_load_label3_data6
,input  w_load_label3_data5,input  w_load_label3_data4,input  w_load_label3_data3,input  w_load_label3_data2,input  w_load_label3_data1,input  w_load_label3_data0,input  w_load_label4_config,input  w_load_label4_data7,input  w_load_label4_data6,input  w_load_label4_data5,input  w_load_label4_data4,input  w_load_label4_data3
,input  w_load_label4_data2,input  w_load_label4_data1,input  w_load_label4_data0,input  w_load_label5_config,input  w_load_label5_data7,input  w_load_label5_data6,input  w_load_label5_data5,input  w_load_label5_data4,input  w_load_label5_data3,input  w_load_label5_data2,input  w_load_label5_data1,input  w_load_label5_data0
,input  w_load_label6_config,input  w_load_label6_data7,input  w_load_label6_data6,input  w_load_label6_data5,input  w_load_label6_data4,input  w_load_label6_data3,input  w_load_label6_data2,input  w_load_label6_data1,input  w_load_label6_data0,input  w_load_label7_config,input  w_load_label7_data7,input  w_load_label7_data6
,input  w_load_label7_data5,input  w_load_label7_data4,input  w_load_label7_data3,input  w_load_label7_data2,input  w_load_label7_data1,input  w_load_label7_data0,input  w_load_kdf_drbg_ctrl,input  w_load_kdf_drbg_seed_0_state_key_31_0,input  w_load_kdf_drbg_seed_0_state_key_63_32,input  w_load_kdf_drbg_seed_0_state_key_95_64,input  w_load_kdf_drbg_seed_0_state_key_127_96,input  w_load_kdf_drbg_seed_0_state_key_159_128
,input  w_load_kdf_drbg_seed_0_state_key_191_160,input  w_load_kdf_drbg_seed_0_state_key_223_192,input  w_load_kdf_drbg_seed_0_state_key_255_224,input  w_load_kdf_drbg_seed_0_state_value_31_0,input  w_load_kdf_drbg_seed_0_state_value_63_32,input  w_load_kdf_drbg_seed_0_state_value_95_64,input  w_load_kdf_drbg_seed_0_state_value_127_96,input  w_load_kdf_drbg_seed_0_reseed_interval_0,input  w_load_kdf_drbg_seed_0_reseed_interval_1,input  w_load_kdf_drbg_seed_1_state_key_31_0,input  w_load_kdf_drbg_seed_1_state_key_63_32,input  w_load_kdf_drbg_seed_1_state_key_95_64
,input  w_load_kdf_drbg_seed_1_state_key_127_96,input  w_load_kdf_drbg_seed_1_state_key_159_128,input  w_load_kdf_drbg_seed_1_state_key_191_160,input  w_load_kdf_drbg_seed_1_state_key_223_192,input  w_load_kdf_drbg_seed_1_state_key_255_224,input  w_load_kdf_drbg_seed_1_state_value_31_0,input  w_load_kdf_drbg_seed_1_state_value_63_32,input  w_load_kdf_drbg_seed_1_state_value_95_64,input  w_load_kdf_drbg_seed_1_state_value_127_96,input  w_load_kdf_drbg_seed_1_reseed_interval_0,input  w_load_kdf_drbg_seed_1_reseed_interval_1,input  w_load_interrupt_status
,input  w_load_interrupt_mask,input  w_load_engine_sticky_status,input  w_load_bimc_monitor_mask,input  w_load_bimc_ecc_uncorrectable_error_cnt,input  w_load_bimc_ecc_correctable_error_cnt,input  w_load_bimc_parity_error_cnt,input  w_load_bimc_global_config,input  w_load_bimc_eccpar_debug,input  w_load_bimc_cmd2,input  w_load_bimc_cmd1,input  w_load_bimc_cmd0,input  w_load_bimc_rxcmd2
,input  w_load_bimc_rxrsp2,input  w_load_bimc_pollrsp2,input  w_load_bimc_dbgcmd2,input  w_load_im_consumed,input  w_load_tready_override,input  w_load_regs_sa_ctrl,input  w_load_sa_snapshot_ia_wdata_part0,input  w_load_sa_snapshot_ia_wdata_part1,input  w_load_sa_snapshot_ia_config,input  w_load_sa_count_ia_wdata_part0,input  w_load_sa_count_ia_wdata_part1,input  w_load_sa_count_ia_config
,input  w_load_cceip_encrypt_kop_fifo_override,input  w_load_cceip_validate_kop_fifo_override,input  w_load_cddip_decrypt_kop_fifo_override,input  w_load_sa_global_ctrl,input  w_load_sa_ctrl_ia_wdata_part0,input  w_load_sa_ctrl_ia_config,input  w_load_kdf_test_key_size_config,input  [31:0] f32_data );
wire  [0:31] _zy_simnet_o_spare_config_0_w$ ;
wire  [0:31] _zy_simnet_o_cceip0_out_ia_wdata_part0_1_w$ ;
wire  [0:31] _zy_simnet_o_cceip0_out_ia_wdata_part1_2_w$ ;
wire  [0:31] _zy_simnet_o_cceip0_out_ia_wdata_part2_3_w$ ;
wire  [0:12] _zy_simnet_o_cceip0_out_ia_config_4_w$ ;
wire  [0:11] _zy_simnet_o_cceip0_out_im_config_5_w$ ;
wire  [0:1] _zy_simnet_o_cceip0_out_im_read_done_6_w$ ;
wire  [0:31] _zy_simnet_o_cceip1_out_ia_wdata_part0_7_w$ ;
wire  [0:31] _zy_simnet_o_cceip1_out_ia_wdata_part1_8_w$ ;
wire  [0:31] _zy_simnet_o_cceip1_out_ia_wdata_part2_9_w$ ;
wire  [0:12] _zy_simnet_o_cceip1_out_ia_config_10_w$ ;
wire  [0:11] _zy_simnet_o_cceip1_out_im_config_11_w$ ;
wire  [0:1] _zy_simnet_o_cceip1_out_im_read_done_12_w$ ;
wire  [0:31] _zy_simnet_o_cceip2_out_ia_wdata_part0_13_w$ ;
wire  [0:31] _zy_simnet_o_cceip2_out_ia_wdata_part1_14_w$ ;
wire  [0:31] _zy_simnet_o_cceip2_out_ia_wdata_part2_15_w$ ;
wire  [0:12] _zy_simnet_o_cceip2_out_ia_config_16_w$ ;
wire  [0:11] _zy_simnet_o_cceip2_out_im_config_17_w$ ;
wire  [0:1] _zy_simnet_o_cceip2_out_im_read_done_18_w$ ;
wire  [0:31] _zy_simnet_o_cceip3_out_ia_wdata_part0_19_w$ ;
wire  [0:31] _zy_simnet_o_cceip3_out_ia_wdata_part1_20_w$ ;
wire  [0:31] _zy_simnet_o_cceip3_out_ia_wdata_part2_21_w$ ;
wire  [0:12] _zy_simnet_o_cceip3_out_ia_config_22_w$ ;
wire  [0:11] _zy_simnet_o_cceip3_out_im_config_23_w$ ;
wire  [0:1] _zy_simnet_o_cceip3_out_im_read_done_24_w$ ;
wire  [0:31] _zy_simnet_o_cddip0_out_ia_wdata_part0_25_w$ ;
wire  [0:31] _zy_simnet_o_cddip0_out_ia_wdata_part1_26_w$ ;
wire  [0:31] _zy_simnet_o_cddip0_out_ia_wdata_part2_27_w$ ;
wire  [0:12] _zy_simnet_o_cddip0_out_ia_config_28_w$ ;
wire  [0:11] _zy_simnet_o_cddip0_out_im_config_29_w$ ;
wire  [0:1] _zy_simnet_o_cddip0_out_im_read_done_30_w$ ;
wire  [0:31] _zy_simnet_o_cddip1_out_ia_wdata_part0_31_w$ ;
wire  [0:31] _zy_simnet_o_cddip1_out_ia_wdata_part1_32_w$ ;
wire  [0:31] _zy_simnet_o_cddip1_out_ia_wdata_part2_33_w$ ;
wire  [0:12] _zy_simnet_o_cddip1_out_ia_config_34_w$ ;
wire  [0:11] _zy_simnet_o_cddip1_out_im_config_35_w$ ;
wire  [0:1] _zy_simnet_o_cddip1_out_im_read_done_36_w$ ;
wire  [0:31] _zy_simnet_o_cddip2_out_ia_wdata_part0_37_w$ ;
wire  [0:31] _zy_simnet_o_cddip2_out_ia_wdata_part1_38_w$ ;
wire  [0:31] _zy_simnet_o_cddip2_out_ia_wdata_part2_39_w$ ;
wire  [0:12] _zy_simnet_o_cddip2_out_ia_config_40_w$ ;
wire  [0:11] _zy_simnet_o_cddip2_out_im_config_41_w$ ;
wire  [0:1] _zy_simnet_o_cddip2_out_im_read_done_42_w$ ;
wire  [0:31] _zy_simnet_o_cddip3_out_ia_wdata_part0_43_w$ ;
wire  [0:31] _zy_simnet_o_cddip3_out_ia_wdata_part1_44_w$ ;
wire  [0:31] _zy_simnet_o_cddip3_out_ia_wdata_part2_45_w$ ;
wire  [0:12] _zy_simnet_o_cddip3_out_ia_config_46_w$ ;
wire  [0:11] _zy_simnet_o_cddip3_out_im_config_47_w$ ;
wire  [0:1] _zy_simnet_o_cddip3_out_im_read_done_48_w$ ;
wire  [0:31] _zy_simnet_o_ckv_ia_wdata_part0_49_w$ ;
wire  [0:31] _zy_simnet_o_ckv_ia_wdata_part1_50_w$ ;
wire  [0:18] _zy_simnet_o_ckv_ia_config_51_w$ ;
wire  [0:20] _zy_simnet_o_kim_ia_wdata_part0_52_w$ ;
wire  [0:16] _zy_simnet_o_kim_ia_wdata_part1_53_w$ ;
wire  [0:17] _zy_simnet_o_kim_ia_config_54_w$ ;
wire  [0:15] _zy_simnet_o_label0_config_55_w$ ;
wire  [0:31] _zy_simnet_o_label0_data7_56_w$ ;
wire  [0:31] _zy_simnet_o_label0_data6_57_w$ ;
wire  [0:31] _zy_simnet_o_label0_data5_58_w$ ;
wire  [0:31] _zy_simnet_o_label0_data4_59_w$ ;
wire  [0:31] _zy_simnet_o_label0_data3_60_w$ ;
wire  [0:31] _zy_simnet_o_label0_data2_61_w$ ;
wire  [0:31] _zy_simnet_o_label0_data1_62_w$ ;
wire  [0:31] _zy_simnet_o_label0_data0_63_w$ ;
wire  [0:15] _zy_simnet_o_label1_config_64_w$ ;
wire  [0:31] _zy_simnet_o_label1_data7_65_w$ ;
wire  [0:31] _zy_simnet_o_label1_data6_66_w$ ;
wire  [0:31] _zy_simnet_o_label1_data5_67_w$ ;
wire  [0:31] _zy_simnet_o_label1_data4_68_w$ ;
wire  [0:31] _zy_simnet_o_label1_data3_69_w$ ;
wire  [0:31] _zy_simnet_o_label1_data2_70_w$ ;
wire  [0:31] _zy_simnet_o_label1_data1_71_w$ ;
wire  [0:31] _zy_simnet_o_label1_data0_72_w$ ;
wire  [0:15] _zy_simnet_o_label2_config_73_w$ ;
wire  [0:31] _zy_simnet_o_label2_data7_74_w$ ;
wire  [0:31] _zy_simnet_o_label2_data6_75_w$ ;
wire  [0:31] _zy_simnet_o_label2_data5_76_w$ ;
wire  [0:31] _zy_simnet_o_label2_data4_77_w$ ;
wire  [0:31] _zy_simnet_o_label2_data3_78_w$ ;
wire  [0:31] _zy_simnet_o_label2_data2_79_w$ ;
wire  [0:31] _zy_simnet_o_label2_data1_80_w$ ;
wire  [0:31] _zy_simnet_o_label2_data0_81_w$ ;
wire  [0:15] _zy_simnet_o_label3_config_82_w$ ;
wire  [0:31] _zy_simnet_o_label3_data7_83_w$ ;
wire  [0:31] _zy_simnet_o_label3_data6_84_w$ ;
wire  [0:31] _zy_simnet_o_label3_data5_85_w$ ;
wire  [0:31] _zy_simnet_o_label3_data4_86_w$ ;
wire  [0:31] _zy_simnet_o_label3_data3_87_w$ ;
wire  [0:31] _zy_simnet_o_label3_data2_88_w$ ;
wire  [0:31] _zy_simnet_o_label3_data1_89_w$ ;
wire  [0:31] _zy_simnet_o_label3_data0_90_w$ ;
wire  [0:15] _zy_simnet_o_label4_config_91_w$ ;
wire  [0:31] _zy_simnet_o_label4_data7_92_w$ ;
wire  [0:31] _zy_simnet_o_label4_data6_93_w$ ;
wire  [0:31] _zy_simnet_o_label4_data5_94_w$ ;
wire  [0:31] _zy_simnet_o_label4_data4_95_w$ ;
wire  [0:31] _zy_simnet_o_label4_data3_96_w$ ;
wire  [0:31] _zy_simnet_o_label4_data2_97_w$ ;
wire  [0:31] _zy_simnet_o_label4_data1_98_w$ ;
wire  [0:31] _zy_simnet_o_label4_data0_99_w$ ;
wire  [0:15] _zy_simnet_o_label5_config_100_w$ ;
wire  [0:31] _zy_simnet_o_label5_data7_101_w$ ;
wire  [0:31] _zy_simnet_o_label5_data6_102_w$ ;
wire  [0:31] _zy_simnet_o_label5_data5_103_w$ ;
wire  [0:31] _zy_simnet_o_label5_data4_104_w$ ;
wire  [0:31] _zy_simnet_o_label5_data3_105_w$ ;
wire  [0:31] _zy_simnet_o_label5_data2_106_w$ ;
wire  [0:31] _zy_simnet_o_label5_data1_107_w$ ;
wire  [0:31] _zy_simnet_o_label5_data0_108_w$ ;
wire  [0:15] _zy_simnet_o_label6_config_109_w$ ;
wire  [0:31] _zy_simnet_o_label6_data7_110_w$ ;
wire  [0:31] _zy_simnet_o_label6_data6_111_w$ ;
wire  [0:31] _zy_simnet_o_label6_data5_112_w$ ;
wire  [0:31] _zy_simnet_o_label6_data4_113_w$ ;
wire  [0:31] _zy_simnet_o_label6_data3_114_w$ ;
wire  [0:31] _zy_simnet_o_label6_data2_115_w$ ;
wire  [0:31] _zy_simnet_o_label6_data1_116_w$ ;
wire  [0:31] _zy_simnet_o_label6_data0_117_w$ ;
wire  [0:15] _zy_simnet_o_label7_config_118_w$ ;
wire  [0:31] _zy_simnet_o_label7_data7_119_w$ ;
wire  [0:31] _zy_simnet_o_label7_data6_120_w$ ;
wire  [0:31] _zy_simnet_o_label7_data5_121_w$ ;
wire  [0:31] _zy_simnet_o_label7_data4_122_w$ ;
wire  [0:31] _zy_simnet_o_label7_data3_123_w$ ;
wire  [0:31] _zy_simnet_o_label7_data2_124_w$ ;
wire  [0:31] _zy_simnet_o_label7_data1_125_w$ ;
wire  [0:31] _zy_simnet_o_label7_data0_126_w$ ;
wire  [0:1] _zy_simnet_o_kdf_drbg_ctrl_127_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_31_0_128_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_63_32_129_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_95_64_130_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_127_96_131_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_159_128_132_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_191_160_133_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_223_192_134_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_255_224_135_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_31_0_136_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_63_32_137_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_95_64_138_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_127_96_139_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_reseed_interval_0_140_w$ ;
wire  [0:15] _zy_simnet_o_kdf_drbg_seed_0_reseed_interval_1_141_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_31_0_142_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_63_32_143_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_95_64_144_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_127_96_145_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_159_128_146_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_191_160_147_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_223_192_148_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_255_224_149_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_31_0_150_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_63_32_151_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_95_64_152_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_127_96_153_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_reseed_interval_0_154_w$ ;
wire  [0:15] _zy_simnet_o_kdf_drbg_seed_1_reseed_interval_1_155_w$ ;
wire  [0:4] _zy_simnet_o_interrupt_status_156_w$ ;
wire  [0:4] _zy_simnet_o_interrupt_mask_157_w$ ;
wire  [0:7] _zy_simnet_o_engine_sticky_status_158_w$ ;
wire  [0:6] _zy_simnet_o_bimc_monitor_mask_159_w$ ;
wire  [0:31] _zy_simnet_o_bimc_ecc_uncorrectable_error_cnt_160_w$ ;
wire  [0:31] _zy_simnet_o_bimc_ecc_correctable_error_cnt_161_w$ ;
wire  [0:31] _zy_simnet_o_bimc_parity_error_cnt_162_w$ ;
wire  [0:31] _zy_simnet_o_bimc_global_config_163_w$ ;
wire  [0:28] _zy_simnet_o_bimc_eccpar_debug_164_w$ ;
wire  [0:10] _zy_simnet_o_bimc_cmd2_165_w$ ;
wire  [0:31] _zy_simnet_o_bimc_cmd1_166_w$ ;
wire  [0:31] _zy_simnet_o_bimc_cmd0_167_w$ ;
wire  [0:9] _zy_simnet_o_bimc_rxcmd2_168_w$ ;
wire  [0:9] _zy_simnet_o_bimc_rxrsp2_169_w$ ;
wire  [0:9] _zy_simnet_o_bimc_pollrsp2_170_w$ ;
wire  [0:9] _zy_simnet_o_bimc_dbgcmd2_171_w$ ;
wire  [0:15] _zy_simnet_o_im_consumed_172_w$ ;
wire  [0:8] _zy_simnet_o_tready_override_173_w$ ;
wire  [0:31] _zy_simnet_o_regs_sa_ctrl_174_w$ ;
wire  [0:31] _zy_simnet_o_sa_snapshot_ia_wdata_part0_175_w$ ;
wire  [0:31] _zy_simnet_o_sa_snapshot_ia_wdata_part1_176_w$ ;
wire  [0:8] _zy_simnet_o_sa_snapshot_ia_config_177_w$ ;
wire  [0:31] _zy_simnet_o_sa_count_ia_wdata_part0_178_w$ ;
wire  [0:31] _zy_simnet_o_sa_count_ia_wdata_part1_179_w$ ;
wire  [0:8] _zy_simnet_o_sa_count_ia_config_180_w$ ;
wire  [0:6] _zy_simnet_o_cceip_encrypt_kop_fifo_override_181_w$ ;
wire  [0:6] _zy_simnet_o_cceip_validate_kop_fifo_override_182_w$ ;
wire  [0:6] _zy_simnet_o_cddip_decrypt_kop_fifo_override_183_w$ ;
wire  [0:31] _zy_simnet_o_sa_global_ctrl_184_w$ ;
wire  [0:31] _zy_simnet_o_sa_ctrl_ia_wdata_part0_185_w$ ;
wire  [0:8] _zy_simnet_o_sa_ctrl_ia_config_186_w$ ;
wire  [0:31] _zy_simnet_o_kdf_test_key_size_config_187_w$ ;
assign  _zy_simnet_o_spare_config_0_w$ = o_spare_config;
assign  _zy_simnet_o_cceip0_out_ia_wdata_part0_1_w$ = o_cceip0_out_ia_wdata_part0;
assign  _zy_simnet_o_cceip0_out_ia_wdata_part1_2_w$ = o_cceip0_out_ia_wdata_part1;
assign  _zy_simnet_o_cceip0_out_ia_wdata_part2_3_w$ = o_cceip0_out_ia_wdata_part2;
assign  _zy_simnet_o_cceip0_out_ia_config_4_w$ = o_cceip0_out_ia_config;
assign  _zy_simnet_o_cceip0_out_im_config_5_w$ = o_cceip0_out_im_config;
assign  _zy_simnet_o_cceip0_out_im_read_done_6_w$ = o_cceip0_out_im_read_done;
assign  _zy_simnet_o_cceip1_out_ia_wdata_part0_7_w$ = o_cceip1_out_ia_wdata_part0;
assign  _zy_simnet_o_cceip1_out_ia_wdata_part1_8_w$ = o_cceip1_out_ia_wdata_part1;
assign  _zy_simnet_o_cceip1_out_ia_wdata_part2_9_w$ = o_cceip1_out_ia_wdata_part2;
assign  _zy_simnet_o_cceip1_out_ia_config_10_w$ = o_cceip1_out_ia_config;
assign  _zy_simnet_o_cceip1_out_im_config_11_w$ = o_cceip1_out_im_config;
assign  _zy_simnet_o_cceip1_out_im_read_done_12_w$ = o_cceip1_out_im_read_done;
assign  _zy_simnet_o_cceip2_out_ia_wdata_part0_13_w$ = o_cceip2_out_ia_wdata_part0;
assign  _zy_simnet_o_cceip2_out_ia_wdata_part1_14_w$ = o_cceip2_out_ia_wdata_part1;
assign  _zy_simnet_o_cceip2_out_ia_wdata_part2_15_w$ = o_cceip2_out_ia_wdata_part2;
assign  _zy_simnet_o_cceip2_out_ia_config_16_w$ = o_cceip2_out_ia_config;
assign  _zy_simnet_o_cceip2_out_im_config_17_w$ = o_cceip2_out_im_config;
assign  _zy_simnet_o_cceip2_out_im_read_done_18_w$ = o_cceip2_out_im_read_done;
assign  _zy_simnet_o_cceip3_out_ia_wdata_part0_19_w$ = o_cceip3_out_ia_wdata_part0;
assign  _zy_simnet_o_cceip3_out_ia_wdata_part1_20_w$ = o_cceip3_out_ia_wdata_part1;
assign  _zy_simnet_o_cceip3_out_ia_wdata_part2_21_w$ = o_cceip3_out_ia_wdata_part2;
assign  _zy_simnet_o_cceip3_out_ia_config_22_w$ = o_cceip3_out_ia_config;
assign  _zy_simnet_o_cceip3_out_im_config_23_w$ = o_cceip3_out_im_config;
assign  _zy_simnet_o_cceip3_out_im_read_done_24_w$ = o_cceip3_out_im_read_done;
assign  _zy_simnet_o_cddip0_out_ia_wdata_part0_25_w$ = o_cddip0_out_ia_wdata_part0;
assign  _zy_simnet_o_cddip0_out_ia_wdata_part1_26_w$ = o_cddip0_out_ia_wdata_part1;
assign  _zy_simnet_o_cddip0_out_ia_wdata_part2_27_w$ = o_cddip0_out_ia_wdata_part2;
assign  _zy_simnet_o_cddip0_out_ia_config_28_w$ = o_cddip0_out_ia_config;
assign  _zy_simnet_o_cddip0_out_im_config_29_w$ = o_cddip0_out_im_config;
assign  _zy_simnet_o_cddip0_out_im_read_done_30_w$ = o_cddip0_out_im_read_done;
assign  _zy_simnet_o_cddip1_out_ia_wdata_part0_31_w$ = o_cddip1_out_ia_wdata_part0;
assign  _zy_simnet_o_cddip1_out_ia_wdata_part1_32_w$ = o_cddip1_out_ia_wdata_part1;
assign  _zy_simnet_o_cddip1_out_ia_wdata_part2_33_w$ = o_cddip1_out_ia_wdata_part2;
assign  _zy_simnet_o_cddip1_out_ia_config_34_w$ = o_cddip1_out_ia_config;
assign  _zy_simnet_o_cddip1_out_im_config_35_w$ = o_cddip1_out_im_config;
assign  _zy_simnet_o_cddip1_out_im_read_done_36_w$ = o_cddip1_out_im_read_done;
assign  _zy_simnet_o_cddip2_out_ia_wdata_part0_37_w$ = o_cddip2_out_ia_wdata_part0;
assign  _zy_simnet_o_cddip2_out_ia_wdata_part1_38_w$ = o_cddip2_out_ia_wdata_part1;
assign  _zy_simnet_o_cddip2_out_ia_wdata_part2_39_w$ = o_cddip2_out_ia_wdata_part2;
assign  _zy_simnet_o_cddip2_out_ia_config_40_w$ = o_cddip2_out_ia_config;
assign  _zy_simnet_o_cddip2_out_im_config_41_w$ = o_cddip2_out_im_config;
assign  _zy_simnet_o_cddip2_out_im_read_done_42_w$ = o_cddip2_out_im_read_done;
assign  _zy_simnet_o_cddip3_out_ia_wdata_part0_43_w$ = o_cddip3_out_ia_wdata_part0;
assign  _zy_simnet_o_cddip3_out_ia_wdata_part1_44_w$ = o_cddip3_out_ia_wdata_part1;
assign  _zy_simnet_o_cddip3_out_ia_wdata_part2_45_w$ = o_cddip3_out_ia_wdata_part2;
assign  _zy_simnet_o_cddip3_out_ia_config_46_w$ = o_cddip3_out_ia_config;
assign  _zy_simnet_o_cddip3_out_im_config_47_w$ = o_cddip3_out_im_config;
assign  _zy_simnet_o_cddip3_out_im_read_done_48_w$ = o_cddip3_out_im_read_done;
assign  _zy_simnet_o_ckv_ia_wdata_part0_49_w$ = o_ckv_ia_wdata_part0;
assign  _zy_simnet_o_ckv_ia_wdata_part1_50_w$ = o_ckv_ia_wdata_part1;
assign  _zy_simnet_o_ckv_ia_config_51_w$ = o_ckv_ia_config;
assign  _zy_simnet_o_kim_ia_wdata_part0_52_w$ = o_kim_ia_wdata_part0;
assign  _zy_simnet_o_kim_ia_wdata_part1_53_w$ = o_kim_ia_wdata_part1;
assign  _zy_simnet_o_kim_ia_config_54_w$ = o_kim_ia_config;
assign  _zy_simnet_o_label0_config_55_w$ = o_label0_config;
assign  _zy_simnet_o_label0_data7_56_w$ = o_label0_data7;
assign  _zy_simnet_o_label0_data6_57_w$ = o_label0_data6;
assign  _zy_simnet_o_label0_data5_58_w$ = o_label0_data5;
assign  _zy_simnet_o_label0_data4_59_w$ = o_label0_data4;
assign  _zy_simnet_o_label0_data3_60_w$ = o_label0_data3;
assign  _zy_simnet_o_label0_data2_61_w$ = o_label0_data2;
assign  _zy_simnet_o_label0_data1_62_w$ = o_label0_data1;
assign  _zy_simnet_o_label0_data0_63_w$ = o_label0_data0;
assign  _zy_simnet_o_label1_config_64_w$ = o_label1_config;
assign  _zy_simnet_o_label1_data7_65_w$ = o_label1_data7;
assign  _zy_simnet_o_label1_data6_66_w$ = o_label1_data6;
assign  _zy_simnet_o_label1_data5_67_w$ = o_label1_data5;
assign  _zy_simnet_o_label1_data4_68_w$ = o_label1_data4;
assign  _zy_simnet_o_label1_data3_69_w$ = o_label1_data3;
assign  _zy_simnet_o_label1_data2_70_w$ = o_label1_data2;
assign  _zy_simnet_o_label1_data1_71_w$ = o_label1_data1;
assign  _zy_simnet_o_label1_data0_72_w$ = o_label1_data0;
assign  _zy_simnet_o_label2_config_73_w$ = o_label2_config;
assign  _zy_simnet_o_label2_data7_74_w$ = o_label2_data7;
assign  _zy_simnet_o_label2_data6_75_w$ = o_label2_data6;
assign  _zy_simnet_o_label2_data5_76_w$ = o_label2_data5;
assign  _zy_simnet_o_label2_data4_77_w$ = o_label2_data4;
assign  _zy_simnet_o_label2_data3_78_w$ = o_label2_data3;
assign  _zy_simnet_o_label2_data2_79_w$ = o_label2_data2;
assign  _zy_simnet_o_label2_data1_80_w$ = o_label2_data1;
assign  _zy_simnet_o_label2_data0_81_w$ = o_label2_data0;
assign  _zy_simnet_o_label3_config_82_w$ = o_label3_config;
assign  _zy_simnet_o_label3_data7_83_w$ = o_label3_data7;
assign  _zy_simnet_o_label3_data6_84_w$ = o_label3_data6;
assign  _zy_simnet_o_label3_data5_85_w$ = o_label3_data5;
assign  _zy_simnet_o_label3_data4_86_w$ = o_label3_data4;
assign  _zy_simnet_o_label3_data3_87_w$ = o_label3_data3;
assign  _zy_simnet_o_label3_data2_88_w$ = o_label3_data2;
assign  _zy_simnet_o_label3_data1_89_w$ = o_label3_data1;
assign  _zy_simnet_o_label3_data0_90_w$ = o_label3_data0;
assign  _zy_simnet_o_label4_config_91_w$ = o_label4_config;
assign  _zy_simnet_o_label4_data7_92_w$ = o_label4_data7;
assign  _zy_simnet_o_label4_data6_93_w$ = o_label4_data6;
assign  _zy_simnet_o_label4_data5_94_w$ = o_label4_data5;
assign  _zy_simnet_o_label4_data4_95_w$ = o_label4_data4;
assign  _zy_simnet_o_label4_data3_96_w$ = o_label4_data3;
assign  _zy_simnet_o_label4_data2_97_w$ = o_label4_data2;
assign  _zy_simnet_o_label4_data1_98_w$ = o_label4_data1;
assign  _zy_simnet_o_label4_data0_99_w$ = o_label4_data0;
assign  _zy_simnet_o_label5_config_100_w$ = o_label5_config;
assign  _zy_simnet_o_label5_data7_101_w$ = o_label5_data7;
assign  _zy_simnet_o_label5_data6_102_w$ = o_label5_data6;
assign  _zy_simnet_o_label5_data5_103_w$ = o_label5_data5;
assign  _zy_simnet_o_label5_data4_104_w$ = o_label5_data4;
assign  _zy_simnet_o_label5_data3_105_w$ = o_label5_data3;
assign  _zy_simnet_o_label5_data2_106_w$ = o_label5_data2;
assign  _zy_simnet_o_label5_data1_107_w$ = o_label5_data1;
assign  _zy_simnet_o_label5_data0_108_w$ = o_label5_data0;
assign  _zy_simnet_o_label6_config_109_w$ = o_label6_config;
assign  _zy_simnet_o_label6_data7_110_w$ = o_label6_data7;
assign  _zy_simnet_o_label6_data6_111_w$ = o_label6_data6;
assign  _zy_simnet_o_label6_data5_112_w$ = o_label6_data5;
assign  _zy_simnet_o_label6_data4_113_w$ = o_label6_data4;
assign  _zy_simnet_o_label6_data3_114_w$ = o_label6_data3;
assign  _zy_simnet_o_label6_data2_115_w$ = o_label6_data2;
assign  _zy_simnet_o_label6_data1_116_w$ = o_label6_data1;
assign  _zy_simnet_o_label6_data0_117_w$ = o_label6_data0;
assign  _zy_simnet_o_label7_config_118_w$ = o_label7_config;
assign  _zy_simnet_o_label7_data7_119_w$ = o_label7_data7;
assign  _zy_simnet_o_label7_data6_120_w$ = o_label7_data6;
assign  _zy_simnet_o_label7_data5_121_w$ = o_label7_data5;
assign  _zy_simnet_o_label7_data4_122_w$ = o_label7_data4;
assign  _zy_simnet_o_label7_data3_123_w$ = o_label7_data3;
assign  _zy_simnet_o_label7_data2_124_w$ = o_label7_data2;
assign  _zy_simnet_o_label7_data1_125_w$ = o_label7_data1;
assign  _zy_simnet_o_label7_data0_126_w$ = o_label7_data0;
assign  _zy_simnet_o_kdf_drbg_ctrl_127_w$ = o_kdf_drbg_ctrl;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_key_31_0_128_w$ = o_kdf_drbg_seed_0_state_key_31_0;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_key_63_32_129_w$ = o_kdf_drbg_seed_0_state_key_63_32;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_key_95_64_130_w$ = o_kdf_drbg_seed_0_state_key_95_64;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_key_127_96_131_w$ = o_kdf_drbg_seed_0_state_key_127_96;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_key_159_128_132_w$ = o_kdf_drbg_seed_0_state_key_159_128;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_key_191_160_133_w$ = o_kdf_drbg_seed_0_state_key_191_160;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_key_223_192_134_w$ = o_kdf_drbg_seed_0_state_key_223_192;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_key_255_224_135_w$ = o_kdf_drbg_seed_0_state_key_255_224;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_value_31_0_136_w$ = o_kdf_drbg_seed_0_state_value_31_0;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_value_63_32_137_w$ = o_kdf_drbg_seed_0_state_value_63_32;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_value_95_64_138_w$ = o_kdf_drbg_seed_0_state_value_95_64;
assign  _zy_simnet_o_kdf_drbg_seed_0_state_value_127_96_139_w$ = o_kdf_drbg_seed_0_state_value_127_96;
assign  _zy_simnet_o_kdf_drbg_seed_0_reseed_interval_0_140_w$ = o_kdf_drbg_seed_0_reseed_interval_0;
assign  _zy_simnet_o_kdf_drbg_seed_0_reseed_interval_1_141_w$ = o_kdf_drbg_seed_0_reseed_interval_1;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_key_31_0_142_w$ = o_kdf_drbg_seed_1_state_key_31_0;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_key_63_32_143_w$ = o_kdf_drbg_seed_1_state_key_63_32;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_key_95_64_144_w$ = o_kdf_drbg_seed_1_state_key_95_64;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_key_127_96_145_w$ = o_kdf_drbg_seed_1_state_key_127_96;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_key_159_128_146_w$ = o_kdf_drbg_seed_1_state_key_159_128;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_key_191_160_147_w$ = o_kdf_drbg_seed_1_state_key_191_160;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_key_223_192_148_w$ = o_kdf_drbg_seed_1_state_key_223_192;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_key_255_224_149_w$ = o_kdf_drbg_seed_1_state_key_255_224;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_value_31_0_150_w$ = o_kdf_drbg_seed_1_state_value_31_0;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_value_63_32_151_w$ = o_kdf_drbg_seed_1_state_value_63_32;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_value_95_64_152_w$ = o_kdf_drbg_seed_1_state_value_95_64;
assign  _zy_simnet_o_kdf_drbg_seed_1_state_value_127_96_153_w$ = o_kdf_drbg_seed_1_state_value_127_96;
assign  _zy_simnet_o_kdf_drbg_seed_1_reseed_interval_0_154_w$ = o_kdf_drbg_seed_1_reseed_interval_0;
assign  _zy_simnet_o_kdf_drbg_seed_1_reseed_interval_1_155_w$ = o_kdf_drbg_seed_1_reseed_interval_1;
assign  _zy_simnet_o_interrupt_status_156_w$ = o_interrupt_status;
assign  _zy_simnet_o_interrupt_mask_157_w$ = o_interrupt_mask;
assign  _zy_simnet_o_engine_sticky_status_158_w$ = o_engine_sticky_status;
assign  _zy_simnet_o_bimc_monitor_mask_159_w$ = o_bimc_monitor_mask;
assign  _zy_simnet_o_bimc_ecc_uncorrectable_error_cnt_160_w$ = o_bimc_ecc_uncorrectable_error_cnt;
assign  _zy_simnet_o_bimc_ecc_correctable_error_cnt_161_w$ = o_bimc_ecc_correctable_error_cnt;
assign  _zy_simnet_o_bimc_parity_error_cnt_162_w$ = o_bimc_parity_error_cnt;
assign  _zy_simnet_o_bimc_global_config_163_w$ = o_bimc_global_config;
assign  _zy_simnet_o_bimc_eccpar_debug_164_w$ = o_bimc_eccpar_debug;
assign  _zy_simnet_o_bimc_cmd2_165_w$ = o_bimc_cmd2;
assign  _zy_simnet_o_bimc_cmd1_166_w$ = o_bimc_cmd1;
assign  _zy_simnet_o_bimc_cmd0_167_w$ = o_bimc_cmd0;
assign  _zy_simnet_o_bimc_rxcmd2_168_w$ = o_bimc_rxcmd2;
assign  _zy_simnet_o_bimc_rxrsp2_169_w$ = o_bimc_rxrsp2;
assign  _zy_simnet_o_bimc_pollrsp2_170_w$ = o_bimc_pollrsp2;
assign  _zy_simnet_o_bimc_dbgcmd2_171_w$ = o_bimc_dbgcmd2;
assign  _zy_simnet_o_im_consumed_172_w$ = o_im_consumed;
assign  _zy_simnet_o_tready_override_173_w$ = o_tready_override;
assign  _zy_simnet_o_regs_sa_ctrl_174_w$ = o_regs_sa_ctrl;
assign  _zy_simnet_o_sa_snapshot_ia_wdata_part0_175_w$ = o_sa_snapshot_ia_wdata_part0;
assign  _zy_simnet_o_sa_snapshot_ia_wdata_part1_176_w$ = o_sa_snapshot_ia_wdata_part1;
assign  _zy_simnet_o_sa_snapshot_ia_config_177_w$ = o_sa_snapshot_ia_config;
assign  _zy_simnet_o_sa_count_ia_wdata_part0_178_w$ = o_sa_count_ia_wdata_part0;
assign  _zy_simnet_o_sa_count_ia_wdata_part1_179_w$ = o_sa_count_ia_wdata_part1;
assign  _zy_simnet_o_sa_count_ia_config_180_w$ = o_sa_count_ia_config;
assign  _zy_simnet_o_cceip_encrypt_kop_fifo_override_181_w$ = o_cceip_encrypt_kop_fifo_override;
assign  _zy_simnet_o_cceip_validate_kop_fifo_override_182_w$ = o_cceip_validate_kop_fifo_override;
assign  _zy_simnet_o_cddip_decrypt_kop_fifo_override_183_w$ = o_cddip_decrypt_kop_fifo_override;
assign  _zy_simnet_o_sa_global_ctrl_184_w$ = o_sa_global_ctrl;
assign  _zy_simnet_o_sa_ctrl_ia_wdata_part0_185_w$ = o_sa_ctrl_ia_wdata_part0;
assign  _zy_simnet_o_sa_ctrl_ia_config_186_w$ = o_sa_ctrl_ia_config;
assign  _zy_simnet_o_kdf_test_key_size_config_187_w$ = o_kdf_test_key_size_config;
always_ff 
 @(posedge clk or negedge i_reset_)
  begin
   if (( ~i_reset_ ))
    begin
     o_spare_config[31:0] <= 32'b0;
     o_cceip0_out_ia_wdata_part0[5:0] <= 6'b0;
     o_cceip0_out_ia_wdata_part1[31:0] <= 32'b0;
     o_cceip0_out_ia_wdata_part2[31:0] <= 32'b0;
     o_cceip0_out_ia_config[8:0] <= 9'b0;
     o_cceip0_out_ia_config[12:9] <= 4'b0;
     o_cceip0_out_im_config[9:0] <= 10'b1000000000;
     o_cceip0_out_im_config[11:10] <= 2'b11;
     o_cceip0_out_im_read_done[0:0] <= 1'b0;
     o_cceip0_out_im_read_done[1:1] <= 1'b0;
     o_cceip1_out_ia_wdata_part0[5:0] <= 6'b0;
     o_cceip1_out_ia_wdata_part1[31:0] <= 32'b0;
     o_cceip1_out_ia_wdata_part2[31:0] <= 32'b0;
     o_cceip1_out_ia_config[8:0] <= 9'b0;
     o_cceip1_out_ia_config[12:9] <= 4'b0;
     o_cceip1_out_im_config[9:0] <= 10'b1000000000;
     o_cceip1_out_im_config[11:10] <= 2'b11;
     o_cceip1_out_im_read_done[0:0] <= 1'b0;
     o_cceip1_out_im_read_done[1:1] <= 1'b0;
     o_cceip2_out_ia_wdata_part0[5:0] <= 6'b0;
     o_cceip2_out_ia_wdata_part1[31:0] <= 32'b0;
     o_cceip2_out_ia_wdata_part2[31:0] <= 32'b0;
     o_cceip2_out_ia_config[8:0] <= 9'b0;
     o_cceip2_out_ia_config[12:9] <= 4'b0;
     o_cceip2_out_im_config[9:0] <= 10'b1000000000;
     o_cceip2_out_im_config[11:10] <= 2'b11;
     o_cceip2_out_im_read_done[0:0] <= 1'b0;
     o_cceip2_out_im_read_done[1:1] <= 1'b0;
     o_cceip3_out_ia_wdata_part0[5:0] <= 6'b0;
     o_cceip3_out_ia_wdata_part1[31:0] <= 32'b0;
     o_cceip3_out_ia_wdata_part2[31:0] <= 32'b0;
     o_cceip3_out_ia_config[8:0] <= 9'b0;
     o_cceip3_out_ia_config[12:9] <= 4'b0;
     o_cceip3_out_im_config[9:0] <= 10'b1000000000;
     o_cceip3_out_im_config[11:10] <= 2'b11;
     o_cceip3_out_im_read_done[0:0] <= 1'b0;
     o_cceip3_out_im_read_done[1:1] <= 1'b0;
     o_cddip0_out_ia_wdata_part0[5:0] <= 6'b0;
     o_cddip0_out_ia_wdata_part1[31:0] <= 32'b0;
     o_cddip0_out_ia_wdata_part2[31:0] <= 32'b0;
     o_cddip0_out_ia_config[8:0] <= 9'b0;
     o_cddip0_out_ia_config[12:9] <= 4'b0;
     o_cddip0_out_im_config[9:0] <= 10'b1000000000;
     o_cddip0_out_im_config[11:10] <= 2'b11;
     o_cddip0_out_im_read_done[0:0] <= 1'b0;
     o_cddip0_out_im_read_done[1:1] <= 1'b0;
     o_cddip1_out_ia_wdata_part0[5:0] <= 6'b0;
     o_cddip1_out_ia_wdata_part1[31:0] <= 32'b0;
     o_cddip1_out_ia_wdata_part2[31:0] <= 32'b0;
     o_cddip1_out_ia_config[8:0] <= 9'b0;
     o_cddip1_out_ia_config[12:9] <= 4'b0;
     o_cddip1_out_im_config[9:0] <= 10'b1000000000;
     o_cddip1_out_im_config[11:10] <= 2'b11;
     o_cddip1_out_im_read_done[0:0] <= 1'b0;
     o_cddip1_out_im_read_done[1:1] <= 1'b0;
     o_cddip2_out_ia_wdata_part0[5:0] <= 6'b0;
     o_cddip2_out_ia_wdata_part1[31:0] <= 32'b0;
     o_cddip2_out_ia_wdata_part2[31:0] <= 32'b0;
     o_cddip2_out_ia_config[8:0] <= 9'b0;
     o_cddip2_out_ia_config[12:9] <= 4'b0;
     o_cddip2_out_im_config[9:0] <= 10'b1000000000;
     o_cddip2_out_im_config[11:10] <= 2'b11;
     o_cddip2_out_im_read_done[0:0] <= 1'b0;
     o_cddip2_out_im_read_done[1:1] <= 1'b0;
     o_cddip3_out_ia_wdata_part0[5:0] <= 6'b0;
     o_cddip3_out_ia_wdata_part1[31:0] <= 32'b0;
     o_cddip3_out_ia_wdata_part2[31:0] <= 32'b0;
     o_cddip3_out_ia_config[8:0] <= 9'b0;
     o_cddip3_out_ia_config[12:9] <= 4'b0;
     o_cddip3_out_im_config[9:0] <= 10'b1000000000;
     o_cddip3_out_im_config[11:10] <= 2'b11;
     o_cddip3_out_im_read_done[0:0] <= 1'b0;
     o_cddip3_out_im_read_done[1:1] <= 1'b0;
     o_ckv_ia_wdata_part0[31:0] <= 32'b0;
     o_ckv_ia_wdata_part1[31:0] <= 32'b0;
     o_ckv_ia_config[14:0] <= 15'b0;
     o_ckv_ia_config[18:15] <= 4'b0;
     o_kim_ia_wdata_part0[14:0] <= 15'b0;
     o_kim_ia_wdata_part0[16:15] <= 2'b0;
     o_kim_ia_wdata_part0[19:17] <= 3'b0;
     o_kim_ia_wdata_part0[20:20] <= 1'b0;
     o_kim_ia_wdata_part1[0:0] <= 1'b0;
     o_kim_ia_wdata_part1[12:1] <= 12'b0;
     o_kim_ia_wdata_part1[16:13] <= 4'b0;
     o_kim_ia_config[13:0] <= 14'b0;
     o_kim_ia_config[17:14] <= 4'b0;
     o_label0_config[7:0] <= 8'b0;
     o_label0_config[8:8] <= 1'b1;
     o_label0_config[14:9] <= 6'b0;
     o_label0_config[15:15] <= 1'b0;
     o_label0_data7[31:0] <= 32'b0;
     o_label0_data6[31:0] <= 32'b0;
     o_label0_data5[31:0] <= 32'b0;
     o_label0_data4[31:0] <= 32'b0;
     o_label0_data3[31:0] <= 32'b0;
     o_label0_data2[31:0] <= 32'b0;
     o_label0_data1[31:0] <= 32'b0;
     o_label0_data0[31:0] <= 32'b0;
     o_label1_config[7:0] <= 8'b0;
     o_label1_config[8:8] <= 1'b1;
     o_label1_config[14:9] <= 6'b0;
     o_label1_config[15:15] <= 1'b0;
     o_label1_data7[31:0] <= 32'b0;
     o_label1_data6[31:0] <= 32'b0;
     o_label1_data5[31:0] <= 32'b0;
     o_label1_data4[31:0] <= 32'b0;
     o_label1_data3[31:0] <= 32'b0;
     o_label1_data2[31:0] <= 32'b0;
     o_label1_data1[31:0] <= 32'b0;
     o_label1_data0[31:0] <= 32'b0;
     o_label2_config[7:0] <= 8'b0;
     o_label2_config[8:8] <= 1'b1;
     o_label2_config[14:9] <= 6'b0;
     o_label2_config[15:15] <= 1'b0;
     o_label2_data7[31:0] <= 32'b0;
     o_label2_data6[31:0] <= 32'b0;
     o_label2_data5[31:0] <= 32'b0;
     o_label2_data4[31:0] <= 32'b0;
     o_label2_data3[31:0] <= 32'b0;
     o_label2_data2[31:0] <= 32'b0;
     o_label2_data1[31:0] <= 32'b0;
     o_label2_data0[31:0] <= 32'b0;
     o_label3_config[7:0] <= 8'b0;
     o_label3_config[8:8] <= 1'b1;
     o_label3_config[14:9] <= 6'b0;
     o_label3_config[15:15] <= 1'b0;
     o_label3_data7[31:0] <= 32'b0;
     o_label3_data6[31:0] <= 32'b0;
     o_label3_data5[31:0] <= 32'b0;
     o_label3_data4[31:0] <= 32'b0;
     o_label3_data3[31:0] <= 32'b0;
     o_label3_data2[31:0] <= 32'b0;
     o_label3_data1[31:0] <= 32'b0;
     o_label3_data0[31:0] <= 32'b0;
     o_label4_config[7:0] <= 8'b0;
     o_label4_config[8:8] <= 1'b1;
     o_label4_config[14:9] <= 6'b0;
     o_label4_config[15:15] <= 1'b0;
     o_label4_data7[31:0] <= 32'b0;
     o_label4_data6[31:0] <= 32'b0;
     o_label4_data5[31:0] <= 32'b0;
     o_label4_data4[31:0] <= 32'b0;
     o_label4_data3[31:0] <= 32'b0;
     o_label4_data2[31:0] <= 32'b0;
     o_label4_data1[31:0] <= 32'b0;
     o_label4_data0[31:0] <= 32'b0;
     o_label5_config[7:0] <= 8'b0;
     o_label5_config[8:8] <= 1'b1;
     o_label5_config[14:9] <= 6'b0;
     o_label5_config[15:15] <= 1'b0;
     o_label5_data7[31:0] <= 32'b0;
     o_label5_data6[31:0] <= 32'b0;
     o_label5_data5[31:0] <= 32'b0;
     o_label5_data4[31:0] <= 32'b0;
     o_label5_data3[31:0] <= 32'b0;
     o_label5_data2[31:0] <= 32'b0;
     o_label5_data1[31:0] <= 32'b0;
     o_label5_data0[31:0] <= 32'b0;
     o_label6_config[7:0] <= 8'b0;
     o_label6_config[8:8] <= 1'b1;
     o_label6_config[14:9] <= 6'b0;
     o_label6_config[15:15] <= 1'b0;
     o_label6_data7[31:0] <= 32'b0;
     o_label6_data6[31:0] <= 32'b0;
     o_label6_data5[31:0] <= 32'b0;
     o_label6_data4[31:0] <= 32'b0;
     o_label6_data3[31:0] <= 32'b0;
     o_label6_data2[31:0] <= 32'b0;
     o_label6_data1[31:0] <= 32'b0;
     o_label6_data0[31:0] <= 32'b0;
     o_label7_config[7:0] <= 8'b0;
     o_label7_config[8:8] <= 1'b1;
     o_label7_config[14:9] <= 6'b0;
     o_label7_config[15:15] <= 1'b0;
     o_label7_data7[31:0] <= 32'b0;
     o_label7_data6[31:0] <= 32'b0;
     o_label7_data5[31:0] <= 32'b0;
     o_label7_data4[31:0] <= 32'b0;
     o_label7_data3[31:0] <= 32'b0;
     o_label7_data2[31:0] <= 32'b0;
     o_label7_data1[31:0] <= 32'b0;
     o_label7_data0[31:0] <= 32'b0;
     o_kdf_drbg_ctrl[1:0] <= 2'b0;
     o_kdf_drbg_seed_0_state_key_31_0[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_state_key_63_32[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_state_key_95_64[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_state_key_127_96[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_state_key_159_128[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_state_key_191_160[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_state_key_223_192[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_state_key_255_224[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_state_value_31_0[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_state_value_63_32[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_state_value_95_64[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_state_value_127_96[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_reseed_interval_0[31:0] <= 32'b0;
     o_kdf_drbg_seed_0_reseed_interval_1[15:0] <= 16'b0;
     o_kdf_drbg_seed_1_state_key_31_0[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_state_key_63_32[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_state_key_95_64[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_state_key_127_96[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_state_key_159_128[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_state_key_191_160[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_state_key_223_192[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_state_key_255_224[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_state_value_31_0[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_state_value_63_32[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_state_value_95_64[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_state_value_127_96[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_reseed_interval_0[31:0] <= 32'b0;
     o_kdf_drbg_seed_1_reseed_interval_1[15:0] <= 16'b0;
     o_interrupt_status[0:0] <= 1'b0;
     o_interrupt_status[1:1] <= 1'b0;
     o_interrupt_status[2:2] <= 1'b0;
     o_interrupt_status[3:3] <= 1'b0;
     o_interrupt_status[4:4] <= 1'b0;
     o_interrupt_mask[0:0] <= 1'b0;
     o_interrupt_mask[1:1] <= 1'b0;
     o_interrupt_mask[2:2] <= 1'b0;
     o_interrupt_mask[3:3] <= 1'b0;
     o_interrupt_mask[4:4] <= 1'b0;
     o_engine_sticky_status[0:0] <= 1'b0;
     o_engine_sticky_status[1:1] <= 1'b0;
     o_engine_sticky_status[2:2] <= 1'b0;
     o_engine_sticky_status[3:3] <= 1'b0;
     o_engine_sticky_status[4:4] <= 1'b0;
     o_engine_sticky_status[5:5] <= 1'b0;
     o_engine_sticky_status[6:6] <= 1'b0;
     o_engine_sticky_status[7:7] <= 1'b0;
     o_bimc_monitor_mask[0:0] <= 1'b0;
     o_bimc_monitor_mask[1:1] <= 1'b0;
     o_bimc_monitor_mask[2:2] <= 1'b0;
     o_bimc_monitor_mask[3:3] <= 1'b0;
     o_bimc_monitor_mask[4:4] <= 1'b0;
     o_bimc_monitor_mask[5:5] <= 1'b0;
     o_bimc_monitor_mask[6:6] <= 1'b0;
     o_bimc_ecc_uncorrectable_error_cnt[31:0] <= 32'b0;
     o_bimc_ecc_correctable_error_cnt[31:0] <= 32'b0;
     o_bimc_parity_error_cnt[31:0] <= 32'b0;
     o_bimc_global_config[0:0] <= 1'b1;
     o_bimc_global_config[1:1] <= 1'b0;
     o_bimc_global_config[2:2] <= 1'b0;
     o_bimc_global_config[3:3] <= 1'b0;
     o_bimc_global_config[4:4] <= 1'b0;
     o_bimc_global_config[5:5] <= 1'b0;
     o_bimc_global_config[31:6] <= 26'b0;
     o_bimc_eccpar_debug[11:0] <= 12'b0;
     o_bimc_eccpar_debug[15:12] <= 4'b0;
     o_bimc_eccpar_debug[17:16] <= 2'b0;
     o_bimc_eccpar_debug[19:18] <= 2'b0;
     o_bimc_eccpar_debug[21:20] <= 2'b0;
     o_bimc_eccpar_debug[22:22] <= 1'b0;
     o_bimc_eccpar_debug[23:23] <= 1'b0;
     o_bimc_eccpar_debug[27:24] <= 4'b0;
     o_bimc_eccpar_debug[28:28] <= 1'b0;
     o_bimc_cmd2[7:0] <= 8'b0;
     o_bimc_cmd2[8:8] <= 1'b0;
     o_bimc_cmd2[9:9] <= 1'b0;
     o_bimc_cmd2[10:10] <= 1'b0;
     o_bimc_cmd1[15:0] <= 16'b0;
     o_bimc_cmd1[27:16] <= 12'b0;
     o_bimc_cmd1[31:28] <= 4'b0;
     o_bimc_cmd0[31:0] <= 32'b0;
     o_bimc_rxcmd2[7:0] <= 8'b0;
     o_bimc_rxcmd2[8:8] <= 1'b0;
     o_bimc_rxrsp2[7:0] <= 8'b0;
     o_bimc_rxrsp2[8:8] <= 1'b0;
     o_bimc_pollrsp2[7:0] <= 8'b0;
     o_bimc_pollrsp2[8:8] <= 1'b0;
     o_bimc_dbgcmd2[7:0] <= 8'b0;
     o_bimc_dbgcmd2[8:8] <= 1'b0;
     o_im_consumed[0:0] <= 1'b0;
     o_im_consumed[1:1] <= 1'b0;
     o_im_consumed[2:2] <= 1'b0;
     o_im_consumed[3:3] <= 1'b0;
     o_im_consumed[4:4] <= 1'b0;
     o_im_consumed[5:5] <= 1'b0;
     o_im_consumed[6:6] <= 1'b0;
     o_im_consumed[7:7] <= 1'b0;
     o_im_consumed[8:8] <= 1'b0;
     o_im_consumed[9:9] <= 1'b0;
     o_im_consumed[10:10] <= 1'b0;
     o_im_consumed[11:11] <= 1'b0;
     o_im_consumed[12:12] <= 1'b0;
     o_im_consumed[13:13] <= 1'b0;
     o_im_consumed[14:14] <= 1'b0;
     o_im_consumed[15:15] <= 1'b0;
     o_tready_override[0:0] <= 1'b0;
     o_tready_override[1:1] <= 1'b0;
     o_tready_override[2:2] <= 1'b0;
     o_tready_override[3:3] <= 1'b0;
     o_tready_override[4:4] <= 1'b0;
     o_tready_override[5:5] <= 1'b0;
     o_tready_override[6:6] <= 1'b0;
     o_tready_override[7:7] <= 1'b0;
     o_tready_override[8:8] <= 1'b0;
     o_regs_sa_ctrl[0:0] <= 1'b0;
     o_regs_sa_ctrl[1:1] <= 1'b0;
     o_regs_sa_ctrl[7:2] <= 6'b0;
     o_regs_sa_ctrl[12:8] <= 5'b0;
     o_regs_sa_ctrl[31:13] <= 19'b0;
     o_sa_snapshot_ia_wdata_part0[17:0] <= 18'b0;
     o_sa_snapshot_ia_wdata_part0[31:18] <= 14'b0;
     o_sa_snapshot_ia_wdata_part1[31:0] <= 32'b0;
     o_sa_snapshot_ia_config[4:0] <= 5'b0;
     o_sa_snapshot_ia_config[8:5] <= 4'b0;
     o_sa_count_ia_wdata_part0[17:0] <= 18'b0;
     o_sa_count_ia_wdata_part0[31:18] <= 14'b0;
     o_sa_count_ia_wdata_part1[31:0] <= 32'b0;
     o_sa_count_ia_config[4:0] <= 5'b0;
     o_sa_count_ia_config[8:5] <= 4'b0;
     o_cceip_encrypt_kop_fifo_override[0:0] <= 1'b0;
     o_cceip_encrypt_kop_fifo_override[1:1] <= 1'b0;
     o_cceip_encrypt_kop_fifo_override[2:2] <= 1'b0;
     o_cceip_encrypt_kop_fifo_override[3:3] <= 1'b0;
     o_cceip_encrypt_kop_fifo_override[4:4] <= 1'b0;
     o_cceip_encrypt_kop_fifo_override[5:5] <= 1'b0;
     o_cceip_encrypt_kop_fifo_override[6:6] <= 1'b0;
     o_cceip_validate_kop_fifo_override[0:0] <= 1'b0;
     o_cceip_validate_kop_fifo_override[1:1] <= 1'b0;
     o_cceip_validate_kop_fifo_override[2:2] <= 1'b0;
     o_cceip_validate_kop_fifo_override[3:3] <= 1'b0;
     o_cceip_validate_kop_fifo_override[4:4] <= 1'b0;
     o_cceip_validate_kop_fifo_override[5:5] <= 1'b0;
     o_cceip_validate_kop_fifo_override[6:6] <= 1'b0;
     o_cddip_decrypt_kop_fifo_override[0:0] <= 1'b0;
     o_cddip_decrypt_kop_fifo_override[1:1] <= 1'b0;
     o_cddip_decrypt_kop_fifo_override[2:2] <= 1'b0;
     o_cddip_decrypt_kop_fifo_override[3:3] <= 1'b0;
     o_cddip_decrypt_kop_fifo_override[4:4] <= 1'b0;
     o_cddip_decrypt_kop_fifo_override[5:5] <= 1'b0;
     o_cddip_decrypt_kop_fifo_override[6:6] <= 1'b0;
     o_sa_global_ctrl[0:0] <= 1'b0;
     o_sa_global_ctrl[1:1] <= 1'b0;
     o_sa_global_ctrl[31:2] <= 30'b0;
     o_sa_ctrl_ia_wdata_part0[4:0] <= 5'b0;
     o_sa_ctrl_ia_wdata_part0[31:5] <= 27'b0;
     o_sa_ctrl_ia_config[4:0] <= 5'b0;
     o_sa_ctrl_ia_config[8:5] <= 4'b0;
     o_kdf_test_key_size_config[31:0] <= 32'b0;
    end
   else
    if (i_sw_init)
     begin
      o_spare_config[31:0] <= 32'b0;
      o_cceip0_out_ia_wdata_part0[5:0] <= 6'b0;
      o_cceip0_out_ia_wdata_part1[31:0] <= 32'b0;
      o_cceip0_out_ia_wdata_part2[31:0] <= 32'b0;
      o_cceip0_out_ia_config[8:0] <= 9'b0;
      o_cceip0_out_ia_config[12:9] <= 4'b0;
      o_cceip0_out_im_config[9:0] <= 10'b1000000000;
      o_cceip0_out_im_config[11:10] <= 2'b11;
      o_cceip0_out_im_read_done[0:0] <= 1'b0;
      o_cceip0_out_im_read_done[1:1] <= 1'b0;
      o_cceip1_out_ia_wdata_part0[5:0] <= 6'b0;
      o_cceip1_out_ia_wdata_part1[31:0] <= 32'b0;
      o_cceip1_out_ia_wdata_part2[31:0] <= 32'b0;
      o_cceip1_out_ia_config[8:0] <= 9'b0;
      o_cceip1_out_ia_config[12:9] <= 4'b0;
      o_cceip1_out_im_config[9:0] <= 10'b1000000000;
      o_cceip1_out_im_config[11:10] <= 2'b11;
      o_cceip1_out_im_read_done[0:0] <= 1'b0;
      o_cceip1_out_im_read_done[1:1] <= 1'b0;
      o_cceip2_out_ia_wdata_part0[5:0] <= 6'b0;
      o_cceip2_out_ia_wdata_part1[31:0] <= 32'b0;
      o_cceip2_out_ia_wdata_part2[31:0] <= 32'b0;
      o_cceip2_out_ia_config[8:0] <= 9'b0;
      o_cceip2_out_ia_config[12:9] <= 4'b0;
      o_cceip2_out_im_config[9:0] <= 10'b1000000000;
      o_cceip2_out_im_config[11:10] <= 2'b11;
      o_cceip2_out_im_read_done[0:0] <= 1'b0;
      o_cceip2_out_im_read_done[1:1] <= 1'b0;
      o_cceip3_out_ia_wdata_part0[5:0] <= 6'b0;
      o_cceip3_out_ia_wdata_part1[31:0] <= 32'b0;
      o_cceip3_out_ia_wdata_part2[31:0] <= 32'b0;
      o_cceip3_out_ia_config[8:0] <= 9'b0;
      o_cceip3_out_ia_config[12:9] <= 4'b0;
      o_cceip3_out_im_config[9:0] <= 10'b1000000000;
      o_cceip3_out_im_config[11:10] <= 2'b11;
      o_cceip3_out_im_read_done[0:0] <= 1'b0;
      o_cceip3_out_im_read_done[1:1] <= 1'b0;
      o_cddip0_out_ia_wdata_part0[5:0] <= 6'b0;
      o_cddip0_out_ia_wdata_part1[31:0] <= 32'b0;
      o_cddip0_out_ia_wdata_part2[31:0] <= 32'b0;
      o_cddip0_out_ia_config[8:0] <= 9'b0;
      o_cddip0_out_ia_config[12:9] <= 4'b0;
      o_cddip0_out_im_config[9:0] <= 10'b1000000000;
      o_cddip0_out_im_config[11:10] <= 2'b11;
      o_cddip0_out_im_read_done[0:0] <= 1'b0;
      o_cddip0_out_im_read_done[1:1] <= 1'b0;
      o_cddip1_out_ia_wdata_part0[5:0] <= 6'b0;
      o_cddip1_out_ia_wdata_part1[31:0] <= 32'b0;
      o_cddip1_out_ia_wdata_part2[31:0] <= 32'b0;
      o_cddip1_out_ia_config[8:0] <= 9'b0;
      o_cddip1_out_ia_config[12:9] <= 4'b0;
      o_cddip1_out_im_config[9:0] <= 10'b1000000000;
      o_cddip1_out_im_config[11:10] <= 2'b11;
      o_cddip1_out_im_read_done[0:0] <= 1'b0;
      o_cddip1_out_im_read_done[1:1] <= 1'b0;
      o_cddip2_out_ia_wdata_part0[5:0] <= 6'b0;
      o_cddip2_out_ia_wdata_part1[31:0] <= 32'b0;
      o_cddip2_out_ia_wdata_part2[31:0] <= 32'b0;
      o_cddip2_out_ia_config[8:0] <= 9'b0;
      o_cddip2_out_ia_config[12:9] <= 4'b0;
      o_cddip2_out_im_config[9:0] <= 10'b1000000000;
      o_cddip2_out_im_config[11:10] <= 2'b11;
      o_cddip2_out_im_read_done[0:0] <= 1'b0;
      o_cddip2_out_im_read_done[1:1] <= 1'b0;
      o_cddip3_out_ia_wdata_part0[5:0] <= 6'b0;
      o_cddip3_out_ia_wdata_part1[31:0] <= 32'b0;
      o_cddip3_out_ia_wdata_part2[31:0] <= 32'b0;
      o_cddip3_out_ia_config[8:0] <= 9'b0;
      o_cddip3_out_ia_config[12:9] <= 4'b0;
      o_cddip3_out_im_config[9:0] <= 10'b1000000000;
      o_cddip3_out_im_config[11:10] <= 2'b11;
      o_cddip3_out_im_read_done[0:0] <= 1'b0;
      o_cddip3_out_im_read_done[1:1] <= 1'b0;
      o_ckv_ia_wdata_part0[31:0] <= 32'b0;
      o_ckv_ia_wdata_part1[31:0] <= 32'b0;
      o_ckv_ia_config[14:0] <= 15'b0;
      o_ckv_ia_config[18:15] <= 4'b0;
      o_kim_ia_wdata_part0[14:0] <= 15'b0;
      o_kim_ia_wdata_part0[16:15] <= 2'b0;
      o_kim_ia_wdata_part0[19:17] <= 3'b0;
      o_kim_ia_wdata_part0[20:20] <= 1'b0;
      o_kim_ia_wdata_part1[0:0] <= 1'b0;
      o_kim_ia_wdata_part1[12:1] <= 12'b0;
      o_kim_ia_wdata_part1[16:13] <= 4'b0;
      o_kim_ia_config[13:0] <= 14'b0;
      o_kim_ia_config[17:14] <= 4'b0;
      o_label0_config[7:0] <= 8'b0;
      o_label0_config[8:8] <= 1'b1;
      o_label0_config[14:9] <= 6'b0;
      o_label0_config[15:15] <= 1'b0;
      o_label0_data7[31:0] <= 32'b0;
      o_label0_data6[31:0] <= 32'b0;
      o_label0_data5[31:0] <= 32'b0;
      o_label0_data4[31:0] <= 32'b0;
      o_label0_data3[31:0] <= 32'b0;
      o_label0_data2[31:0] <= 32'b0;
      o_label0_data1[31:0] <= 32'b0;
      o_label0_data0[31:0] <= 32'b0;
      o_label1_config[7:0] <= 8'b0;
      o_label1_config[8:8] <= 1'b1;
      o_label1_config[14:9] <= 6'b0;
      o_label1_config[15:15] <= 1'b0;
      o_label1_data7[31:0] <= 32'b0;
      o_label1_data6[31:0] <= 32'b0;
      o_label1_data5[31:0] <= 32'b0;
      o_label1_data4[31:0] <= 32'b0;
      o_label1_data3[31:0] <= 32'b0;
      o_label1_data2[31:0] <= 32'b0;
      o_label1_data1[31:0] <= 32'b0;
      o_label1_data0[31:0] <= 32'b0;
      o_label2_config[7:0] <= 8'b0;
      o_label2_config[8:8] <= 1'b1;
      o_label2_config[14:9] <= 6'b0;
      o_label2_config[15:15] <= 1'b0;
      o_label2_data7[31:0] <= 32'b0;
      o_label2_data6[31:0] <= 32'b0;
      o_label2_data5[31:0] <= 32'b0;
      o_label2_data4[31:0] <= 32'b0;
      o_label2_data3[31:0] <= 32'b0;
      o_label2_data2[31:0] <= 32'b0;
      o_label2_data1[31:0] <= 32'b0;
      o_label2_data0[31:0] <= 32'b0;
      o_label3_config[7:0] <= 8'b0;
      o_label3_config[8:8] <= 1'b1;
      o_label3_config[14:9] <= 6'b0;
      o_label3_config[15:15] <= 1'b0;
      o_label3_data7[31:0] <= 32'b0;
      o_label3_data6[31:0] <= 32'b0;
      o_label3_data5[31:0] <= 32'b0;
      o_label3_data4[31:0] <= 32'b0;
      o_label3_data3[31:0] <= 32'b0;
      o_label3_data2[31:0] <= 32'b0;
      o_label3_data1[31:0] <= 32'b0;
      o_label3_data0[31:0] <= 32'b0;
      o_label4_config[7:0] <= 8'b0;
      o_label4_config[8:8] <= 1'b1;
      o_label4_config[14:9] <= 6'b0;
      o_label4_config[15:15] <= 1'b0;
      o_label4_data7[31:0] <= 32'b0;
      o_label4_data6[31:0] <= 32'b0;
      o_label4_data5[31:0] <= 32'b0;
      o_label4_data4[31:0] <= 32'b0;
      o_label4_data3[31:0] <= 32'b0;
      o_label4_data2[31:0] <= 32'b0;
      o_label4_data1[31:0] <= 32'b0;
      o_label4_data0[31:0] <= 32'b0;
      o_label5_config[7:0] <= 8'b0;
      o_label5_config[8:8] <= 1'b1;
      o_label5_config[14:9] <= 6'b0;
      o_label5_config[15:15] <= 1'b0;
      o_label5_data7[31:0] <= 32'b0;
      o_label5_data6[31:0] <= 32'b0;
      o_label5_data5[31:0] <= 32'b0;
      o_label5_data4[31:0] <= 32'b0;
      o_label5_data3[31:0] <= 32'b0;
      o_label5_data2[31:0] <= 32'b0;
      o_label5_data1[31:0] <= 32'b0;
      o_label5_data0[31:0] <= 32'b0;
      o_label6_config[7:0] <= 8'b0;
      o_label6_config[8:8] <= 1'b1;
      o_label6_config[14:9] <= 6'b0;
      o_label6_config[15:15] <= 1'b0;
      o_label6_data7[31:0] <= 32'b0;
      o_label6_data6[31:0] <= 32'b0;
      o_label6_data5[31:0] <= 32'b0;
      o_label6_data4[31:0] <= 32'b0;
      o_label6_data3[31:0] <= 32'b0;
      o_label6_data2[31:0] <= 32'b0;
      o_label6_data1[31:0] <= 32'b0;
      o_label6_data0[31:0] <= 32'b0;
      o_label7_config[7:0] <= 8'b0;
      o_label7_config[8:8] <= 1'b1;
      o_label7_config[14:9] <= 6'b0;
      o_label7_config[15:15] <= 1'b0;
      o_label7_data7[31:0] <= 32'b0;
      o_label7_data6[31:0] <= 32'b0;
      o_label7_data5[31:0] <= 32'b0;
      o_label7_data4[31:0] <= 32'b0;
      o_label7_data3[31:0] <= 32'b0;
      o_label7_data2[31:0] <= 32'b0;
      o_label7_data1[31:0] <= 32'b0;
      o_label7_data0[31:0] <= 32'b0;
      o_kdf_drbg_ctrl[1:0] <= 2'b0;
      o_kdf_drbg_seed_0_state_key_31_0[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_state_key_63_32[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_state_key_95_64[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_state_key_127_96[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_state_key_159_128[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_state_key_191_160[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_state_key_223_192[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_state_key_255_224[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_state_value_31_0[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_state_value_63_32[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_state_value_95_64[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_state_value_127_96[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_reseed_interval_0[31:0] <= 32'b0;
      o_kdf_drbg_seed_0_reseed_interval_1[15:0] <= 16'b0;
      o_kdf_drbg_seed_1_state_key_31_0[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_state_key_63_32[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_state_key_95_64[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_state_key_127_96[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_state_key_159_128[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_state_key_191_160[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_state_key_223_192[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_state_key_255_224[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_state_value_31_0[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_state_value_63_32[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_state_value_95_64[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_state_value_127_96[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_reseed_interval_0[31:0] <= 32'b0;
      o_kdf_drbg_seed_1_reseed_interval_1[15:0] <= 16'b0;
      o_interrupt_status[0:0] <= 1'b0;
      o_interrupt_status[1:1] <= 1'b0;
      o_interrupt_status[2:2] <= 1'b0;
      o_interrupt_status[3:3] <= 1'b0;
      o_interrupt_status[4:4] <= 1'b0;
      o_interrupt_mask[0:0] <= 1'b0;
      o_interrupt_mask[1:1] <= 1'b0;
      o_interrupt_mask[2:2] <= 1'b0;
      o_interrupt_mask[3:3] <= 1'b0;
      o_interrupt_mask[4:4] <= 1'b0;
      o_engine_sticky_status[0:0] <= 1'b0;
      o_engine_sticky_status[1:1] <= 1'b0;
      o_engine_sticky_status[2:2] <= 1'b0;
      o_engine_sticky_status[3:3] <= 1'b0;
      o_engine_sticky_status[4:4] <= 1'b0;
      o_engine_sticky_status[5:5] <= 1'b0;
      o_engine_sticky_status[6:6] <= 1'b0;
      o_engine_sticky_status[7:7] <= 1'b0;
      o_bimc_monitor_mask[0:0] <= 1'b0;
      o_bimc_monitor_mask[1:1] <= 1'b0;
      o_bimc_monitor_mask[2:2] <= 1'b0;
      o_bimc_monitor_mask[3:3] <= 1'b0;
      o_bimc_monitor_mask[4:4] <= 1'b0;
      o_bimc_monitor_mask[5:5] <= 1'b0;
      o_bimc_monitor_mask[6:6] <= 1'b0;
      o_bimc_ecc_uncorrectable_error_cnt[31:0] <= 32'b0;
      o_bimc_ecc_correctable_error_cnt[31:0] <= 32'b0;
      o_bimc_parity_error_cnt[31:0] <= 32'b0;
      o_bimc_global_config[0:0] <= 1'b1;
      o_bimc_global_config[1:1] <= 1'b0;
      o_bimc_global_config[2:2] <= 1'b0;
      o_bimc_global_config[3:3] <= 1'b0;
      o_bimc_global_config[4:4] <= 1'b0;
      o_bimc_global_config[5:5] <= 1'b0;
      o_bimc_global_config[31:6] <= 26'b0;
      o_bimc_eccpar_debug[11:0] <= 12'b0;
      o_bimc_eccpar_debug[15:12] <= 4'b0;
      o_bimc_eccpar_debug[17:16] <= 2'b0;
      o_bimc_eccpar_debug[19:18] <= 2'b0;
      o_bimc_eccpar_debug[21:20] <= 2'b0;
      o_bimc_eccpar_debug[22:22] <= 1'b0;
      o_bimc_eccpar_debug[23:23] <= 1'b0;
      o_bimc_eccpar_debug[27:24] <= 4'b0;
      o_bimc_eccpar_debug[28:28] <= 1'b0;
      o_bimc_cmd2[7:0] <= 8'b0;
      o_bimc_cmd2[8:8] <= 1'b0;
      o_bimc_cmd2[9:9] <= 1'b0;
      o_bimc_cmd2[10:10] <= 1'b0;
      o_bimc_cmd1[15:0] <= 16'b0;
      o_bimc_cmd1[27:16] <= 12'b0;
      o_bimc_cmd1[31:28] <= 4'b0;
      o_bimc_cmd0[31:0] <= 32'b0;
      o_bimc_rxcmd2[7:0] <= 8'b0;
      o_bimc_rxcmd2[8:8] <= 1'b0;
      o_bimc_rxrsp2[7:0] <= 8'b0;
      o_bimc_rxrsp2[8:8] <= 1'b0;
      o_bimc_pollrsp2[7:0] <= 8'b0;
      o_bimc_pollrsp2[8:8] <= 1'b0;
      o_bimc_dbgcmd2[7:0] <= 8'b0;
      o_bimc_dbgcmd2[8:8] <= 1'b0;
      o_im_consumed[0:0] <= 1'b0;
      o_im_consumed[1:1] <= 1'b0;
      o_im_consumed[2:2] <= 1'b0;
      o_im_consumed[3:3] <= 1'b0;
      o_im_consumed[4:4] <= 1'b0;
      o_im_consumed[5:5] <= 1'b0;
      o_im_consumed[6:6] <= 1'b0;
      o_im_consumed[7:7] <= 1'b0;
      o_im_consumed[8:8] <= 1'b0;
      o_im_consumed[9:9] <= 1'b0;
      o_im_consumed[10:10] <= 1'b0;
      o_im_consumed[11:11] <= 1'b0;
      o_im_consumed[12:12] <= 1'b0;
      o_im_consumed[13:13] <= 1'b0;
      o_im_consumed[14:14] <= 1'b0;
      o_im_consumed[15:15] <= 1'b0;
      o_tready_override[0:0] <= 1'b0;
      o_tready_override[1:1] <= 1'b0;
      o_tready_override[2:2] <= 1'b0;
      o_tready_override[3:3] <= 1'b0;
      o_tready_override[4:4] <= 1'b0;
      o_tready_override[5:5] <= 1'b0;
      o_tready_override[6:6] <= 1'b0;
      o_tready_override[7:7] <= 1'b0;
      o_tready_override[8:8] <= 1'b0;
      o_regs_sa_ctrl[0:0] <= 1'b0;
      o_regs_sa_ctrl[1:1] <= 1'b0;
      o_regs_sa_ctrl[7:2] <= 6'b0;
      o_regs_sa_ctrl[12:8] <= 5'b0;
      o_regs_sa_ctrl[31:13] <= 19'b0;
      o_sa_snapshot_ia_wdata_part0[17:0] <= 18'b0;
      o_sa_snapshot_ia_wdata_part0[31:18] <= 14'b0;
      o_sa_snapshot_ia_wdata_part1[31:0] <= 32'b0;
      o_sa_snapshot_ia_config[4:0] <= 5'b0;
      o_sa_snapshot_ia_config[8:5] <= 4'b0;
      o_sa_count_ia_wdata_part0[17:0] <= 18'b0;
      o_sa_count_ia_wdata_part0[31:18] <= 14'b0;
      o_sa_count_ia_wdata_part1[31:0] <= 32'b0;
      o_sa_count_ia_config[4:0] <= 5'b0;
      o_sa_count_ia_config[8:5] <= 4'b0;
      o_cceip_encrypt_kop_fifo_override[0:0] <= 1'b0;
      o_cceip_encrypt_kop_fifo_override[1:1] <= 1'b0;
      o_cceip_encrypt_kop_fifo_override[2:2] <= 1'b0;
      o_cceip_encrypt_kop_fifo_override[3:3] <= 1'b0;
      o_cceip_encrypt_kop_fifo_override[4:4] <= 1'b0;
      o_cceip_encrypt_kop_fifo_override[5:5] <= 1'b0;
      o_cceip_encrypt_kop_fifo_override[6:6] <= 1'b0;
      o_cceip_validate_kop_fifo_override[0:0] <= 1'b0;
      o_cceip_validate_kop_fifo_override[1:1] <= 1'b0;
      o_cceip_validate_kop_fifo_override[2:2] <= 1'b0;
      o_cceip_validate_kop_fifo_override[3:3] <= 1'b0;
      o_cceip_validate_kop_fifo_override[4:4] <= 1'b0;
      o_cceip_validate_kop_fifo_override[5:5] <= 1'b0;
      o_cceip_validate_kop_fifo_override[6:6] <= 1'b0;
      o_cddip_decrypt_kop_fifo_override[0:0] <= 1'b0;
      o_cddip_decrypt_kop_fifo_override[1:1] <= 1'b0;
      o_cddip_decrypt_kop_fifo_override[2:2] <= 1'b0;
      o_cddip_decrypt_kop_fifo_override[3:3] <= 1'b0;
      o_cddip_decrypt_kop_fifo_override[4:4] <= 1'b0;
      o_cddip_decrypt_kop_fifo_override[5:5] <= 1'b0;
      o_cddip_decrypt_kop_fifo_override[6:6] <= 1'b0;
      o_sa_global_ctrl[0:0] <= 1'b0;
      o_sa_global_ctrl[1:1] <= 1'b0;
      o_sa_global_ctrl[31:2] <= 30'b0;
      o_sa_ctrl_ia_wdata_part0[4:0] <= 5'b0;
      o_sa_ctrl_ia_wdata_part0[31:5] <= 27'b0;
      o_sa_ctrl_ia_config[4:0] <= 5'b0;
      o_sa_ctrl_ia_config[8:5] <= 4'b0;
      o_kdf_test_key_size_config[31:0] <= 32'b0;
     end
    else
     begin
      if (w_load_spare_config)
       o_spare_config[31:0] <= f32_data[31:0];
      if (w_load_cceip0_out_ia_wdata_part0)
       o_cceip0_out_ia_wdata_part0[5:0] <= f32_data[5:0];
      if (w_load_cceip0_out_ia_wdata_part1)
       o_cceip0_out_ia_wdata_part1[31:0] <= f32_data[31:0];
      if (w_load_cceip0_out_ia_wdata_part2)
       o_cceip0_out_ia_wdata_part2[31:0] <= f32_data[31:0];
      if (w_load_cceip0_out_ia_config)
       o_cceip0_out_ia_config[8:0] <= f32_data[8:0];
      if (w_load_cceip0_out_ia_config)
       o_cceip0_out_ia_config[12:9] <= f32_data[31:28];
      if (w_load_cceip0_out_im_config)
       o_cceip0_out_im_config[9:0] <= f32_data[9:0];
      if (w_load_cceip0_out_im_config)
       o_cceip0_out_im_config[11:10] <= f32_data[31:30];
      if (w_load_cceip0_out_im_read_done)
       o_cceip0_out_im_read_done[0:0] <= f32_data[30:30];
      if (w_load_cceip0_out_im_read_done)
       o_cceip0_out_im_read_done[1:1] <= f32_data[31:31];
      if (w_load_cceip1_out_ia_wdata_part0)
       o_cceip1_out_ia_wdata_part0[5:0] <= f32_data[5:0];
      if (w_load_cceip1_out_ia_wdata_part1)
       o_cceip1_out_ia_wdata_part1[31:0] <= f32_data[31:0];
      if (w_load_cceip1_out_ia_wdata_part2)
       o_cceip1_out_ia_wdata_part2[31:0] <= f32_data[31:0];
      if (w_load_cceip1_out_ia_config)
       o_cceip1_out_ia_config[8:0] <= f32_data[8:0];
      if (w_load_cceip1_out_ia_config)
       o_cceip1_out_ia_config[12:9] <= f32_data[31:28];
      if (w_load_cceip1_out_im_config)
       o_cceip1_out_im_config[9:0] <= f32_data[9:0];
      if (w_load_cceip1_out_im_config)
       o_cceip1_out_im_config[11:10] <= f32_data[31:30];
      if (w_load_cceip1_out_im_read_done)
       o_cceip1_out_im_read_done[0:0] <= f32_data[30:30];
      if (w_load_cceip1_out_im_read_done)
       o_cceip1_out_im_read_done[1:1] <= f32_data[31:31];
      if (w_load_cceip2_out_ia_wdata_part0)
       o_cceip2_out_ia_wdata_part0[5:0] <= f32_data[5:0];
      if (w_load_cceip2_out_ia_wdata_part1)
       o_cceip2_out_ia_wdata_part1[31:0] <= f32_data[31:0];
      if (w_load_cceip2_out_ia_wdata_part2)
       o_cceip2_out_ia_wdata_part2[31:0] <= f32_data[31:0];
      if (w_load_cceip2_out_ia_config)
       o_cceip2_out_ia_config[8:0] <= f32_data[8:0];
      if (w_load_cceip2_out_ia_config)
       o_cceip2_out_ia_config[12:9] <= f32_data[31:28];
      if (w_load_cceip2_out_im_config)
       o_cceip2_out_im_config[9:0] <= f32_data[9:0];
      if (w_load_cceip2_out_im_config)
       o_cceip2_out_im_config[11:10] <= f32_data[31:30];
      if (w_load_cceip2_out_im_read_done)
       o_cceip2_out_im_read_done[0:0] <= f32_data[30:30];
      if (w_load_cceip2_out_im_read_done)
       o_cceip2_out_im_read_done[1:1] <= f32_data[31:31];
      if (w_load_cceip3_out_ia_wdata_part0)
       o_cceip3_out_ia_wdata_part0[5:0] <= f32_data[5:0];
      if (w_load_cceip3_out_ia_wdata_part1)
       o_cceip3_out_ia_wdata_part1[31:0] <= f32_data[31:0];
      if (w_load_cceip3_out_ia_wdata_part2)
       o_cceip3_out_ia_wdata_part2[31:0] <= f32_data[31:0];
      if (w_load_cceip3_out_ia_config)
       o_cceip3_out_ia_config[8:0] <= f32_data[8:0];
      if (w_load_cceip3_out_ia_config)
       o_cceip3_out_ia_config[12:9] <= f32_data[31:28];
      if (w_load_cceip3_out_im_config)
       o_cceip3_out_im_config[9:0] <= f32_data[9:0];
      if (w_load_cceip3_out_im_config)
       o_cceip3_out_im_config[11:10] <= f32_data[31:30];
      if (w_load_cceip3_out_im_read_done)
       o_cceip3_out_im_read_done[0:0] <= f32_data[30:30];
      if (w_load_cceip3_out_im_read_done)
       o_cceip3_out_im_read_done[1:1] <= f32_data[31:31];
      if (w_load_cddip0_out_ia_wdata_part0)
       o_cddip0_out_ia_wdata_part0[5:0] <= f32_data[5:0];
      if (w_load_cddip0_out_ia_wdata_part1)
       o_cddip0_out_ia_wdata_part1[31:0] <= f32_data[31:0];
      if (w_load_cddip0_out_ia_wdata_part2)
       o_cddip0_out_ia_wdata_part2[31:0] <= f32_data[31:0];
      if (w_load_cddip0_out_ia_config)
       o_cddip0_out_ia_config[8:0] <= f32_data[8:0];
      if (w_load_cddip0_out_ia_config)
       o_cddip0_out_ia_config[12:9] <= f32_data[31:28];
      if (w_load_cddip0_out_im_config)
       o_cddip0_out_im_config[9:0] <= f32_data[9:0];
      if (w_load_cddip0_out_im_config)
       o_cddip0_out_im_config[11:10] <= f32_data[31:30];
      if (w_load_cddip0_out_im_read_done)
       o_cddip0_out_im_read_done[0:0] <= f32_data[30:30];
      if (w_load_cddip0_out_im_read_done)
       o_cddip0_out_im_read_done[1:1] <= f32_data[31:31];
      if (w_load_cddip1_out_ia_wdata_part0)
       o_cddip1_out_ia_wdata_part0[5:0] <= f32_data[5:0];
      if (w_load_cddip1_out_ia_wdata_part1)
       o_cddip1_out_ia_wdata_part1[31:0] <= f32_data[31:0];
      if (w_load_cddip1_out_ia_wdata_part2)
       o_cddip1_out_ia_wdata_part2[31:0] <= f32_data[31:0];
      if (w_load_cddip1_out_ia_config)
       o_cddip1_out_ia_config[8:0] <= f32_data[8:0];
      if (w_load_cddip1_out_ia_config)
       o_cddip1_out_ia_config[12:9] <= f32_data[31:28];
      if (w_load_cddip1_out_im_config)
       o_cddip1_out_im_config[9:0] <= f32_data[9:0];
      if (w_load_cddip1_out_im_config)
       o_cddip1_out_im_config[11:10] <= f32_data[31:30];
      if (w_load_cddip1_out_im_read_done)
       o_cddip1_out_im_read_done[0:0] <= f32_data[30:30];
      if (w_load_cddip1_out_im_read_done)
       o_cddip1_out_im_read_done[1:1] <= f32_data[31:31];
      if (w_load_cddip2_out_ia_wdata_part0)
       o_cddip2_out_ia_wdata_part0[5:0] <= f32_data[5:0];
      if (w_load_cddip2_out_ia_wdata_part1)
       o_cddip2_out_ia_wdata_part1[31:0] <= f32_data[31:0];
      if (w_load_cddip2_out_ia_wdata_part2)
       o_cddip2_out_ia_wdata_part2[31:0] <= f32_data[31:0];
      if (w_load_cddip2_out_ia_config)
       o_cddip2_out_ia_config[8:0] <= f32_data[8:0];
      if (w_load_cddip2_out_ia_config)
       o_cddip2_out_ia_config[12:9] <= f32_data[31:28];
      if (w_load_cddip2_out_im_config)
       o_cddip2_out_im_config[9:0] <= f32_data[9:0];
      if (w_load_cddip2_out_im_config)
       o_cddip2_out_im_config[11:10] <= f32_data[31:30];
      if (w_load_cddip2_out_im_read_done)
       o_cddip2_out_im_read_done[0:0] <= f32_data[30:30];
      if (w_load_cddip2_out_im_read_done)
       o_cddip2_out_im_read_done[1:1] <= f32_data[31:31];
      if (w_load_cddip3_out_ia_wdata_part0)
       o_cddip3_out_ia_wdata_part0[5:0] <= f32_data[5:0];
      if (w_load_cddip3_out_ia_wdata_part1)
       o_cddip3_out_ia_wdata_part1[31:0] <= f32_data[31:0];
      if (w_load_cddip3_out_ia_wdata_part2)
       o_cddip3_out_ia_wdata_part2[31:0] <= f32_data[31:0];
      if (w_load_cddip3_out_ia_config)
       o_cddip3_out_ia_config[8:0] <= f32_data[8:0];
      if (w_load_cddip3_out_ia_config)
       o_cddip3_out_ia_config[12:9] <= f32_data[31:28];
      if (w_load_cddip3_out_im_config)
       o_cddip3_out_im_config[9:0] <= f32_data[9:0];
      if (w_load_cddip3_out_im_config)
       o_cddip3_out_im_config[11:10] <= f32_data[31:30];
      if (w_load_cddip3_out_im_read_done)
       o_cddip3_out_im_read_done[0:0] <= f32_data[30:30];
      if (w_load_cddip3_out_im_read_done)
       o_cddip3_out_im_read_done[1:1] <= f32_data[31:31];
      if (w_load_ckv_ia_wdata_part0)
       o_ckv_ia_wdata_part0[31:0] <= f32_data[31:0];
      if (w_load_ckv_ia_wdata_part1)
       o_ckv_ia_wdata_part1[31:0] <= f32_data[31:0];
      if (w_load_ckv_ia_config)
       o_ckv_ia_config[14:0] <= f32_data[14:0];
      if (w_load_ckv_ia_config)
       o_ckv_ia_config[18:15] <= f32_data[31:28];
      if (w_load_kim_ia_wdata_part0)
       o_kim_ia_wdata_part0[14:0] <= f32_data[14:0];
      if (w_load_kim_ia_wdata_part0)
       o_kim_ia_wdata_part0[16:15] <= f32_data[27:26];
      if (w_load_kim_ia_wdata_part0)
       o_kim_ia_wdata_part0[19:17] <= f32_data[30:28];
      if (w_load_kim_ia_wdata_part0)
       o_kim_ia_wdata_part0[20:20] <= f32_data[31:31];
      if (w_load_kim_ia_wdata_part1)
       o_kim_ia_wdata_part1[0:0] <= f32_data[0:0];
      if (w_load_kim_ia_wdata_part1)
       o_kim_ia_wdata_part1[12:1] <= f32_data[12:1];
      if (w_load_kim_ia_wdata_part1)
       o_kim_ia_wdata_part1[16:13] <= f32_data[31:28];
      if (w_load_kim_ia_config)
       o_kim_ia_config[13:0] <= f32_data[13:0];
      if (w_load_kim_ia_config)
       o_kim_ia_config[17:14] <= f32_data[31:28];
      if (w_load_label0_config)
       o_label0_config[7:0] <= f32_data[7:0];
      if (w_load_label0_config)
       o_label0_config[8:8] <= f32_data[8:8];
      if (w_load_label0_config)
       o_label0_config[14:9] <= f32_data[30:25];
      if (w_load_label0_config)
       o_label0_config[15:15] <= f32_data[31:31];
      if (w_load_label0_data7)
       o_label0_data7[31:0] <= f32_data[31:0];
      if (w_load_label0_data6)
       o_label0_data6[31:0] <= f32_data[31:0];
      if (w_load_label0_data5)
       o_label0_data5[31:0] <= f32_data[31:0];
      if (w_load_label0_data4)
       o_label0_data4[31:0] <= f32_data[31:0];
      if (w_load_label0_data3)
       o_label0_data3[31:0] <= f32_data[31:0];
      if (w_load_label0_data2)
       o_label0_data2[31:0] <= f32_data[31:0];
      if (w_load_label0_data1)
       o_label0_data1[31:0] <= f32_data[31:0];
      if (w_load_label0_data0)
       o_label0_data0[31:0] <= f32_data[31:0];
      if (w_load_label1_config)
       o_label1_config[7:0] <= f32_data[7:0];
      if (w_load_label1_config)
       o_label1_config[8:8] <= f32_data[8:8];
      if (w_load_label1_config)
       o_label1_config[14:9] <= f32_data[30:25];
      if (w_load_label1_config)
       o_label1_config[15:15] <= f32_data[31:31];
      if (w_load_label1_data7)
       o_label1_data7[31:0] <= f32_data[31:0];
      if (w_load_label1_data6)
       o_label1_data6[31:0] <= f32_data[31:0];
      if (w_load_label1_data5)
       o_label1_data5[31:0] <= f32_data[31:0];
      if (w_load_label1_data4)
       o_label1_data4[31:0] <= f32_data[31:0];
      if (w_load_label1_data3)
       o_label1_data3[31:0] <= f32_data[31:0];
      if (w_load_label1_data2)
       o_label1_data2[31:0] <= f32_data[31:0];
      if (w_load_label1_data1)
       o_label1_data1[31:0] <= f32_data[31:0];
      if (w_load_label1_data0)
       o_label1_data0[31:0] <= f32_data[31:0];
      if (w_load_label2_config)
       o_label2_config[7:0] <= f32_data[7:0];
      if (w_load_label2_config)
       o_label2_config[8:8] <= f32_data[8:8];
      if (w_load_label2_config)
       o_label2_config[14:9] <= f32_data[30:25];
      if (w_load_label2_config)
       o_label2_config[15:15] <= f32_data[31:31];
      if (w_load_label2_data7)
       o_label2_data7[31:0] <= f32_data[31:0];
      if (w_load_label2_data6)
       o_label2_data6[31:0] <= f32_data[31:0];
      if (w_load_label2_data5)
       o_label2_data5[31:0] <= f32_data[31:0];
      if (w_load_label2_data4)
       o_label2_data4[31:0] <= f32_data[31:0];
      if (w_load_label2_data3)
       o_label2_data3[31:0] <= f32_data[31:0];
      if (w_load_label2_data2)
       o_label2_data2[31:0] <= f32_data[31:0];
      if (w_load_label2_data1)
       o_label2_data1[31:0] <= f32_data[31:0];
      if (w_load_label2_data0)
       o_label2_data0[31:0] <= f32_data[31:0];
      if (w_load_label3_config)
       o_label3_config[7:0] <= f32_data[7:0];
      if (w_load_label3_config)
       o_label3_config[8:8] <= f32_data[8:8];
      if (w_load_label3_config)
       o_label3_config[14:9] <= f32_data[30:25];
      if (w_load_label3_config)
       o_label3_config[15:15] <= f32_data[31:31];
      if (w_load_label3_data7)
       o_label3_data7[31:0] <= f32_data[31:0];
      if (w_load_label3_data6)
       o_label3_data6[31:0] <= f32_data[31:0];
      if (w_load_label3_data5)
       o_label3_data5[31:0] <= f32_data[31:0];
      if (w_load_label3_data4)
       o_label3_data4[31:0] <= f32_data[31:0];
      if (w_load_label3_data3)
       o_label3_data3[31:0] <= f32_data[31:0];
      if (w_load_label3_data2)
       o_label3_data2[31:0] <= f32_data[31:0];
      if (w_load_label3_data1)
       o_label3_data1[31:0] <= f32_data[31:0];
      if (w_load_label3_data0)
       o_label3_data0[31:0] <= f32_data[31:0];
      if (w_load_label4_config)
       o_label4_config[7:0] <= f32_data[7:0];
      if (w_load_label4_config)
       o_label4_config[8:8] <= f32_data[8:8];
      if (w_load_label4_config)
       o_label4_config[14:9] <= f32_data[30:25];
      if (w_load_label4_config)
       o_label4_config[15:15] <= f32_data[31:31];
      if (w_load_label4_data7)
       o_label4_data7[31:0] <= f32_data[31:0];
      if (w_load_label4_data6)
       o_label4_data6[31:0] <= f32_data[31:0];
      if (w_load_label4_data5)
       o_label4_data5[31:0] <= f32_data[31:0];
      if (w_load_label4_data4)
       o_label4_data4[31:0] <= f32_data[31:0];
      if (w_load_label4_data3)
       o_label4_data3[31:0] <= f32_data[31:0];
      if (w_load_label4_data2)
       o_label4_data2[31:0] <= f32_data[31:0];
      if (w_load_label4_data1)
       o_label4_data1[31:0] <= f32_data[31:0];
      if (w_load_label4_data0)
       o_label4_data0[31:0] <= f32_data[31:0];
      if (w_load_label5_config)
       o_label5_config[7:0] <= f32_data[7:0];
      if (w_load_label5_config)
       o_label5_config[8:8] <= f32_data[8:8];
      if (w_load_label5_config)
       o_label5_config[14:9] <= f32_data[30:25];
      if (w_load_label5_config)
       o_label5_config[15:15] <= f32_data[31:31];
      if (w_load_label5_data7)
       o_label5_data7[31:0] <= f32_data[31:0];
      if (w_load_label5_data6)
       o_label5_data6[31:0] <= f32_data[31:0];
      if (w_load_label5_data5)
       o_label5_data5[31:0] <= f32_data[31:0];
      if (w_load_label5_data4)
       o_label5_data4[31:0] <= f32_data[31:0];
      if (w_load_label5_data3)
       o_label5_data3[31:0] <= f32_data[31:0];
      if (w_load_label5_data2)
       o_label5_data2[31:0] <= f32_data[31:0];
      if (w_load_label5_data1)
       o_label5_data1[31:0] <= f32_data[31:0];
      if (w_load_label5_data0)
       o_label5_data0[31:0] <= f32_data[31:0];
      if (w_load_label6_config)
       o_label6_config[7:0] <= f32_data[7:0];
      if (w_load_label6_config)
       o_label6_config[8:8] <= f32_data[8:8];
      if (w_load_label6_config)
       o_label6_config[14:9] <= f32_data[30:25];
      if (w_load_label6_config)
       o_label6_config[15:15] <= f32_data[31:31];
      if (w_load_label6_data7)
       o_label6_data7[31:0] <= f32_data[31:0];
      if (w_load_label6_data6)
       o_label6_data6[31:0] <= f32_data[31:0];
      if (w_load_label6_data5)
       o_label6_data5[31:0] <= f32_data[31:0];
      if (w_load_label6_data4)
       o_label6_data4[31:0] <= f32_data[31:0];
      if (w_load_label6_data3)
       o_label6_data3[31:0] <= f32_data[31:0];
      if (w_load_label6_data2)
       o_label6_data2[31:0] <= f32_data[31:0];
      if (w_load_label6_data1)
       o_label6_data1[31:0] <= f32_data[31:0];
      if (w_load_label6_data0)
       o_label6_data0[31:0] <= f32_data[31:0];
      if (w_load_label7_config)
       o_label7_config[7:0] <= f32_data[7:0];
      if (w_load_label7_config)
       o_label7_config[8:8] <= f32_data[8:8];
      if (w_load_label7_config)
       o_label7_config[14:9] <= f32_data[30:25];
      if (w_load_label7_config)
       o_label7_config[15:15] <= f32_data[31:31];
      if (w_load_label7_data7)
       o_label7_data7[31:0] <= f32_data[31:0];
      if (w_load_label7_data6)
       o_label7_data6[31:0] <= f32_data[31:0];
      if (w_load_label7_data5)
       o_label7_data5[31:0] <= f32_data[31:0];
      if (w_load_label7_data4)
       o_label7_data4[31:0] <= f32_data[31:0];
      if (w_load_label7_data3)
       o_label7_data3[31:0] <= f32_data[31:0];
      if (w_load_label7_data2)
       o_label7_data2[31:0] <= f32_data[31:0];
      if (w_load_label7_data1)
       o_label7_data1[31:0] <= f32_data[31:0];
      if (w_load_label7_data0)
       o_label7_data0[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_ctrl)
       o_kdf_drbg_ctrl[1:0] <= f32_data[1:0];
      if (w_load_kdf_drbg_seed_0_state_key_31_0)
       o_kdf_drbg_seed_0_state_key_31_0[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_state_key_63_32)
       o_kdf_drbg_seed_0_state_key_63_32[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_state_key_95_64)
       o_kdf_drbg_seed_0_state_key_95_64[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_state_key_127_96)
       o_kdf_drbg_seed_0_state_key_127_96[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_state_key_159_128)
       o_kdf_drbg_seed_0_state_key_159_128[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_state_key_191_160)
       o_kdf_drbg_seed_0_state_key_191_160[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_state_key_223_192)
       o_kdf_drbg_seed_0_state_key_223_192[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_state_key_255_224)
       o_kdf_drbg_seed_0_state_key_255_224[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_state_value_31_0)
       o_kdf_drbg_seed_0_state_value_31_0[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_state_value_63_32)
       o_kdf_drbg_seed_0_state_value_63_32[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_state_value_95_64)
       o_kdf_drbg_seed_0_state_value_95_64[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_state_value_127_96)
       o_kdf_drbg_seed_0_state_value_127_96[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_reseed_interval_0)
       o_kdf_drbg_seed_0_reseed_interval_0[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_0_reseed_interval_1)
       o_kdf_drbg_seed_0_reseed_interval_1[15:0] <= f32_data[15:0];
      if (w_load_kdf_drbg_seed_1_state_key_31_0)
       o_kdf_drbg_seed_1_state_key_31_0[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_state_key_63_32)
       o_kdf_drbg_seed_1_state_key_63_32[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_state_key_95_64)
       o_kdf_drbg_seed_1_state_key_95_64[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_state_key_127_96)
       o_kdf_drbg_seed_1_state_key_127_96[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_state_key_159_128)
       o_kdf_drbg_seed_1_state_key_159_128[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_state_key_191_160)
       o_kdf_drbg_seed_1_state_key_191_160[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_state_key_223_192)
       o_kdf_drbg_seed_1_state_key_223_192[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_state_key_255_224)
       o_kdf_drbg_seed_1_state_key_255_224[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_state_value_31_0)
       o_kdf_drbg_seed_1_state_value_31_0[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_state_value_63_32)
       o_kdf_drbg_seed_1_state_value_63_32[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_state_value_95_64)
       o_kdf_drbg_seed_1_state_value_95_64[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_state_value_127_96)
       o_kdf_drbg_seed_1_state_value_127_96[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_reseed_interval_0)
       o_kdf_drbg_seed_1_reseed_interval_0[31:0] <= f32_data[31:0];
      if (w_load_kdf_drbg_seed_1_reseed_interval_1)
       o_kdf_drbg_seed_1_reseed_interval_1[15:0] <= f32_data[15:0];
      if (w_load_interrupt_status)
       o_interrupt_status[0:0] <= f32_data[0:0];
      if (w_load_interrupt_status)
       o_interrupt_status[1:1] <= f32_data[1:1];
      if (w_load_interrupt_status)
       o_interrupt_status[2:2] <= f32_data[2:2];
      if (w_load_interrupt_status)
       o_interrupt_status[3:3] <= f32_data[3:3];
      if (w_load_interrupt_status)
       o_interrupt_status[4:4] <= f32_data[4:4];
      if (w_load_interrupt_mask)
       o_interrupt_mask[0:0] <= f32_data[0:0];
      if (w_load_interrupt_mask)
       o_interrupt_mask[1:1] <= f32_data[1:1];
      if (w_load_interrupt_mask)
       o_interrupt_mask[2:2] <= f32_data[2:2];
      if (w_load_interrupt_mask)
       o_interrupt_mask[3:3] <= f32_data[3:3];
      if (w_load_interrupt_mask)
       o_interrupt_mask[4:4] <= f32_data[4:4];
      if (w_load_engine_sticky_status)
       o_engine_sticky_status[0:0] <= f32_data[0:0];
      if (w_load_engine_sticky_status)
       o_engine_sticky_status[1:1] <= f32_data[1:1];
      if (w_load_engine_sticky_status)
       o_engine_sticky_status[2:2] <= f32_data[2:2];
      if (w_load_engine_sticky_status)
       o_engine_sticky_status[3:3] <= f32_data[3:3];
      if (w_load_engine_sticky_status)
       o_engine_sticky_status[4:4] <= f32_data[4:4];
      if (w_load_engine_sticky_status)
       o_engine_sticky_status[5:5] <= f32_data[5:5];
      if (w_load_engine_sticky_status)
       o_engine_sticky_status[6:6] <= f32_data[6:6];
      if (w_load_engine_sticky_status)
       o_engine_sticky_status[7:7] <= f32_data[7:7];
      if (w_load_bimc_monitor_mask)
       o_bimc_monitor_mask[0:0] <= f32_data[0:0];
      if (w_load_bimc_monitor_mask)
       o_bimc_monitor_mask[1:1] <= f32_data[1:1];
      if (w_load_bimc_monitor_mask)
       o_bimc_monitor_mask[2:2] <= f32_data[2:2];
      if (w_load_bimc_monitor_mask)
       o_bimc_monitor_mask[3:3] <= f32_data[3:3];
      if (w_load_bimc_monitor_mask)
       o_bimc_monitor_mask[4:4] <= f32_data[4:4];
      if (w_load_bimc_monitor_mask)
       o_bimc_monitor_mask[5:5] <= f32_data[5:5];
      if (w_load_bimc_monitor_mask)
       o_bimc_monitor_mask[6:6] <= f32_data[6:6];
      if (w_load_bimc_ecc_uncorrectable_error_cnt)
       o_bimc_ecc_uncorrectable_error_cnt[31:0] <= f32_data[31:0];
      if (w_load_bimc_ecc_correctable_error_cnt)
       o_bimc_ecc_correctable_error_cnt[31:0] <= f32_data[31:0];
      if (w_load_bimc_parity_error_cnt)
       o_bimc_parity_error_cnt[31:0] <= f32_data[31:0];
      if (w_load_bimc_global_config)
       o_bimc_global_config[0:0] <= f32_data[0:0];
      if (w_load_bimc_global_config)
       o_bimc_global_config[1:1] <= f32_data[1:1];
      if (w_load_bimc_global_config)
       o_bimc_global_config[2:2] <= f32_data[2:2];
      if (w_load_bimc_global_config)
       o_bimc_global_config[3:3] <= f32_data[3:3];
      if (w_load_bimc_global_config)
       o_bimc_global_config[4:4] <= f32_data[4:4];
      if (w_load_bimc_global_config)
       o_bimc_global_config[5:5] <= f32_data[5:5];
      if (w_load_bimc_global_config)
       o_bimc_global_config[31:6] <= f32_data[31:6];
      if (w_load_bimc_eccpar_debug)
       o_bimc_eccpar_debug[11:0] <= f32_data[11:0];
      if (w_load_bimc_eccpar_debug)
       o_bimc_eccpar_debug[15:12] <= f32_data[15:12];
      if (w_load_bimc_eccpar_debug)
       o_bimc_eccpar_debug[17:16] <= f32_data[17:16];
      if (w_load_bimc_eccpar_debug)
       o_bimc_eccpar_debug[19:18] <= f32_data[19:18];
      if (w_load_bimc_eccpar_debug)
       o_bimc_eccpar_debug[21:20] <= f32_data[21:20];
      if (w_load_bimc_eccpar_debug)
       o_bimc_eccpar_debug[22:22] <= f32_data[22:22];
      if (w_load_bimc_eccpar_debug)
       o_bimc_eccpar_debug[23:23] <= f32_data[23:23];
      if (w_load_bimc_eccpar_debug)
       o_bimc_eccpar_debug[27:24] <= f32_data[27:24];
      if (w_load_bimc_eccpar_debug)
       o_bimc_eccpar_debug[28:28] <= f32_data[28:28];
      if (w_load_bimc_cmd2)
       o_bimc_cmd2[7:0] <= f32_data[7:0];
      if (w_load_bimc_cmd2)
       o_bimc_cmd2[8:8] <= f32_data[8:8];
      if (w_load_bimc_cmd2)
       o_bimc_cmd2[9:9] <= f32_data[9:9];
      if (w_load_bimc_cmd2)
       o_bimc_cmd2[10:10] <= f32_data[10:10];
      if (w_load_bimc_cmd1)
       o_bimc_cmd1[15:0] <= f32_data[15:0];
      if (w_load_bimc_cmd1)
       o_bimc_cmd1[27:16] <= f32_data[27:16];
      if (w_load_bimc_cmd1)
       o_bimc_cmd1[31:28] <= f32_data[31:28];
      if (w_load_bimc_cmd0)
       o_bimc_cmd0[31:0] <= f32_data[31:0];
      if (w_load_bimc_rxcmd2)
       o_bimc_rxcmd2[7:0] <= f32_data[7:0];
      if (w_load_bimc_rxcmd2)
       o_bimc_rxcmd2[8:8] <= f32_data[8:8];
      if (w_load_bimc_rxrsp2)
       o_bimc_rxrsp2[7:0] <= f32_data[7:0];
      if (w_load_bimc_rxrsp2)
       o_bimc_rxrsp2[8:8] <= f32_data[8:8];
      if (w_load_bimc_pollrsp2)
       o_bimc_pollrsp2[7:0] <= f32_data[7:0];
      if (w_load_bimc_pollrsp2)
       o_bimc_pollrsp2[8:8] <= f32_data[8:8];
      if (w_load_bimc_dbgcmd2)
       o_bimc_dbgcmd2[7:0] <= f32_data[7:0];
      if (w_load_bimc_dbgcmd2)
       o_bimc_dbgcmd2[8:8] <= f32_data[8:8];
      if (w_load_im_consumed)
       o_im_consumed[0:0] <= f32_data[0:0];
      if (w_load_im_consumed)
       o_im_consumed[1:1] <= f32_data[1:1];
      if (w_load_im_consumed)
       o_im_consumed[2:2] <= f32_data[2:2];
      if (w_load_im_consumed)
       o_im_consumed[3:3] <= f32_data[3:3];
      if (w_load_im_consumed)
       o_im_consumed[4:4] <= f32_data[4:4];
      if (w_load_im_consumed)
       o_im_consumed[5:5] <= f32_data[5:5];
      if (w_load_im_consumed)
       o_im_consumed[6:6] <= f32_data[6:6];
      if (w_load_im_consumed)
       o_im_consumed[7:7] <= f32_data[7:7];
      if (w_load_im_consumed)
       o_im_consumed[8:8] <= f32_data[8:8];
      if (w_load_im_consumed)
       o_im_consumed[9:9] <= f32_data[9:9];
      if (w_load_im_consumed)
       o_im_consumed[10:10] <= f32_data[10:10];
      if (w_load_im_consumed)
       o_im_consumed[11:11] <= f32_data[11:11];
      if (w_load_im_consumed)
       o_im_consumed[12:12] <= f32_data[12:12];
      if (w_load_im_consumed)
       o_im_consumed[13:13] <= f32_data[13:13];
      if (w_load_im_consumed)
       o_im_consumed[14:14] <= f32_data[14:14];
      if (w_load_im_consumed)
       o_im_consumed[15:15] <= f32_data[15:15];
      if (w_load_tready_override)
       o_tready_override[0:0] <= f32_data[0:0];
      if (w_load_tready_override)
       o_tready_override[1:1] <= f32_data[1:1];
      if (w_load_tready_override)
       o_tready_override[2:2] <= f32_data[2:2];
      if (w_load_tready_override)
       o_tready_override[3:3] <= f32_data[3:3];
      if (w_load_tready_override)
       o_tready_override[4:4] <= f32_data[4:4];
      if (w_load_tready_override)
       o_tready_override[5:5] <= f32_data[5:5];
      if (w_load_tready_override)
       o_tready_override[6:6] <= f32_data[6:6];
      if (w_load_tready_override)
       o_tready_override[7:7] <= f32_data[7:7];
      if (w_load_tready_override)
       o_tready_override[8:8] <= f32_data[8:8];
      if (w_load_regs_sa_ctrl)
       o_regs_sa_ctrl[0:0] <= f32_data[0:0];
      if (w_load_regs_sa_ctrl)
       o_regs_sa_ctrl[1:1] <= f32_data[1:1];
      if (w_load_regs_sa_ctrl)
       o_regs_sa_ctrl[7:2] <= f32_data[7:2];
      if (w_load_regs_sa_ctrl)
       o_regs_sa_ctrl[12:8] <= f32_data[12:8];
      if (w_load_regs_sa_ctrl)
       o_regs_sa_ctrl[31:13] <= f32_data[31:13];
      if (w_load_sa_snapshot_ia_wdata_part0)
       o_sa_snapshot_ia_wdata_part0[17:0] <= f32_data[17:0];
      if (w_load_sa_snapshot_ia_wdata_part0)
       o_sa_snapshot_ia_wdata_part0[31:18] <= f32_data[31:18];
      if (w_load_sa_snapshot_ia_wdata_part1)
       o_sa_snapshot_ia_wdata_part1[31:0] <= f32_data[31:0];
      if (w_load_sa_snapshot_ia_config)
       o_sa_snapshot_ia_config[4:0] <= f32_data[4:0];
      if (w_load_sa_snapshot_ia_config)
       o_sa_snapshot_ia_config[8:5] <= f32_data[31:28];
      if (w_load_sa_count_ia_wdata_part0)
       o_sa_count_ia_wdata_part0[17:0] <= f32_data[17:0];
      if (w_load_sa_count_ia_wdata_part0)
       o_sa_count_ia_wdata_part0[31:18] <= f32_data[31:18];
      if (w_load_sa_count_ia_wdata_part1)
       o_sa_count_ia_wdata_part1[31:0] <= f32_data[31:0];
      if (w_load_sa_count_ia_config)
       o_sa_count_ia_config[4:0] <= f32_data[4:0];
      if (w_load_sa_count_ia_config)
       o_sa_count_ia_config[8:5] <= f32_data[31:28];
      if (w_load_cceip_encrypt_kop_fifo_override)
       o_cceip_encrypt_kop_fifo_override[0:0] <= f32_data[0:0];
      if (w_load_cceip_encrypt_kop_fifo_override)
       o_cceip_encrypt_kop_fifo_override[1:1] <= f32_data[1:1];
      if (w_load_cceip_encrypt_kop_fifo_override)
       o_cceip_encrypt_kop_fifo_override[2:2] <= f32_data[2:2];
      if (w_load_cceip_encrypt_kop_fifo_override)
       o_cceip_encrypt_kop_fifo_override[3:3] <= f32_data[3:3];
      if (w_load_cceip_encrypt_kop_fifo_override)
       o_cceip_encrypt_kop_fifo_override[4:4] <= f32_data[4:4];
      if (w_load_cceip_encrypt_kop_fifo_override)
       o_cceip_encrypt_kop_fifo_override[5:5] <= f32_data[5:5];
      if (w_load_cceip_encrypt_kop_fifo_override)
       o_cceip_encrypt_kop_fifo_override[6:6] <= f32_data[6:6];
      if (w_load_cceip_validate_kop_fifo_override)
       o_cceip_validate_kop_fifo_override[0:0] <= f32_data[0:0];
      if (w_load_cceip_validate_kop_fifo_override)
       o_cceip_validate_kop_fifo_override[1:1] <= f32_data[1:1];
      if (w_load_cceip_validate_kop_fifo_override)
       o_cceip_validate_kop_fifo_override[2:2] <= f32_data[2:2];
      if (w_load_cceip_validate_kop_fifo_override)
       o_cceip_validate_kop_fifo_override[3:3] <= f32_data[3:3];
      if (w_load_cceip_validate_kop_fifo_override)
       o_cceip_validate_kop_fifo_override[4:4] <= f32_data[4:4];
      if (w_load_cceip_validate_kop_fifo_override)
       o_cceip_validate_kop_fifo_override[5:5] <= f32_data[5:5];
      if (w_load_cceip_validate_kop_fifo_override)
       o_cceip_validate_kop_fifo_override[6:6] <= f32_data[6:6];
      if (w_load_cddip_decrypt_kop_fifo_override)
       o_cddip_decrypt_kop_fifo_override[0:0] <= f32_data[0:0];
      if (w_load_cddip_decrypt_kop_fifo_override)
       o_cddip_decrypt_kop_fifo_override[1:1] <= f32_data[1:1];
      if (w_load_cddip_decrypt_kop_fifo_override)
       o_cddip_decrypt_kop_fifo_override[2:2] <= f32_data[2:2];
      if (w_load_cddip_decrypt_kop_fifo_override)
       o_cddip_decrypt_kop_fifo_override[3:3] <= f32_data[3:3];
      if (w_load_cddip_decrypt_kop_fifo_override)
       o_cddip_decrypt_kop_fifo_override[4:4] <= f32_data[4:4];
      if (w_load_cddip_decrypt_kop_fifo_override)
       o_cddip_decrypt_kop_fifo_override[5:5] <= f32_data[5:5];
      if (w_load_cddip_decrypt_kop_fifo_override)
       o_cddip_decrypt_kop_fifo_override[6:6] <= f32_data[6:6];
      if (w_load_sa_global_ctrl)
       o_sa_global_ctrl[0:0] <= f32_data[0:0];
      if (w_load_sa_global_ctrl)
       o_sa_global_ctrl[1:1] <= f32_data[1:1];
      if (w_load_sa_global_ctrl)
       o_sa_global_ctrl[31:2] <= f32_data[31:2];
      if (w_load_sa_ctrl_ia_wdata_part0)
       o_sa_ctrl_ia_wdata_part0[4:0] <= f32_data[4:0];
      if (w_load_sa_ctrl_ia_wdata_part0)
       o_sa_ctrl_ia_wdata_part0[31:5] <= f32_data[31:5];
      if (w_load_sa_ctrl_ia_config)
       o_sa_ctrl_ia_config[4:0] <= f32_data[4:0];
      if (w_load_sa_ctrl_ia_config)
       o_sa_ctrl_ia_config[8:5] <= f32_data[31:28];
      if (w_load_kdf_test_key_size_config)
       o_kdf_test_key_size_config[31:0] <= f32_data[31:0];
     end
  end
always_ff 
 @(posedge clk)
  begin
   if (w_load_cceip0_out_ia_wdata_part0)
    o_cceip0_out_ia_wdata_part0[13:6] <= f32_data[13:6];
   if (w_load_cceip0_out_ia_wdata_part0)
    o_cceip0_out_ia_wdata_part0[14:14] <= f32_data[14:14];
   if (w_load_cceip0_out_ia_wdata_part0)
    o_cceip0_out_ia_wdata_part0[22:15] <= f32_data[22:15];
   if (w_load_cceip0_out_ia_wdata_part0)
    o_cceip0_out_ia_wdata_part0[30:23] <= f32_data[30:23];
   if (w_load_cceip0_out_ia_wdata_part0)
    o_cceip0_out_ia_wdata_part0[31:31] <= f32_data[31:31];
   if (w_load_cceip1_out_ia_wdata_part0)
    o_cceip1_out_ia_wdata_part0[13:6] <= f32_data[13:6];
   if (w_load_cceip1_out_ia_wdata_part0)
    o_cceip1_out_ia_wdata_part0[14:14] <= f32_data[14:14];
   if (w_load_cceip1_out_ia_wdata_part0)
    o_cceip1_out_ia_wdata_part0[22:15] <= f32_data[22:15];
   if (w_load_cceip1_out_ia_wdata_part0)
    o_cceip1_out_ia_wdata_part0[30:23] <= f32_data[30:23];
   if (w_load_cceip1_out_ia_wdata_part0)
    o_cceip1_out_ia_wdata_part0[31:31] <= f32_data[31:31];
   if (w_load_cceip2_out_ia_wdata_part0)
    o_cceip2_out_ia_wdata_part0[13:6] <= f32_data[13:6];
   if (w_load_cceip2_out_ia_wdata_part0)
    o_cceip2_out_ia_wdata_part0[14:14] <= f32_data[14:14];
   if (w_load_cceip2_out_ia_wdata_part0)
    o_cceip2_out_ia_wdata_part0[22:15] <= f32_data[22:15];
   if (w_load_cceip2_out_ia_wdata_part0)
    o_cceip2_out_ia_wdata_part0[30:23] <= f32_data[30:23];
   if (w_load_cceip2_out_ia_wdata_part0)
    o_cceip2_out_ia_wdata_part0[31:31] <= f32_data[31:31];
   if (w_load_cceip3_out_ia_wdata_part0)
    o_cceip3_out_ia_wdata_part0[13:6] <= f32_data[13:6];
   if (w_load_cceip3_out_ia_wdata_part0)
    o_cceip3_out_ia_wdata_part0[14:14] <= f32_data[14:14];
   if (w_load_cceip3_out_ia_wdata_part0)
    o_cceip3_out_ia_wdata_part0[22:15] <= f32_data[22:15];
   if (w_load_cceip3_out_ia_wdata_part0)
    o_cceip3_out_ia_wdata_part0[30:23] <= f32_data[30:23];
   if (w_load_cceip3_out_ia_wdata_part0)
    o_cceip3_out_ia_wdata_part0[31:31] <= f32_data[31:31];
   if (w_load_cddip0_out_ia_wdata_part0)
    o_cddip0_out_ia_wdata_part0[13:6] <= f32_data[13:6];
   if (w_load_cddip0_out_ia_wdata_part0)
    o_cddip0_out_ia_wdata_part0[14:14] <= f32_data[14:14];
   if (w_load_cddip0_out_ia_wdata_part0)
    o_cddip0_out_ia_wdata_part0[22:15] <= f32_data[22:15];
   if (w_load_cddip0_out_ia_wdata_part0)
    o_cddip0_out_ia_wdata_part0[30:23] <= f32_data[30:23];
   if (w_load_cddip0_out_ia_wdata_part0)
    o_cddip0_out_ia_wdata_part0[31:31] <= f32_data[31:31];
   if (w_load_cddip1_out_ia_wdata_part0)
    o_cddip1_out_ia_wdata_part0[13:6] <= f32_data[13:6];
   if (w_load_cddip1_out_ia_wdata_part0)
    o_cddip1_out_ia_wdata_part0[14:14] <= f32_data[14:14];
   if (w_load_cddip1_out_ia_wdata_part0)
    o_cddip1_out_ia_wdata_part0[22:15] <= f32_data[22:15];
   if (w_load_cddip1_out_ia_wdata_part0)
    o_cddip1_out_ia_wdata_part0[30:23] <= f32_data[30:23];
   if (w_load_cddip1_out_ia_wdata_part0)
    o_cddip1_out_ia_wdata_part0[31:31] <= f32_data[31:31];
   if (w_load_cddip2_out_ia_wdata_part0)
    o_cddip2_out_ia_wdata_part0[13:6] <= f32_data[13:6];
   if (w_load_cddip2_out_ia_wdata_part0)
    o_cddip2_out_ia_wdata_part0[14:14] <= f32_data[14:14];
   if (w_load_cddip2_out_ia_wdata_part0)
    o_cddip2_out_ia_wdata_part0[22:15] <= f32_data[22:15];
   if (w_load_cddip2_out_ia_wdata_part0)
    o_cddip2_out_ia_wdata_part0[30:23] <= f32_data[30:23];
   if (w_load_cddip2_out_ia_wdata_part0)
    o_cddip2_out_ia_wdata_part0[31:31] <= f32_data[31:31];
   if (w_load_cddip3_out_ia_wdata_part0)
    o_cddip3_out_ia_wdata_part0[13:6] <= f32_data[13:6];
   if (w_load_cddip3_out_ia_wdata_part0)
    o_cddip3_out_ia_wdata_part0[14:14] <= f32_data[14:14];
   if (w_load_cddip3_out_ia_wdata_part0)
    o_cddip3_out_ia_wdata_part0[22:15] <= f32_data[22:15];
   if (w_load_cddip3_out_ia_wdata_part0)
    o_cddip3_out_ia_wdata_part0[30:23] <= f32_data[30:23];
   if (w_load_cddip3_out_ia_wdata_part0)
    o_cddip3_out_ia_wdata_part0[31:31] <= f32_data[31:31];
   if (w_load_bimc_rxcmd2)
    o_bimc_rxcmd2[9:9] <= f32_data[9:9];
   if (w_load_bimc_rxrsp2)
    o_bimc_rxrsp2[9:9] <= f32_data[9:9];
   if (w_load_bimc_pollrsp2)
    o_bimc_pollrsp2[9:9] <= f32_data[9:9];
   if (w_load_bimc_dbgcmd2)
    o_bimc_dbgcmd2[9:9] <= f32_data[9:9];
  end
endmodule

