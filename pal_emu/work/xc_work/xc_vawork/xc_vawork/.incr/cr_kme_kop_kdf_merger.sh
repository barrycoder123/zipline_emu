`begin_keywords "1800-2012"
module cr_kme_kop_kdf_merger ( kdf_cmdfifo_ack, sha_tag_stall, merger_keyfifo_ack, kdf_keybuilder_data, kdf_keybuilder_valid, clk, rst_n, cmdfifo_kdf_valid, cmdfifo_kdf_cmd, sha_tag_data, sha_tag_valid, sha_tag_last, keyfifo_merger_data, keyfifo_merger_valid, keybuilder_kdf_stall );
typedef enum reg  [0 : 0] {NOOP=0,KDF=1} aux_key_op_e ;
typedef struct packed {logic [0 : 0] kdf_dek_iter ; logic [0 : 0] combo_mode ; aux_key_op_e dek_key_op ; aux_key_op_e dak_key_op ;} kdf_cmd_t ;
output logic kdf_cmdfifo_ack ;
output logic sha_tag_stall ;
output logic merger_keyfifo_ack ;
output logic [63 : 0] kdf_keybuilder_data ;
output logic kdf_keybuilder_valid ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic cmdfifo_kdf_valid ;
input kdf_cmd_t cmdfifo_kdf_cmd ;
input wire logic [127 : 0] sha_tag_data ;
input wire logic sha_tag_valid ;
input wire logic sha_tag_last ;
input wire logic [127 : 0] keyfifo_merger_data ;
input wire logic keyfifo_merger_valid ;
input wire logic keybuilder_kdf_stall ;
endmodule
`end_keywords
/**portGenericDumpBegin aux_key_op_e NOOP KDF kdf_cmd_t kdf_dek_iter combo_mode dek_key_op dak_key_op kdf_cmdfifo_ack sha_tag_stall merger_keyfifo_ack kdf_keybuilder_data kdf_keybuilder_valid clk rst_n cmdfifo_kdf_valid cmdfifo_kdf_cmd sha_tag_data sha_tag_valid sha_tag_last keyfifo_merger_data keyfifo_merger_valid keybuilder_kdf_stall portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
