`begin_keywords "1800-2012"
module nx_interface_monitor_xcm100 ( stat_code, stat_datawords, stat_addr, capability_lst, capability_type, rd_dat, bimc_odat, bimc_osync, ro_uncorrectable_ecc_error, im_rdy, im_available, im_status, clk, rst_n, reg_addr, cmnd_op, cmnd_addr, wr_stb, wr_dat, ovstb, lvm, mlvm, mrdten, bimc_rst_n, bimc_isync, bimc_idat, im_din, im_vld, im_consumed, im_config );
parameter IN_FLIGHT = 5 ;
parameter IN_FLIGHT_USE = 0 ;
parameter CMND_ADDRESS = 11'b0100010000 ;
parameter STAT_ADDRESS = 11'b0100000000 ;
parameter IMRD_ADDRESS = 11'b0100101000 ;
parameter ALIGNMENT = 2 ;
parameter N_TIMER_BITS = 6 ;
parameter N_REG_ADDR_BITS = 11 ;
parameter N_DATA_BITS = 96 ;
parameter N_ENTRIES = 512 ;
parameter N_INIT_INC_BITS = 0 ;
parameter SPECIALIZE = 1 ;
parameter LATCH = 0 ;
parameter logic [95 : 0] RAM_MASK = 96'b111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111 ;
parameter logic [95 : 0] RESET_DATA = 96'b0 ;
typedef struct packed {logic bank_hi ; logic bank_lo ;} im_available_t ;
typedef struct packed {im_available_t available ; logic overflow ; logic [8 : 0] wr_pointer ;} im_status_t ;
typedef struct packed {logic [63 : 0] data ;} im_data_t ;
typedef struct packed {logic eob ; logic [7 : 0] bytes_vld ; logic [22 : 0] im_meta ;} im_desc_t ;
typedef struct packed {im_data_t data ; im_desc_t desc ;} im_din_t ;
typedef struct packed {logic bank_hi ; logic bank_lo ;} im_consumed_t ;
typedef struct packed {logic [1 : 0] mode ; logic [9 : 0] wr_credit_config ;} im_config_t ;
output logic [2 : 0] stat_code ;
output logic [4 : 0] stat_datawords ;
output logic [8 : 0] stat_addr ;
output logic [15 : 0] capability_lst ;
output logic [3 : 0] capability_type ;
output logic [95 : 0] rd_dat ;
output logic bimc_odat ;
output logic bimc_osync ;
output logic ro_uncorrectable_ecc_error ;
output wire logic im_rdy ;
output im_available_t im_available ;
output im_status_t im_status ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [10 : 0] reg_addr ;
input wire logic [3 : 0] cmnd_op ;
input wire logic [8 : 0] cmnd_addr ;
input wire logic wr_stb ;
input wire logic [95 : 0] wr_dat ;
input wire logic ovstb ;
input wire logic lvm ;
input wire logic mlvm ;
input wire logic mrdten ;
input wire logic bimc_rst_n ;
input wire logic bimc_isync ;
input wire logic bimc_idat ;
input im_din_t im_din ;
input wire logic im_vld ;
input im_consumed_t im_consumed ;
input im_config_t im_config ;
endmodule
`end_keywords
/**portGenericDumpBegin IN_FLIGHT IN_FLIGHT_USE CMND_ADDRESS STAT_ADDRESS IMRD_ADDRESS ALIGNMENT N_TIMER_BITS N_REG_ADDR_BITS N_DATA_BITS N_ENTRIES N_INIT_INC_BITS SPECIALIZE LATCH RAM_MASK RESET_DATA im_available_t bank_hi bank_lo im_status_t available overflow wr_pointer im_data_t data im_desc_t eob bytes_vld im_meta im_din_t data desc im_consumed_t bank_hi bank_lo im_config_t mode wr_credit_config stat_code stat_datawords stat_addr capability_lst capability_type rd_dat bimc_odat bimc_osync ro_uncorrectable_ecc_error im_rdy im_available im_status clk rst_n reg_addr cmnd_op cmnd_addr wr_stb wr_dat ovstb lvm mlvm mrdten bimc_rst_n bimc_isync bimc_idat im_din im_vld im_consumed im_config portGenericDumpEnd**/
/**ParamPreferVectorBegin CMND_ADDRESS STAT_ADDRESS IMRD_ADDRESS ParamPreferVectorEnd**/
