`begin_keywords "1800-2012"
package nx_mem_typePKG_v2 ;
typedef enum reg  {FALSE=1'b0,TRUE=1'b1} bool_t ;
typedef enum bit  [3 : 0] {RAM_1RW=4'b0,RAM_1R1W=4'b01,REG=4'b010,TCAM=4'b011,RAM_2RW=4'b0100} mem_type_e ;
typedef struct packed {bool_t ack_error ; bool_t sim_tmo ; logic [3 : 0] reserved_op ; bool_t compare ; bool_t set_init_start ; bool_t init_inc ; bool_t init ; bool_t reset ; bool_t disabled ; bool_t enable ; bool_t write ; bool_t read ; bool_t nop ;} capabilities_t ;
endpackage
`end_keywords
