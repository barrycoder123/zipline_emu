`begin_keywords "1800-2012"
module cr_kme ( kme_interrupt, kme_ib_tready, kme_cceip0_ob_tvalid, kme_cceip0_ob_tlast, kme_cceip0_ob_tid, kme_cceip0_ob_tstrb, kme_cceip0_ob_tuser, kme_cceip0_ob_tdata, apb_prdata, apb_pready, apb_pslverr, kme_idle, clk, rst_n, scan_en, scan_mode, scan_rst_n, ovstb, lvm, mlvm, disable_debug_cmd, disable_unencrypted_keys, kme_ib_tvalid, kme_ib_tlast, kme_ib_tid, kme_ib_tstrb, kme_ib_tuser, kme_ib_tdata, kme_cceip0_ob_tready, apb_paddr, apb_psel, apb_penable, apb_pwrite, apb_pwdata );
parameter KME_STUB = 0 ;
output wire logic kme_interrupt ;
output wire logic kme_ib_tready ;
output wire logic kme_cceip0_ob_tvalid ;
output wire logic kme_cceip0_ob_tlast ;
output wire logic [0 : 0] kme_cceip0_ob_tid ;
output wire logic [7 : 0] kme_cceip0_ob_tstrb ;
output wire logic [7 : 0] kme_cceip0_ob_tuser ;
output wire logic [63 : 0] kme_cceip0_ob_tdata ;
output wire logic [31 : 0] apb_prdata ;
output wire logic apb_pready ;
output wire logic apb_pslverr ;
output wire logic kme_idle ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic scan_en ;
input wire logic scan_mode ;
input wire logic scan_rst_n ;
input wire logic ovstb ;
input wire logic lvm ;
input wire logic mlvm ;
input wire logic disable_debug_cmd ;
input wire logic disable_unencrypted_keys ;
input wire logic kme_ib_tvalid ;
input wire logic kme_ib_tlast ;
input wire logic [0 : 0] kme_ib_tid ;
input wire logic [7 : 0] kme_ib_tstrb ;
input wire logic [7 : 0] kme_ib_tuser ;
input wire logic [63 : 0] kme_ib_tdata ;
input wire logic kme_cceip0_ob_tready ;
input wire logic [15 : 0] apb_paddr ;
input wire logic apb_psel ;
input wire logic apb_penable ;
input wire logic apb_pwrite ;
input wire logic [31 : 0] apb_pwdata ;
endmodule
`end_keywords
/**portGenericDumpBegin KME_STUB kme_interrupt kme_ib_tready kme_cceip0_ob_tvalid kme_cceip0_ob_tlast kme_cceip0_ob_tid kme_cceip0_ob_tstrb kme_cceip0_ob_tuser kme_cceip0_ob_tdata apb_prdata apb_pready apb_pslverr kme_idle clk rst_n scan_en scan_mode scan_rst_n ovstb lvm mlvm disable_debug_cmd disable_unencrypted_keys kme_ib_tvalid kme_ib_tlast kme_ib_tid kme_ib_tstrb kme_ib_tuser kme_ib_tdata kme_cceip0_ob_tready apb_paddr apb_psel apb_penable apb_pwrite apb_pwdata portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
