`begin_keywords "1800-2012"
module cr_kme_kop_kdf ( keyfilter_cmdfifo_ack, kdf_cmdfifo_ack, kdfstream_cmdfifo_ack, kdf_gcm_stall, kdf_keybuilder_data, kdf_keybuilder_valid, clk, rst_n, scan_en, scan_mode, scan_rst_n, labels, cmdfifo_keyfilter_valid, cmdfifo_keyfilter_cmd, cmdfifo_kdf_valid, cmdfifo_kdf_cmd, cmdfifo_kdfstream_valid, cmdfifo_kdfstream_cmd, gcm_kdf_valid, gcm_kdf_eof, gcm_kdf_data, keybuilder_kdf_stall, kdf_test_key_size, kdf_test_mode_en );
typedef struct packed {logic [0 : 0] guid_size ; logic [5 : 0] label_size ; logic [255 : 0] label ; logic [0 : 0] delimiter_valid ; logic [7 : 0] delimiter ;} label_t ;
typedef struct packed {logic [0 : 0] combo_mode ;} keyfilter_cmd_t ;
typedef enum reg  [0 : 0] {NOOP=0,KDF=1} aux_key_op_e ;
typedef struct packed {logic [0 : 0] kdf_dek_iter ; logic [0 : 0] combo_mode ; aux_key_op_e dek_key_op ; aux_key_op_e dak_key_op ;} kdf_cmd_t ;
typedef struct packed {logic [0 : 0] combo_mode ; logic [0 : 0] skip ; logic [255 : 0] guid ; logic [2 : 0] label_index ; logic [1 : 0] num_iter ;} kdfstream_cmd_t ;
output wire logic keyfilter_cmdfifo_ack ;
output wire logic kdf_cmdfifo_ack ;
output wire logic kdfstream_cmdfifo_ack ;
output wire logic kdf_gcm_stall ;
output wire logic [63 : 0] kdf_keybuilder_data ;
output wire logic kdf_keybuilder_valid ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic scan_en ;
input wire logic scan_mode ;
input wire logic scan_rst_n ;
input label_t[7 : 0] labels ;
input wire logic cmdfifo_keyfilter_valid ;
input keyfilter_cmd_t cmdfifo_keyfilter_cmd ;
input wire logic cmdfifo_kdf_valid ;
input kdf_cmd_t cmdfifo_kdf_cmd ;
input wire logic cmdfifo_kdfstream_valid ;
input kdfstream_cmd_t cmdfifo_kdfstream_cmd ;
input wire logic gcm_kdf_valid ;
input wire logic gcm_kdf_eof ;
input wire logic [127 : 0] gcm_kdf_data ;
input wire logic keybuilder_kdf_stall ;
input wire logic [31 : 0] kdf_test_key_size ;
input wire logic kdf_test_mode_en ;
endmodule
`end_keywords
/**portGenericDumpBegin label_t guid_size label_size DUMMY1 delimiter_valid delimiter DUMMY2 keyfilter_cmd_t combo_mode aux_key_op_e NOOP KDF kdf_cmd_t kdf_dek_iter combo_mode dek_key_op dak_key_op kdfstream_cmd_t combo_mode skip guid label_index num_iter keyfilter_cmdfifo_ack kdf_cmdfifo_ack kdfstream_cmdfifo_ack kdf_gcm_stall kdf_keybuilder_data kdf_keybuilder_valid clk rst_n scan_en scan_mode scan_rst_n labels cmdfifo_keyfilter_valid cmdfifo_keyfilter_cmd cmdfifo_kdf_valid cmdfifo_kdf_cmd cmdfifo_kdfstream_valid cmdfifo_kdfstream_cmd gcm_kdf_valid gcm_kdf_eof gcm_kdf_data keybuilder_kdf_stall kdf_test_key_size kdf_test_mode_en portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
