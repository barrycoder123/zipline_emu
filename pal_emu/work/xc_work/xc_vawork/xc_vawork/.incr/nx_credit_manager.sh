`begin_keywords "1800-2012"
module nx_credit_manager ( credit_available, hw_status, clk, rst_n, sw_init, credit_return, credit_used, sw_config );
parameter N_MAX_CREDITS = 512 ;
parameter N_USED_LAG_CYCLES = 0 ;
parameter N_MAX_CREDITS_PER_CYCLE = 256 ;
parameter N_OUTSTANDING_CREDITS = 0 ;
typedef struct packed {logic used_err ; logic return_err ; logic [9 : 0] credit_issued ;} hw_status_t ;
typedef struct packed {logic dis_used ; logic dis_return ; logic [9 : 0] credit_limit ;} sw_config_t ;
output logic [8 : 0] credit_available ;
output hw_status_t hw_status ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic sw_init ;
input wire logic [8 : 0] credit_return ;
input wire logic [8 : 0] credit_used ;
input sw_config_t sw_config ;
endmodule
`end_keywords
/**portGenericDumpBegin N_MAX_CREDITS N_USED_LAG_CYCLES N_MAX_CREDITS_PER_CYCLE N_OUTSTANDING_CREDITS hw_status_t used_err return_err credit_issued sw_config_t dis_used dis_return credit_limit credit_available hw_status clk rst_n sw_init credit_return credit_used sw_config portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
