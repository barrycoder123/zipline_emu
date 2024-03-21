// xc_work/v/WORK/svPkg4.sv
// /home/ibarry/Project-Zipline-master/rtl/common/include/nx_mem_typePKG_v2.svp:10
(* celldefine = 1 *)
package nx_mem_typePKG_v2;
typedef enum logic {FALSE=1'b0,TRUE=1'b1} bool_t;
typedef enum bit [3:0] {RAM_1RW=4'b0,RAM_1R1W=4'b01,REG=4'b010,TCAM=4'b011,RAM_2RW=4'b0100} mem_type_e;
typedef struct packed {
 bool_t ack_error, sim_tmo;
 logic [3:0] reserved_op ;
 bool_t compare, set_init_start, init_inc, init, reset, disabled, enable, write, read, nop;
} capabilities_t;
endpackage

