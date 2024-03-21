// xc_work/v/93n.sv
// /home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_regs.sv:25
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module cr_kme_regs(input  clk,input  i_reset_,input  i_sw_init,input  [10:0] i_addr ,input  i_wr_strb,input  [31:0] i_wr_data ,input  i_rd_strb,output  [31:0] o_rd_data ,output  o_ack,output  o_err_ack,output  [31:0] o_spare_config ,output  [31:0] o_cceip0_out_ia_wdata_part0 
,output  [31:0] o_cceip0_out_ia_wdata_part1 ,output  [31:0] o_cceip0_out_ia_wdata_part2 ,output  [12:0] o_cceip0_out_ia_config ,output  [11:0] o_cceip0_out_im_config ,output  [1:0] o_cceip0_out_im_read_done ,output  [31:0] o_cceip1_out_ia_wdata_part0 ,output  [31:0] o_cceip1_out_ia_wdata_part1 ,output  [31:0] o_cceip1_out_ia_wdata_part2 ,output  [12:0] o_cceip1_out_ia_config ,output  [11:0] o_cceip1_out_im_config ,output  [1:0] o_cceip1_out_im_read_done ,output  [31:0] o_cceip2_out_ia_wdata_part0 
,output  [31:0] o_cceip2_out_ia_wdata_part1 ,output  [31:0] o_cceip2_out_ia_wdata_part2 ,output  [12:0] o_cceip2_out_ia_config ,output  [11:0] o_cceip2_out_im_config ,output  [1:0] o_cceip2_out_im_read_done ,output  [31:0] o_cceip3_out_ia_wdata_part0 ,output  [31:0] o_cceip3_out_ia_wdata_part1 ,output  [31:0] o_cceip3_out_ia_wdata_part2 ,output  [12:0] o_cceip3_out_ia_config ,output  [11:0] o_cceip3_out_im_config ,output  [1:0] o_cceip3_out_im_read_done ,output  [31:0] o_cddip0_out_ia_wdata_part0 
,output  [31:0] o_cddip0_out_ia_wdata_part1 ,output  [31:0] o_cddip0_out_ia_wdata_part2 ,output  [12:0] o_cddip0_out_ia_config ,output  [11:0] o_cddip0_out_im_config ,output  [1:0] o_cddip0_out_im_read_done ,output  [31:0] o_cddip1_out_ia_wdata_part0 ,output  [31:0] o_cddip1_out_ia_wdata_part1 ,output  [31:0] o_cddip1_out_ia_wdata_part2 ,output  [12:0] o_cddip1_out_ia_config ,output  [11:0] o_cddip1_out_im_config ,output  [1:0] o_cddip1_out_im_read_done ,output  [31:0] o_cddip2_out_ia_wdata_part0 
,output  [31:0] o_cddip2_out_ia_wdata_part1 ,output  [31:0] o_cddip2_out_ia_wdata_part2 ,output  [12:0] o_cddip2_out_ia_config ,output  [11:0] o_cddip2_out_im_config ,output  [1:0] o_cddip2_out_im_read_done ,output  [31:0] o_cddip3_out_ia_wdata_part0 ,output  [31:0] o_cddip3_out_ia_wdata_part1 ,output  [31:0] o_cddip3_out_ia_wdata_part2 ,output  [12:0] o_cddip3_out_ia_config ,output  [11:0] o_cddip3_out_im_config ,output  [1:0] o_cddip3_out_im_read_done ,output  [31:0] o_ckv_ia_wdata_part0 
,output  [31:0] o_ckv_ia_wdata_part1 ,output  [18:0] o_ckv_ia_config ,output  [20:0] o_kim_ia_wdata_part0 ,output  [16:0] o_kim_ia_wdata_part1 ,output  [17:0] o_kim_ia_config ,output  [15:0] o_label0_config ,output  [31:0] o_label0_data7 ,output  [31:0] o_label0_data6 ,output  [31:0] o_label0_data5 ,output  [31:0] o_label0_data4 ,output  [31:0] o_label0_data3 ,output  [31:0] o_label0_data2 
,output  [31:0] o_label0_data1 ,output  [31:0] o_label0_data0 ,output  [15:0] o_label1_config ,output  [31:0] o_label1_data7 ,output  [31:0] o_label1_data6 ,output  [31:0] o_label1_data5 ,output  [31:0] o_label1_data4 ,output  [31:0] o_label1_data3 ,output  [31:0] o_label1_data2 ,output  [31:0] o_label1_data1 ,output  [31:0] o_label1_data0 ,output  [15:0] o_label2_config 
,output  [31:0] o_label2_data7 ,output  [31:0] o_label2_data6 ,output  [31:0] o_label2_data5 ,output  [31:0] o_label2_data4 ,output  [31:0] o_label2_data3 ,output  [31:0] o_label2_data2 ,output  [31:0] o_label2_data1 ,output  [31:0] o_label2_data0 ,output  [15:0] o_label3_config ,output  [31:0] o_label3_data7 ,output  [31:0] o_label3_data6 ,output  [31:0] o_label3_data5 
,output  [31:0] o_label3_data4 ,output  [31:0] o_label3_data3 ,output  [31:0] o_label3_data2 ,output  [31:0] o_label3_data1 ,output  [31:0] o_label3_data0 ,output  [15:0] o_label4_config ,output  [31:0] o_label4_data7 ,output  [31:0] o_label4_data6 ,output  [31:0] o_label4_data5 ,output  [31:0] o_label4_data4 ,output  [31:0] o_label4_data3 ,output  [31:0] o_label4_data2 
,output  [31:0] o_label4_data1 ,output  [31:0] o_label4_data0 ,output  [15:0] o_label5_config ,output  [31:0] o_label5_data7 ,output  [31:0] o_label5_data6 ,output  [31:0] o_label5_data5 ,output  [31:0] o_label5_data4 ,output  [31:0] o_label5_data3 ,output  [31:0] o_label5_data2 ,output  [31:0] o_label5_data1 ,output  [31:0] o_label5_data0 ,output  [15:0] o_label6_config 
,output  [31:0] o_label6_data7 ,output  [31:0] o_label6_data6 ,output  [31:0] o_label6_data5 ,output  [31:0] o_label6_data4 ,output  [31:0] o_label6_data3 ,output  [31:0] o_label6_data2 ,output  [31:0] o_label6_data1 ,output  [31:0] o_label6_data0 ,output  [15:0] o_label7_config ,output  [31:0] o_label7_data7 ,output  [31:0] o_label7_data6 ,output  [31:0] o_label7_data5 
,output  [31:0] o_label7_data4 ,output  [31:0] o_label7_data3 ,output  [31:0] o_label7_data2 ,output  [31:0] o_label7_data1 ,output  [31:0] o_label7_data0 ,output  [1:0] o_kdf_drbg_ctrl ,output  [31:0] o_kdf_drbg_seed_0_state_key_31_0 ,output  [31:0] o_kdf_drbg_seed_0_state_key_63_32 ,output  [31:0] o_kdf_drbg_seed_0_state_key_95_64 ,output  [31:0] o_kdf_drbg_seed_0_state_key_127_96 ,output  [31:0] o_kdf_drbg_seed_0_state_key_159_128 ,output  [31:0] o_kdf_drbg_seed_0_state_key_191_160 
,output  [31:0] o_kdf_drbg_seed_0_state_key_223_192 ,output  [31:0] o_kdf_drbg_seed_0_state_key_255_224 ,output  [31:0] o_kdf_drbg_seed_0_state_value_31_0 ,output  [31:0] o_kdf_drbg_seed_0_state_value_63_32 ,output  [31:0] o_kdf_drbg_seed_0_state_value_95_64 ,output  [31:0] o_kdf_drbg_seed_0_state_value_127_96 ,output  [31:0] o_kdf_drbg_seed_0_reseed_interval_0 ,output  [15:0] o_kdf_drbg_seed_0_reseed_interval_1 ,output  [31:0] o_kdf_drbg_seed_1_state_key_31_0 ,output  [31:0] o_kdf_drbg_seed_1_state_key_63_32 ,output  [31:0] o_kdf_drbg_seed_1_state_key_95_64 ,output  [31:0] o_kdf_drbg_seed_1_state_key_127_96 
,output  [31:0] o_kdf_drbg_seed_1_state_key_159_128 ,output  [31:0] o_kdf_drbg_seed_1_state_key_191_160 ,output  [31:0] o_kdf_drbg_seed_1_state_key_223_192 ,output  [31:0] o_kdf_drbg_seed_1_state_key_255_224 ,output  [31:0] o_kdf_drbg_seed_1_state_value_31_0 ,output  [31:0] o_kdf_drbg_seed_1_state_value_63_32 ,output  [31:0] o_kdf_drbg_seed_1_state_value_95_64 ,output  [31:0] o_kdf_drbg_seed_1_state_value_127_96 ,output  [31:0] o_kdf_drbg_seed_1_reseed_interval_0 ,output  [15:0] o_kdf_drbg_seed_1_reseed_interval_1 ,output  [4:0] o_interrupt_status ,output  [4:0] o_interrupt_mask 
,output  [7:0] o_engine_sticky_status ,output  [6:0] o_bimc_monitor_mask ,output  [31:0] o_bimc_ecc_uncorrectable_error_cnt ,output  [31:0] o_bimc_ecc_correctable_error_cnt ,output  [31:0] o_bimc_parity_error_cnt ,output  [31:0] o_bimc_global_config ,output  [28:0] o_bimc_eccpar_debug ,output  [10:0] o_bimc_cmd2 ,output  [31:0] o_bimc_cmd1 ,output  [31:0] o_bimc_cmd0 ,output  [9:0] o_bimc_rxcmd2 ,output  [9:0] o_bimc_rxrsp2 
,output  [9:0] o_bimc_pollrsp2 ,output  [9:0] o_bimc_dbgcmd2 ,output  [15:0] o_im_consumed ,output  [8:0] o_tready_override ,output  [31:0] o_regs_sa_ctrl ,output  [31:0] o_sa_snapshot_ia_wdata_part0 ,output  [31:0] o_sa_snapshot_ia_wdata_part1 ,output  [8:0] o_sa_snapshot_ia_config ,output  [31:0] o_sa_count_ia_wdata_part0 ,output  [31:0] o_sa_count_ia_wdata_part1 ,output  [8:0] o_sa_count_ia_config ,output  [6:0] o_cceip_encrypt_kop_fifo_override 
,output  [6:0] o_cceip_validate_kop_fifo_override ,output  [6:0] o_cddip_decrypt_kop_fifo_override ,output  [31:0] o_sa_global_ctrl ,output  [31:0] o_sa_ctrl_ia_wdata_part0 ,output  [8:0] o_sa_ctrl_ia_config ,output  [31:0] o_kdf_test_key_size_config ,input  [31:0] i_blkid_revid_config ,input  [7:0] i_revision_config ,input  [31:0] i_spare_config ,input  [19:0] i_cceip0_out_ia_capability ,input  [16:0] i_cceip0_out_ia_status ,input  [31:0] i_cceip0_out_ia_rdata_part0 
,input  [31:0] i_cceip0_out_ia_rdata_part1 ,input  [31:0] i_cceip0_out_ia_rdata_part2 ,input  [11:0] i_cceip0_out_im_status ,input  [1:0] i_cceip0_out_im_read_done ,input  [19:0] i_cceip1_out_ia_capability ,input  [16:0] i_cceip1_out_ia_status ,input  [31:0] i_cceip1_out_ia_rdata_part0 ,input  [31:0] i_cceip1_out_ia_rdata_part1 ,input  [31:0] i_cceip1_out_ia_rdata_part2 ,input  [11:0] i_cceip1_out_im_status ,input  [1:0] i_cceip1_out_im_read_done ,input  [19:0] i_cceip2_out_ia_capability 
,input  [16:0] i_cceip2_out_ia_status ,input  [31:0] i_cceip2_out_ia_rdata_part0 ,input  [31:0] i_cceip2_out_ia_rdata_part1 ,input  [31:0] i_cceip2_out_ia_rdata_part2 ,input  [11:0] i_cceip2_out_im_status ,input  [1:0] i_cceip2_out_im_read_done ,input  [19:0] i_cceip3_out_ia_capability ,input  [16:0] i_cceip3_out_ia_status ,input  [31:0] i_cceip3_out_ia_rdata_part0 ,input  [31:0] i_cceip3_out_ia_rdata_part1 ,input  [31:0] i_cceip3_out_ia_rdata_part2 ,input  [11:0] i_cceip3_out_im_status 
,input  [1:0] i_cceip3_out_im_read_done ,input  [19:0] i_cddip0_out_ia_capability ,input  [16:0] i_cddip0_out_ia_status ,input  [31:0] i_cddip0_out_ia_rdata_part0 ,input  [31:0] i_cddip0_out_ia_rdata_part1 ,input  [31:0] i_cddip0_out_ia_rdata_part2 ,input  [11:0] i_cddip0_out_im_status ,input  [1:0] i_cddip0_out_im_read_done ,input  [19:0] i_cddip1_out_ia_capability ,input  [16:0] i_cddip1_out_ia_status ,input  [31:0] i_cddip1_out_ia_rdata_part0 ,input  [31:0] i_cddip1_out_ia_rdata_part1 
,input  [31:0] i_cddip1_out_ia_rdata_part2 ,input  [11:0] i_cddip1_out_im_status ,input  [1:0] i_cddip1_out_im_read_done ,input  [19:0] i_cddip2_out_ia_capability ,input  [16:0] i_cddip2_out_ia_status ,input  [31:0] i_cddip2_out_ia_rdata_part0 ,input  [31:0] i_cddip2_out_ia_rdata_part1 ,input  [31:0] i_cddip2_out_ia_rdata_part2 ,input  [11:0] i_cddip2_out_im_status ,input  [1:0] i_cddip2_out_im_read_done ,input  [19:0] i_cddip3_out_ia_capability ,input  [16:0] i_cddip3_out_ia_status 
,input  [31:0] i_cddip3_out_ia_rdata_part0 ,input  [31:0] i_cddip3_out_ia_rdata_part1 ,input  [31:0] i_cddip3_out_ia_rdata_part2 ,input  [11:0] i_cddip3_out_im_status ,input  [1:0] i_cddip3_out_im_read_done ,input  [19:0] i_ckv_ia_capability ,input  [22:0] i_ckv_ia_status ,input  [31:0] i_ckv_ia_rdata_part0 ,input  [31:0] i_ckv_ia_rdata_part1 ,input  [19:0] i_kim_ia_capability ,input  [21:0] i_kim_ia_status ,input  [20:0] i_kim_ia_rdata_part0 
,input  [16:0] i_kim_ia_rdata_part1 ,input  [1:0] i_kdf_drbg_ctrl ,input  [4:0] i_interrupt_status ,input  [7:0] i_engine_sticky_status ,input  [6:0] i_bimc_monitor ,input  [31:0] i_bimc_ecc_uncorrectable_error_cnt ,input  [31:0] i_bimc_ecc_correctable_error_cnt ,input  [31:0] i_bimc_parity_error_cnt ,input  [31:0] i_bimc_global_config ,input  [11:0] i_bimc_memid ,input  [28:0] i_bimc_eccpar_debug ,input  [10:0] i_bimc_cmd2 
,input  [9:0] i_bimc_rxcmd2 ,input  [31:0] i_bimc_rxcmd1 ,input  [31:0] i_bimc_rxcmd0 ,input  [9:0] i_bimc_rxrsp2 ,input  [31:0] i_bimc_rxrsp1 ,input  [31:0] i_bimc_rxrsp0 ,input  [9:0] i_bimc_pollrsp2 ,input  [31:0] i_bimc_pollrsp1 ,input  [31:0] i_bimc_pollrsp0 ,input  [9:0] i_bimc_dbgcmd2 ,input  [31:0] i_bimc_dbgcmd1 ,input  [31:0] i_bimc_dbgcmd0 
,input  [15:0] i_im_available ,input  [15:0] i_im_consumed ,input  [8:0] i_tready_override ,input  [31:0] i_regs_sa_ctrl ,input  [19:0] i_sa_snapshot_ia_capability ,input  [12:0] i_sa_snapshot_ia_status ,input  [31:0] i_sa_snapshot_ia_rdata_part0 ,input  [31:0] i_sa_snapshot_ia_rdata_part1 ,input  [19:0] i_sa_count_ia_capability ,input  [12:0] i_sa_count_ia_status ,input  [31:0] i_sa_count_ia_rdata_part0 ,input  [31:0] i_sa_count_ia_rdata_part1 
,input  [31:0] i_idle_components ,input  [31:0] i_sa_global_ctrl ,input  [19:0] i_sa_ctrl_ia_capability ,input  [12:0] i_sa_ctrl_ia_status ,input  [31:0] i_sa_ctrl_ia_rdata_part0 ,output reg o_reg_written,output reg o_reg_read,output  [31:0] o_reg_wr_data ,output reg [10:0] o_reg_addr );
wire  [10:0] ws_read_addr ;
wire  [10:0] ws_addr ;
wire  n_wr_strobe;
wire  n_rd_strobe;
wire  w_32b_aligned;
wire  w_valid_rd_addr;
wire  w_valid_wr_addr;
wire  w_valid_addr;
parameter IDLE = 3'b0;
parameter WR_PREP = 3'b01;
parameter WR_REG = 3'b011;
parameter WAIT = 3'b100;
parameter RD_PREP = 3'b101;
parameter RD_REG = 3'b111;
reg n_write;
reg [2:0] f_state ;
reg f_prev_do_read;
wire  w_do_write;
wire  w_do_read;
wire  [2:0] w_next_state ;
wire  w_next_ack;
wire  w_next_err_ack;
reg f_ack;
reg f_err_ack;
reg [31:0] r32_mux_0_data ;
reg [31:0] f32_mux_0_data ;
reg [31:0] r32_mux_1_data ;
reg [31:0] f32_mux_1_data ;
reg [31:0] r32_mux_2_data ;
reg [31:0] f32_mux_2_data ;
reg [31:0] r32_mux_3_data ;
reg [31:0] f32_mux_3_data ;
reg [31:0] r32_mux_4_data ;
reg [31:0] f32_mux_4_data ;
reg [31:0] r32_mux_5_data ;
reg [31:0] f32_mux_5_data ;
reg [31:0] r32_mux_6_data ;
reg [31:0] f32_mux_6_data ;
reg [31:0] r32_mux_7_data ;
reg [31:0] f32_mux_7_data ;
reg [31:0] r32_mux_8_data ;
reg [31:0] f32_mux_8_data ;
wire  [31:0] r32_formatted_reg_data ;
reg [31:0] f32_data ;
wire  w_load_spare_config;
wire  w_load_cceip0_out_ia_wdata_part0;
wire  w_load_cceip0_out_ia_wdata_part1;
wire  w_load_cceip0_out_ia_wdata_part2;
wire  w_load_cceip0_out_ia_config;
wire  w_load_cceip0_out_im_config;
wire  w_load_cceip0_out_im_read_done;
wire  w_load_cceip1_out_ia_wdata_part0;
wire  w_load_cceip1_out_ia_wdata_part1;
wire  w_load_cceip1_out_ia_wdata_part2;
wire  w_load_cceip1_out_ia_config;
wire  w_load_cceip1_out_im_config;
wire  w_load_cceip1_out_im_read_done;
wire  w_load_cceip2_out_ia_wdata_part0;
wire  w_load_cceip2_out_ia_wdata_part1;
wire  w_load_cceip2_out_ia_wdata_part2;
wire  w_load_cceip2_out_ia_config;
wire  w_load_cceip2_out_im_config;
wire  w_load_cceip2_out_im_read_done;
wire  w_load_cceip3_out_ia_wdata_part0;
wire  w_load_cceip3_out_ia_wdata_part1;
wire  w_load_cceip3_out_ia_wdata_part2;
wire  w_load_cceip3_out_ia_config;
wire  w_load_cceip3_out_im_config;
wire  w_load_cceip3_out_im_read_done;
wire  w_load_cddip0_out_ia_wdata_part0;
wire  w_load_cddip0_out_ia_wdata_part1;
wire  w_load_cddip0_out_ia_wdata_part2;
wire  w_load_cddip0_out_ia_config;
wire  w_load_cddip0_out_im_config;
wire  w_load_cddip0_out_im_read_done;
wire  w_load_cddip1_out_ia_wdata_part0;
wire  w_load_cddip1_out_ia_wdata_part1;
wire  w_load_cddip1_out_ia_wdata_part2;
wire  w_load_cddip1_out_ia_config;
wire  w_load_cddip1_out_im_config;
wire  w_load_cddip1_out_im_read_done;
wire  w_load_cddip2_out_ia_wdata_part0;
wire  w_load_cddip2_out_ia_wdata_part1;
wire  w_load_cddip2_out_ia_wdata_part2;
wire  w_load_cddip2_out_ia_config;
wire  w_load_cddip2_out_im_config;
wire  w_load_cddip2_out_im_read_done;
wire  w_load_cddip3_out_ia_wdata_part0;
wire  w_load_cddip3_out_ia_wdata_part1;
wire  w_load_cddip3_out_ia_wdata_part2;
wire  w_load_cddip3_out_ia_config;
wire  w_load_cddip3_out_im_config;
wire  w_load_cddip3_out_im_read_done;
wire  w_load_ckv_ia_wdata_part0;
wire  w_load_ckv_ia_wdata_part1;
wire  w_load_ckv_ia_config;
wire  w_load_kim_ia_wdata_part0;
wire  w_load_kim_ia_wdata_part1;
wire  w_load_kim_ia_config;
wire  w_load_label0_config;
wire  w_load_label0_data7;
wire  w_load_label0_data6;
wire  w_load_label0_data5;
wire  w_load_label0_data4;
wire  w_load_label0_data3;
wire  w_load_label0_data2;
wire  w_load_label0_data1;
wire  w_load_label0_data0;
wire  w_load_label1_config;
wire  w_load_label1_data7;
wire  w_load_label1_data6;
wire  w_load_label1_data5;
wire  w_load_label1_data4;
wire  w_load_label1_data3;
wire  w_load_label1_data2;
wire  w_load_label1_data1;
wire  w_load_label1_data0;
wire  w_load_label2_config;
wire  w_load_label2_data7;
wire  w_load_label2_data6;
wire  w_load_label2_data5;
wire  w_load_label2_data4;
wire  w_load_label2_data3;
wire  w_load_label2_data2;
wire  w_load_label2_data1;
wire  w_load_label2_data0;
wire  w_load_label3_config;
wire  w_load_label3_data7;
wire  w_load_label3_data6;
wire  w_load_label3_data5;
wire  w_load_label3_data4;
wire  w_load_label3_data3;
wire  w_load_label3_data2;
wire  w_load_label3_data1;
wire  w_load_label3_data0;
wire  w_load_label4_config;
wire  w_load_label4_data7;
wire  w_load_label4_data6;
wire  w_load_label4_data5;
wire  w_load_label4_data4;
wire  w_load_label4_data3;
wire  w_load_label4_data2;
wire  w_load_label4_data1;
wire  w_load_label4_data0;
wire  w_load_label5_config;
wire  w_load_label5_data7;
wire  w_load_label5_data6;
wire  w_load_label5_data5;
wire  w_load_label5_data4;
wire  w_load_label5_data3;
wire  w_load_label5_data2;
wire  w_load_label5_data1;
wire  w_load_label5_data0;
wire  w_load_label6_config;
wire  w_load_label6_data7;
wire  w_load_label6_data6;
wire  w_load_label6_data5;
wire  w_load_label6_data4;
wire  w_load_label6_data3;
wire  w_load_label6_data2;
wire  w_load_label6_data1;
wire  w_load_label6_data0;
wire  w_load_label7_config;
wire  w_load_label7_data7;
wire  w_load_label7_data6;
wire  w_load_label7_data5;
wire  w_load_label7_data4;
wire  w_load_label7_data3;
wire  w_load_label7_data2;
wire  w_load_label7_data1;
wire  w_load_label7_data0;
wire  w_load_kdf_drbg_ctrl;
wire  w_load_kdf_drbg_seed_0_state_key_31_0;
wire  w_load_kdf_drbg_seed_0_state_key_63_32;
wire  w_load_kdf_drbg_seed_0_state_key_95_64;
wire  w_load_kdf_drbg_seed_0_state_key_127_96;
wire  w_load_kdf_drbg_seed_0_state_key_159_128;
wire  w_load_kdf_drbg_seed_0_state_key_191_160;
wire  w_load_kdf_drbg_seed_0_state_key_223_192;
wire  w_load_kdf_drbg_seed_0_state_key_255_224;
wire  w_load_kdf_drbg_seed_0_state_value_31_0;
wire  w_load_kdf_drbg_seed_0_state_value_63_32;
wire  w_load_kdf_drbg_seed_0_state_value_95_64;
wire  w_load_kdf_drbg_seed_0_state_value_127_96;
wire  w_load_kdf_drbg_seed_0_reseed_interval_0;
wire  w_load_kdf_drbg_seed_0_reseed_interval_1;
wire  w_load_kdf_drbg_seed_1_state_key_31_0;
wire  w_load_kdf_drbg_seed_1_state_key_63_32;
wire  w_load_kdf_drbg_seed_1_state_key_95_64;
wire  w_load_kdf_drbg_seed_1_state_key_127_96;
wire  w_load_kdf_drbg_seed_1_state_key_159_128;
wire  w_load_kdf_drbg_seed_1_state_key_191_160;
wire  w_load_kdf_drbg_seed_1_state_key_223_192;
wire  w_load_kdf_drbg_seed_1_state_key_255_224;
wire  w_load_kdf_drbg_seed_1_state_value_31_0;
wire  w_load_kdf_drbg_seed_1_state_value_63_32;
wire  w_load_kdf_drbg_seed_1_state_value_95_64;
wire  w_load_kdf_drbg_seed_1_state_value_127_96;
wire  w_load_kdf_drbg_seed_1_reseed_interval_0;
wire  w_load_kdf_drbg_seed_1_reseed_interval_1;
wire  w_load_interrupt_status;
wire  w_load_interrupt_mask;
wire  w_load_engine_sticky_status;
wire  w_load_bimc_monitor_mask;
wire  w_load_bimc_ecc_uncorrectable_error_cnt;
wire  w_load_bimc_ecc_correctable_error_cnt;
wire  w_load_bimc_parity_error_cnt;
wire  w_load_bimc_global_config;
wire  w_load_bimc_eccpar_debug;
wire  w_load_bimc_cmd2;
wire  w_load_bimc_cmd1;
wire  w_load_bimc_cmd0;
wire  w_load_bimc_rxcmd2;
wire  w_load_bimc_rxrsp2;
wire  w_load_bimc_pollrsp2;
wire  w_load_bimc_dbgcmd2;
wire  w_load_im_consumed;
wire  w_load_tready_override;
wire  w_load_regs_sa_ctrl;
wire  w_load_sa_snapshot_ia_wdata_part0;
wire  w_load_sa_snapshot_ia_wdata_part1;
wire  w_load_sa_snapshot_ia_config;
wire  w_load_sa_count_ia_wdata_part0;
wire  w_load_sa_count_ia_wdata_part1;
wire  w_load_sa_count_ia_config;
wire  w_load_cceip_encrypt_kop_fifo_override;
wire  w_load_cceip_validate_kop_fifo_override;
wire  w_load_cddip_decrypt_kop_fifo_override;
wire  w_load_sa_global_ctrl;
wire  w_load_sa_ctrl_ia_wdata_part0;
wire  w_load_sa_ctrl_ia_config;
wire  w_load_kdf_test_key_size_config;
wire  _zy_simnet_o_reg_written_0_w$;
wire  _zy_simnet_o_reg_read_1_w$;
wire  [0:10] _zy_simnet_o_reg_addr_2_w$ ;
wire  [0:31] _zy_simnet_f32_data_3_w$ ;
assign  ws_read_addr = o_reg_addr;
assign  ws_addr = o_reg_addr;
assign  n_wr_strobe = i_wr_strb;
assign  n_rd_strobe = i_rd_strb;
assign  w_32b_aligned = (o_reg_addr[1:0] == 2'b0);
assign  w_valid_rd_addr = (((((((((((((w_32b_aligned && (ws_addr >= 11'b0)) && (ws_addr <= 11'b0111000000)) || ((w_32b_aligned && (ws_addr >= 11'b0111001000)) && (ws_addr <= 11'b0111101000))) || ((w_32b_aligned && (ws_addr >= 11'b0111110000)) && (ws_addr <= 11'b01000010000))) || ((w_32b_aligned && (ws_addr >= 11'b01000011000)) && (ws_addr <= 11'b01000111000))) || ((w_32b_aligned && (ws_addr >= 11'b01001000000)) && (ws_addr <= 11'b01001100000))) || ((w_32b_aligned && (ws_addr >= 11'b01001101000)) && (ws_addr <= 11'b01010001000))) || ((w_32b_aligned && (ws_addr >= 11'b01010010000)) && (ws_addr <= 11'b01010110000))) || ((w_32b_aligned && (ws_addr >= 11'b01010111000)) && (ws_addr <= 11'b01011011000))) || ((w_32b_aligned && (ws_addr >= 11'b01011100000)) && (ws_addr <= 11'b01100000000))) || ((w_32b_aligned && (ws_addr >= 11'b01100001000)) && (ws_addr <= 11'b01110000100))) || ((w_32b_aligned && (ws_addr >= 11'b01110001100)) && (ws_addr <= 11'b01111100100))) || ((w_32b_aligned && (ws_addr >= 11'b01111101100)) && (ws_addr <= 11'b10001011100)));
assign  w_valid_wr_addr = (((((((((((((w_32b_aligned && (ws_addr >= 11'b0)) && (ws_addr <= 11'b0111000000)) || ((w_32b_aligned && (ws_addr >= 11'b0111001000)) && (ws_addr <= 11'b0111101000))) || ((w_32b_aligned && (ws_addr >= 11'b0111110000)) && (ws_addr <= 11'b01000010000))) || ((w_32b_aligned && (ws_addr >= 11'b01000011000)) && (ws_addr <= 11'b01000111000))) || ((w_32b_aligned && (ws_addr >= 11'b01001000000)) && (ws_addr <= 11'b01001100000))) || ((w_32b_aligned && (ws_addr >= 11'b01001101000)) && (ws_addr <= 11'b01010001000))) || ((w_32b_aligned && (ws_addr >= 11'b01010010000)) && (ws_addr <= 11'b01010110000))) || ((w_32b_aligned && (ws_addr >= 11'b01010111000)) && (ws_addr <= 11'b01011011000))) || ((w_32b_aligned && (ws_addr >= 11'b01011100000)) && (ws_addr <= 11'b01100000000))) || ((w_32b_aligned && (ws_addr >= 11'b01100001000)) && (ws_addr <= 11'b01110000100))) || ((w_32b_aligned && (ws_addr >= 11'b01110001100)) && (ws_addr <= 11'b01111100100))) || ((w_32b_aligned && (ws_addr >= 11'b01111101100)) && (ws_addr <= 11'b10001011100)));
assign  w_valid_addr = (w_valid_wr_addr | w_valid_rd_addr);
assign  w_do_write = (f_state == 3'b01);
assign  w_do_read = (f_state == 3'b101);
assign  w_next_state = (n_wr_strobe ? 3'b01 : (n_rd_strobe ? 3'b101 : ((f_state == 3'b01) ? 3'b011 : ((f_state == 3'b101) ? 3'b111 : 3'b0))));
assign  w_next_ack = (f_state == 3'b101);
assign  w_next_err_ack = ((f_state == 3'b101) & ( ~w_valid_rd_addr ));
assign  o_ack = (f_ack | (f_state == 3'b01));
assign  o_err_ack = (f_err_ack | ((f_state == 3'b01) & ( ~w_valid_wr_addr )));
assign  r32_formatted_reg_data = ((((((((f32_mux_0_data | f32_mux_1_data) | f32_mux_2_data) | f32_mux_3_data) | f32_mux_4_data) | f32_mux_5_data) | f32_mux_6_data) | f32_mux_7_data) | f32_mux_8_data);
assign  o_reg_wr_data = f32_data;
assign  o_rd_data = ((o_ack & ( ~n_write )) ? r32_formatted_reg_data : 32'b0);
assign  w_load_spare_config = (w_do_write & (ws_addr == 11'b01000));
assign  w_load_cceip0_out_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b010100));
assign  w_load_cceip0_out_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b011000));
assign  w_load_cceip0_out_ia_wdata_part2 = (w_do_write & (ws_addr == 11'b011100));
assign  w_load_cceip0_out_ia_config = (w_do_write & (ws_addr == 11'b0100000));
assign  w_load_cceip0_out_im_config = (w_do_write & (ws_addr == 11'b0110000));
assign  w_load_cceip0_out_im_read_done = (w_do_write & (ws_addr == 11'b0111000));
assign  w_load_cceip1_out_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b01000100));
assign  w_load_cceip1_out_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b01001000));
assign  w_load_cceip1_out_ia_wdata_part2 = (w_do_write & (ws_addr == 11'b01001100));
assign  w_load_cceip1_out_ia_config = (w_do_write & (ws_addr == 11'b01010000));
assign  w_load_cceip1_out_im_config = (w_do_write & (ws_addr == 11'b01100000));
assign  w_load_cceip1_out_im_read_done = (w_do_write & (ws_addr == 11'b01101000));
assign  w_load_cceip2_out_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b01110100));
assign  w_load_cceip2_out_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b01111000));
assign  w_load_cceip2_out_ia_wdata_part2 = (w_do_write & (ws_addr == 11'b01111100));
assign  w_load_cceip2_out_ia_config = (w_do_write & (ws_addr == 11'b010000000));
assign  w_load_cceip2_out_im_config = (w_do_write & (ws_addr == 11'b010010000));
assign  w_load_cceip2_out_im_read_done = (w_do_write & (ws_addr == 11'b010011000));
assign  w_load_cceip3_out_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b010100100));
assign  w_load_cceip3_out_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b010101000));
assign  w_load_cceip3_out_ia_wdata_part2 = (w_do_write & (ws_addr == 11'b010101100));
assign  w_load_cceip3_out_ia_config = (w_do_write & (ws_addr == 11'b010110000));
assign  w_load_cceip3_out_im_config = (w_do_write & (ws_addr == 11'b011000000));
assign  w_load_cceip3_out_im_read_done = (w_do_write & (ws_addr == 11'b011001000));
assign  w_load_cddip0_out_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b011010100));
assign  w_load_cddip0_out_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b011011000));
assign  w_load_cddip0_out_ia_wdata_part2 = (w_do_write & (ws_addr == 11'b011011100));
assign  w_load_cddip0_out_ia_config = (w_do_write & (ws_addr == 11'b011100000));
assign  w_load_cddip0_out_im_config = (w_do_write & (ws_addr == 11'b011110000));
assign  w_load_cddip0_out_im_read_done = (w_do_write & (ws_addr == 11'b011111000));
assign  w_load_cddip1_out_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b0100000100));
assign  w_load_cddip1_out_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b0100001000));
assign  w_load_cddip1_out_ia_wdata_part2 = (w_do_write & (ws_addr == 11'b0100001100));
assign  w_load_cddip1_out_ia_config = (w_do_write & (ws_addr == 11'b0100010000));
assign  w_load_cddip1_out_im_config = (w_do_write & (ws_addr == 11'b0100100000));
assign  w_load_cddip1_out_im_read_done = (w_do_write & (ws_addr == 11'b0100101000));
assign  w_load_cddip2_out_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b0100110100));
assign  w_load_cddip2_out_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b0100111000));
assign  w_load_cddip2_out_ia_wdata_part2 = (w_do_write & (ws_addr == 11'b0100111100));
assign  w_load_cddip2_out_ia_config = (w_do_write & (ws_addr == 11'b0101000000));
assign  w_load_cddip2_out_im_config = (w_do_write & (ws_addr == 11'b0101010000));
assign  w_load_cddip2_out_im_read_done = (w_do_write & (ws_addr == 11'b0101011000));
assign  w_load_cddip3_out_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b0101100100));
assign  w_load_cddip3_out_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b0101101000));
assign  w_load_cddip3_out_ia_wdata_part2 = (w_do_write & (ws_addr == 11'b0101101100));
assign  w_load_cddip3_out_ia_config = (w_do_write & (ws_addr == 11'b0101110000));
assign  w_load_cddip3_out_im_config = (w_do_write & (ws_addr == 11'b0110000000));
assign  w_load_cddip3_out_im_read_done = (w_do_write & (ws_addr == 11'b0110001000));
assign  w_load_ckv_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b0110010100));
assign  w_load_ckv_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b0110011000));
assign  w_load_ckv_ia_config = (w_do_write & (ws_addr == 11'b0110011100));
assign  w_load_kim_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b0110110000));
assign  w_load_kim_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b0110110100));
assign  w_load_kim_ia_config = (w_do_write & (ws_addr == 11'b0110111000));
assign  w_load_label0_config = (w_do_write & (ws_addr == 11'b0111001000));
assign  w_load_label0_data7 = (w_do_write & (ws_addr == 11'b0111001100));
assign  w_load_label0_data6 = (w_do_write & (ws_addr == 11'b0111010000));
assign  w_load_label0_data5 = (w_do_write & (ws_addr == 11'b0111010100));
assign  w_load_label0_data4 = (w_do_write & (ws_addr == 11'b0111011000));
assign  w_load_label0_data3 = (w_do_write & (ws_addr == 11'b0111011100));
assign  w_load_label0_data2 = (w_do_write & (ws_addr == 11'b0111100000));
assign  w_load_label0_data1 = (w_do_write & (ws_addr == 11'b0111100100));
assign  w_load_label0_data0 = (w_do_write & (ws_addr == 11'b0111101000));
assign  w_load_label1_config = (w_do_write & (ws_addr == 11'b0111110000));
assign  w_load_label1_data7 = (w_do_write & (ws_addr == 11'b0111110100));
assign  w_load_label1_data6 = (w_do_write & (ws_addr == 11'b0111111000));
assign  w_load_label1_data5 = (w_do_write & (ws_addr == 11'b0111111100));
assign  w_load_label1_data4 = (w_do_write & (ws_addr == 11'b01000000000));
assign  w_load_label1_data3 = (w_do_write & (ws_addr == 11'b01000000100));
assign  w_load_label1_data2 = (w_do_write & (ws_addr == 11'b01000001000));
assign  w_load_label1_data1 = (w_do_write & (ws_addr == 11'b01000001100));
assign  w_load_label1_data0 = (w_do_write & (ws_addr == 11'b01000010000));
assign  w_load_label2_config = (w_do_write & (ws_addr == 11'b01000011000));
assign  w_load_label2_data7 = (w_do_write & (ws_addr == 11'b01000011100));
assign  w_load_label2_data6 = (w_do_write & (ws_addr == 11'b01000100000));
assign  w_load_label2_data5 = (w_do_write & (ws_addr == 11'b01000100100));
assign  w_load_label2_data4 = (w_do_write & (ws_addr == 11'b01000101000));
assign  w_load_label2_data3 = (w_do_write & (ws_addr == 11'b01000101100));
assign  w_load_label2_data2 = (w_do_write & (ws_addr == 11'b01000110000));
assign  w_load_label2_data1 = (w_do_write & (ws_addr == 11'b01000110100));
assign  w_load_label2_data0 = (w_do_write & (ws_addr == 11'b01000111000));
assign  w_load_label3_config = (w_do_write & (ws_addr == 11'b01001000000));
assign  w_load_label3_data7 = (w_do_write & (ws_addr == 11'b01001000100));
assign  w_load_label3_data6 = (w_do_write & (ws_addr == 11'b01001001000));
assign  w_load_label3_data5 = (w_do_write & (ws_addr == 11'b01001001100));
assign  w_load_label3_data4 = (w_do_write & (ws_addr == 11'b01001010000));
assign  w_load_label3_data3 = (w_do_write & (ws_addr == 11'b01001010100));
assign  w_load_label3_data2 = (w_do_write & (ws_addr == 11'b01001011000));
assign  w_load_label3_data1 = (w_do_write & (ws_addr == 11'b01001011100));
assign  w_load_label3_data0 = (w_do_write & (ws_addr == 11'b01001100000));
assign  w_load_label4_config = (w_do_write & (ws_addr == 11'b01001101000));
assign  w_load_label4_data7 = (w_do_write & (ws_addr == 11'b01001101100));
assign  w_load_label4_data6 = (w_do_write & (ws_addr == 11'b01001110000));
assign  w_load_label4_data5 = (w_do_write & (ws_addr == 11'b01001110100));
assign  w_load_label4_data4 = (w_do_write & (ws_addr == 11'b01001111000));
assign  w_load_label4_data3 = (w_do_write & (ws_addr == 11'b01001111100));
assign  w_load_label4_data2 = (w_do_write & (ws_addr == 11'b01010000000));
assign  w_load_label4_data1 = (w_do_write & (ws_addr == 11'b01010000100));
assign  w_load_label4_data0 = (w_do_write & (ws_addr == 11'b01010001000));
assign  w_load_label5_config = (w_do_write & (ws_addr == 11'b01010010000));
assign  w_load_label5_data7 = (w_do_write & (ws_addr == 11'b01010010100));
assign  w_load_label5_data6 = (w_do_write & (ws_addr == 11'b01010011000));
assign  w_load_label5_data5 = (w_do_write & (ws_addr == 11'b01010011100));
assign  w_load_label5_data4 = (w_do_write & (ws_addr == 11'b01010100000));
assign  w_load_label5_data3 = (w_do_write & (ws_addr == 11'b01010100100));
assign  w_load_label5_data2 = (w_do_write & (ws_addr == 11'b01010101000));
assign  w_load_label5_data1 = (w_do_write & (ws_addr == 11'b01010101100));
assign  w_load_label5_data0 = (w_do_write & (ws_addr == 11'b01010110000));
assign  w_load_label6_config = (w_do_write & (ws_addr == 11'b01010111000));
assign  w_load_label6_data7 = (w_do_write & (ws_addr == 11'b01010111100));
assign  w_load_label6_data6 = (w_do_write & (ws_addr == 11'b01011000000));
assign  w_load_label6_data5 = (w_do_write & (ws_addr == 11'b01011000100));
assign  w_load_label6_data4 = (w_do_write & (ws_addr == 11'b01011001000));
assign  w_load_label6_data3 = (w_do_write & (ws_addr == 11'b01011001100));
assign  w_load_label6_data2 = (w_do_write & (ws_addr == 11'b01011010000));
assign  w_load_label6_data1 = (w_do_write & (ws_addr == 11'b01011010100));
assign  w_load_label6_data0 = (w_do_write & (ws_addr == 11'b01011011000));
assign  w_load_label7_config = (w_do_write & (ws_addr == 11'b01011100000));
assign  w_load_label7_data7 = (w_do_write & (ws_addr == 11'b01011100100));
assign  w_load_label7_data6 = (w_do_write & (ws_addr == 11'b01011101000));
assign  w_load_label7_data5 = (w_do_write & (ws_addr == 11'b01011101100));
assign  w_load_label7_data4 = (w_do_write & (ws_addr == 11'b01011110000));
assign  w_load_label7_data3 = (w_do_write & (ws_addr == 11'b01011110100));
assign  w_load_label7_data2 = (w_do_write & (ws_addr == 11'b01011111000));
assign  w_load_label7_data1 = (w_do_write & (ws_addr == 11'b01011111100));
assign  w_load_label7_data0 = (w_do_write & (ws_addr == 11'b01100000000));
assign  w_load_kdf_drbg_ctrl = (w_do_write & (ws_addr == 11'b01100001000));
assign  w_load_kdf_drbg_seed_0_state_key_31_0 = (w_do_write & (ws_addr == 11'b01100001100));
assign  w_load_kdf_drbg_seed_0_state_key_63_32 = (w_do_write & (ws_addr == 11'b01100010000));
assign  w_load_kdf_drbg_seed_0_state_key_95_64 = (w_do_write & (ws_addr == 11'b01100010100));
assign  w_load_kdf_drbg_seed_0_state_key_127_96 = (w_do_write & (ws_addr == 11'b01100011000));
assign  w_load_kdf_drbg_seed_0_state_key_159_128 = (w_do_write & (ws_addr == 11'b01100011100));
assign  w_load_kdf_drbg_seed_0_state_key_191_160 = (w_do_write & (ws_addr == 11'b01100100000));
assign  w_load_kdf_drbg_seed_0_state_key_223_192 = (w_do_write & (ws_addr == 11'b01100100100));
assign  w_load_kdf_drbg_seed_0_state_key_255_224 = (w_do_write & (ws_addr == 11'b01100101000));
assign  w_load_kdf_drbg_seed_0_state_value_31_0 = (w_do_write & (ws_addr == 11'b01100101100));
assign  w_load_kdf_drbg_seed_0_state_value_63_32 = (w_do_write & (ws_addr == 11'b01100110000));
assign  w_load_kdf_drbg_seed_0_state_value_95_64 = (w_do_write & (ws_addr == 11'b01100110100));
assign  w_load_kdf_drbg_seed_0_state_value_127_96 = (w_do_write & (ws_addr == 11'b01100111000));
assign  w_load_kdf_drbg_seed_0_reseed_interval_0 = (w_do_write & (ws_addr == 11'b01100111100));
assign  w_load_kdf_drbg_seed_0_reseed_interval_1 = (w_do_write & (ws_addr == 11'b01101000000));
assign  w_load_kdf_drbg_seed_1_state_key_31_0 = (w_do_write & (ws_addr == 11'b01101000100));
assign  w_load_kdf_drbg_seed_1_state_key_63_32 = (w_do_write & (ws_addr == 11'b01101001000));
assign  w_load_kdf_drbg_seed_1_state_key_95_64 = (w_do_write & (ws_addr == 11'b01101001100));
assign  w_load_kdf_drbg_seed_1_state_key_127_96 = (w_do_write & (ws_addr == 11'b01101010000));
assign  w_load_kdf_drbg_seed_1_state_key_159_128 = (w_do_write & (ws_addr == 11'b01101010100));
assign  w_load_kdf_drbg_seed_1_state_key_191_160 = (w_do_write & (ws_addr == 11'b01101011000));
assign  w_load_kdf_drbg_seed_1_state_key_223_192 = (w_do_write & (ws_addr == 11'b01101011100));
assign  w_load_kdf_drbg_seed_1_state_key_255_224 = (w_do_write & (ws_addr == 11'b01101100000));
assign  w_load_kdf_drbg_seed_1_state_value_31_0 = (w_do_write & (ws_addr == 11'b01101100100));
assign  w_load_kdf_drbg_seed_1_state_value_63_32 = (w_do_write & (ws_addr == 11'b01101101000));
assign  w_load_kdf_drbg_seed_1_state_value_95_64 = (w_do_write & (ws_addr == 11'b01101101100));
assign  w_load_kdf_drbg_seed_1_state_value_127_96 = (w_do_write & (ws_addr == 11'b01101110000));
assign  w_load_kdf_drbg_seed_1_reseed_interval_0 = (w_do_write & (ws_addr == 11'b01101110100));
assign  w_load_kdf_drbg_seed_1_reseed_interval_1 = (w_do_write & (ws_addr == 11'b01101111000));
assign  w_load_interrupt_status = (w_do_write & (ws_addr == 11'b01101111100));
assign  w_load_interrupt_mask = (w_do_write & (ws_addr == 11'b01110000000));
assign  w_load_engine_sticky_status = (w_do_write & (ws_addr == 11'b01110000100));
assign  w_load_bimc_monitor_mask = (w_do_write & (ws_addr == 11'b01110010000));
assign  w_load_bimc_ecc_uncorrectable_error_cnt = (w_do_write & (ws_addr == 11'b01110010100));
assign  w_load_bimc_ecc_correctable_error_cnt = (w_do_write & (ws_addr == 11'b01110011000));
assign  w_load_bimc_parity_error_cnt = (w_do_write & (ws_addr == 11'b01110011100));
assign  w_load_bimc_global_config = (w_do_write & (ws_addr == 11'b01110100000));
assign  w_load_bimc_eccpar_debug = (w_do_write & (ws_addr == 11'b01110101000));
assign  w_load_bimc_cmd2 = (w_do_write & (ws_addr == 11'b01110101100));
assign  w_load_bimc_cmd1 = (w_do_write & (ws_addr == 11'b01110110000));
assign  w_load_bimc_cmd0 = (w_do_write & (ws_addr == 11'b01110110100));
assign  w_load_bimc_rxcmd2 = (w_do_write & (ws_addr == 11'b01110111000));
assign  w_load_bimc_rxrsp2 = (w_do_write & (ws_addr == 11'b01111000100));
assign  w_load_bimc_pollrsp2 = (w_do_write & (ws_addr == 11'b01111010000));
assign  w_load_bimc_dbgcmd2 = (w_do_write & (ws_addr == 11'b01111011100));
assign  w_load_im_consumed = (w_do_write & (ws_addr == 11'b01111110000));
assign  w_load_tready_override = (w_do_write & (ws_addr == 11'b01111110100));
assign  w_load_regs_sa_ctrl = (w_do_write & (ws_addr == 11'b01111111000));
assign  w_load_sa_snapshot_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b10000000100));
assign  w_load_sa_snapshot_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b10000001000));
assign  w_load_sa_snapshot_ia_config = (w_do_write & (ws_addr == 11'b10000001100));
assign  w_load_sa_count_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b10000100000));
assign  w_load_sa_count_ia_wdata_part1 = (w_do_write & (ws_addr == 11'b10000100100));
assign  w_load_sa_count_ia_config = (w_do_write & (ws_addr == 11'b10000101000));
assign  w_load_cceip_encrypt_kop_fifo_override = (w_do_write & (ws_addr == 11'b10000111000));
assign  w_load_cceip_validate_kop_fifo_override = (w_do_write & (ws_addr == 11'b10000111100));
assign  w_load_cddip_decrypt_kop_fifo_override = (w_do_write & (ws_addr == 11'b10001000000));
assign  w_load_sa_global_ctrl = (w_do_write & (ws_addr == 11'b10001000100));
assign  w_load_sa_ctrl_ia_wdata_part0 = (w_do_write & (ws_addr == 11'b10001010000));
assign  w_load_sa_ctrl_ia_config = (w_do_write & (ws_addr == 11'b10001010100));
assign  w_load_kdf_test_key_size_config = (w_do_write & (ws_addr == 11'b10001011100));
assign  _zy_simnet_o_reg_written_0_w$ = o_reg_written;
assign  _zy_simnet_o_reg_read_1_w$ = o_reg_read;
assign  _zy_simnet_o_reg_addr_2_w$ = o_reg_addr;
assign  _zy_simnet_f32_data_3_w$ = f32_data;
cr_kme_regs_flops u_cr_kme_regs_flops(
  .clk(clk) ,
  .i_reset_(i_reset_) ,
  .i_sw_init(i_sw_init) ,
  .o_spare_config(o_spare_config) ,
  .o_cceip0_out_ia_wdata_part0(o_cceip0_out_ia_wdata_part0) ,
  .o_cceip0_out_ia_wdata_part1(o_cceip0_out_ia_wdata_part1) ,
  .o_cceip0_out_ia_wdata_part2(o_cceip0_out_ia_wdata_part2) ,
  .o_cceip0_out_ia_config(o_cceip0_out_ia_config) ,
  .o_cceip0_out_im_config(o_cceip0_out_im_config) ,
  .o_cceip0_out_im_read_done(o_cceip0_out_im_read_done) ,
  .o_cceip1_out_ia_wdata_part0(o_cceip1_out_ia_wdata_part0) ,
  .o_cceip1_out_ia_wdata_part1(o_cceip1_out_ia_wdata_part1) ,
  .o_cceip1_out_ia_wdata_part2(o_cceip1_out_ia_wdata_part2) ,
  .o_cceip1_out_ia_config(o_cceip1_out_ia_config) ,
  .o_cceip1_out_im_config(o_cceip1_out_im_config) ,
  .o_cceip1_out_im_read_done(o_cceip1_out_im_read_done) ,
  .o_cceip2_out_ia_wdata_part0(o_cceip2_out_ia_wdata_part0) ,
  .o_cceip2_out_ia_wdata_part1(o_cceip2_out_ia_wdata_part1) ,
  .o_cceip2_out_ia_wdata_part2(o_cceip2_out_ia_wdata_part2) ,
  .o_cceip2_out_ia_config(o_cceip2_out_ia_config) ,
  .o_cceip2_out_im_config(o_cceip2_out_im_config) ,
  .o_cceip2_out_im_read_done(o_cceip2_out_im_read_done) ,
  .o_cceip3_out_ia_wdata_part0(o_cceip3_out_ia_wdata_part0) ,
  .o_cceip3_out_ia_wdata_part1(o_cceip3_out_ia_wdata_part1) ,
  .o_cceip3_out_ia_wdata_part2(o_cceip3_out_ia_wdata_part2) ,
  .o_cceip3_out_ia_config(o_cceip3_out_ia_config) ,
  .o_cceip3_out_im_config(o_cceip3_out_im_config) ,
  .o_cceip3_out_im_read_done(o_cceip3_out_im_read_done) ,
  .o_cddip0_out_ia_wdata_part0(o_cddip0_out_ia_wdata_part0) ,
  .o_cddip0_out_ia_wdata_part1(o_cddip0_out_ia_wdata_part1) ,
  .o_cddip0_out_ia_wdata_part2(o_cddip0_out_ia_wdata_part2) ,
  .o_cddip0_out_ia_config(o_cddip0_out_ia_config) ,
  .o_cddip0_out_im_config(o_cddip0_out_im_config) ,
  .o_cddip0_out_im_read_done(o_cddip0_out_im_read_done) ,
  .o_cddip1_out_ia_wdata_part0(o_cddip1_out_ia_wdata_part0) ,
  .o_cddip1_out_ia_wdata_part1(o_cddip1_out_ia_wdata_part1) ,
  .o_cddip1_out_ia_wdata_part2(o_cddip1_out_ia_wdata_part2) ,
  .o_cddip1_out_ia_config(o_cddip1_out_ia_config) ,
  .o_cddip1_out_im_config(o_cddip1_out_im_config) ,
  .o_cddip1_out_im_read_done(o_cddip1_out_im_read_done) ,
  .o_cddip2_out_ia_wdata_part0(o_cddip2_out_ia_wdata_part0) ,
  .o_cddip2_out_ia_wdata_part1(o_cddip2_out_ia_wdata_part1) ,
  .o_cddip2_out_ia_wdata_part2(o_cddip2_out_ia_wdata_part2) ,
  .o_cddip2_out_ia_config(o_cddip2_out_ia_config) ,
  .o_cddip2_out_im_config(o_cddip2_out_im_config) ,
  .o_cddip2_out_im_read_done(o_cddip2_out_im_read_done) ,
  .o_cddip3_out_ia_wdata_part0(o_cddip3_out_ia_wdata_part0) ,
  .o_cddip3_out_ia_wdata_part1(o_cddip3_out_ia_wdata_part1) ,
  .o_cddip3_out_ia_wdata_part2(o_cddip3_out_ia_wdata_part2) ,
  .o_cddip3_out_ia_config(o_cddip3_out_ia_config) ,
  .o_cddip3_out_im_config(o_cddip3_out_im_config) ,
  .o_cddip3_out_im_read_done(o_cddip3_out_im_read_done) ,
  .o_ckv_ia_wdata_part0(o_ckv_ia_wdata_part0) ,
  .o_ckv_ia_wdata_part1(o_ckv_ia_wdata_part1) ,
  .o_ckv_ia_config(o_ckv_ia_config) ,
  .o_kim_ia_wdata_part0(o_kim_ia_wdata_part0) ,
  .o_kim_ia_wdata_part1(o_kim_ia_wdata_part1) ,
  .o_kim_ia_config(o_kim_ia_config) ,
  .o_label0_config(o_label0_config) ,
  .o_label0_data7(o_label0_data7) ,
  .o_label0_data6(o_label0_data6) ,
  .o_label0_data5(o_label0_data5) ,
  .o_label0_data4(o_label0_data4) ,
  .o_label0_data3(o_label0_data3) ,
  .o_label0_data2(o_label0_data2) ,
  .o_label0_data1(o_label0_data1) ,
  .o_label0_data0(o_label0_data0) ,
  .o_label1_config(o_label1_config) ,
  .o_label1_data7(o_label1_data7) ,
  .o_label1_data6(o_label1_data6) ,
  .o_label1_data5(o_label1_data5) ,
  .o_label1_data4(o_label1_data4) ,
  .o_label1_data3(o_label1_data3) ,
  .o_label1_data2(o_label1_data2) ,
  .o_label1_data1(o_label1_data1) ,
  .o_label1_data0(o_label1_data0) ,
  .o_label2_config(o_label2_config) ,
  .o_label2_data7(o_label2_data7) ,
  .o_label2_data6(o_label2_data6) ,
  .o_label2_data5(o_label2_data5) ,
  .o_label2_data4(o_label2_data4) ,
  .o_label2_data3(o_label2_data3) ,
  .o_label2_data2(o_label2_data2) ,
  .o_label2_data1(o_label2_data1) ,
  .o_label2_data0(o_label2_data0) ,
  .o_label3_config(o_label3_config) ,
  .o_label3_data7(o_label3_data7) ,
  .o_label3_data6(o_label3_data6) ,
  .o_label3_data5(o_label3_data5) ,
  .o_label3_data4(o_label3_data4) ,
  .o_label3_data3(o_label3_data3) ,
  .o_label3_data2(o_label3_data2) ,
  .o_label3_data1(o_label3_data1) ,
  .o_label3_data0(o_label3_data0) ,
  .o_label4_config(o_label4_config) ,
  .o_label4_data7(o_label4_data7) ,
  .o_label4_data6(o_label4_data6) ,
  .o_label4_data5(o_label4_data5) ,
  .o_label4_data4(o_label4_data4) ,
  .o_label4_data3(o_label4_data3) ,
  .o_label4_data2(o_label4_data2) ,
  .o_label4_data1(o_label4_data1) ,
  .o_label4_data0(o_label4_data0) ,
  .o_label5_config(o_label5_config) ,
  .o_label5_data7(o_label5_data7) ,
  .o_label5_data6(o_label5_data6) ,
  .o_label5_data5(o_label5_data5) ,
  .o_label5_data4(o_label5_data4) ,
  .o_label5_data3(o_label5_data3) ,
  .o_label5_data2(o_label5_data2) ,
  .o_label5_data1(o_label5_data1) ,
  .o_label5_data0(o_label5_data0) ,
  .o_label6_config(o_label6_config) ,
  .o_label6_data7(o_label6_data7) ,
  .o_label6_data6(o_label6_data6) ,
  .o_label6_data5(o_label6_data5) ,
  .o_label6_data4(o_label6_data4) ,
  .o_label6_data3(o_label6_data3) ,
  .o_label6_data2(o_label6_data2) ,
  .o_label6_data1(o_label6_data1) ,
  .o_label6_data0(o_label6_data0) ,
  .o_label7_config(o_label7_config) ,
  .o_label7_data7(o_label7_data7) ,
  .o_label7_data6(o_label7_data6) ,
  .o_label7_data5(o_label7_data5) ,
  .o_label7_data4(o_label7_data4) ,
  .o_label7_data3(o_label7_data3) ,
  .o_label7_data2(o_label7_data2) ,
  .o_label7_data1(o_label7_data1) ,
  .o_label7_data0(o_label7_data0) ,
  .o_kdf_drbg_ctrl(o_kdf_drbg_ctrl) ,
  .o_kdf_drbg_seed_0_state_key_31_0(o_kdf_drbg_seed_0_state_key_31_0) ,
  .o_kdf_drbg_seed_0_state_key_63_32(o_kdf_drbg_seed_0_state_key_63_32) ,
  .o_kdf_drbg_seed_0_state_key_95_64(o_kdf_drbg_seed_0_state_key_95_64) ,
  .o_kdf_drbg_seed_0_state_key_127_96(o_kdf_drbg_seed_0_state_key_127_96) ,
  .o_kdf_drbg_seed_0_state_key_159_128(o_kdf_drbg_seed_0_state_key_159_128) ,
  .o_kdf_drbg_seed_0_state_key_191_160(o_kdf_drbg_seed_0_state_key_191_160) ,
  .o_kdf_drbg_seed_0_state_key_223_192(o_kdf_drbg_seed_0_state_key_223_192) ,
  .o_kdf_drbg_seed_0_state_key_255_224(o_kdf_drbg_seed_0_state_key_255_224) ,
  .o_kdf_drbg_seed_0_state_value_31_0(o_kdf_drbg_seed_0_state_value_31_0) ,
  .o_kdf_drbg_seed_0_state_value_63_32(o_kdf_drbg_seed_0_state_value_63_32) ,
  .o_kdf_drbg_seed_0_state_value_95_64(o_kdf_drbg_seed_0_state_value_95_64) ,
  .o_kdf_drbg_seed_0_state_value_127_96(o_kdf_drbg_seed_0_state_value_127_96) ,
  .o_kdf_drbg_seed_0_reseed_interval_0(o_kdf_drbg_seed_0_reseed_interval_0) ,
  .o_kdf_drbg_seed_0_reseed_interval_1(o_kdf_drbg_seed_0_reseed_interval_1) ,
  .o_kdf_drbg_seed_1_state_key_31_0(o_kdf_drbg_seed_1_state_key_31_0) ,
  .o_kdf_drbg_seed_1_state_key_63_32(o_kdf_drbg_seed_1_state_key_63_32) ,
  .o_kdf_drbg_seed_1_state_key_95_64(o_kdf_drbg_seed_1_state_key_95_64) ,
  .o_kdf_drbg_seed_1_state_key_127_96(o_kdf_drbg_seed_1_state_key_127_96) ,
  .o_kdf_drbg_seed_1_state_key_159_128(o_kdf_drbg_seed_1_state_key_159_128) ,
  .o_kdf_drbg_seed_1_state_key_191_160(o_kdf_drbg_seed_1_state_key_191_160) ,
  .o_kdf_drbg_seed_1_state_key_223_192(o_kdf_drbg_seed_1_state_key_223_192) ,
  .o_kdf_drbg_seed_1_state_key_255_224(o_kdf_drbg_seed_1_state_key_255_224) ,
  .o_kdf_drbg_seed_1_state_value_31_0(o_kdf_drbg_seed_1_state_value_31_0) ,
  .o_kdf_drbg_seed_1_state_value_63_32(o_kdf_drbg_seed_1_state_value_63_32) ,
  .o_kdf_drbg_seed_1_state_value_95_64(o_kdf_drbg_seed_1_state_value_95_64) ,
  .o_kdf_drbg_seed_1_state_value_127_96(o_kdf_drbg_seed_1_state_value_127_96) ,
  .o_kdf_drbg_seed_1_reseed_interval_0(o_kdf_drbg_seed_1_reseed_interval_0) ,
  .o_kdf_drbg_seed_1_reseed_interval_1(o_kdf_drbg_seed_1_reseed_interval_1) ,
  .o_interrupt_status(o_interrupt_status) ,
  .o_interrupt_mask(o_interrupt_mask) ,
  .o_engine_sticky_status(o_engine_sticky_status) ,
  .o_bimc_monitor_mask(o_bimc_monitor_mask) ,
  .o_bimc_ecc_uncorrectable_error_cnt(o_bimc_ecc_uncorrectable_error_cnt) ,
  .o_bimc_ecc_correctable_error_cnt(o_bimc_ecc_correctable_error_cnt) ,
  .o_bimc_parity_error_cnt(o_bimc_parity_error_cnt) ,
  .o_bimc_global_config(o_bimc_global_config) ,
  .o_bimc_eccpar_debug(o_bimc_eccpar_debug) ,
  .o_bimc_cmd2(o_bimc_cmd2) ,
  .o_bimc_cmd1(o_bimc_cmd1) ,
  .o_bimc_cmd0(o_bimc_cmd0) ,
  .o_bimc_rxcmd2(o_bimc_rxcmd2) ,
  .o_bimc_rxrsp2(o_bimc_rxrsp2) ,
  .o_bimc_pollrsp2(o_bimc_pollrsp2) ,
  .o_bimc_dbgcmd2(o_bimc_dbgcmd2) ,
  .o_im_consumed(o_im_consumed) ,
  .o_tready_override(o_tready_override) ,
  .o_regs_sa_ctrl(o_regs_sa_ctrl) ,
  .o_sa_snapshot_ia_wdata_part0(o_sa_snapshot_ia_wdata_part0) ,
  .o_sa_snapshot_ia_wdata_part1(o_sa_snapshot_ia_wdata_part1) ,
  .o_sa_snapshot_ia_config(o_sa_snapshot_ia_config) ,
  .o_sa_count_ia_wdata_part0(o_sa_count_ia_wdata_part0) ,
  .o_sa_count_ia_wdata_part1(o_sa_count_ia_wdata_part1) ,
  .o_sa_count_ia_config(o_sa_count_ia_config) ,
  .o_cceip_encrypt_kop_fifo_override(o_cceip_encrypt_kop_fifo_override) ,
  .o_cceip_validate_kop_fifo_override(o_cceip_validate_kop_fifo_override) ,
  .o_cddip_decrypt_kop_fifo_override(o_cddip_decrypt_kop_fifo_override) ,
  .o_sa_global_ctrl(o_sa_global_ctrl) ,
  .o_sa_ctrl_ia_wdata_part0(o_sa_ctrl_ia_wdata_part0) ,
  .o_sa_ctrl_ia_config(o_sa_ctrl_ia_config) ,
  .o_kdf_test_key_size_config(o_kdf_test_key_size_config) ,
  .w_load_spare_config(w_load_spare_config) ,
  .w_load_cceip0_out_ia_wdata_part0(w_load_cceip0_out_ia_wdata_part0) ,
  .w_load_cceip0_out_ia_wdata_part1(w_load_cceip0_out_ia_wdata_part1) ,
  .w_load_cceip0_out_ia_wdata_part2(w_load_cceip0_out_ia_wdata_part2) ,
  .w_load_cceip0_out_ia_config(w_load_cceip0_out_ia_config) ,
  .w_load_cceip0_out_im_config(w_load_cceip0_out_im_config) ,
  .w_load_cceip0_out_im_read_done(w_load_cceip0_out_im_read_done) ,
  .w_load_cceip1_out_ia_wdata_part0(w_load_cceip1_out_ia_wdata_part0) ,
  .w_load_cceip1_out_ia_wdata_part1(w_load_cceip1_out_ia_wdata_part1) ,
  .w_load_cceip1_out_ia_wdata_part2(w_load_cceip1_out_ia_wdata_part2) ,
  .w_load_cceip1_out_ia_config(w_load_cceip1_out_ia_config) ,
  .w_load_cceip1_out_im_config(w_load_cceip1_out_im_config) ,
  .w_load_cceip1_out_im_read_done(w_load_cceip1_out_im_read_done) ,
  .w_load_cceip2_out_ia_wdata_part0(w_load_cceip2_out_ia_wdata_part0) ,
  .w_load_cceip2_out_ia_wdata_part1(w_load_cceip2_out_ia_wdata_part1) ,
  .w_load_cceip2_out_ia_wdata_part2(w_load_cceip2_out_ia_wdata_part2) ,
  .w_load_cceip2_out_ia_config(w_load_cceip2_out_ia_config) ,
  .w_load_cceip2_out_im_config(w_load_cceip2_out_im_config) ,
  .w_load_cceip2_out_im_read_done(w_load_cceip2_out_im_read_done) ,
  .w_load_cceip3_out_ia_wdata_part0(w_load_cceip3_out_ia_wdata_part0) ,
  .w_load_cceip3_out_ia_wdata_part1(w_load_cceip3_out_ia_wdata_part1) ,
  .w_load_cceip3_out_ia_wdata_part2(w_load_cceip3_out_ia_wdata_part2) ,
  .w_load_cceip3_out_ia_config(w_load_cceip3_out_ia_config) ,
  .w_load_cceip3_out_im_config(w_load_cceip3_out_im_config) ,
  .w_load_cceip3_out_im_read_done(w_load_cceip3_out_im_read_done) ,
  .w_load_cddip0_out_ia_wdata_part0(w_load_cddip0_out_ia_wdata_part0) ,
  .w_load_cddip0_out_ia_wdata_part1(w_load_cddip0_out_ia_wdata_part1) ,
  .w_load_cddip0_out_ia_wdata_part2(w_load_cddip0_out_ia_wdata_part2) ,
  .w_load_cddip0_out_ia_config(w_load_cddip0_out_ia_config) ,
  .w_load_cddip0_out_im_config(w_load_cddip0_out_im_config) ,
  .w_load_cddip0_out_im_read_done(w_load_cddip0_out_im_read_done) ,
  .w_load_cddip1_out_ia_wdata_part0(w_load_cddip1_out_ia_wdata_part0) ,
  .w_load_cddip1_out_ia_wdata_part1(w_load_cddip1_out_ia_wdata_part1) ,
  .w_load_cddip1_out_ia_wdata_part2(w_load_cddip1_out_ia_wdata_part2) ,
  .w_load_cddip1_out_ia_config(w_load_cddip1_out_ia_config) ,
  .w_load_cddip1_out_im_config(w_load_cddip1_out_im_config) ,
  .w_load_cddip1_out_im_read_done(w_load_cddip1_out_im_read_done) ,
  .w_load_cddip2_out_ia_wdata_part0(w_load_cddip2_out_ia_wdata_part0) ,
  .w_load_cddip2_out_ia_wdata_part1(w_load_cddip2_out_ia_wdata_part1) ,
  .w_load_cddip2_out_ia_wdata_part2(w_load_cddip2_out_ia_wdata_part2) ,
  .w_load_cddip2_out_ia_config(w_load_cddip2_out_ia_config) ,
  .w_load_cddip2_out_im_config(w_load_cddip2_out_im_config) ,
  .w_load_cddip2_out_im_read_done(w_load_cddip2_out_im_read_done) ,
  .w_load_cddip3_out_ia_wdata_part0(w_load_cddip3_out_ia_wdata_part0) ,
  .w_load_cddip3_out_ia_wdata_part1(w_load_cddip3_out_ia_wdata_part1) ,
  .w_load_cddip3_out_ia_wdata_part2(w_load_cddip3_out_ia_wdata_part2) ,
  .w_load_cddip3_out_ia_config(w_load_cddip3_out_ia_config) ,
  .w_load_cddip3_out_im_config(w_load_cddip3_out_im_config) ,
  .w_load_cddip3_out_im_read_done(w_load_cddip3_out_im_read_done) ,
  .w_load_ckv_ia_wdata_part0(w_load_ckv_ia_wdata_part0) ,
  .w_load_ckv_ia_wdata_part1(w_load_ckv_ia_wdata_part1) ,
  .w_load_ckv_ia_config(w_load_ckv_ia_config) ,
  .w_load_kim_ia_wdata_part0(w_load_kim_ia_wdata_part0) ,
  .w_load_kim_ia_wdata_part1(w_load_kim_ia_wdata_part1) ,
  .w_load_kim_ia_config(w_load_kim_ia_config) ,
  .w_load_label0_config(w_load_label0_config) ,
  .w_load_label0_data7(w_load_label0_data7) ,
  .w_load_label0_data6(w_load_label0_data6) ,
  .w_load_label0_data5(w_load_label0_data5) ,
  .w_load_label0_data4(w_load_label0_data4) ,
  .w_load_label0_data3(w_load_label0_data3) ,
  .w_load_label0_data2(w_load_label0_data2) ,
  .w_load_label0_data1(w_load_label0_data1) ,
  .w_load_label0_data0(w_load_label0_data0) ,
  .w_load_label1_config(w_load_label1_config) ,
  .w_load_label1_data7(w_load_label1_data7) ,
  .w_load_label1_data6(w_load_label1_data6) ,
  .w_load_label1_data5(w_load_label1_data5) ,
  .w_load_label1_data4(w_load_label1_data4) ,
  .w_load_label1_data3(w_load_label1_data3) ,
  .w_load_label1_data2(w_load_label1_data2) ,
  .w_load_label1_data1(w_load_label1_data1) ,
  .w_load_label1_data0(w_load_label1_data0) ,
  .w_load_label2_config(w_load_label2_config) ,
  .w_load_label2_data7(w_load_label2_data7) ,
  .w_load_label2_data6(w_load_label2_data6) ,
  .w_load_label2_data5(w_load_label2_data5) ,
  .w_load_label2_data4(w_load_label2_data4) ,
  .w_load_label2_data3(w_load_label2_data3) ,
  .w_load_label2_data2(w_load_label2_data2) ,
  .w_load_label2_data1(w_load_label2_data1) ,
  .w_load_label2_data0(w_load_label2_data0) ,
  .w_load_label3_config(w_load_label3_config) ,
  .w_load_label3_data7(w_load_label3_data7) ,
  .w_load_label3_data6(w_load_label3_data6) ,
  .w_load_label3_data5(w_load_label3_data5) ,
  .w_load_label3_data4(w_load_label3_data4) ,
  .w_load_label3_data3(w_load_label3_data3) ,
  .w_load_label3_data2(w_load_label3_data2) ,
  .w_load_label3_data1(w_load_label3_data1) ,
  .w_load_label3_data0(w_load_label3_data0) ,
  .w_load_label4_config(w_load_label4_config) ,
  .w_load_label4_data7(w_load_label4_data7) ,
  .w_load_label4_data6(w_load_label4_data6) ,
  .w_load_label4_data5(w_load_label4_data5) ,
  .w_load_label4_data4(w_load_label4_data4) ,
  .w_load_label4_data3(w_load_label4_data3) ,
  .w_load_label4_data2(w_load_label4_data2) ,
  .w_load_label4_data1(w_load_label4_data1) ,
  .w_load_label4_data0(w_load_label4_data0) ,
  .w_load_label5_config(w_load_label5_config) ,
  .w_load_label5_data7(w_load_label5_data7) ,
  .w_load_label5_data6(w_load_label5_data6) ,
  .w_load_label5_data5(w_load_label5_data5) ,
  .w_load_label5_data4(w_load_label5_data4) ,
  .w_load_label5_data3(w_load_label5_data3) ,
  .w_load_label5_data2(w_load_label5_data2) ,
  .w_load_label5_data1(w_load_label5_data1) ,
  .w_load_label5_data0(w_load_label5_data0) ,
  .w_load_label6_config(w_load_label6_config) ,
  .w_load_label6_data7(w_load_label6_data7) ,
  .w_load_label6_data6(w_load_label6_data6) ,
  .w_load_label6_data5(w_load_label6_data5) ,
  .w_load_label6_data4(w_load_label6_data4) ,
  .w_load_label6_data3(w_load_label6_data3) ,
  .w_load_label6_data2(w_load_label6_data2) ,
  .w_load_label6_data1(w_load_label6_data1) ,
  .w_load_label6_data0(w_load_label6_data0) ,
  .w_load_label7_config(w_load_label7_config) ,
  .w_load_label7_data7(w_load_label7_data7) ,
  .w_load_label7_data6(w_load_label7_data6) ,
  .w_load_label7_data5(w_load_label7_data5) ,
  .w_load_label7_data4(w_load_label7_data4) ,
  .w_load_label7_data3(w_load_label7_data3) ,
  .w_load_label7_data2(w_load_label7_data2) ,
  .w_load_label7_data1(w_load_label7_data1) ,
  .w_load_label7_data0(w_load_label7_data0) ,
  .w_load_kdf_drbg_ctrl(w_load_kdf_drbg_ctrl) ,
  .w_load_kdf_drbg_seed_0_state_key_31_0(w_load_kdf_drbg_seed_0_state_key_31_0) ,
  .w_load_kdf_drbg_seed_0_state_key_63_32(w_load_kdf_drbg_seed_0_state_key_63_32) ,
  .w_load_kdf_drbg_seed_0_state_key_95_64(w_load_kdf_drbg_seed_0_state_key_95_64) ,
  .w_load_kdf_drbg_seed_0_state_key_127_96(w_load_kdf_drbg_seed_0_state_key_127_96) ,
  .w_load_kdf_drbg_seed_0_state_key_159_128(w_load_kdf_drbg_seed_0_state_key_159_128) ,
  .w_load_kdf_drbg_seed_0_state_key_191_160(w_load_kdf_drbg_seed_0_state_key_191_160) ,
  .w_load_kdf_drbg_seed_0_state_key_223_192(w_load_kdf_drbg_seed_0_state_key_223_192) ,
  .w_load_kdf_drbg_seed_0_state_key_255_224(w_load_kdf_drbg_seed_0_state_key_255_224) ,
  .w_load_kdf_drbg_seed_0_state_value_31_0(w_load_kdf_drbg_seed_0_state_value_31_0) ,
  .w_load_kdf_drbg_seed_0_state_value_63_32(w_load_kdf_drbg_seed_0_state_value_63_32) ,
  .w_load_kdf_drbg_seed_0_state_value_95_64(w_load_kdf_drbg_seed_0_state_value_95_64) ,
  .w_load_kdf_drbg_seed_0_state_value_127_96(w_load_kdf_drbg_seed_0_state_value_127_96) ,
  .w_load_kdf_drbg_seed_0_reseed_interval_0(w_load_kdf_drbg_seed_0_reseed_interval_0) ,
  .w_load_kdf_drbg_seed_0_reseed_interval_1(w_load_kdf_drbg_seed_0_reseed_interval_1) ,
  .w_load_kdf_drbg_seed_1_state_key_31_0(w_load_kdf_drbg_seed_1_state_key_31_0) ,
  .w_load_kdf_drbg_seed_1_state_key_63_32(w_load_kdf_drbg_seed_1_state_key_63_32) ,
  .w_load_kdf_drbg_seed_1_state_key_95_64(w_load_kdf_drbg_seed_1_state_key_95_64) ,
  .w_load_kdf_drbg_seed_1_state_key_127_96(w_load_kdf_drbg_seed_1_state_key_127_96) ,
  .w_load_kdf_drbg_seed_1_state_key_159_128(w_load_kdf_drbg_seed_1_state_key_159_128) ,
  .w_load_kdf_drbg_seed_1_state_key_191_160(w_load_kdf_drbg_seed_1_state_key_191_160) ,
  .w_load_kdf_drbg_seed_1_state_key_223_192(w_load_kdf_drbg_seed_1_state_key_223_192) ,
  .w_load_kdf_drbg_seed_1_state_key_255_224(w_load_kdf_drbg_seed_1_state_key_255_224) ,
  .w_load_kdf_drbg_seed_1_state_value_31_0(w_load_kdf_drbg_seed_1_state_value_31_0) ,
  .w_load_kdf_drbg_seed_1_state_value_63_32(w_load_kdf_drbg_seed_1_state_value_63_32) ,
  .w_load_kdf_drbg_seed_1_state_value_95_64(w_load_kdf_drbg_seed_1_state_value_95_64) ,
  .w_load_kdf_drbg_seed_1_state_value_127_96(w_load_kdf_drbg_seed_1_state_value_127_96) ,
  .w_load_kdf_drbg_seed_1_reseed_interval_0(w_load_kdf_drbg_seed_1_reseed_interval_0) ,
  .w_load_kdf_drbg_seed_1_reseed_interval_1(w_load_kdf_drbg_seed_1_reseed_interval_1) ,
  .w_load_interrupt_status(w_load_interrupt_status) ,
  .w_load_interrupt_mask(w_load_interrupt_mask) ,
  .w_load_engine_sticky_status(w_load_engine_sticky_status) ,
  .w_load_bimc_monitor_mask(w_load_bimc_monitor_mask) ,
  .w_load_bimc_ecc_uncorrectable_error_cnt(w_load_bimc_ecc_uncorrectable_error_cnt) ,
  .w_load_bimc_ecc_correctable_error_cnt(w_load_bimc_ecc_correctable_error_cnt) ,
  .w_load_bimc_parity_error_cnt(w_load_bimc_parity_error_cnt) ,
  .w_load_bimc_global_config(w_load_bimc_global_config) ,
  .w_load_bimc_eccpar_debug(w_load_bimc_eccpar_debug) ,
  .w_load_bimc_cmd2(w_load_bimc_cmd2) ,
  .w_load_bimc_cmd1(w_load_bimc_cmd1) ,
  .w_load_bimc_cmd0(w_load_bimc_cmd0) ,
  .w_load_bimc_rxcmd2(w_load_bimc_rxcmd2) ,
  .w_load_bimc_rxrsp2(w_load_bimc_rxrsp2) ,
  .w_load_bimc_pollrsp2(w_load_bimc_pollrsp2) ,
  .w_load_bimc_dbgcmd2(w_load_bimc_dbgcmd2) ,
  .w_load_im_consumed(w_load_im_consumed) ,
  .w_load_tready_override(w_load_tready_override) ,
  .w_load_regs_sa_ctrl(w_load_regs_sa_ctrl) ,
  .w_load_sa_snapshot_ia_wdata_part0(w_load_sa_snapshot_ia_wdata_part0) ,
  .w_load_sa_snapshot_ia_wdata_part1(w_load_sa_snapshot_ia_wdata_part1) ,
  .w_load_sa_snapshot_ia_config(w_load_sa_snapshot_ia_config) ,
  .w_load_sa_count_ia_wdata_part0(w_load_sa_count_ia_wdata_part0) ,
  .w_load_sa_count_ia_wdata_part1(w_load_sa_count_ia_wdata_part1) ,
  .w_load_sa_count_ia_config(w_load_sa_count_ia_config) ,
  .w_load_cceip_encrypt_kop_fifo_override(w_load_cceip_encrypt_kop_fifo_override) ,
  .w_load_cceip_validate_kop_fifo_override(w_load_cceip_validate_kop_fifo_override) ,
  .w_load_cddip_decrypt_kop_fifo_override(w_load_cddip_decrypt_kop_fifo_override) ,
  .w_load_sa_global_ctrl(w_load_sa_global_ctrl) ,
  .w_load_sa_ctrl_ia_wdata_part0(w_load_sa_ctrl_ia_wdata_part0) ,
  .w_load_sa_ctrl_ia_config(w_load_sa_ctrl_ia_config) ,
  .w_load_kdf_test_key_size_config(w_load_kdf_test_key_size_config) ,
  .f32_data(_zy_simnet_f32_data_3_w$) ); 
always_ff 
 @(posedge clk or negedge i_reset_)
  begin
   if (( ~i_reset_ ))
    n_write <= 1'b0;
   else
    if (i_sw_init)
     n_write <= 1'b0;
    else
     if (i_wr_strb)
      n_write <= 1'b1;
     else
      if (o_ack)
       n_write <= 1'b0;
  end
always_comb 
 begin
  r32_mux_0_data = 32'b0;
  r32_mux_1_data = 32'b0;
  r32_mux_2_data = 32'b0;
  r32_mux_3_data = 32'b0;
  r32_mux_4_data = 32'b0;
  r32_mux_5_data = 32'b0;
  r32_mux_6_data = 32'b0;
  r32_mux_7_data = 32'b0;
  r32_mux_8_data = 32'b0;
  case (ws_read_addr)
   11'b0:
    begin
     r32_mux_0_data[15:0] = i_blkid_revid_config[15:0];
     r32_mux_0_data[31:16] = i_blkid_revid_config[31:16];
    end
   11'b0100:
    begin
     r32_mux_0_data[7:0] = i_revision_config[7:0];
    end
   11'b01000:
    begin
     r32_mux_0_data[31:0] = i_spare_config[31:0];
    end
   11'b01100:
    begin
     r32_mux_0_data[0:0] = i_cceip0_out_ia_capability[0:0];
     r32_mux_0_data[1:1] = i_cceip0_out_ia_capability[1:1];
     r32_mux_0_data[2:2] = i_cceip0_out_ia_capability[2:2];
     r32_mux_0_data[3:3] = i_cceip0_out_ia_capability[3:3];
     r32_mux_0_data[4:4] = i_cceip0_out_ia_capability[4:4];
     r32_mux_0_data[5:5] = i_cceip0_out_ia_capability[5:5];
     r32_mux_0_data[6:6] = i_cceip0_out_ia_capability[6:6];
     r32_mux_0_data[7:7] = i_cceip0_out_ia_capability[7:7];
     r32_mux_0_data[8:8] = i_cceip0_out_ia_capability[8:8];
     r32_mux_0_data[9:9] = i_cceip0_out_ia_capability[9:9];
     r32_mux_0_data[13:10] = i_cceip0_out_ia_capability[13:10];
     r32_mux_0_data[14:14] = i_cceip0_out_ia_capability[14:14];
     r32_mux_0_data[15:15] = i_cceip0_out_ia_capability[15:15];
     r32_mux_0_data[31:28] = i_cceip0_out_ia_capability[19:16];
    end
   11'b010000:
    begin
     r32_mux_0_data[8:0] = i_cceip0_out_ia_status[8:0];
     r32_mux_0_data[28:24] = i_cceip0_out_ia_status[13:9];
     r32_mux_0_data[31:29] = i_cceip0_out_ia_status[16:14];
    end
   11'b010100:
    begin
     r32_mux_0_data[5:0] = o_cceip0_out_ia_wdata_part0[5:0];
     r32_mux_0_data[13:6] = o_cceip0_out_ia_wdata_part0[13:6];
     r32_mux_0_data[14:14] = o_cceip0_out_ia_wdata_part0[14:14];
     r32_mux_0_data[22:15] = o_cceip0_out_ia_wdata_part0[22:15];
     r32_mux_0_data[30:23] = o_cceip0_out_ia_wdata_part0[30:23];
     r32_mux_0_data[31:31] = o_cceip0_out_ia_wdata_part0[31:31];
    end
   11'b011000:
    begin
     r32_mux_0_data[31:0] = o_cceip0_out_ia_wdata_part1[31:0];
    end
   11'b011100:
    begin
     r32_mux_0_data[31:0] = o_cceip0_out_ia_wdata_part2[31:0];
    end
   11'b0100000:
    begin
     r32_mux_0_data[8:0] = o_cceip0_out_ia_config[8:0];
     r32_mux_0_data[31:28] = o_cceip0_out_ia_config[12:9];
    end
   11'b0100100:
    begin
     r32_mux_0_data[5:0] = i_cceip0_out_ia_rdata_part0[5:0];
     r32_mux_0_data[13:6] = i_cceip0_out_ia_rdata_part0[13:6];
     r32_mux_0_data[14:14] = i_cceip0_out_ia_rdata_part0[14:14];
     r32_mux_0_data[22:15] = i_cceip0_out_ia_rdata_part0[22:15];
     r32_mux_0_data[30:23] = i_cceip0_out_ia_rdata_part0[30:23];
     r32_mux_0_data[31:31] = i_cceip0_out_ia_rdata_part0[31:31];
    end
   11'b0101000:
    begin
     r32_mux_0_data[31:0] = i_cceip0_out_ia_rdata_part1[31:0];
    end
   11'b0101100:
    begin
     r32_mux_0_data[31:0] = i_cceip0_out_ia_rdata_part2[31:0];
    end
   11'b0110000:
    begin
     r32_mux_0_data[9:0] = o_cceip0_out_im_config[9:0];
     r32_mux_0_data[31:30] = o_cceip0_out_im_config[11:10];
    end
   11'b0110100:
    begin
     r32_mux_0_data[8:0] = i_cceip0_out_im_status[8:0];
     r32_mux_0_data[29:29] = i_cceip0_out_im_status[9:9];
     r32_mux_0_data[30:30] = i_cceip0_out_im_status[10:10];
     r32_mux_0_data[31:31] = i_cceip0_out_im_status[11:11];
    end
   11'b0111000:
    begin
     r32_mux_0_data[30:30] = i_cceip0_out_im_read_done[0:0];
     r32_mux_0_data[31:31] = i_cceip0_out_im_read_done[1:1];
    end
   11'b0111100:
    begin
     r32_mux_0_data[0:0] = i_cceip1_out_ia_capability[0:0];
     r32_mux_0_data[1:1] = i_cceip1_out_ia_capability[1:1];
     r32_mux_0_data[2:2] = i_cceip1_out_ia_capability[2:2];
     r32_mux_0_data[3:3] = i_cceip1_out_ia_capability[3:3];
     r32_mux_0_data[4:4] = i_cceip1_out_ia_capability[4:4];
     r32_mux_0_data[5:5] = i_cceip1_out_ia_capability[5:5];
     r32_mux_0_data[6:6] = i_cceip1_out_ia_capability[6:6];
     r32_mux_0_data[7:7] = i_cceip1_out_ia_capability[7:7];
     r32_mux_0_data[8:8] = i_cceip1_out_ia_capability[8:8];
     r32_mux_0_data[9:9] = i_cceip1_out_ia_capability[9:9];
     r32_mux_0_data[13:10] = i_cceip1_out_ia_capability[13:10];
     r32_mux_0_data[14:14] = i_cceip1_out_ia_capability[14:14];
     r32_mux_0_data[15:15] = i_cceip1_out_ia_capability[15:15];
     r32_mux_0_data[31:28] = i_cceip1_out_ia_capability[19:16];
    end
   11'b01000000:
    begin
     r32_mux_0_data[8:0] = i_cceip1_out_ia_status[8:0];
     r32_mux_0_data[28:24] = i_cceip1_out_ia_status[13:9];
     r32_mux_0_data[31:29] = i_cceip1_out_ia_status[16:14];
    end
   11'b01000100:
    begin
     r32_mux_0_data[5:0] = o_cceip1_out_ia_wdata_part0[5:0];
     r32_mux_0_data[13:6] = o_cceip1_out_ia_wdata_part0[13:6];
     r32_mux_0_data[14:14] = o_cceip1_out_ia_wdata_part0[14:14];
     r32_mux_0_data[22:15] = o_cceip1_out_ia_wdata_part0[22:15];
     r32_mux_0_data[30:23] = o_cceip1_out_ia_wdata_part0[30:23];
     r32_mux_0_data[31:31] = o_cceip1_out_ia_wdata_part0[31:31];
    end
   11'b01001000:
    begin
     r32_mux_0_data[31:0] = o_cceip1_out_ia_wdata_part1[31:0];
    end
   11'b01001100:
    begin
     r32_mux_0_data[31:0] = o_cceip1_out_ia_wdata_part2[31:0];
    end
   11'b01010000:
    begin
     r32_mux_0_data[8:0] = o_cceip1_out_ia_config[8:0];
     r32_mux_0_data[31:28] = o_cceip1_out_ia_config[12:9];
    end
   11'b01010100:
    begin
     r32_mux_0_data[5:0] = i_cceip1_out_ia_rdata_part0[5:0];
     r32_mux_0_data[13:6] = i_cceip1_out_ia_rdata_part0[13:6];
     r32_mux_0_data[14:14] = i_cceip1_out_ia_rdata_part0[14:14];
     r32_mux_0_data[22:15] = i_cceip1_out_ia_rdata_part0[22:15];
     r32_mux_0_data[30:23] = i_cceip1_out_ia_rdata_part0[30:23];
     r32_mux_0_data[31:31] = i_cceip1_out_ia_rdata_part0[31:31];
    end
   11'b01011000:
    begin
     r32_mux_0_data[31:0] = i_cceip1_out_ia_rdata_part1[31:0];
    end
   11'b01011100:
    begin
     r32_mux_0_data[31:0] = i_cceip1_out_ia_rdata_part2[31:0];
    end
   11'b01100000:
    begin
     r32_mux_0_data[9:0] = o_cceip1_out_im_config[9:0];
     r32_mux_0_data[31:30] = o_cceip1_out_im_config[11:10];
    end
   11'b01100100:
    begin
     r32_mux_0_data[8:0] = i_cceip1_out_im_status[8:0];
     r32_mux_0_data[29:29] = i_cceip1_out_im_status[9:9];
     r32_mux_0_data[30:30] = i_cceip1_out_im_status[10:10];
     r32_mux_0_data[31:31] = i_cceip1_out_im_status[11:11];
    end
   11'b01101000:
    begin
     r32_mux_0_data[30:30] = i_cceip1_out_im_read_done[0:0];
     r32_mux_0_data[31:31] = i_cceip1_out_im_read_done[1:1];
    end
   11'b01101100:
    begin
     r32_mux_0_data[0:0] = i_cceip2_out_ia_capability[0:0];
     r32_mux_0_data[1:1] = i_cceip2_out_ia_capability[1:1];
     r32_mux_0_data[2:2] = i_cceip2_out_ia_capability[2:2];
     r32_mux_0_data[3:3] = i_cceip2_out_ia_capability[3:3];
     r32_mux_0_data[4:4] = i_cceip2_out_ia_capability[4:4];
     r32_mux_0_data[5:5] = i_cceip2_out_ia_capability[5:5];
     r32_mux_0_data[6:6] = i_cceip2_out_ia_capability[6:6];
     r32_mux_0_data[7:7] = i_cceip2_out_ia_capability[7:7];
     r32_mux_0_data[8:8] = i_cceip2_out_ia_capability[8:8];
     r32_mux_0_data[9:9] = i_cceip2_out_ia_capability[9:9];
     r32_mux_0_data[13:10] = i_cceip2_out_ia_capability[13:10];
     r32_mux_0_data[14:14] = i_cceip2_out_ia_capability[14:14];
     r32_mux_0_data[15:15] = i_cceip2_out_ia_capability[15:15];
     r32_mux_0_data[31:28] = i_cceip2_out_ia_capability[19:16];
    end
   11'b01110000:
    begin
     r32_mux_0_data[8:0] = i_cceip2_out_ia_status[8:0];
     r32_mux_0_data[28:24] = i_cceip2_out_ia_status[13:9];
     r32_mux_0_data[31:29] = i_cceip2_out_ia_status[16:14];
    end
   11'b01110100:
    begin
     r32_mux_0_data[5:0] = o_cceip2_out_ia_wdata_part0[5:0];
     r32_mux_0_data[13:6] = o_cceip2_out_ia_wdata_part0[13:6];
     r32_mux_0_data[14:14] = o_cceip2_out_ia_wdata_part0[14:14];
     r32_mux_0_data[22:15] = o_cceip2_out_ia_wdata_part0[22:15];
     r32_mux_0_data[30:23] = o_cceip2_out_ia_wdata_part0[30:23];
     r32_mux_0_data[31:31] = o_cceip2_out_ia_wdata_part0[31:31];
    end
  endcase
  case (ws_read_addr)
   11'b01111000:
    begin
     r32_mux_1_data[31:0] = o_cceip2_out_ia_wdata_part1[31:0];
    end
   11'b01111100:
    begin
     r32_mux_1_data[31:0] = o_cceip2_out_ia_wdata_part2[31:0];
    end
   11'b010000000:
    begin
     r32_mux_1_data[8:0] = o_cceip2_out_ia_config[8:0];
     r32_mux_1_data[31:28] = o_cceip2_out_ia_config[12:9];
    end
   11'b010000100:
    begin
     r32_mux_1_data[5:0] = i_cceip2_out_ia_rdata_part0[5:0];
     r32_mux_1_data[13:6] = i_cceip2_out_ia_rdata_part0[13:6];
     r32_mux_1_data[14:14] = i_cceip2_out_ia_rdata_part0[14:14];
     r32_mux_1_data[22:15] = i_cceip2_out_ia_rdata_part0[22:15];
     r32_mux_1_data[30:23] = i_cceip2_out_ia_rdata_part0[30:23];
     r32_mux_1_data[31:31] = i_cceip2_out_ia_rdata_part0[31:31];
    end
   11'b010001000:
    begin
     r32_mux_1_data[31:0] = i_cceip2_out_ia_rdata_part1[31:0];
    end
   11'b010001100:
    begin
     r32_mux_1_data[31:0] = i_cceip2_out_ia_rdata_part2[31:0];
    end
   11'b010010000:
    begin
     r32_mux_1_data[9:0] = o_cceip2_out_im_config[9:0];
     r32_mux_1_data[31:30] = o_cceip2_out_im_config[11:10];
    end
   11'b010010100:
    begin
     r32_mux_1_data[8:0] = i_cceip2_out_im_status[8:0];
     r32_mux_1_data[29:29] = i_cceip2_out_im_status[9:9];
     r32_mux_1_data[30:30] = i_cceip2_out_im_status[10:10];
     r32_mux_1_data[31:31] = i_cceip2_out_im_status[11:11];
    end
   11'b010011000:
    begin
     r32_mux_1_data[30:30] = i_cceip2_out_im_read_done[0:0];
     r32_mux_1_data[31:31] = i_cceip2_out_im_read_done[1:1];
    end
   11'b010011100:
    begin
     r32_mux_1_data[0:0] = i_cceip3_out_ia_capability[0:0];
     r32_mux_1_data[1:1] = i_cceip3_out_ia_capability[1:1];
     r32_mux_1_data[2:2] = i_cceip3_out_ia_capability[2:2];
     r32_mux_1_data[3:3] = i_cceip3_out_ia_capability[3:3];
     r32_mux_1_data[4:4] = i_cceip3_out_ia_capability[4:4];
     r32_mux_1_data[5:5] = i_cceip3_out_ia_capability[5:5];
     r32_mux_1_data[6:6] = i_cceip3_out_ia_capability[6:6];
     r32_mux_1_data[7:7] = i_cceip3_out_ia_capability[7:7];
     r32_mux_1_data[8:8] = i_cceip3_out_ia_capability[8:8];
     r32_mux_1_data[9:9] = i_cceip3_out_ia_capability[9:9];
     r32_mux_1_data[13:10] = i_cceip3_out_ia_capability[13:10];
     r32_mux_1_data[14:14] = i_cceip3_out_ia_capability[14:14];
     r32_mux_1_data[15:15] = i_cceip3_out_ia_capability[15:15];
     r32_mux_1_data[31:28] = i_cceip3_out_ia_capability[19:16];
    end
   11'b010100000:
    begin
     r32_mux_1_data[8:0] = i_cceip3_out_ia_status[8:0];
     r32_mux_1_data[28:24] = i_cceip3_out_ia_status[13:9];
     r32_mux_1_data[31:29] = i_cceip3_out_ia_status[16:14];
    end
   11'b010100100:
    begin
     r32_mux_1_data[5:0] = o_cceip3_out_ia_wdata_part0[5:0];
     r32_mux_1_data[13:6] = o_cceip3_out_ia_wdata_part0[13:6];
     r32_mux_1_data[14:14] = o_cceip3_out_ia_wdata_part0[14:14];
     r32_mux_1_data[22:15] = o_cceip3_out_ia_wdata_part0[22:15];
     r32_mux_1_data[30:23] = o_cceip3_out_ia_wdata_part0[30:23];
     r32_mux_1_data[31:31] = o_cceip3_out_ia_wdata_part0[31:31];
    end
   11'b010101000:
    begin
     r32_mux_1_data[31:0] = o_cceip3_out_ia_wdata_part1[31:0];
    end
   11'b010101100:
    begin
     r32_mux_1_data[31:0] = o_cceip3_out_ia_wdata_part2[31:0];
    end
   11'b010110000:
    begin
     r32_mux_1_data[8:0] = o_cceip3_out_ia_config[8:0];
     r32_mux_1_data[31:28] = o_cceip3_out_ia_config[12:9];
    end
   11'b010110100:
    begin
     r32_mux_1_data[5:0] = i_cceip3_out_ia_rdata_part0[5:0];
     r32_mux_1_data[13:6] = i_cceip3_out_ia_rdata_part0[13:6];
     r32_mux_1_data[14:14] = i_cceip3_out_ia_rdata_part0[14:14];
     r32_mux_1_data[22:15] = i_cceip3_out_ia_rdata_part0[22:15];
     r32_mux_1_data[30:23] = i_cceip3_out_ia_rdata_part0[30:23];
     r32_mux_1_data[31:31] = i_cceip3_out_ia_rdata_part0[31:31];
    end
   11'b010111000:
    begin
     r32_mux_1_data[31:0] = i_cceip3_out_ia_rdata_part1[31:0];
    end
   11'b010111100:
    begin
     r32_mux_1_data[31:0] = i_cceip3_out_ia_rdata_part2[31:0];
    end
   11'b011000000:
    begin
     r32_mux_1_data[9:0] = o_cceip3_out_im_config[9:0];
     r32_mux_1_data[31:30] = o_cceip3_out_im_config[11:10];
    end
   11'b011000100:
    begin
     r32_mux_1_data[8:0] = i_cceip3_out_im_status[8:0];
     r32_mux_1_data[29:29] = i_cceip3_out_im_status[9:9];
     r32_mux_1_data[30:30] = i_cceip3_out_im_status[10:10];
     r32_mux_1_data[31:31] = i_cceip3_out_im_status[11:11];
    end
   11'b011001000:
    begin
     r32_mux_1_data[30:30] = i_cceip3_out_im_read_done[0:0];
     r32_mux_1_data[31:31] = i_cceip3_out_im_read_done[1:1];
    end
   11'b011001100:
    begin
     r32_mux_1_data[0:0] = i_cddip0_out_ia_capability[0:0];
     r32_mux_1_data[1:1] = i_cddip0_out_ia_capability[1:1];
     r32_mux_1_data[2:2] = i_cddip0_out_ia_capability[2:2];
     r32_mux_1_data[3:3] = i_cddip0_out_ia_capability[3:3];
     r32_mux_1_data[4:4] = i_cddip0_out_ia_capability[4:4];
     r32_mux_1_data[5:5] = i_cddip0_out_ia_capability[5:5];
     r32_mux_1_data[6:6] = i_cddip0_out_ia_capability[6:6];
     r32_mux_1_data[7:7] = i_cddip0_out_ia_capability[7:7];
     r32_mux_1_data[8:8] = i_cddip0_out_ia_capability[8:8];
     r32_mux_1_data[9:9] = i_cddip0_out_ia_capability[9:9];
     r32_mux_1_data[13:10] = i_cddip0_out_ia_capability[13:10];
     r32_mux_1_data[14:14] = i_cddip0_out_ia_capability[14:14];
     r32_mux_1_data[15:15] = i_cddip0_out_ia_capability[15:15];
     r32_mux_1_data[31:28] = i_cddip0_out_ia_capability[19:16];
    end
   11'b011010000:
    begin
     r32_mux_1_data[8:0] = i_cddip0_out_ia_status[8:0];
     r32_mux_1_data[28:24] = i_cddip0_out_ia_status[13:9];
     r32_mux_1_data[31:29] = i_cddip0_out_ia_status[16:14];
    end
   11'b011010100:
    begin
     r32_mux_1_data[5:0] = o_cddip0_out_ia_wdata_part0[5:0];
     r32_mux_1_data[13:6] = o_cddip0_out_ia_wdata_part0[13:6];
     r32_mux_1_data[14:14] = o_cddip0_out_ia_wdata_part0[14:14];
     r32_mux_1_data[22:15] = o_cddip0_out_ia_wdata_part0[22:15];
     r32_mux_1_data[30:23] = o_cddip0_out_ia_wdata_part0[30:23];
     r32_mux_1_data[31:31] = o_cddip0_out_ia_wdata_part0[31:31];
    end
   11'b011011000:
    begin
     r32_mux_1_data[31:0] = o_cddip0_out_ia_wdata_part1[31:0];
    end
   11'b011011100:
    begin
     r32_mux_1_data[31:0] = o_cddip0_out_ia_wdata_part2[31:0];
    end
   11'b011100000:
    begin
     r32_mux_1_data[8:0] = o_cddip0_out_ia_config[8:0];
     r32_mux_1_data[31:28] = o_cddip0_out_ia_config[12:9];
    end
   11'b011100100:
    begin
     r32_mux_1_data[5:0] = i_cddip0_out_ia_rdata_part0[5:0];
     r32_mux_1_data[13:6] = i_cddip0_out_ia_rdata_part0[13:6];
     r32_mux_1_data[14:14] = i_cddip0_out_ia_rdata_part0[14:14];
     r32_mux_1_data[22:15] = i_cddip0_out_ia_rdata_part0[22:15];
     r32_mux_1_data[30:23] = i_cddip0_out_ia_rdata_part0[30:23];
     r32_mux_1_data[31:31] = i_cddip0_out_ia_rdata_part0[31:31];
    end
   11'b011101000:
    begin
     r32_mux_1_data[31:0] = i_cddip0_out_ia_rdata_part1[31:0];
    end
   11'b011101100:
    begin
     r32_mux_1_data[31:0] = i_cddip0_out_ia_rdata_part2[31:0];
    end
  endcase
  case (ws_read_addr)
   11'b011110000:
    begin
     r32_mux_2_data[9:0] = o_cddip0_out_im_config[9:0];
     r32_mux_2_data[31:30] = o_cddip0_out_im_config[11:10];
    end
   11'b011110100:
    begin
     r32_mux_2_data[8:0] = i_cddip0_out_im_status[8:0];
     r32_mux_2_data[29:29] = i_cddip0_out_im_status[9:9];
     r32_mux_2_data[30:30] = i_cddip0_out_im_status[10:10];
     r32_mux_2_data[31:31] = i_cddip0_out_im_status[11:11];
    end
   11'b011111000:
    begin
     r32_mux_2_data[30:30] = i_cddip0_out_im_read_done[0:0];
     r32_mux_2_data[31:31] = i_cddip0_out_im_read_done[1:1];
    end
   11'b011111100:
    begin
     r32_mux_2_data[0:0] = i_cddip1_out_ia_capability[0:0];
     r32_mux_2_data[1:1] = i_cddip1_out_ia_capability[1:1];
     r32_mux_2_data[2:2] = i_cddip1_out_ia_capability[2:2];
     r32_mux_2_data[3:3] = i_cddip1_out_ia_capability[3:3];
     r32_mux_2_data[4:4] = i_cddip1_out_ia_capability[4:4];
     r32_mux_2_data[5:5] = i_cddip1_out_ia_capability[5:5];
     r32_mux_2_data[6:6] = i_cddip1_out_ia_capability[6:6];
     r32_mux_2_data[7:7] = i_cddip1_out_ia_capability[7:7];
     r32_mux_2_data[8:8] = i_cddip1_out_ia_capability[8:8];
     r32_mux_2_data[9:9] = i_cddip1_out_ia_capability[9:9];
     r32_mux_2_data[13:10] = i_cddip1_out_ia_capability[13:10];
     r32_mux_2_data[14:14] = i_cddip1_out_ia_capability[14:14];
     r32_mux_2_data[15:15] = i_cddip1_out_ia_capability[15:15];
     r32_mux_2_data[31:28] = i_cddip1_out_ia_capability[19:16];
    end
   11'b0100000000:
    begin
     r32_mux_2_data[8:0] = i_cddip1_out_ia_status[8:0];
     r32_mux_2_data[28:24] = i_cddip1_out_ia_status[13:9];
     r32_mux_2_data[31:29] = i_cddip1_out_ia_status[16:14];
    end
   11'b0100000100:
    begin
     r32_mux_2_data[5:0] = o_cddip1_out_ia_wdata_part0[5:0];
     r32_mux_2_data[13:6] = o_cddip1_out_ia_wdata_part0[13:6];
     r32_mux_2_data[14:14] = o_cddip1_out_ia_wdata_part0[14:14];
     r32_mux_2_data[22:15] = o_cddip1_out_ia_wdata_part0[22:15];
     r32_mux_2_data[30:23] = o_cddip1_out_ia_wdata_part0[30:23];
     r32_mux_2_data[31:31] = o_cddip1_out_ia_wdata_part0[31:31];
    end
   11'b0100001000:
    begin
     r32_mux_2_data[31:0] = o_cddip1_out_ia_wdata_part1[31:0];
    end
   11'b0100001100:
    begin
     r32_mux_2_data[31:0] = o_cddip1_out_ia_wdata_part2[31:0];
    end
   11'b0100010000:
    begin
     r32_mux_2_data[8:0] = o_cddip1_out_ia_config[8:0];
     r32_mux_2_data[31:28] = o_cddip1_out_ia_config[12:9];
    end
   11'b0100010100:
    begin
     r32_mux_2_data[5:0] = i_cddip1_out_ia_rdata_part0[5:0];
     r32_mux_2_data[13:6] = i_cddip1_out_ia_rdata_part0[13:6];
     r32_mux_2_data[14:14] = i_cddip1_out_ia_rdata_part0[14:14];
     r32_mux_2_data[22:15] = i_cddip1_out_ia_rdata_part0[22:15];
     r32_mux_2_data[30:23] = i_cddip1_out_ia_rdata_part0[30:23];
     r32_mux_2_data[31:31] = i_cddip1_out_ia_rdata_part0[31:31];
    end
   11'b0100011000:
    begin
     r32_mux_2_data[31:0] = i_cddip1_out_ia_rdata_part1[31:0];
    end
   11'b0100011100:
    begin
     r32_mux_2_data[31:0] = i_cddip1_out_ia_rdata_part2[31:0];
    end
   11'b0100100000:
    begin
     r32_mux_2_data[9:0] = o_cddip1_out_im_config[9:0];
     r32_mux_2_data[31:30] = o_cddip1_out_im_config[11:10];
    end
   11'b0100100100:
    begin
     r32_mux_2_data[8:0] = i_cddip1_out_im_status[8:0];
     r32_mux_2_data[29:29] = i_cddip1_out_im_status[9:9];
     r32_mux_2_data[30:30] = i_cddip1_out_im_status[10:10];
     r32_mux_2_data[31:31] = i_cddip1_out_im_status[11:11];
    end
   11'b0100101000:
    begin
     r32_mux_2_data[30:30] = i_cddip1_out_im_read_done[0:0];
     r32_mux_2_data[31:31] = i_cddip1_out_im_read_done[1:1];
    end
   11'b0100101100:
    begin
     r32_mux_2_data[0:0] = i_cddip2_out_ia_capability[0:0];
     r32_mux_2_data[1:1] = i_cddip2_out_ia_capability[1:1];
     r32_mux_2_data[2:2] = i_cddip2_out_ia_capability[2:2];
     r32_mux_2_data[3:3] = i_cddip2_out_ia_capability[3:3];
     r32_mux_2_data[4:4] = i_cddip2_out_ia_capability[4:4];
     r32_mux_2_data[5:5] = i_cddip2_out_ia_capability[5:5];
     r32_mux_2_data[6:6] = i_cddip2_out_ia_capability[6:6];
     r32_mux_2_data[7:7] = i_cddip2_out_ia_capability[7:7];
     r32_mux_2_data[8:8] = i_cddip2_out_ia_capability[8:8];
     r32_mux_2_data[9:9] = i_cddip2_out_ia_capability[9:9];
     r32_mux_2_data[13:10] = i_cddip2_out_ia_capability[13:10];
     r32_mux_2_data[14:14] = i_cddip2_out_ia_capability[14:14];
     r32_mux_2_data[15:15] = i_cddip2_out_ia_capability[15:15];
     r32_mux_2_data[31:28] = i_cddip2_out_ia_capability[19:16];
    end
   11'b0100110000:
    begin
     r32_mux_2_data[8:0] = i_cddip2_out_ia_status[8:0];
     r32_mux_2_data[28:24] = i_cddip2_out_ia_status[13:9];
     r32_mux_2_data[31:29] = i_cddip2_out_ia_status[16:14];
    end
   11'b0100110100:
    begin
     r32_mux_2_data[5:0] = o_cddip2_out_ia_wdata_part0[5:0];
     r32_mux_2_data[13:6] = o_cddip2_out_ia_wdata_part0[13:6];
     r32_mux_2_data[14:14] = o_cddip2_out_ia_wdata_part0[14:14];
     r32_mux_2_data[22:15] = o_cddip2_out_ia_wdata_part0[22:15];
     r32_mux_2_data[30:23] = o_cddip2_out_ia_wdata_part0[30:23];
     r32_mux_2_data[31:31] = o_cddip2_out_ia_wdata_part0[31:31];
    end
   11'b0100111000:
    begin
     r32_mux_2_data[31:0] = o_cddip2_out_ia_wdata_part1[31:0];
    end
   11'b0100111100:
    begin
     r32_mux_2_data[31:0] = o_cddip2_out_ia_wdata_part2[31:0];
    end
   11'b0101000000:
    begin
     r32_mux_2_data[8:0] = o_cddip2_out_ia_config[8:0];
     r32_mux_2_data[31:28] = o_cddip2_out_ia_config[12:9];
    end
   11'b0101000100:
    begin
     r32_mux_2_data[5:0] = i_cddip2_out_ia_rdata_part0[5:0];
     r32_mux_2_data[13:6] = i_cddip2_out_ia_rdata_part0[13:6];
     r32_mux_2_data[14:14] = i_cddip2_out_ia_rdata_part0[14:14];
     r32_mux_2_data[22:15] = i_cddip2_out_ia_rdata_part0[22:15];
     r32_mux_2_data[30:23] = i_cddip2_out_ia_rdata_part0[30:23];
     r32_mux_2_data[31:31] = i_cddip2_out_ia_rdata_part0[31:31];
    end
   11'b0101001000:
    begin
     r32_mux_2_data[31:0] = i_cddip2_out_ia_rdata_part1[31:0];
    end
   11'b0101001100:
    begin
     r32_mux_2_data[31:0] = i_cddip2_out_ia_rdata_part2[31:0];
    end
   11'b0101010000:
    begin
     r32_mux_2_data[9:0] = o_cddip2_out_im_config[9:0];
     r32_mux_2_data[31:30] = o_cddip2_out_im_config[11:10];
    end
   11'b0101010100:
    begin
     r32_mux_2_data[8:0] = i_cddip2_out_im_status[8:0];
     r32_mux_2_data[29:29] = i_cddip2_out_im_status[9:9];
     r32_mux_2_data[30:30] = i_cddip2_out_im_status[10:10];
     r32_mux_2_data[31:31] = i_cddip2_out_im_status[11:11];
    end
   11'b0101011000:
    begin
     r32_mux_2_data[30:30] = i_cddip2_out_im_read_done[0:0];
     r32_mux_2_data[31:31] = i_cddip2_out_im_read_done[1:1];
    end
   11'b0101011100:
    begin
     r32_mux_2_data[0:0] = i_cddip3_out_ia_capability[0:0];
     r32_mux_2_data[1:1] = i_cddip3_out_ia_capability[1:1];
     r32_mux_2_data[2:2] = i_cddip3_out_ia_capability[2:2];
     r32_mux_2_data[3:3] = i_cddip3_out_ia_capability[3:3];
     r32_mux_2_data[4:4] = i_cddip3_out_ia_capability[4:4];
     r32_mux_2_data[5:5] = i_cddip3_out_ia_capability[5:5];
     r32_mux_2_data[6:6] = i_cddip3_out_ia_capability[6:6];
     r32_mux_2_data[7:7] = i_cddip3_out_ia_capability[7:7];
     r32_mux_2_data[8:8] = i_cddip3_out_ia_capability[8:8];
     r32_mux_2_data[9:9] = i_cddip3_out_ia_capability[9:9];
     r32_mux_2_data[13:10] = i_cddip3_out_ia_capability[13:10];
     r32_mux_2_data[14:14] = i_cddip3_out_ia_capability[14:14];
     r32_mux_2_data[15:15] = i_cddip3_out_ia_capability[15:15];
     r32_mux_2_data[31:28] = i_cddip3_out_ia_capability[19:16];
    end
   11'b0101100000:
    begin
     r32_mux_2_data[8:0] = i_cddip3_out_ia_status[8:0];
     r32_mux_2_data[28:24] = i_cddip3_out_ia_status[13:9];
     r32_mux_2_data[31:29] = i_cddip3_out_ia_status[16:14];
    end
   11'b0101100100:
    begin
     r32_mux_2_data[5:0] = o_cddip3_out_ia_wdata_part0[5:0];
     r32_mux_2_data[13:6] = o_cddip3_out_ia_wdata_part0[13:6];
     r32_mux_2_data[14:14] = o_cddip3_out_ia_wdata_part0[14:14];
     r32_mux_2_data[22:15] = o_cddip3_out_ia_wdata_part0[22:15];
     r32_mux_2_data[30:23] = o_cddip3_out_ia_wdata_part0[30:23];
     r32_mux_2_data[31:31] = o_cddip3_out_ia_wdata_part0[31:31];
    end
  endcase
  case (ws_read_addr)
   11'b0101101000:
    begin
     r32_mux_3_data[31:0] = o_cddip3_out_ia_wdata_part1[31:0];
    end
   11'b0101101100:
    begin
     r32_mux_3_data[31:0] = o_cddip3_out_ia_wdata_part2[31:0];
    end
   11'b0101110000:
    begin
     r32_mux_3_data[8:0] = o_cddip3_out_ia_config[8:0];
     r32_mux_3_data[31:28] = o_cddip3_out_ia_config[12:9];
    end
   11'b0101110100:
    begin
     r32_mux_3_data[5:0] = i_cddip3_out_ia_rdata_part0[5:0];
     r32_mux_3_data[13:6] = i_cddip3_out_ia_rdata_part0[13:6];
     r32_mux_3_data[14:14] = i_cddip3_out_ia_rdata_part0[14:14];
     r32_mux_3_data[22:15] = i_cddip3_out_ia_rdata_part0[22:15];
     r32_mux_3_data[30:23] = i_cddip3_out_ia_rdata_part0[30:23];
     r32_mux_3_data[31:31] = i_cddip3_out_ia_rdata_part0[31:31];
    end
   11'b0101111000:
    begin
     r32_mux_3_data[31:0] = i_cddip3_out_ia_rdata_part1[31:0];
    end
   11'b0101111100:
    begin
     r32_mux_3_data[31:0] = i_cddip3_out_ia_rdata_part2[31:0];
    end
   11'b0110000000:
    begin
     r32_mux_3_data[9:0] = o_cddip3_out_im_config[9:0];
     r32_mux_3_data[31:30] = o_cddip3_out_im_config[11:10];
    end
   11'b0110000100:
    begin
     r32_mux_3_data[8:0] = i_cddip3_out_im_status[8:0];
     r32_mux_3_data[29:29] = i_cddip3_out_im_status[9:9];
     r32_mux_3_data[30:30] = i_cddip3_out_im_status[10:10];
     r32_mux_3_data[31:31] = i_cddip3_out_im_status[11:11];
    end
   11'b0110001000:
    begin
     r32_mux_3_data[30:30] = i_cddip3_out_im_read_done[0:0];
     r32_mux_3_data[31:31] = i_cddip3_out_im_read_done[1:1];
    end
   11'b0110001100:
    begin
     r32_mux_3_data[0:0] = i_ckv_ia_capability[0:0];
     r32_mux_3_data[1:1] = i_ckv_ia_capability[1:1];
     r32_mux_3_data[2:2] = i_ckv_ia_capability[2:2];
     r32_mux_3_data[3:3] = i_ckv_ia_capability[3:3];
     r32_mux_3_data[4:4] = i_ckv_ia_capability[4:4];
     r32_mux_3_data[5:5] = i_ckv_ia_capability[5:5];
     r32_mux_3_data[6:6] = i_ckv_ia_capability[6:6];
     r32_mux_3_data[7:7] = i_ckv_ia_capability[7:7];
     r32_mux_3_data[8:8] = i_ckv_ia_capability[8:8];
     r32_mux_3_data[9:9] = i_ckv_ia_capability[9:9];
     r32_mux_3_data[13:10] = i_ckv_ia_capability[13:10];
     r32_mux_3_data[14:14] = i_ckv_ia_capability[14:14];
     r32_mux_3_data[15:15] = i_ckv_ia_capability[15:15];
     r32_mux_3_data[31:28] = i_ckv_ia_capability[19:16];
    end
   11'b0110010000:
    begin
     r32_mux_3_data[14:0] = i_ckv_ia_status[14:0];
     r32_mux_3_data[28:24] = i_ckv_ia_status[19:15];
     r32_mux_3_data[31:29] = i_ckv_ia_status[22:20];
    end
   11'b0110010100:
    begin
     r32_mux_3_data[31:0] = o_ckv_ia_wdata_part0[31:0];
    end
   11'b0110011000:
    begin
     r32_mux_3_data[31:0] = o_ckv_ia_wdata_part1[31:0];
    end
   11'b0110011100:
    begin
     r32_mux_3_data[14:0] = o_ckv_ia_config[14:0];
     r32_mux_3_data[31:28] = o_ckv_ia_config[18:15];
    end
   11'b0110100000:
    begin
     r32_mux_3_data[31:0] = i_ckv_ia_rdata_part0[31:0];
    end
   11'b0110100100:
    begin
     r32_mux_3_data[31:0] = i_ckv_ia_rdata_part1[31:0];
    end
   11'b0110101000:
    begin
     r32_mux_3_data[0:0] = i_kim_ia_capability[0:0];
     r32_mux_3_data[1:1] = i_kim_ia_capability[1:1];
     r32_mux_3_data[2:2] = i_kim_ia_capability[2:2];
     r32_mux_3_data[3:3] = i_kim_ia_capability[3:3];
     r32_mux_3_data[4:4] = i_kim_ia_capability[4:4];
     r32_mux_3_data[5:5] = i_kim_ia_capability[5:5];
     r32_mux_3_data[6:6] = i_kim_ia_capability[6:6];
     r32_mux_3_data[7:7] = i_kim_ia_capability[7:7];
     r32_mux_3_data[8:8] = i_kim_ia_capability[8:8];
     r32_mux_3_data[9:9] = i_kim_ia_capability[9:9];
     r32_mux_3_data[13:10] = i_kim_ia_capability[13:10];
     r32_mux_3_data[14:14] = i_kim_ia_capability[14:14];
     r32_mux_3_data[15:15] = i_kim_ia_capability[15:15];
     r32_mux_3_data[31:28] = i_kim_ia_capability[19:16];
    end
   11'b0110101100:
    begin
     r32_mux_3_data[13:0] = i_kim_ia_status[13:0];
     r32_mux_3_data[28:24] = i_kim_ia_status[18:14];
     r32_mux_3_data[31:29] = i_kim_ia_status[21:19];
    end
   11'b0110110000:
    begin
     r32_mux_3_data[14:0] = o_kim_ia_wdata_part0[14:0];
     r32_mux_3_data[27:26] = o_kim_ia_wdata_part0[16:15];
     r32_mux_3_data[30:28] = o_kim_ia_wdata_part0[19:17];
     r32_mux_3_data[31:31] = o_kim_ia_wdata_part0[20:20];
    end
   11'b0110110100:
    begin
     r32_mux_3_data[0:0] = o_kim_ia_wdata_part1[0:0];
     r32_mux_3_data[12:1] = o_kim_ia_wdata_part1[12:1];
     r32_mux_3_data[31:28] = o_kim_ia_wdata_part1[16:13];
    end
   11'b0110111000:
    begin
     r32_mux_3_data[13:0] = o_kim_ia_config[13:0];
     r32_mux_3_data[31:28] = o_kim_ia_config[17:14];
    end
   11'b0110111100:
    begin
     r32_mux_3_data[14:0] = i_kim_ia_rdata_part0[14:0];
     r32_mux_3_data[27:26] = i_kim_ia_rdata_part0[16:15];
     r32_mux_3_data[30:28] = i_kim_ia_rdata_part0[19:17];
     r32_mux_3_data[31:31] = i_kim_ia_rdata_part0[20:20];
    end
   11'b0111000000:
    begin
     r32_mux_3_data[0:0] = i_kim_ia_rdata_part1[0:0];
     r32_mux_3_data[12:1] = i_kim_ia_rdata_part1[12:1];
     r32_mux_3_data[31:28] = i_kim_ia_rdata_part1[16:13];
    end
   11'b0111001000:
    begin
     r32_mux_3_data[7:0] = o_label0_config[7:0];
     r32_mux_3_data[8:8] = o_label0_config[8:8];
     r32_mux_3_data[30:25] = o_label0_config[14:9];
     r32_mux_3_data[31:31] = o_label0_config[15:15];
    end
   11'b0111001100:
    begin
     r32_mux_3_data[31:0] = o_label0_data7[31:0];
    end
   11'b0111010000:
    begin
     r32_mux_3_data[31:0] = o_label0_data6[31:0];
    end
   11'b0111010100:
    begin
     r32_mux_3_data[31:0] = o_label0_data5[31:0];
    end
   11'b0111011000:
    begin
     r32_mux_3_data[31:0] = o_label0_data4[31:0];
    end
   11'b0111011100:
    begin
     r32_mux_3_data[31:0] = o_label0_data3[31:0];
    end
   11'b0111100000:
    begin
     r32_mux_3_data[31:0] = o_label0_data2[31:0];
    end
  endcase
  case (ws_read_addr)
   11'b0111100100:
    begin
     r32_mux_4_data[31:0] = o_label0_data1[31:0];
    end
   11'b0111101000:
    begin
     r32_mux_4_data[31:0] = o_label0_data0[31:0];
    end
   11'b0111110000:
    begin
     r32_mux_4_data[7:0] = o_label1_config[7:0];
     r32_mux_4_data[8:8] = o_label1_config[8:8];
     r32_mux_4_data[30:25] = o_label1_config[14:9];
     r32_mux_4_data[31:31] = o_label1_config[15:15];
    end
   11'b0111110100:
    begin
     r32_mux_4_data[31:0] = o_label1_data7[31:0];
    end
   11'b0111111000:
    begin
     r32_mux_4_data[31:0] = o_label1_data6[31:0];
    end
   11'b0111111100:
    begin
     r32_mux_4_data[31:0] = o_label1_data5[31:0];
    end
   11'b01000000000:
    begin
     r32_mux_4_data[31:0] = o_label1_data4[31:0];
    end
   11'b01000000100:
    begin
     r32_mux_4_data[31:0] = o_label1_data3[31:0];
    end
   11'b01000001000:
    begin
     r32_mux_4_data[31:0] = o_label1_data2[31:0];
    end
   11'b01000001100:
    begin
     r32_mux_4_data[31:0] = o_label1_data1[31:0];
    end
   11'b01000010000:
    begin
     r32_mux_4_data[31:0] = o_label1_data0[31:0];
    end
   11'b01000011000:
    begin
     r32_mux_4_data[7:0] = o_label2_config[7:0];
     r32_mux_4_data[8:8] = o_label2_config[8:8];
     r32_mux_4_data[30:25] = o_label2_config[14:9];
     r32_mux_4_data[31:31] = o_label2_config[15:15];
    end
   11'b01000011100:
    begin
     r32_mux_4_data[31:0] = o_label2_data7[31:0];
    end
   11'b01000100000:
    begin
     r32_mux_4_data[31:0] = o_label2_data6[31:0];
    end
   11'b01000100100:
    begin
     r32_mux_4_data[31:0] = o_label2_data5[31:0];
    end
   11'b01000101000:
    begin
     r32_mux_4_data[31:0] = o_label2_data4[31:0];
    end
   11'b01000101100:
    begin
     r32_mux_4_data[31:0] = o_label2_data3[31:0];
    end
   11'b01000110000:
    begin
     r32_mux_4_data[31:0] = o_label2_data2[31:0];
    end
   11'b01000110100:
    begin
     r32_mux_4_data[31:0] = o_label2_data1[31:0];
    end
   11'b01000111000:
    begin
     r32_mux_4_data[31:0] = o_label2_data0[31:0];
    end
   11'b01001000000:
    begin
     r32_mux_4_data[7:0] = o_label3_config[7:0];
     r32_mux_4_data[8:8] = o_label3_config[8:8];
     r32_mux_4_data[30:25] = o_label3_config[14:9];
     r32_mux_4_data[31:31] = o_label3_config[15:15];
    end
   11'b01001000100:
    begin
     r32_mux_4_data[31:0] = o_label3_data7[31:0];
    end
   11'b01001001000:
    begin
     r32_mux_4_data[31:0] = o_label3_data6[31:0];
    end
   11'b01001001100:
    begin
     r32_mux_4_data[31:0] = o_label3_data5[31:0];
    end
   11'b01001010000:
    begin
     r32_mux_4_data[31:0] = o_label3_data4[31:0];
    end
   11'b01001010100:
    begin
     r32_mux_4_data[31:0] = o_label3_data3[31:0];
    end
   11'b01001011000:
    begin
     r32_mux_4_data[31:0] = o_label3_data2[31:0];
    end
   11'b01001011100:
    begin
     r32_mux_4_data[31:0] = o_label3_data1[31:0];
    end
   11'b01001100000:
    begin
     r32_mux_4_data[31:0] = o_label3_data0[31:0];
    end
   11'b01001101000:
    begin
     r32_mux_4_data[7:0] = o_label4_config[7:0];
     r32_mux_4_data[8:8] = o_label4_config[8:8];
     r32_mux_4_data[30:25] = o_label4_config[14:9];
     r32_mux_4_data[31:31] = o_label4_config[15:15];
    end
  endcase
  case (ws_read_addr)
   11'b01001101100:
    begin
     r32_mux_5_data[31:0] = o_label4_data7[31:0];
    end
   11'b01001110000:
    begin
     r32_mux_5_data[31:0] = o_label4_data6[31:0];
    end
   11'b01001110100:
    begin
     r32_mux_5_data[31:0] = o_label4_data5[31:0];
    end
   11'b01001111000:
    begin
     r32_mux_5_data[31:0] = o_label4_data4[31:0];
    end
   11'b01001111100:
    begin
     r32_mux_5_data[31:0] = o_label4_data3[31:0];
    end
   11'b01010000000:
    begin
     r32_mux_5_data[31:0] = o_label4_data2[31:0];
    end
   11'b01010000100:
    begin
     r32_mux_5_data[31:0] = o_label4_data1[31:0];
    end
   11'b01010001000:
    begin
     r32_mux_5_data[31:0] = o_label4_data0[31:0];
    end
   11'b01010010000:
    begin
     r32_mux_5_data[7:0] = o_label5_config[7:0];
     r32_mux_5_data[8:8] = o_label5_config[8:8];
     r32_mux_5_data[30:25] = o_label5_config[14:9];
     r32_mux_5_data[31:31] = o_label5_config[15:15];
    end
   11'b01010010100:
    begin
     r32_mux_5_data[31:0] = o_label5_data7[31:0];
    end
   11'b01010011000:
    begin
     r32_mux_5_data[31:0] = o_label5_data6[31:0];
    end
   11'b01010011100:
    begin
     r32_mux_5_data[31:0] = o_label5_data5[31:0];
    end
   11'b01010100000:
    begin
     r32_mux_5_data[31:0] = o_label5_data4[31:0];
    end
   11'b01010100100:
    begin
     r32_mux_5_data[31:0] = o_label5_data3[31:0];
    end
   11'b01010101000:
    begin
     r32_mux_5_data[31:0] = o_label5_data2[31:0];
    end
   11'b01010101100:
    begin
     r32_mux_5_data[31:0] = o_label5_data1[31:0];
    end
   11'b01010110000:
    begin
     r32_mux_5_data[31:0] = o_label5_data0[31:0];
    end
   11'b01010111000:
    begin
     r32_mux_5_data[7:0] = o_label6_config[7:0];
     r32_mux_5_data[8:8] = o_label6_config[8:8];
     r32_mux_5_data[30:25] = o_label6_config[14:9];
     r32_mux_5_data[31:31] = o_label6_config[15:15];
    end
   11'b01010111100:
    begin
     r32_mux_5_data[31:0] = o_label6_data7[31:0];
    end
   11'b01011000000:
    begin
     r32_mux_5_data[31:0] = o_label6_data6[31:0];
    end
   11'b01011000100:
    begin
     r32_mux_5_data[31:0] = o_label6_data5[31:0];
    end
   11'b01011001000:
    begin
     r32_mux_5_data[31:0] = o_label6_data4[31:0];
    end
   11'b01011001100:
    begin
     r32_mux_5_data[31:0] = o_label6_data3[31:0];
    end
   11'b01011010000:
    begin
     r32_mux_5_data[31:0] = o_label6_data2[31:0];
    end
   11'b01011010100:
    begin
     r32_mux_5_data[31:0] = o_label6_data1[31:0];
    end
   11'b01011011000:
    begin
     r32_mux_5_data[31:0] = o_label6_data0[31:0];
    end
   11'b01011100000:
    begin
     r32_mux_5_data[7:0] = o_label7_config[7:0];
     r32_mux_5_data[8:8] = o_label7_config[8:8];
     r32_mux_5_data[30:25] = o_label7_config[14:9];
     r32_mux_5_data[31:31] = o_label7_config[15:15];
    end
   11'b01011100100:
    begin
     r32_mux_5_data[31:0] = o_label7_data7[31:0];
    end
   11'b01011101000:
    begin
     r32_mux_5_data[31:0] = o_label7_data6[31:0];
    end
   11'b01011101100:
    begin
     r32_mux_5_data[31:0] = o_label7_data5[31:0];
    end
  endcase
  case (ws_read_addr)
   11'b01011110000:
    begin
     r32_mux_6_data[31:0] = o_label7_data4[31:0];
    end
   11'b01011110100:
    begin
     r32_mux_6_data[31:0] = o_label7_data3[31:0];
    end
   11'b01011111000:
    begin
     r32_mux_6_data[31:0] = o_label7_data2[31:0];
    end
   11'b01011111100:
    begin
     r32_mux_6_data[31:0] = o_label7_data1[31:0];
    end
   11'b01100000000:
    begin
     r32_mux_6_data[31:0] = o_label7_data0[31:0];
    end
   11'b01100001000:
    begin
     r32_mux_6_data[1:0] = i_kdf_drbg_ctrl[1:0];
    end
   11'b01100001100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_key_31_0[31:0];
    end
   11'b01100010000:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_key_63_32[31:0];
    end
   11'b01100010100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_key_95_64[31:0];
    end
   11'b01100011000:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_key_127_96[31:0];
    end
   11'b01100011100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_key_159_128[31:0];
    end
   11'b01100100000:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_key_191_160[31:0];
    end
   11'b01100100100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_key_223_192[31:0];
    end
   11'b01100101000:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_key_255_224[31:0];
    end
   11'b01100101100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_value_31_0[31:0];
    end
   11'b01100110000:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_value_63_32[31:0];
    end
   11'b01100110100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_value_95_64[31:0];
    end
   11'b01100111000:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_state_value_127_96[31:0];
    end
   11'b01100111100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_0_reseed_interval_0[31:0];
    end
   11'b01101000000:
    begin
     r32_mux_6_data[15:0] = o_kdf_drbg_seed_0_reseed_interval_1[15:0];
    end
   11'b01101000100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_1_state_key_31_0[31:0];
    end
   11'b01101001000:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_1_state_key_63_32[31:0];
    end
   11'b01101001100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_1_state_key_95_64[31:0];
    end
   11'b01101010000:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_1_state_key_127_96[31:0];
    end
   11'b01101010100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_1_state_key_159_128[31:0];
    end
   11'b01101011000:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_1_state_key_191_160[31:0];
    end
   11'b01101011100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_1_state_key_223_192[31:0];
    end
   11'b01101100000:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_1_state_key_255_224[31:0];
    end
   11'b01101100100:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_1_state_value_31_0[31:0];
    end
   11'b01101101000:
    begin
     r32_mux_6_data[31:0] = o_kdf_drbg_seed_1_state_value_63_32[31:0];
    end
  endcase
  case (ws_read_addr)
   11'b01101101100:
    begin
     r32_mux_7_data[31:0] = o_kdf_drbg_seed_1_state_value_95_64[31:0];
    end
   11'b01101110000:
    begin
     r32_mux_7_data[31:0] = o_kdf_drbg_seed_1_state_value_127_96[31:0];
    end
   11'b01101110100:
    begin
     r32_mux_7_data[31:0] = o_kdf_drbg_seed_1_reseed_interval_0[31:0];
    end
   11'b01101111000:
    begin
     r32_mux_7_data[15:0] = o_kdf_drbg_seed_1_reseed_interval_1[15:0];
    end
   11'b01101111100:
    begin
     r32_mux_7_data[0:0] = i_interrupt_status[0:0];
     r32_mux_7_data[1:1] = i_interrupt_status[1:1];
     r32_mux_7_data[2:2] = i_interrupt_status[2:2];
     r32_mux_7_data[3:3] = i_interrupt_status[3:3];
     r32_mux_7_data[4:4] = i_interrupt_status[4:4];
    end
   11'b01110000000:
    begin
     r32_mux_7_data[0:0] = o_interrupt_mask[0:0];
     r32_mux_7_data[1:1] = o_interrupt_mask[1:1];
     r32_mux_7_data[2:2] = o_interrupt_mask[2:2];
     r32_mux_7_data[3:3] = o_interrupt_mask[3:3];
     r32_mux_7_data[4:4] = o_interrupt_mask[4:4];
    end
   11'b01110000100:
    begin
     r32_mux_7_data[0:0] = i_engine_sticky_status[0:0];
     r32_mux_7_data[1:1] = i_engine_sticky_status[1:1];
     r32_mux_7_data[2:2] = i_engine_sticky_status[2:2];
     r32_mux_7_data[3:3] = i_engine_sticky_status[3:3];
     r32_mux_7_data[4:4] = i_engine_sticky_status[4:4];
     r32_mux_7_data[5:5] = i_engine_sticky_status[5:5];
     r32_mux_7_data[6:6] = i_engine_sticky_status[6:6];
     r32_mux_7_data[7:7] = i_engine_sticky_status[7:7];
    end
   11'b01110001100:
    begin
     r32_mux_7_data[0:0] = i_bimc_monitor[0:0];
     r32_mux_7_data[1:1] = i_bimc_monitor[1:1];
     r32_mux_7_data[2:2] = i_bimc_monitor[2:2];
     r32_mux_7_data[3:3] = i_bimc_monitor[3:3];
     r32_mux_7_data[4:4] = i_bimc_monitor[4:4];
     r32_mux_7_data[5:5] = i_bimc_monitor[5:5];
     r32_mux_7_data[6:6] = i_bimc_monitor[6:6];
    end
   11'b01110010000:
    begin
     r32_mux_7_data[0:0] = o_bimc_monitor_mask[0:0];
     r32_mux_7_data[1:1] = o_bimc_monitor_mask[1:1];
     r32_mux_7_data[2:2] = o_bimc_monitor_mask[2:2];
     r32_mux_7_data[3:3] = o_bimc_monitor_mask[3:3];
     r32_mux_7_data[4:4] = o_bimc_monitor_mask[4:4];
     r32_mux_7_data[5:5] = o_bimc_monitor_mask[5:5];
     r32_mux_7_data[6:6] = o_bimc_monitor_mask[6:6];
    end
   11'b01110010100:
    begin
     r32_mux_7_data[31:0] = i_bimc_ecc_uncorrectable_error_cnt[31:0];
    end
   11'b01110011000:
    begin
     r32_mux_7_data[31:0] = i_bimc_ecc_correctable_error_cnt[31:0];
    end
   11'b01110011100:
    begin
     r32_mux_7_data[31:0] = i_bimc_parity_error_cnt[31:0];
    end
   11'b01110100000:
    begin
     r32_mux_7_data[0:0] = i_bimc_global_config[0:0];
     r32_mux_7_data[1:1] = i_bimc_global_config[1:1];
     r32_mux_7_data[2:2] = i_bimc_global_config[2:2];
     r32_mux_7_data[3:3] = i_bimc_global_config[3:3];
     r32_mux_7_data[4:4] = i_bimc_global_config[4:4];
     r32_mux_7_data[5:5] = i_bimc_global_config[5:5];
     r32_mux_7_data[31:6] = i_bimc_global_config[31:6];
    end
   11'b01110100100:
    begin
     r32_mux_7_data[11:0] = i_bimc_memid[11:0];
    end
   11'b01110101000:
    begin
     r32_mux_7_data[11:0] = i_bimc_eccpar_debug[11:0];
     r32_mux_7_data[15:12] = i_bimc_eccpar_debug[15:12];
     r32_mux_7_data[17:16] = i_bimc_eccpar_debug[17:16];
     r32_mux_7_data[19:18] = i_bimc_eccpar_debug[19:18];
     r32_mux_7_data[21:20] = i_bimc_eccpar_debug[21:20];
     r32_mux_7_data[22:22] = i_bimc_eccpar_debug[22:22];
     r32_mux_7_data[23:23] = i_bimc_eccpar_debug[23:23];
     r32_mux_7_data[27:24] = i_bimc_eccpar_debug[27:24];
     r32_mux_7_data[28:28] = i_bimc_eccpar_debug[28:28];
    end
   11'b01110101100:
    begin
     r32_mux_7_data[7:0] = i_bimc_cmd2[7:0];
     r32_mux_7_data[8:8] = i_bimc_cmd2[8:8];
     r32_mux_7_data[9:9] = i_bimc_cmd2[9:9];
     r32_mux_7_data[10:10] = i_bimc_cmd2[10:10];
    end
   11'b01110110000:
    begin
     r32_mux_7_data[15:0] = o_bimc_cmd1[15:0];
     r32_mux_7_data[27:16] = o_bimc_cmd1[27:16];
     r32_mux_7_data[31:28] = o_bimc_cmd1[31:28];
    end
   11'b01110110100:
    begin
     r32_mux_7_data[31:0] = o_bimc_cmd0[31:0];
    end
   11'b01110111000:
    begin
     r32_mux_7_data[7:0] = i_bimc_rxcmd2[7:0];
     r32_mux_7_data[8:8] = i_bimc_rxcmd2[8:8];
     r32_mux_7_data[9:9] = i_bimc_rxcmd2[9:9];
    end
   11'b01110111100:
    begin
     r32_mux_7_data[15:0] = i_bimc_rxcmd1[15:0];
     r32_mux_7_data[27:16] = i_bimc_rxcmd1[27:16];
     r32_mux_7_data[31:28] = i_bimc_rxcmd1[31:28];
    end
   11'b01111000000:
    begin
     r32_mux_7_data[31:0] = i_bimc_rxcmd0[31:0];
    end
   11'b01111000100:
    begin
     r32_mux_7_data[7:0] = i_bimc_rxrsp2[7:0];
     r32_mux_7_data[8:8] = i_bimc_rxrsp2[8:8];
     r32_mux_7_data[9:9] = i_bimc_rxrsp2[9:9];
    end
   11'b01111001000:
    begin
     r32_mux_7_data[31:0] = i_bimc_rxrsp1[31:0];
    end
   11'b01111001100:
    begin
     r32_mux_7_data[31:0] = i_bimc_rxrsp0[31:0];
    end
   11'b01111010000:
    begin
     r32_mux_7_data[7:0] = i_bimc_pollrsp2[7:0];
     r32_mux_7_data[8:8] = i_bimc_pollrsp2[8:8];
     r32_mux_7_data[9:9] = i_bimc_pollrsp2[9:9];
    end
   11'b01111010100:
    begin
     r32_mux_7_data[31:0] = i_bimc_pollrsp1[31:0];
    end
   11'b01111011000:
    begin
     r32_mux_7_data[31:0] = i_bimc_pollrsp0[31:0];
    end
   11'b01111011100:
    begin
     r32_mux_7_data[7:0] = i_bimc_dbgcmd2[7:0];
     r32_mux_7_data[8:8] = i_bimc_dbgcmd2[8:8];
     r32_mux_7_data[9:9] = i_bimc_dbgcmd2[9:9];
    end
   11'b01111100000:
    begin
     r32_mux_7_data[15:0] = i_bimc_dbgcmd1[15:0];
     r32_mux_7_data[27:16] = i_bimc_dbgcmd1[27:16];
     r32_mux_7_data[31:28] = i_bimc_dbgcmd1[31:28];
    end
   11'b01111100100:
    begin
     r32_mux_7_data[31:0] = i_bimc_dbgcmd0[31:0];
    end
  endcase
  case (ws_read_addr)
   11'b01111101100:
    begin
     r32_mux_8_data[0:0] = i_im_available[0:0];
     r32_mux_8_data[1:1] = i_im_available[1:1];
     r32_mux_8_data[2:2] = i_im_available[2:2];
     r32_mux_8_data[3:3] = i_im_available[3:3];
     r32_mux_8_data[4:4] = i_im_available[4:4];
     r32_mux_8_data[5:5] = i_im_available[5:5];
     r32_mux_8_data[6:6] = i_im_available[6:6];
     r32_mux_8_data[7:7] = i_im_available[7:7];
     r32_mux_8_data[8:8] = i_im_available[8:8];
     r32_mux_8_data[9:9] = i_im_available[9:9];
     r32_mux_8_data[10:10] = i_im_available[10:10];
     r32_mux_8_data[11:11] = i_im_available[11:11];
     r32_mux_8_data[12:12] = i_im_available[12:12];
     r32_mux_8_data[13:13] = i_im_available[13:13];
     r32_mux_8_data[14:14] = i_im_available[14:14];
     r32_mux_8_data[15:15] = i_im_available[15:15];
    end
   11'b01111110000:
    begin
     r32_mux_8_data[0:0] = i_im_consumed[0:0];
     r32_mux_8_data[1:1] = i_im_consumed[1:1];
     r32_mux_8_data[2:2] = i_im_consumed[2:2];
     r32_mux_8_data[3:3] = i_im_consumed[3:3];
     r32_mux_8_data[4:4] = i_im_consumed[4:4];
     r32_mux_8_data[5:5] = i_im_consumed[5:5];
     r32_mux_8_data[6:6] = i_im_consumed[6:6];
     r32_mux_8_data[7:7] = i_im_consumed[7:7];
     r32_mux_8_data[8:8] = i_im_consumed[8:8];
     r32_mux_8_data[9:9] = i_im_consumed[9:9];
     r32_mux_8_data[10:10] = i_im_consumed[10:10];
     r32_mux_8_data[11:11] = i_im_consumed[11:11];
     r32_mux_8_data[12:12] = i_im_consumed[12:12];
     r32_mux_8_data[13:13] = i_im_consumed[13:13];
     r32_mux_8_data[14:14] = i_im_consumed[14:14];
     r32_mux_8_data[15:15] = i_im_consumed[15:15];
    end
   11'b01111110100:
    begin
     r32_mux_8_data[0:0] = i_tready_override[0:0];
     r32_mux_8_data[1:1] = i_tready_override[1:1];
     r32_mux_8_data[2:2] = i_tready_override[2:2];
     r32_mux_8_data[3:3] = i_tready_override[3:3];
     r32_mux_8_data[4:4] = i_tready_override[4:4];
     r32_mux_8_data[5:5] = i_tready_override[5:5];
     r32_mux_8_data[6:6] = i_tready_override[6:6];
     r32_mux_8_data[7:7] = i_tready_override[7:7];
     r32_mux_8_data[8:8] = i_tready_override[8:8];
    end
   11'b01111111000:
    begin
     r32_mux_8_data[0:0] = i_regs_sa_ctrl[0:0];
     r32_mux_8_data[1:1] = i_regs_sa_ctrl[1:1];
     r32_mux_8_data[7:2] = i_regs_sa_ctrl[7:2];
     r32_mux_8_data[12:8] = i_regs_sa_ctrl[12:8];
     r32_mux_8_data[31:13] = i_regs_sa_ctrl[31:13];
    end
   11'b01111111100:
    begin
     r32_mux_8_data[0:0] = i_sa_snapshot_ia_capability[0:0];
     r32_mux_8_data[1:1] = i_sa_snapshot_ia_capability[1:1];
     r32_mux_8_data[2:2] = i_sa_snapshot_ia_capability[2:2];
     r32_mux_8_data[3:3] = i_sa_snapshot_ia_capability[3:3];
     r32_mux_8_data[4:4] = i_sa_snapshot_ia_capability[4:4];
     r32_mux_8_data[5:5] = i_sa_snapshot_ia_capability[5:5];
     r32_mux_8_data[6:6] = i_sa_snapshot_ia_capability[6:6];
     r32_mux_8_data[7:7] = i_sa_snapshot_ia_capability[7:7];
     r32_mux_8_data[8:8] = i_sa_snapshot_ia_capability[8:8];
     r32_mux_8_data[9:9] = i_sa_snapshot_ia_capability[9:9];
     r32_mux_8_data[13:10] = i_sa_snapshot_ia_capability[13:10];
     r32_mux_8_data[14:14] = i_sa_snapshot_ia_capability[14:14];
     r32_mux_8_data[15:15] = i_sa_snapshot_ia_capability[15:15];
     r32_mux_8_data[31:28] = i_sa_snapshot_ia_capability[19:16];
    end
   11'b10000000000:
    begin
     r32_mux_8_data[4:0] = i_sa_snapshot_ia_status[4:0];
     r32_mux_8_data[28:24] = i_sa_snapshot_ia_status[9:5];
     r32_mux_8_data[31:29] = i_sa_snapshot_ia_status[12:10];
    end
   11'b10000000100:
    begin
     r32_mux_8_data[17:0] = o_sa_snapshot_ia_wdata_part0[17:0];
     r32_mux_8_data[31:18] = o_sa_snapshot_ia_wdata_part0[31:18];
    end
   11'b10000001000:
    begin
     r32_mux_8_data[31:0] = o_sa_snapshot_ia_wdata_part1[31:0];
    end
   11'b10000001100:
    begin
     r32_mux_8_data[4:0] = o_sa_snapshot_ia_config[4:0];
     r32_mux_8_data[31:28] = o_sa_snapshot_ia_config[8:5];
    end
   11'b10000010000:
    begin
     r32_mux_8_data[17:0] = i_sa_snapshot_ia_rdata_part0[17:0];
     r32_mux_8_data[31:18] = i_sa_snapshot_ia_rdata_part0[31:18];
    end
   11'b10000010100:
    begin
     r32_mux_8_data[31:0] = i_sa_snapshot_ia_rdata_part1[31:0];
    end
   11'b10000011000:
    begin
     r32_mux_8_data[0:0] = i_sa_count_ia_capability[0:0];
     r32_mux_8_data[1:1] = i_sa_count_ia_capability[1:1];
     r32_mux_8_data[2:2] = i_sa_count_ia_capability[2:2];
     r32_mux_8_data[3:3] = i_sa_count_ia_capability[3:3];
     r32_mux_8_data[4:4] = i_sa_count_ia_capability[4:4];
     r32_mux_8_data[5:5] = i_sa_count_ia_capability[5:5];
     r32_mux_8_data[6:6] = i_sa_count_ia_capability[6:6];
     r32_mux_8_data[7:7] = i_sa_count_ia_capability[7:7];
     r32_mux_8_data[8:8] = i_sa_count_ia_capability[8:8];
     r32_mux_8_data[9:9] = i_sa_count_ia_capability[9:9];
     r32_mux_8_data[13:10] = i_sa_count_ia_capability[13:10];
     r32_mux_8_data[14:14] = i_sa_count_ia_capability[14:14];
     r32_mux_8_data[15:15] = i_sa_count_ia_capability[15:15];
     r32_mux_8_data[31:28] = i_sa_count_ia_capability[19:16];
    end
   11'b10000011100:
    begin
     r32_mux_8_data[4:0] = i_sa_count_ia_status[4:0];
     r32_mux_8_data[28:24] = i_sa_count_ia_status[9:5];
     r32_mux_8_data[31:29] = i_sa_count_ia_status[12:10];
    end
   11'b10000100000:
    begin
     r32_mux_8_data[17:0] = o_sa_count_ia_wdata_part0[17:0];
     r32_mux_8_data[31:18] = o_sa_count_ia_wdata_part0[31:18];
    end
   11'b10000100100:
    begin
     r32_mux_8_data[31:0] = o_sa_count_ia_wdata_part1[31:0];
    end
   11'b10000101000:
    begin
     r32_mux_8_data[4:0] = o_sa_count_ia_config[4:0];
     r32_mux_8_data[31:28] = o_sa_count_ia_config[8:5];
    end
   11'b10000101100:
    begin
     r32_mux_8_data[17:0] = i_sa_count_ia_rdata_part0[17:0];
     r32_mux_8_data[31:18] = i_sa_count_ia_rdata_part0[31:18];
    end
   11'b10000110000:
    begin
     r32_mux_8_data[31:0] = i_sa_count_ia_rdata_part1[31:0];
    end
   11'b10000110100:
    begin
     r32_mux_8_data[0:0] = i_idle_components[0:0];
     r32_mux_8_data[1:1] = i_idle_components[1:1];
     r32_mux_8_data[2:2] = i_idle_components[2:2];
     r32_mux_8_data[3:3] = i_idle_components[3:3];
     r32_mux_8_data[4:4] = i_idle_components[4:4];
     r32_mux_8_data[5:5] = i_idle_components[5:5];
     r32_mux_8_data[6:6] = i_idle_components[6:6];
     r32_mux_8_data[7:7] = i_idle_components[7:7];
     r32_mux_8_data[8:8] = i_idle_components[8:8];
     r32_mux_8_data[9:9] = i_idle_components[9:9];
     r32_mux_8_data[10:10] = i_idle_components[10:10];
     r32_mux_8_data[11:11] = i_idle_components[11:11];
     r32_mux_8_data[31:12] = i_idle_components[31:12];
    end
   11'b10000111000:
    begin
     r32_mux_8_data[0:0] = o_cceip_encrypt_kop_fifo_override[0:0];
     r32_mux_8_data[1:1] = o_cceip_encrypt_kop_fifo_override[1:1];
     r32_mux_8_data[2:2] = o_cceip_encrypt_kop_fifo_override[2:2];
     r32_mux_8_data[3:3] = o_cceip_encrypt_kop_fifo_override[3:3];
     r32_mux_8_data[4:4] = o_cceip_encrypt_kop_fifo_override[4:4];
     r32_mux_8_data[5:5] = o_cceip_encrypt_kop_fifo_override[5:5];
     r32_mux_8_data[6:6] = o_cceip_encrypt_kop_fifo_override[6:6];
    end
   11'b10000111100:
    begin
     r32_mux_8_data[0:0] = o_cceip_validate_kop_fifo_override[0:0];
     r32_mux_8_data[1:1] = o_cceip_validate_kop_fifo_override[1:1];
     r32_mux_8_data[2:2] = o_cceip_validate_kop_fifo_override[2:2];
     r32_mux_8_data[3:3] = o_cceip_validate_kop_fifo_override[3:3];
     r32_mux_8_data[4:4] = o_cceip_validate_kop_fifo_override[4:4];
     r32_mux_8_data[5:5] = o_cceip_validate_kop_fifo_override[5:5];
     r32_mux_8_data[6:6] = o_cceip_validate_kop_fifo_override[6:6];
    end
   11'b10001000000:
    begin
     r32_mux_8_data[0:0] = o_cddip_decrypt_kop_fifo_override[0:0];
     r32_mux_8_data[1:1] = o_cddip_decrypt_kop_fifo_override[1:1];
     r32_mux_8_data[2:2] = o_cddip_decrypt_kop_fifo_override[2:2];
     r32_mux_8_data[3:3] = o_cddip_decrypt_kop_fifo_override[3:3];
     r32_mux_8_data[4:4] = o_cddip_decrypt_kop_fifo_override[4:4];
     r32_mux_8_data[5:5] = o_cddip_decrypt_kop_fifo_override[5:5];
     r32_mux_8_data[6:6] = o_cddip_decrypt_kop_fifo_override[6:6];
    end
   11'b10001000100:
    begin
     r32_mux_8_data[0:0] = i_sa_global_ctrl[0:0];
     r32_mux_8_data[1:1] = i_sa_global_ctrl[1:1];
     r32_mux_8_data[31:2] = i_sa_global_ctrl[31:2];
    end
   11'b10001001000:
    begin
     r32_mux_8_data[0:0] = i_sa_ctrl_ia_capability[0:0];
     r32_mux_8_data[1:1] = i_sa_ctrl_ia_capability[1:1];
     r32_mux_8_data[2:2] = i_sa_ctrl_ia_capability[2:2];
     r32_mux_8_data[3:3] = i_sa_ctrl_ia_capability[3:3];
     r32_mux_8_data[4:4] = i_sa_ctrl_ia_capability[4:4];
     r32_mux_8_data[5:5] = i_sa_ctrl_ia_capability[5:5];
     r32_mux_8_data[6:6] = i_sa_ctrl_ia_capability[6:6];
     r32_mux_8_data[7:7] = i_sa_ctrl_ia_capability[7:7];
     r32_mux_8_data[8:8] = i_sa_ctrl_ia_capability[8:8];
     r32_mux_8_data[9:9] = i_sa_ctrl_ia_capability[9:9];
     r32_mux_8_data[13:10] = i_sa_ctrl_ia_capability[13:10];
     r32_mux_8_data[14:14] = i_sa_ctrl_ia_capability[14:14];
     r32_mux_8_data[15:15] = i_sa_ctrl_ia_capability[15:15];
     r32_mux_8_data[31:28] = i_sa_ctrl_ia_capability[19:16];
    end
   11'b10001001100:
    begin
     r32_mux_8_data[4:0] = i_sa_ctrl_ia_status[4:0];
     r32_mux_8_data[28:24] = i_sa_ctrl_ia_status[9:5];
     r32_mux_8_data[31:29] = i_sa_ctrl_ia_status[12:10];
    end
   11'b10001010000:
    begin
     r32_mux_8_data[4:0] = o_sa_ctrl_ia_wdata_part0[4:0];
     r32_mux_8_data[31:5] = o_sa_ctrl_ia_wdata_part0[31:5];
    end
   11'b10001010100:
    begin
     r32_mux_8_data[4:0] = o_sa_ctrl_ia_config[4:0];
     r32_mux_8_data[31:28] = o_sa_ctrl_ia_config[8:5];
    end
   11'b10001011000:
    begin
     r32_mux_8_data[4:0] = i_sa_ctrl_ia_rdata_part0[4:0];
     r32_mux_8_data[31:5] = i_sa_ctrl_ia_rdata_part0[31:5];
    end
   11'b10001011100:
    begin
     r32_mux_8_data[31:0] = o_kdf_test_key_size_config[31:0];
    end
  endcase
 end
always_ff 
 @(posedge clk or negedge i_reset_)
  begin
   if (( ~i_reset_ ))
    begin
     f_state <= 3'b0;
     f_ack <= 1'b0;
     f_err_ack <= 1'b0;
     f_prev_do_read <= 1'b0;
     o_reg_addr <= 11'b0;
     o_reg_written <= 1'b0;
     o_reg_read <= 1'b0;
     f32_mux_0_data <= 32'b0;
     f32_mux_1_data <= 32'b0;
     f32_mux_2_data <= 32'b0;
     f32_mux_3_data <= 32'b0;
     f32_mux_4_data <= 32'b0;
     f32_mux_5_data <= 32'b0;
     f32_mux_6_data <= 32'b0;
     f32_mux_7_data <= 32'b0;
     f32_mux_8_data <= 32'b0;
    end
   else
    if (i_sw_init)
     begin
      f_state <= 3'b0;
      f_ack <= 1'b0;
      f_err_ack <= 1'b0;
      f_prev_do_read <= 1'b0;
      o_reg_addr <= 11'b0;
      o_reg_written <= 1'b0;
      o_reg_read <= 1'b0;
      f32_mux_0_data <= 32'b0;
      f32_mux_1_data <= 32'b0;
      f32_mux_2_data <= 32'b0;
      f32_mux_3_data <= 32'b0;
      f32_mux_4_data <= 32'b0;
      f32_mux_5_data <= 32'b0;
      f32_mux_6_data <= 32'b0;
      f32_mux_7_data <= 32'b0;
      f32_mux_8_data <= 32'b0;
     end
    else
     begin
      f_state <= w_next_state;
      f_ack <= ((w_next_ack & ( !i_wr_strb )) & ( !i_rd_strb ));
      f_err_ack <= w_next_err_ack;
      f_prev_do_read <= w_do_read;
      if ((i_wr_strb | i_rd_strb))
       o_reg_addr <= i_addr;
      o_reg_written <= ((w_do_write & w_32b_aligned) & w_valid_wr_addr);
      o_reg_read <= ((w_do_read & w_32b_aligned) & w_valid_rd_addr);
      if (w_do_read)
       f32_mux_0_data <= r32_mux_0_data;
      if (w_do_read)
       f32_mux_1_data <= r32_mux_1_data;
      if (w_do_read)
       f32_mux_2_data <= r32_mux_2_data;
      if (w_do_read)
       f32_mux_3_data <= r32_mux_3_data;
      if (w_do_read)
       f32_mux_4_data <= r32_mux_4_data;
      if (w_do_read)
       f32_mux_5_data <= r32_mux_5_data;
      if (w_do_read)
       f32_mux_6_data <= r32_mux_6_data;
      if (w_do_read)
       f32_mux_7_data <= r32_mux_7_data;
      if (w_do_read)
       f32_mux_8_data <= r32_mux_8_data;
     end
  end
always_ff 
 @(posedge clk)
  begin
   if (i_wr_strb)
    f32_data <= i_wr_data;
  end
endmodule

