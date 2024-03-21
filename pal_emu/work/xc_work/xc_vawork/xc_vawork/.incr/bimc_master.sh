`begin_keywords "1800-2012"
module bimc_master ( bimc_ecc_error, bimc_interrupt, bimc_odat, bimc_osync, bimc_rst_n, clk, rst_n, bimc_idat, bimc_isync, o_bimc_monitor_mask, o_bimc_ecc_uncorrectable_error_cnt, o_bimc_ecc_correctable_error_cnt, o_bimc_parity_error_cnt, o_bimc_global_config, o_bimc_eccpar_debug, o_bimc_cmd2, o_bimc_cmd1, o_bimc_cmd0, o_bimc_rxcmd2, o_bimc_rxrsp2, o_bimc_pollrsp2, o_bimc_dbgcmd2, i_bimc_monitor, i_bimc_ecc_uncorrectable_error_cnt, i_bimc_ecc_correctable_error_cnt, i_bimc_parity_error_cnt, i_bimc_global_config, i_bimc_memid, i_bimc_eccpar_debug, i_bimc_cmd2, i_bimc_rxcmd2, i_bimc_rxcmd1, i_bimc_rxcmd0, i_bimc_rxrsp2, i_bimc_rxrsp1, i_bimc_rxrsp0, i_bimc_pollrsp2, i_bimc_pollrsp1, i_bimc_pollrsp0, i_bimc_dbgcmd2, i_bimc_dbgcmd1, i_bimc_dbgcmd0 );
parameter MSB = 71 ;
parameter BIMC_FLENGTH = 72 ;
parameter NOP = 8'b0 ;
parameter RD_REG = 8'b01 ;
parameter WR_ID = 8'b010 ;
parameter POLL_ERR = 8'b011 ;
parameter WR_ECTRL = 8'b01010 ;
parameter WR_ECCP = 8'b01011 ;
parameter WR_ECCCNT = 8'b01100 ;
parameter WR_ECCIN = 8'b010000 ;
parameter WR_ECCOUT = 8'b010001 ;
parameter WR_TM = 8'b011110 ;
parameter WR_LVM = 8'b011111 ;
parameter WR_MLVM = 8'b0100000 ;
parameter WR_MRDTEN = 8'b0100001 ;
parameter WR_RDT = 8'b0100010 ;
parameter WR_WBT = 8'b0100011 ;
parameter WR_WMS = 8'b0100100 ;
parameter MEM_INIT = 8'b11111111 ;
parameter RESET = 4'b0 ;
parameter AUTOID = 4'b1011 ;
parameter CPU = 4'b01 ;
parameter IDLE = 4'b010 ;
parameter AUTOPOLL = 4'b0111 ;
parameter MEMWRINIT = 4'b1000 ;
parameter PICK_NXT = 4'b011 ;
parameter ECCPAR_DEBUG = 4'b0101 ;
parameter COMMAND = 4'b01 ;
parameter CMD_DONE = 4'b0 ;
parameter RESPONSE_CMD = 4'b011 ;
parameter RESPONSE_IDLE = 4'b0100 ;
parameter RESPONSE_MEM = 4'b0101 ;
parameter RSP_DONE = 4'b0110 ;
parameter POLL_ERR_CMD = 4'b0111 ;
parameter POLL_ERR_IDLE = 4'b1000 ;
parameter POLL_ERR_MEM = 4'b1001 ;
parameter POLL_ERR_DONE = 4'b1010 ;
output logic bimc_ecc_error ;
output logic bimc_interrupt ;
output logic bimc_odat ;
output logic bimc_osync ;
output logic bimc_rst_n ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic bimc_idat ;
input wire logic bimc_isync ;
input wire logic [6 : 0] o_bimc_monitor_mask ;
input wire logic [31 : 0] o_bimc_ecc_uncorrectable_error_cnt ;
input wire logic [31 : 0] o_bimc_ecc_correctable_error_cnt ;
input wire logic [31 : 0] o_bimc_parity_error_cnt ;
input wire logic [31 : 0] o_bimc_global_config ;
input wire logic [28 : 0] o_bimc_eccpar_debug ;
input wire logic [10 : 0] o_bimc_cmd2 ;
input wire logic [31 : 0] o_bimc_cmd1 ;
input wire logic [31 : 0] o_bimc_cmd0 ;
input wire logic [9 : 0] o_bimc_rxcmd2 ;
input wire logic [9 : 0] o_bimc_rxrsp2 ;
input wire logic [9 : 0] o_bimc_pollrsp2 ;
input wire logic [9 : 0] o_bimc_dbgcmd2 ;
output wire logic [6 : 0] i_bimc_monitor ;
output wire logic [31 : 0] i_bimc_ecc_uncorrectable_error_cnt ;
output wire logic [31 : 0] i_bimc_ecc_correctable_error_cnt ;
output wire logic [31 : 0] i_bimc_parity_error_cnt ;
output wire logic [31 : 0] i_bimc_global_config ;
output wire logic [11 : 0] i_bimc_memid ;
output wire logic [28 : 0] i_bimc_eccpar_debug ;
output wire logic [10 : 0] i_bimc_cmd2 ;
output wire logic [9 : 0] i_bimc_rxcmd2 ;
output wire logic [31 : 0] i_bimc_rxcmd1 ;
output wire logic [31 : 0] i_bimc_rxcmd0 ;
output wire logic [9 : 0] i_bimc_rxrsp2 ;
output wire logic [31 : 0] i_bimc_rxrsp1 ;
output wire logic [31 : 0] i_bimc_rxrsp0 ;
output wire logic [9 : 0] i_bimc_pollrsp2 ;
output wire logic [31 : 0] i_bimc_pollrsp1 ;
output wire logic [31 : 0] i_bimc_pollrsp0 ;
output wire logic [9 : 0] i_bimc_dbgcmd2 ;
output wire logic [31 : 0] i_bimc_dbgcmd1 ;
output wire logic [31 : 0] i_bimc_dbgcmd0 ;
endmodule
`end_keywords
/**portGenericDumpBegin MSB BIMC_FLENGTH NOP RD_REG WR_ID POLL_ERR WR_ECTRL WR_ECCP WR_ECCCNT WR_ECCIN WR_ECCOUT WR_TM WR_LVM WR_MLVM WR_MRDTEN WR_RDT WR_WBT WR_WMS MEM_INIT RESET AUTOID CPU IDLE AUTOPOLL MEMWRINIT PICK_NXT ECCPAR_DEBUG COMMAND CMD_DONE RESPONSE_CMD RESPONSE_IDLE RESPONSE_MEM RSP_DONE POLL_ERR_CMD POLL_ERR_IDLE POLL_ERR_MEM POLL_ERR_DONE bimc_ecc_error bimc_interrupt bimc_odat bimc_osync bimc_rst_n clk rst_n bimc_idat bimc_isync o_bimc_monitor_mask o_bimc_ecc_uncorrectable_error_cnt o_bimc_ecc_correctable_error_cnt o_bimc_parity_error_cnt o_bimc_global_config o_bimc_eccpar_debug o_bimc_cmd2 o_bimc_cmd1 o_bimc_cmd0 o_bimc_rxcmd2 o_bimc_rxrsp2 o_bimc_pollrsp2 o_bimc_dbgcmd2 i_bimc_monitor i_bimc_ecc_uncorrectable_error_cnt i_bimc_ecc_correctable_error_cnt i_bimc_parity_error_cnt i_bimc_global_config i_bimc_memid i_bimc_eccpar_debug i_bimc_cmd2 i_bimc_rxcmd2 i_bimc_rxcmd1 i_bimc_rxcmd0 i_bimc_rxrsp2 i_bimc_rxrsp1 i_bimc_rxrsp0 i_bimc_pollrsp2 i_bimc_pollrsp1 i_bimc_pollrsp0 i_bimc_dbgcmd2 i_bimc_dbgcmd1 i_bimc_dbgcmd0 portGenericDumpEnd**/
/**ParamPreferVectorBegin NOP RD_REG WR_ID POLL_ERR WR_ECTRL WR_ECCP WR_ECCCNT WR_ECCIN WR_ECCOUT WR_TM WR_LVM WR_MLVM WR_MRDTEN WR_RDT WR_WBT WR_WMS MEM_INIT RESET AUTOID CPU IDLE AUTOPOLL MEMWRINIT PICK_NXT ECCPAR_DEBUG COMMAND CMD_DONE RESPONSE_CMD RESPONSE_IDLE RESPONSE_MEM RSP_DONE POLL_ERR_CMD POLL_ERR_IDLE POLL_ERR_MEM POLL_ERR_DONE ParamPreferVectorEnd**/
