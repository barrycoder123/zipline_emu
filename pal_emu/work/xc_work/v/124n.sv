// xc_work/v/124n.sv
// /home/ibarry/Project-Zipline-master/rtl/mem_wrappers/bimc_master/top/bimc_master.v:26
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module bimc_master(bimc_ecc_error,bimc_interrupt,bimc_odat,bimc_osync,bimc_rst_n,clk,rst_n,bimc_idat,bimc_isync,o_bimc_monitor_mask,
o_bimc_ecc_uncorrectable_error_cnt,o_bimc_ecc_correctable_error_cnt,o_bimc_parity_error_cnt,o_bimc_global_config,o_bimc_eccpar_debug,o_bimc_cmd2,o_bimc_cmd1,o_bimc_cmd0,o_bimc_rxcmd2,o_bimc_rxrsp2,o_bimc_pollrsp2,o_bimc_dbgcmd2,
i_bimc_monitor,i_bimc_ecc_uncorrectable_error_cnt,i_bimc_ecc_correctable_error_cnt,i_bimc_parity_error_cnt,i_bimc_global_config,i_bimc_memid,i_bimc_eccpar_debug,i_bimc_cmd2,i_bimc_rxcmd2,i_bimc_rxcmd1,i_bimc_rxcmd0,i_bimc_rxrsp2,
i_bimc_rxrsp1,i_bimc_rxrsp0,i_bimc_pollrsp2,i_bimc_pollrsp1,i_bimc_pollrsp0,i_bimc_dbgcmd2,i_bimc_dbgcmd1,i_bimc_dbgcmd0);
parameter MSB = 71;
parameter BIMC_FLENGTH = 72;
parameter NOP = 8'b0;
parameter RD_REG = 8'b01;
parameter WR_ID = 8'b010;
parameter POLL_ERR = 8'b011;
parameter WR_ECTRL = 8'b01010;
parameter WR_ECCP = 8'b01011;
parameter WR_ECCCNT = 8'b01100;
parameter WR_ECCIN = 8'b010000;
parameter WR_ECCOUT = 8'b010001;
parameter WR_TM = 8'b011110;
parameter WR_LVM = 8'b011111;
parameter WR_MLVM = 8'b0100000;
parameter WR_MRDTEN = 8'b0100001;
parameter WR_RDT = 8'b0100010;
parameter WR_WBT = 8'b0100011;
parameter WR_WMS = 8'b0100100;
parameter MEM_INIT = 8'b11111111;
parameter RESET = 4'b0;
parameter AUTOID = 4'b1011;
parameter CPU = 4'b01;
parameter IDLE = 4'b010;
parameter AUTOPOLL = 4'b0111;
parameter MEMWRINIT = 4'b1000;
parameter PICK_NXT = 4'b011;
parameter ECCPAR_DEBUG = 4'b0101;
reg bimc_monitor_uncorrectable_ecc_error_din;
reg bimc_monitor_correctable_ecc_error_din;
reg bimc_monitor_parity_error_din;
reg bimc_monitor_bimc_chain_rcv_error_din;
reg bimc_monitor_rcv_invalid_opcode_din;
reg bimc_monitor_unanswered_read_din;
reg bimc_ecc_uncorrectable_error_cnt_uncorrectable_ecc_en;
reg bimc_ecc_correctable_error_cnt_correctable_ecc_en;
reg bimc_parity_error_cnt_parity_errors_en;
reg debug_write_en;
reg [11:0] number_of_memories ;
wire  [1:0] bimc_eccpar_debug_eccpar_corrupt ;
wire  [1:0] bimc_eccpar_debug_eccpar_disable ;
wire  [3:0] bimc_eccpar_debug_jabber_off ;
wire  [11:0] bimc_eccpar_debug_memaddr ;
wire  [3:0] bimc_eccpar_debug_memtype ;
reg bimc_eccpar_debug_send;
wire  bimc_eccpar_debug_write_notify_ev;
reg [2:0] r_bimc_eccpar_debug_write_notify_ev ;
reg bimc_eccpar_debug_sent_din;
reg bimc_eccpar_debug_sent;
wire  bimc_global_config_poll_ecc_par_error;
wire  [25:0] bimc_global_config_poll_ecc_par_timer ;
wire  bimc_global_config_mem_wr_init;
wire  [31:0] bimc_cmd0_data ;
wire  [15:0] bimc_cmd1_addr ;
wire  [11:0] bimc_cmd1_mem ;
wire  [3:0] bimc_cmd1_memtype ;
wire  [7:0] bimc_cmd2_opcode ;
reg bimc_cmd2_send;
wire  bimc_cmd2_write_notify_ev;
reg [2:0] r_bimc_cmd2_write_notify_ev ;
reg bimc_cmd2_sent_din;
reg bimc_rxrsp2_rxflag_din;
reg [31:0] bimc_rxrsp0_data_din ;
reg [31:0] bimc_rxrsp1_data_din ;
reg [7:0] bimc_rxrsp2_data_din ;
reg bimc_pollrsp2_rxflag_din;
reg [31:0] bimc_pollrsp0_data_din ;
reg [31:0] bimc_pollrsp1_data_din ;
reg [7:0] bimc_pollrsp2_data_din ;
reg bimc_rxcmd2_rxflag_din;
reg [31:0] bimc_rxcmd0_data_din ;
reg [15:0] bimc_rxcmd1_addr_din ;
reg [11:0] bimc_rxcmd1_mem_din ;
reg [3:0] bimc_rxcmd1_memtype_din ;
reg [7:0] bimc_rxcmd2_opcode_din ;
reg bimc_dbgcmd2_rxflag_din;
reg [31:0] bimc_dbgcmd0_data_din ;
reg [15:0] bimc_dbgcmd1_addr_din ;
reg [11:0] bimc_dbgcmd1_mem_din ;
reg [3:0] bimc_dbgcmd1_memtype_din ;
reg [7:0] bimc_dbgcmd2_opcode_din ;
input  clk;
input  rst_n;
output reg bimc_ecc_error;
output reg bimc_interrupt;
input  bimc_idat;
input  bimc_isync;
output reg bimc_odat;
output reg bimc_rst_n;
output reg bimc_osync;
input  [6:0] o_bimc_monitor_mask ;
input  [31:0] o_bimc_ecc_uncorrectable_error_cnt ;
input  [31:0] o_bimc_ecc_correctable_error_cnt ;
input  [31:0] o_bimc_parity_error_cnt ;
input  [31:0] o_bimc_global_config ;
input  [28:0] o_bimc_eccpar_debug ;
input  [10:0] o_bimc_cmd2 ;
input  [31:0] o_bimc_cmd1 ;
input  [31:0] o_bimc_cmd0 ;
input  [9:0] o_bimc_rxcmd2 ;
input  [9:0] o_bimc_rxrsp2 ;
input  [9:0] o_bimc_pollrsp2 ;
input  [9:0] o_bimc_dbgcmd2 ;
output  [6:0] i_bimc_monitor ;
output  [31:0] i_bimc_ecc_uncorrectable_error_cnt ;
output  [31:0] i_bimc_ecc_correctable_error_cnt ;
output  [31:0] i_bimc_parity_error_cnt ;
output  [31:0] i_bimc_global_config ;
output  [11:0] i_bimc_memid ;
output  [28:0] i_bimc_eccpar_debug ;
output  [10:0] i_bimc_cmd2 ;
reg bimc_cmd2_sent;
output  [9:0] i_bimc_rxcmd2 ;
output  [31:0] i_bimc_rxcmd1 ;
output  [31:0] i_bimc_rxcmd0 ;
output  [9:0] i_bimc_rxrsp2 ;
output  [31:0] i_bimc_rxrsp1 ;
output  [31:0] i_bimc_rxrsp0 ;
output  [9:0] i_bimc_pollrsp2 ;
output  [31:0] i_bimc_pollrsp1 ;
output  [31:0] i_bimc_pollrsp0 ;
output  [9:0] i_bimc_dbgcmd2 ;
output  [31:0] i_bimc_dbgcmd1 ;
output  [31:0] i_bimc_dbgcmd0 ;
reg [31:0] bimc_ecc_uncorrectable_error_cnt ;
reg [31:0] bimc_ecc_correctable_error_cnt ;
reg [31:0] bimc_parity_error_cnt ;
wire  bimc_ecc_error_c;
wire  bimc_interrupt_c;
wire  bimc_global_config_soft_reset;
reg [71:0] bimc_rdat ;
reg [71:0] bimc_dat ;
reg bimc_frm;
reg bimc_chk;
reg [3:0] rx_type ;
reg [7:0] rx_op ;
reg [11:0] rx_mem ;
reg [15:0] rx_addr ;
reg [31:0] rx_dat ;
reg rx_resp;
reg rx_frm;
reg [1:0] rx_chk ;
wire  [71:0] rcv_dat ;
wire  rcv_resp;
wire  rcv_frm;
wire  rcv_chk;
wire  [3:0] bm_type ;
wire  [7:0] bm_op ;
wire  [11:0] bm_mem ;
wire  [15:0] bm_addr ;
wire  [31:0] bm_dat ;
reg bm_resp;
reg [6:0] bm_cnt ;
wire  new_frame;
reg [3:0] rstate ;
reg [3:0] nxt_rstate ;
reg [3:0] tstate ;
reg [3:0] nxt_tstate ;
reg bimc_global_config_bimc_mem_init_done_din;
parameter COMMAND = 4'b01;
parameter CMD_DONE = 4'b0;
parameter RESPONSE_CMD = 4'b011;
parameter RESPONSE_IDLE = 4'b0100;
parameter RESPONSE_MEM = 4'b0101;
parameter RSP_DONE = 4'b0110;
parameter POLL_ERR_CMD = 4'b0111;
parameter POLL_ERR_IDLE = 4'b1000;
parameter POLL_ERR_MEM = 4'b1001;
parameter POLL_ERR_DONE = 4'b1010;
wire  [103:0] rstate_text ;
reg [6:0] sync_cnt ;
reg cmd_cnt;
reg mem_wr_init_dly;
reg mem_wr_init_ev;
reg eccpar_debug_ev;
reg cpu_transmit_ev;
reg [72:0] reg_send ;
reg [72:0] r_reg_send ;
reg [3:0] cputx_type ;
reg [7:0] cputx_op ;
reg [11:0] cputx_mem ;
reg [15:0] cputx_addr ;
reg [31:0] cputx_dat ;
reg auto_poll_ecc_par_ev;
reg [25:0] poll_ecc_par_timer ;
wire  [72:0] cputx_frame ;
wire  [95:0] tstate_text ;
wire  _zy_simnet_bimc_ecc_error_0_w$;
wire  _zy_simnet_bimc_interrupt_1_w$;
wire  _zy_simnet_bimc_odat_2_w$;
wire  _zy_simnet_bimc_osync_3_w$;
wire  _zy_simnet_bimc_rst_n_4_w$;
assign  bm_type = bimc_dat[71:68];
assign  bm_op = bimc_dat[67:60];
assign  bm_mem = bimc_dat[59:48];
assign  bm_addr = bimc_dat[47:32];
assign  bm_dat = bimc_dat[31:0];
assign  rcv_chk = bimc_chk;
assign  rcv_frm = bimc_frm;
assign  rcv_resp = bm_resp;
assign  rcv_dat = bimc_dat;
assign  new_frame = ((rx_chk == 2'b10) || (rx_chk == 2'b01));
assign  rstate_text = ((rstate == 4'b010) ? 104'b0100000001000000010000000100000001000000010000000100000001000000010000001101001011001000110110001100101 : ((rstate == 4'b01) ? 104'b0100000001000000010000000100000001000000010000001000011010011110100110101001101010000010100111001000100 : ((rstate == 4'b0) ? 104'b0100000001000000010000000100000001000000100001101001101010001000101111101000100010011110100111001000101 : ((rstate == 4'b011) ? 104'b0100000010100100100010101010011010100000100111101001110010100110100010101011111010000110100110101000100 : ((rstate == 4'b0100) ? 104'b01010010010001010101001101010000010011110100111001010011010001010101111101001001010001000100110001000101 : ((rstate == 4'b0101) ? 104'b0100000010100100100010101010011010100000100111101001110010100110100010101011111010011010100010101001101 : ((rstate == 4'b0110) ? 104'b0100000001000000010000000100000001000000101001001010011010100000101111101000100010011110100111001000101 : ((rstate == 4'b0111) ? 104'b0100000010100000100111101001100010011000101111101000101010100100101001001011111010000110100110101000100 : ((rstate == 4'b1000) ? 104'b01010000010011110100110001001100010111110100010101010010010100100101111101001001010001000100110001000101 : ((rstate == 4'b1001) ? 104'b0100000010100000100111101001100010011000101111101000101010100100101001001011111010011010100010101001101 : ((rstate == 4'b1010) ? 104'b01010000010011110100110001001100010111110100010101010010010100100101111101000100010011110100111001000101 : 104'b0100000001000000010000000100000001000000010000001110101011011100110101101101110011011110111011101101110)))))))))));
assign  cputx_frame = {1'b0,cputx_type[32'sd3:32'sd0],cputx_op[32'sd7:32'sd0],cputx_mem[32'sd11:32'sd0],cputx_addr[32'sd15:32'sd0],cputx_dat[32'sd31:32'sd0]};
assign  tstate_text = ((tstate == 4'b0) ? 96'b01000000010000000100000001000000010000000100000001000000101001001000101010100110100010101010100 : ((tstate == 4'b1011) ? 96'b01000000010000000100000001000000010000000100000010000010101010101010100010011110100100101000100 : ((tstate == 4'b01) ? 96'b01000000010000000100000001000000010000000100000001000000010000000100000010000110101000001010101 : ((tstate == 4'b010) ? 96'b01000000010000000100000001000000010000000100000001000000010000001101001011001000110110001100101 : ((tstate == 4'b0111) ? 96'b01000000010000000100000001000000100000101010101010101000100111101010000010011110100110001001100 : ((tstate == 4'b1000) ? 96'b01000000010000000100000010011010100010101001101010101110101001001001001010011100100100101010100 : ((tstate == 4'b011) ? 96'b01000000010000000100000001000000101000001001001010000110100101101011111010011100101100001010100 : ((tstate == 4'b0101) ? 96'b010001010100001101000011010100000100000101010010010111110100010001000101010000100101010101000111 : 96'b01000000010000000100000001000000010000001110101011011100110101101101110011011110111011101101110))))))));
assign  bimc_cmd0_data[31:0] = o_bimc_cmd0[31:0];
assign  bimc_cmd1_addr[15:0] = o_bimc_cmd1[15:0];
assign  bimc_cmd1_mem[11:0] = o_bimc_cmd1[27:16];
assign  bimc_cmd1_memtype[3:0] = o_bimc_cmd1[31:28];
assign  bimc_cmd2_opcode[7:0] = o_bimc_cmd2[7:0];
assign  bimc_cmd2_write_notify_ev = (o_bimc_cmd2[8:8] && ( !bimc_cmd2_send ));
assign  bimc_eccpar_debug_eccpar_corrupt[1:0] = o_bimc_eccpar_debug[17:16];
assign  bimc_eccpar_debug_eccpar_disable[1:0] = o_bimc_eccpar_debug[21:20];
assign  bimc_eccpar_debug_jabber_off[3:0] = o_bimc_eccpar_debug[27:24];
assign  bimc_eccpar_debug_memaddr[11:0] = o_bimc_eccpar_debug[11:0];
assign  bimc_eccpar_debug_memtype[3:0] = o_bimc_eccpar_debug[15:12];
assign  bimc_eccpar_debug_write_notify_ev = (o_bimc_eccpar_debug[22] && ( !bimc_eccpar_debug_send ));
assign  bimc_global_config_mem_wr_init = o_bimc_global_config[3:3];
assign  bimc_global_config_poll_ecc_par_error = o_bimc_global_config[4:4];
assign  bimc_global_config_poll_ecc_par_timer[25:0] = o_bimc_global_config[31:6];
assign  bimc_global_config_soft_reset = o_bimc_global_config[0:0];
assign  bimc_ecc_error_c = ((bimc_monitor_uncorrectable_ecc_error_din || bimc_monitor_correctable_ecc_error_din) || bimc_monitor_parity_error_din);
assign  bimc_interrupt_c = ( | i_bimc_monitor );
assign  debug_write_en = o_bimc_global_config[5:5];
assign  i_bimc_global_config[1:0] = o_bimc_global_config[1:0];
assign  i_bimc_global_config[2:2] = bimc_global_config_bimc_mem_init_done_din;
assign  i_bimc_global_config[4:3] = o_bimc_global_config[4:3];
assign  i_bimc_global_config[5:5] = debug_write_en;
assign  i_bimc_global_config[31:6] = o_bimc_global_config[31:6];
assign  i_bimc_cmd2[9:9] = bimc_cmd2_sent;
assign  i_bimc_cmd2[7:0] = o_bimc_cmd2[7:0];
assign  i_bimc_cmd2[8:8] = o_bimc_cmd2[8:8];
assign  i_bimc_cmd2[10:10] = o_bimc_cmd2[10:10];
assign  i_bimc_eccpar_debug[22:0] = o_bimc_eccpar_debug[22:0];
assign  i_bimc_eccpar_debug[23:23] = bimc_eccpar_debug_sent;
assign  i_bimc_eccpar_debug[28:24] = o_bimc_eccpar_debug[28:24];
assign  i_bimc_monitor[0:0] = bimc_monitor_uncorrectable_ecc_error_din;
assign  i_bimc_monitor[1:1] = bimc_monitor_correctable_ecc_error_din;
assign  i_bimc_monitor[2:2] = bimc_monitor_parity_error_din;
assign  i_bimc_monitor[4:4] = bimc_monitor_bimc_chain_rcv_error_din;
assign  i_bimc_monitor[5:5] = bimc_monitor_rcv_invalid_opcode_din;
assign  i_bimc_monitor[6:6] = bimc_monitor_unanswered_read_din;
assign  i_bimc_monitor[3:3] = 1'b0;
assign  i_bimc_ecc_uncorrectable_error_cnt[31:0] = bimc_ecc_uncorrectable_error_cnt;
assign  i_bimc_ecc_correctable_error_cnt[31:0] = bimc_ecc_correctable_error_cnt;
assign  i_bimc_parity_error_cnt[31:0] = bimc_parity_error_cnt;
assign  i_bimc_memid[11:0] = number_of_memories[11:0];
assign  i_bimc_rxcmd0[31:0] = bimc_rxcmd0_data_din[31:0];
assign  i_bimc_rxcmd1[15:0] = bimc_rxcmd1_addr_din[15:0];
assign  i_bimc_rxcmd1[27:16] = bimc_rxcmd1_mem_din[11:0];
assign  i_bimc_rxcmd1[31:28] = bimc_rxcmd1_memtype_din[3:0];
assign  i_bimc_rxcmd2[7:0] = bimc_rxcmd2_opcode_din[7:0];
assign  i_bimc_rxcmd2[8:8] = bimc_rxcmd2_rxflag_din;
assign  i_bimc_rxcmd2[9:9] = o_bimc_rxcmd2[9:9];
assign  i_bimc_dbgcmd0[31:0] = bimc_dbgcmd0_data_din[31:0];
assign  i_bimc_dbgcmd1[15:0] = bimc_dbgcmd1_addr_din[15:0];
assign  i_bimc_dbgcmd1[27:16] = bimc_dbgcmd1_mem_din[11:0];
assign  i_bimc_dbgcmd1[31:28] = bimc_dbgcmd1_memtype_din[3:0];
assign  i_bimc_dbgcmd2[7:0] = bimc_dbgcmd2_opcode_din[7:0];
assign  i_bimc_dbgcmd2[8:8] = bimc_dbgcmd2_rxflag_din;
assign  i_bimc_dbgcmd2[9:9] = o_bimc_dbgcmd2[9:9];
assign  i_bimc_rxrsp0[31:0] = bimc_rxrsp0_data_din[31:0];
assign  i_bimc_rxrsp1[31:0] = bimc_rxrsp1_data_din[31:0];
assign  i_bimc_rxrsp2[7:0] = bimc_rxrsp2_data_din[7:0];
assign  i_bimc_rxrsp2[8:8] = bimc_rxrsp2_rxflag_din;
assign  i_bimc_rxrsp2[9:9] = o_bimc_rxrsp2[9:9];
assign  i_bimc_pollrsp0[31:0] = bimc_pollrsp0_data_din[31:0];
assign  i_bimc_pollrsp1[31:0] = bimc_pollrsp1_data_din[31:0];
assign  i_bimc_pollrsp2[7:0] = bimc_pollrsp2_data_din[7:0];
assign  i_bimc_pollrsp2[8:8] = bimc_pollrsp2_rxflag_din;
assign  i_bimc_pollrsp2[9:9] = o_bimc_pollrsp2[9:9];
assign  _zy_simnet_bimc_ecc_error_0_w$ = bimc_ecc_error;
assign  _zy_simnet_bimc_interrupt_1_w$ = bimc_interrupt;
assign  _zy_simnet_bimc_odat_2_w$ = bimc_odat;
assign  _zy_simnet_bimc_osync_3_w$ = bimc_osync;
assign  _zy_simnet_bimc_rst_n_4_w$ = bimc_rst_n;
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     bimc_rdat <= 72'b0;
     bimc_dat <= 72'b0;
     bm_resp <= 1'b0;
     bimc_frm <= 1'b0;
     bimc_chk <= 1'b0;
     bm_cnt <= 7'b1111100;
    end
   else
    begin
     bimc_rdat <= {bimc_rdat[32'sd70:32'sd0],bimc_idat};
     bimc_dat <= (bimc_isync ? bimc_rdat[71:0] : bimc_dat);
     bm_resp <= (bimc_isync ? bimc_idat : bm_resp);
     bimc_frm <= (bimc_isync ? (bm_cnt == 32'b01001000) : bimc_frm);
     bimc_chk <= (bimc_isync ? ( ~bimc_chk ) : bimc_chk);
     bm_cnt <= (bimc_isync ? 7'b0 : ((bm_cnt == 7'b1111111) ? 7'b1111111 : (bm_cnt + 7'b01)));
    end
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     rx_type <= 4'b0;
     rx_op <= 8'b0;
     rx_mem <= 12'b0;
     rx_addr <= 16'b0;
     rx_dat <= 32'b0;
     rx_resp <= 1'b0;
     rx_frm <= 1'b0;
     rx_chk <= 2'b0;
     rstate <= 4'b010;
     number_of_memories <= 12'b0;
     bimc_global_config_bimc_mem_init_done_din <= 1'b0;
     bimc_dbgcmd2_rxflag_din <= 1'b0;
     bimc_dbgcmd2_opcode_din <= 8'b0;
     bimc_dbgcmd1_memtype_din <= 4'b0;
     bimc_dbgcmd1_mem_din <= 12'b0;
     bimc_dbgcmd1_addr_din <= 16'b0;
     bimc_dbgcmd0_data_din <= 32'b0;
     bimc_rxcmd2_rxflag_din <= 1'b0;
     bimc_rxcmd2_opcode_din <= 8'b0;
     bimc_rxcmd1_memtype_din <= 4'b0;
     bimc_rxcmd1_mem_din <= 12'b0;
     bimc_rxcmd1_addr_din <= 16'b0;
     bimc_rxcmd0_data_din <= 32'b0;
     bimc_rxrsp2_rxflag_din <= 1'b0;
     bimc_rxrsp0_data_din <= 32'b0;
     bimc_rxrsp1_data_din <= 32'b0;
     bimc_rxrsp2_data_din <= 8'b0;
     bimc_pollrsp2_rxflag_din <= 1'b0;
     bimc_pollrsp0_data_din <= 32'b0;
     bimc_pollrsp1_data_din <= 32'b0;
     bimc_pollrsp2_data_din <= 8'b0;
     bimc_monitor_bimc_chain_rcv_error_din <= 1'b0;
     bimc_monitor_correctable_ecc_error_din <= 1'b0;
     bimc_monitor_parity_error_din <= 1'b0;
     bimc_monitor_uncorrectable_ecc_error_din <= 1'b0;
     bimc_monitor_rcv_invalid_opcode_din <= 1'b0;
     bimc_monitor_unanswered_read_din <= 1'b0;
     bimc_ecc_uncorrectable_error_cnt_uncorrectable_ecc_en <= 1'b0;
     bimc_ecc_correctable_error_cnt_correctable_ecc_en <= 1'b0;
     bimc_parity_error_cnt_parity_errors_en <= 1'b0;
    end
   else
    begin
     rx_type <= rcv_dat[71:68];
     rx_op <= rcv_dat[67:60];
     rx_mem <= rcv_dat[59:48];
     rx_addr <= rcv_dat[47:32];
     rx_dat <= rcv_dat[31:0];
     rx_resp <= rcv_resp;
     rx_frm <= rcv_frm;
     rx_chk <= {rx_chk[32'sd0],rcv_chk};
     rstate <= nxt_rstate;
     number_of_memories <= (((rstate == 4'b01) && ({rx_type,rx_op,rx_mem,rx_addr} == 40'b1111000000101111111111110000000000000001)) ? (rx_dat[11:0] - 32'b01) : number_of_memories);
     bimc_global_config_bimc_mem_init_done_din <= ((tstate == 4'b0) ? 1'b0 : ((((rstate == 4'b01) && (rx_op == 8'b010)) && (rx_addr == 16'b01)) ? 1'b1 : bimc_global_config_bimc_mem_init_done_din));
     bimc_dbgcmd2_rxflag_din <= ((o_bimc_dbgcmd2[9:9] == 32'b01) ? 1'b0 : (((rstate == 4'b0) && (rx_op != 8'b0)) ? 1'b1 : bimc_dbgcmd2_rxflag_din));
     bimc_dbgcmd2_opcode_din <= ((((rstate == 4'b01) && (rx_op != 8'b0)) && ( !bimc_dbgcmd2_rxflag_din )) ? rx_op[7:0] : bimc_dbgcmd2_opcode_din);
     bimc_dbgcmd1_memtype_din <= ((((rstate == 4'b01) && (rx_op != 8'b0)) && ( !bimc_dbgcmd2_rxflag_din )) ? rx_type[3:0] : bimc_dbgcmd1_memtype_din);
     bimc_dbgcmd1_mem_din <= ((((rstate == 4'b01) && (rx_op != 8'b0)) && ( !bimc_dbgcmd2_rxflag_din )) ? rx_mem[11:0] : bimc_dbgcmd1_mem_din);
     bimc_dbgcmd1_addr_din <= ((((rstate == 4'b01) && (rx_op != 8'b0)) && ( !bimc_dbgcmd2_rxflag_din )) ? rx_addr[15:0] : bimc_dbgcmd1_addr_din);
     bimc_dbgcmd0_data_din <= ((((rstate == 4'b01) && (rx_op != 8'b0)) && ( !bimc_dbgcmd2_rxflag_din )) ? rx_dat[31:0] : bimc_dbgcmd0_data_din);
     bimc_rxcmd2_rxflag_din <= ((o_bimc_rxcmd2[9:9] == 32'b01) ? 1'b0 : ((rstate == 4'b0100) ? 1'b1 : bimc_rxcmd2_rxflag_din));
     bimc_rxcmd2_opcode_din <= (((rstate == 4'b011) && ( !bimc_rxcmd2_rxflag_din )) ? rx_op[7:0] : bimc_rxcmd2_opcode_din);
     bimc_rxcmd1_memtype_din <= (((rstate == 4'b011) && ( !bimc_rxcmd2_rxflag_din )) ? rx_type[3:0] : bimc_rxcmd1_memtype_din);
     bimc_rxcmd1_mem_din <= (((rstate == 4'b011) && ( !bimc_rxcmd2_rxflag_din )) ? rx_mem[11:0] : bimc_rxcmd1_mem_din);
     bimc_rxcmd1_addr_din <= (((rstate == 4'b011) && ( !bimc_rxcmd2_rxflag_din )) ? rx_addr[15:0] : bimc_rxcmd1_addr_din);
     bimc_rxcmd0_data_din <= (((rstate == 4'b011) && ( !bimc_rxcmd2_rxflag_din )) ? rx_dat[31:0] : bimc_rxcmd0_data_din);
     bimc_rxrsp2_rxflag_din <= ((o_bimc_rxrsp2[9:9] == 32'b01) ? 1'b0 : (((rstate == 4'b0110) && (rx_op != 8'b0)) ? 1'b1 : bimc_rxrsp2_rxflag_din));
     bimc_rxrsp2_data_din <= ((((rstate == 4'b0101) && (rx_op != 8'b0)) && ( !bimc_rxrsp2_rxflag_din )) ? rx_op[7:0] : bimc_rxrsp2_data_din);
     bimc_rxrsp1_data_din <= ((((rstate == 4'b0101) && (rx_op != 8'b0)) && ( !bimc_rxrsp2_rxflag_din )) ? {rx_type[32'sd3:32'sd0],rx_mem[32'sd11:32'sd0],rx_addr[32'sd15:32'sd0]} : bimc_rxrsp1_data_din);
     bimc_rxrsp0_data_din <= ((((rstate == 4'b0101) && (rx_op != 8'b0)) && ( !bimc_rxrsp2_rxflag_din )) ? rx_dat[31:0] : bimc_rxrsp0_data_din);
     bimc_monitor_bimc_chain_rcv_error_din <= ((o_bimc_monitor_mask[4:4] == 32'b01) ? 1'b0 : ((((((rstate == 4'b0100) || (rstate == 4'b1000)) || (rstate == 4'b010)) && ( !rx_frm )) && new_frame) ? 1'b1 : bimc_monitor_bimc_chain_rcv_error_din));
     bimc_pollrsp2_rxflag_din <= ((o_bimc_pollrsp2[9:9] == 32'b01) ? 1'b0 : (((rstate == 4'b1010) && (rx_op != 8'b0)) ? 1'b1 : bimc_pollrsp2_rxflag_din));
     bimc_pollrsp2_data_din <= ((((rstate == 4'b1001) && (rx_op != 8'b0)) && ( !bimc_pollrsp2_rxflag_din )) ? rx_op[7:0] : bimc_pollrsp2_data_din);
     bimc_pollrsp1_data_din <= ((((rstate == 4'b1001) && (rx_op != 8'b0)) && ( !bimc_pollrsp2_rxflag_din )) ? {rx_type[32'sd3:32'sd0],rx_mem[32'sd11:32'sd0],rx_addr[32'sd15:32'sd0]} : bimc_pollrsp1_data_din);
     bimc_pollrsp0_data_din <= ((((rstate == 4'b1001) && (rx_op != 8'b0)) && ( !bimc_pollrsp2_rxflag_din )) ? rx_dat[31:0] : bimc_pollrsp0_data_din);
     bimc_monitor_correctable_ecc_error_din <= (o_bimc_monitor_mask[1:1] ? 1'b0 : (((((rstate == 4'b1001) && (rx_op == 8'b011)) && (rx_addr == 16'b0111011001100)) && (rx_dat[1:0] == 2'b11)) ? 1'b1 : bimc_monitor_correctable_ecc_error_din));
     bimc_monitor_parity_error_din <= (o_bimc_monitor_mask[2:2] ? 1'b0 : (((((rstate == 4'b1001) && (rx_op == 8'b011)) && (rx_addr == 16'b0100110100100)) && (rx_dat != 32'b0)) ? 1'b1 : bimc_monitor_parity_error_din));
     bimc_monitor_uncorrectable_ecc_error_din <= (o_bimc_monitor_mask[0:0] ? 1'b0 : (((((rstate == 4'b1001) && (rx_op == 8'b011)) && (rx_addr == 16'b0111011001100)) && ((rx_dat[2] & rx_dat[0]) == 1'b1)) ? 1'b1 : bimc_monitor_uncorrectable_ecc_error_din));
     bimc_monitor_rcv_invalid_opcode_din <= (o_bimc_monitor_mask[5:5] ? 1'b0 : ((((rstate == 4'b011) && (rx_op != 8'b01)) || ((rstate == 4'b0111) && (rx_op != 8'b011))) ? 1'b1 : bimc_monitor_rcv_invalid_opcode_din));
     bimc_monitor_unanswered_read_din <= (o_bimc_monitor_mask[6:6] ? 1'b0 : (((rstate == 4'b01) && (rx_op == 8'b01)) ? 1'b1 : bimc_monitor_unanswered_read_din));
     bimc_ecc_uncorrectable_error_cnt_uncorrectable_ecc_en <= ((((rstate == 4'b1001) && (rx_op == 8'b011)) && (rx_addr == 16'b0111011001100)) && ((rx_dat[2] & rx_dat[0]) == 1'b1));
     bimc_ecc_correctable_error_cnt_correctable_ecc_en <= ((((rstate == 4'b1001) && (rx_op == 8'b011)) && (rx_addr == 16'b0111011001100)) && (rx_dat[1:0] == 2'b11));
     bimc_parity_error_cnt_parity_errors_en <= ((((rstate == 4'b1001) && (rx_op == 8'b011)) && (rx_addr == 16'b0100110100100)) && (rx_dat != 32'b0));
    end
  end
always 
 @(*)
  begin
   case (rstate)
    4'b010:
     if (((rx_frm && ( !rx_resp )) && new_frame))
      begin
       nxt_rstate <= 4'b01;
      end
     else
      if ((((rx_frm && rx_resp) && new_frame) && (rx_op != 8'b011)))
       begin
        nxt_rstate <= 4'b011;
       end
      else
       if ((((rx_frm && rx_resp) && new_frame) && (rx_op == 8'b011)))
        begin
         nxt_rstate <= 4'b0111;
        end
       else
        if ((( !rx_frm ) && new_frame))
         begin
          nxt_rstate <= 4'b010;
         end
        else
         begin
          nxt_rstate <= rstate;
         end
    4'b01:
     if ((rx_op == 8'b01))
      begin
       nxt_rstate <= 4'b0;
      end
     else
      if ((rx_op == 8'b011))
       begin
        nxt_rstate <= 4'b0;
       end
      else
       begin
        nxt_rstate <= 4'b0;
       end
    4'b0:
     begin
      nxt_rstate <= 4'b010;
     end
    4'b011:
     if ((rx_op == 8'b01))
      begin
       nxt_rstate <= 4'b0100;
      end
     else
      if ((rx_op == 8'b011))
       begin
        nxt_rstate <= 4'b0100;
       end
      else
       begin
        nxt_rstate <= 4'b0;
       end
    4'b0100:
     if (((rx_frm && rx_resp) && ((rx_chk == 2'b10) || (rx_chk == 2'b01))))
      begin
       nxt_rstate <= 4'b0101;
      end
     else
      if (((rx_frm && ( !rx_resp )) && ((rx_chk == 2'b10) || (rx_chk == 2'b01))))
       begin
        nxt_rstate <= 4'b0110;
       end
      else
       if ((( !rx_frm ) && ((rx_chk == 2'b10) || (rx_chk == 2'b01))))
        begin
         nxt_rstate <= 4'b0110;
        end
       else
        begin
         nxt_rstate <= rstate;
        end
    4'b0101:
     begin
      nxt_rstate <= 4'b0110;
     end
    4'b0110:
     begin
      nxt_rstate <= 4'b010;
     end
    4'b0111:
     if ((rx_op == 8'b011))
      begin
       nxt_rstate <= 4'b1000;
      end
     else
      begin
       nxt_rstate <= 4'b0;
      end
    4'b1000:
     if (((rx_frm && rx_resp) && ((rx_chk == 2'b10) || (rx_chk == 2'b01))))
      begin
       nxt_rstate <= 4'b1001;
      end
     else
      if (((rx_frm && ( !rx_resp )) && ((rx_chk == 2'b10) || (rx_chk == 2'b01))))
       begin
        nxt_rstate <= 4'b1010;
       end
      else
       if ((( !rx_frm ) && ((rx_chk == 2'b10) || (rx_chk == 2'b01))))
        begin
         nxt_rstate <= 4'b1010;
        end
       else
        begin
         nxt_rstate <= rstate;
        end
    4'b1001:
     begin
      nxt_rstate <= 4'b1010;
     end
    4'b1010:
     begin
      nxt_rstate <= 4'b010;
     end
    default:
     begin
      nxt_rstate <= 4'b010;
     end
   endcase
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     bimc_ecc_error <= 1'b0;
     bimc_interrupt <= 1'b0;
     bimc_rst_n <= 1'b0;
     bimc_osync <= 1'b0;
     bimc_odat <= 1'b0;
     r_reg_send <= 73'b0;
     tstate <= 4'b0;
     sync_cnt <= 7'b01;
     cmd_cnt <= 1'b1;
     auto_poll_ecc_par_ev <= 1'b0;
     poll_ecc_par_timer <= 26'b0;
     mem_wr_init_dly <= 1'b0;
     mem_wr_init_ev <= 1'b0;
     r_bimc_eccpar_debug_write_notify_ev <= 3'b0;
     eccpar_debug_ev <= 1'b0;
     bimc_eccpar_debug_sent_din <= 1'b0;
     bimc_cmd2_send <= 1'b0;
     bimc_eccpar_debug_send <= 1'b0;
     r_bimc_cmd2_write_notify_ev <= 3'b0;
     cpu_transmit_ev <= 1'b0;
     bimc_cmd2_sent_din <= 1'b0;
     cputx_type <= 4'b0;
     cputx_op <= 8'b0;
     cputx_mem <= 12'b0;
     cputx_addr <= 16'b0;
     cputx_dat <= 32'b0;
    end
   else
    begin
     bimc_ecc_error <= bimc_ecc_error_c;
     bimc_interrupt <= bimc_interrupt_c;
     bimc_rst_n <= ( !bimc_global_config_soft_reset );
     bimc_osync <= ((sync_cnt == 32'b01001000) ? 1'b1 : 1'b0);
     bimc_odat <= reg_send[sync_cnt];
     r_reg_send <= reg_send;
     tstate <= nxt_tstate;
     sync_cnt <= ((sync_cnt == 7'b0) ? 32'b01001000 : (sync_cnt - 32'b01));
     cmd_cnt <= ((sync_cnt == 7'b0) ? ( ~cmd_cnt ) : cmd_cnt);
     auto_poll_ecc_par_ev <= ((poll_ecc_par_timer == 26'b010) ? 1'b1 : ((tstate == 4'b0111) ? 1'b0 : auto_poll_ecc_par_ev));
     poll_ecc_par_timer <= (((poll_ecc_par_timer == bimc_global_config_poll_ecc_par_timer) || ( !bimc_global_config_poll_ecc_par_error )) ? 26'b0 : (poll_ecc_par_timer + 26'b01));
     mem_wr_init_dly <= bimc_global_config_mem_wr_init;
     mem_wr_init_ev <= ((( !mem_wr_init_dly ) && bimc_global_config_mem_wr_init) ? 1'b1 : (((sync_cnt == 7'b01) && (tstate == 4'b1000)) ? 1'b0 : mem_wr_init_ev));
     r_bimc_eccpar_debug_write_notify_ev <= {r_bimc_eccpar_debug_write_notify_ev[32'sd1:32'sd0],bimc_eccpar_debug_write_notify_ev};
     eccpar_debug_ev <= ((r_bimc_eccpar_debug_write_notify_ev[2] && bimc_eccpar_debug_send) ? 1'b1 : (((sync_cnt == 7'b01) && (tstate == 4'b0101)) ? 1'b0 : eccpar_debug_ev));
     bimc_eccpar_debug_sent_din <= (((sync_cnt == 7'b01) && (tstate == 4'b0101)) ? 1'b1 : 1'b0);
     bimc_eccpar_debug_send <= o_bimc_eccpar_debug[22:22];
     bimc_cmd2_send <= o_bimc_cmd2[8:8];
     r_bimc_cmd2_write_notify_ev <= {r_bimc_cmd2_write_notify_ev[32'sd1:32'sd0],bimc_cmd2_write_notify_ev};
     cpu_transmit_ev <= ((r_bimc_cmd2_write_notify_ev[2] && bimc_cmd2_send) ? 1'b1 : (((sync_cnt == 7'b01) && (tstate == 4'b01)) ? 1'b0 : cpu_transmit_ev));
     bimc_cmd2_sent_din <= (((sync_cnt == 7'b01) && (tstate == 4'b01)) ? 1'b1 : 1'b0);
     cputx_op <= ((r_bimc_cmd2_write_notify_ev[2] && bimc_cmd2_send) ? bimc_cmd2_opcode : cputx_op);
     cputx_type <= ((r_bimc_cmd2_write_notify_ev[2] && bimc_cmd2_send) ? bimc_cmd1_memtype : cputx_type);
     cputx_mem <= ((r_bimc_cmd2_write_notify_ev[2] && bimc_cmd2_send) ? bimc_cmd1_mem : cputx_mem);
     cputx_addr <= ((r_bimc_cmd2_write_notify_ev[2] && bimc_cmd2_send) ? bimc_cmd1_addr : cputx_addr);
     cputx_dat <= ((r_bimc_cmd2_write_notify_ev[2] && bimc_cmd2_send) ? bimc_cmd0_data : cputx_dat);
    end
  end
always 
 @(*)
  begin
   case (tstate)
    4'b0:
     if ((bimc_rst_n && (sync_cnt == 32'b01001000)))
      begin
       reg_send = 73'b0;
       nxt_tstate = 4'b1011;
      end
     else
      begin
       reg_send = 73'b0;
       nxt_tstate = tstate;
      end
    4'b1011:
     if ((sync_cnt == 7'b01))
      begin
       reg_send = r_reg_send;
       nxt_tstate = 4'b011;
      end
     else
      begin
       reg_send = 73'b0111100000010111111111111000000000000000100000000000000000000000000000001;
       nxt_tstate = tstate;
      end
    4'b011:
     if (((sync_cnt == 7'b0) && (cmd_cnt == 1'b1)))
      begin
       reg_send = r_reg_send;
       if (( !bimc_rst_n ))
        begin
         nxt_tstate = 4'b0;
        end
       else
        if (cpu_transmit_ev)
         begin
          nxt_tstate = 4'b01;
         end
        else
         if (auto_poll_ecc_par_ev)
          begin
          nxt_tstate = 4'b0111;
          end
         else
          if (mem_wr_init_ev)
          begin
          nxt_tstate = 4'b1000;
          end
          else
          if (eccpar_debug_ev)
          begin
          nxt_tstate = 4'b0101;
          end
          else
          begin
          nxt_tstate = 4'b010;
          end
      end
     else
      begin
       reg_send = r_reg_send;
       nxt_tstate = 4'b010;
      end
    4'b01:
     if ((sync_cnt == 7'b01))
      begin
       reg_send = r_reg_send;
       nxt_tstate = 4'b011;
      end
     else
      begin
       reg_send = cputx_frame;
       nxt_tstate = tstate;
      end
    4'b010:
     if ((sync_cnt == 7'b01))
      begin
       reg_send = r_reg_send;
       nxt_tstate = 4'b011;
      end
     else
      begin
       reg_send = 73'b0;
       nxt_tstate = tstate;
      end
    4'b0111:
     if ((sync_cnt == 7'b01))
      begin
       reg_send = r_reg_send;
       nxt_tstate = 4'b011;
      end
     else
      begin
       reg_send = 73'b0111100000011111111111111111111111111111100000000000000000000000000000000;
       nxt_tstate = tstate;
      end
    4'b1000:
     if ((sync_cnt == 7'b01))
      begin
       reg_send = r_reg_send;
       nxt_tstate = 4'b011;
      end
     else
      begin
       reg_send = 73'b0111111111111111111111111000000000000100000000000000000000000000000000001;
       nxt_tstate = tstate;
      end
    4'b0101:
     if ((sync_cnt == 7'b01))
      begin
       reg_send = r_reg_send;
       nxt_tstate = 4'b011;
      end
     else
      begin
       if ((bimc_eccpar_debug_memtype == 32'b01111))
        begin
         reg_send = {1'b0,bimc_eccpar_debug_memtype,8'b010,16'b0,bimc_eccpar_debug_memaddr,{4'b0,bimc_eccpar_debug_jabber_off[32'sd3:32'sd0],20'b0,bimc_eccpar_debug_eccpar_corrupt[32'sd1:32'sd0],bimc_eccpar_debug_eccpar_disable[32'sd1:32'sd0]}};
        end
       else
        begin
         reg_send = {1'b0,bimc_eccpar_debug_memtype,8'b010,bimc_eccpar_debug_memaddr,16'b01010,{4'b0,bimc_eccpar_debug_jabber_off[32'sd3:32'sd0],20'b0,bimc_eccpar_debug_eccpar_corrupt[32'sd1:32'sd0],bimc_eccpar_debug_eccpar_disable[32'sd1:32'sd0]}};
        end
       nxt_tstate = tstate;
      end
    default:
     begin
      reg_send = r_reg_send;
      nxt_tstate = tstate;
     end
   endcase
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     bimc_cmd2_sent <= 1'b0;
     bimc_eccpar_debug_sent <= 1'b0;
     bimc_ecc_uncorrectable_error_cnt <= 32'b0;
     bimc_ecc_correctable_error_cnt <= 32'b0;
     bimc_parity_error_cnt <= 32'b0;
    end
   else
    begin
     bimc_cmd2_sent <= (o_bimc_cmd2[10:10] ? 1'b0 : ((bimc_cmd2_sent_din == 32'b01) ? 1'b1 : i_bimc_cmd2[9:9]));
     bimc_eccpar_debug_sent <= ((o_bimc_eccpar_debug[28:28] == 32'b01) ? 1'b0 : ((bimc_eccpar_debug_sent_din == 32'b01) ? 1'b1 : i_bimc_eccpar_debug[23:23]));
     bimc_ecc_uncorrectable_error_cnt <= (o_bimc_monitor_mask[0] ? 32'b0 : (debug_write_en ? o_bimc_ecc_uncorrectable_error_cnt : ((i_bimc_ecc_uncorrectable_error_cnt == 32'b11111111111111111111111111111111) ? 32'b11111111111111111111111111111111 : (i_bimc_ecc_uncorrectable_error_cnt[31:0] + {31'b0,bimc_ecc_uncorrectable_error_cnt_uncorrectable_ecc_en}))));
     bimc_ecc_correctable_error_cnt <= (o_bimc_monitor_mask[1:1] ? 32'b0 : (debug_write_en ? o_bimc_ecc_correctable_error_cnt : ((i_bimc_ecc_uncorrectable_error_cnt == 32'b11111111111111111111111111111111) ? 32'b11111111111111111111111111111111 : (i_bimc_ecc_correctable_error_cnt + {31'b0,bimc_ecc_correctable_error_cnt_correctable_ecc_en}))));
     bimc_parity_error_cnt <= (o_bimc_monitor_mask[2:2] ? 32'b0 : (debug_write_en ? o_bimc_parity_error_cnt : ((i_bimc_parity_error_cnt == 32'b11111111111111111111111111111111) ? 32'b11111111111111111111111111111111 : (i_bimc_parity_error_cnt + {31'b0,bimc_parity_error_cnt_parity_errors_en}))));
    end
  end
endmodule

