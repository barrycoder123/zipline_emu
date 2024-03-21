`begin_keywords "1800-2012"
module cr_axi4s2_slv ( axi4s_ib_out, axi4s_slv_out, axi4s_slv_empty, axi4s_slv_aempty, axi4s_slv_bimc_odat, axi4s_slv_bimc_osync, axi4s_slv_ro_uncorrectable_ecc_error, clk, rst_n, axi4s_ib_in, axi4s_slv_rd, axi4s_slv_bimc_idat, axi4s_slv_bimc_isync, bimc_rst_n );
parameter N_ENTRIES = 168 ;
parameter N_AFULL_VAL = 1 ;
parameter N_AEMPTY_VAL = 1 ;
parameter USE_RAM = 1 ;
typedef struct packed {logic tready ;} axi4s_dp_rdy_t ;
typedef struct packed {logic tvalid ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} axi4s_dp_bus_t ;
output axi4s_dp_rdy_t axi4s_ib_out ;
output axi4s_dp_bus_t axi4s_slv_out ;
output wire logic axi4s_slv_empty ;
output wire logic axi4s_slv_aempty ;
output logic axi4s_slv_bimc_odat ;
output logic axi4s_slv_bimc_osync ;
output logic axi4s_slv_ro_uncorrectable_ecc_error ;
input wire logic clk ;
input wire logic rst_n ;
input axi4s_dp_bus_t axi4s_ib_in ;
input wire logic axi4s_slv_rd ;
input wire logic axi4s_slv_bimc_idat ;
input wire logic axi4s_slv_bimc_isync ;
input wire logic bimc_rst_n ;
endmodule
`end_keywords
/**portGenericDumpBegin N_ENTRIES N_AFULL_VAL N_AEMPTY_VAL USE_RAM axi4s_dp_rdy_t tready axi4s_dp_bus_t tvalid tlast tid tstrb tuser tdata axi4s_ib_out axi4s_slv_out axi4s_slv_empty axi4s_slv_aempty axi4s_slv_bimc_odat axi4s_slv_bimc_osync axi4s_slv_ro_uncorrectable_ecc_error clk rst_n axi4s_ib_in axi4s_slv_rd axi4s_slv_bimc_idat axi4s_slv_bimc_isync bimc_rst_n portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
