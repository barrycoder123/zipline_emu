
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module cr_kme_int_handler ( kme_interrupt, interrupt_status, suppress_key_tlvs, 
	clk, rst_n, set_drbg_expired_int, set_txc_bp_int, 
	set_gcm_tag_fail_int, set_key_tlv_miscmp_int, set_tlv_bip2_error_int, 
	cceip0_ism_mbe, cceip1_ism_mbe, cceip2_ism_mbe, cceip3_ism_mbe, 
	cddip0_ism_mbe, cddip1_ism_mbe, cddip2_ism_mbe, cddip3_ism_mbe, 
	kim_mbe, ckv_mbe, cceip_encrypt_mbe, cceip_validate_mbe, 
	cddip_decrypt_mbe, axi_mbe, bimc_interrupt, wr_stb, wr_data, 
	reg_addr, o_interrupt_mask);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output kme_interrupt;
output [4:0] interrupt_status;
output suppress_key_tlvs;
input clk;
input rst_n;
input set_drbg_expired_int;
input set_txc_bp_int;
input set_gcm_tag_fail_int;
input set_key_tlv_miscmp_int;
input set_tlv_bip2_error_int;
input cceip0_ism_mbe;
input cceip1_ism_mbe;
input cceip2_ism_mbe;
input cceip3_ism_mbe;
input cddip0_ism_mbe;
input cddip1_ism_mbe;
input cddip2_ism_mbe;
input cddip3_ism_mbe;
input kim_mbe;
input ckv_mbe;
input cceip_encrypt_mbe;
input cceip_validate_mbe;
input cddip_decrypt_mbe;
input axi_mbe;
input bimc_interrupt;
input wr_stb;
input [31:0] wr_data;
input [10:0] reg_addr;
input [4:0] o_interrupt_mask;
wire _zy_simnet_kme_interrupt_0_w$;
wire [0:4] _zy_simnet_interrupt_status_1_w$;
wire [4:0] set_triggers;
wire [31:0] i;
Q_ASSIGN U0 ( .B(set_drbg_expired_int), .A(set_triggers[0]));
Q_ASSIGN U1 ( .B(set_txc_bp_int), .A(set_triggers[2]));
Q_ASSIGN U2 ( .B(set_gcm_tag_fail_int), .A(set_triggers[3]));
Q_ASSIGN U3 ( .B(set_key_tlv_miscmp_int), .A(set_triggers[4]));
ixc_assign_5 _zz_strnp_2 ( _zy_simnet_interrupt_status_1_w$[0:4], 
	interrupt_status[4:0]);
ixc_assign _zz_strnp_1 ( _zy_simnet_kme_interrupt_0_w$, kme_interrupt);
ixc_assign _zz_strnp_0 ( suppress_key_tlvs, interrupt_status[1]);
Q_OR03 U7 ( .A0(n3), .A1(n2), .A2(n1), .Z(set_triggers[1]));
Q_OR03 U8 ( .A0(n6), .A1(n5), .A2(n4), .Z(n1));
Q_OR03 U9 ( .A0(cceip2_ism_mbe), .A1(cceip1_ism_mbe), .A2(cceip0_ism_mbe), .Z(n2));
Q_OR03 U10 ( .A0(cddip1_ism_mbe), .A1(cddip0_ism_mbe), .A2(cceip3_ism_mbe), .Z(n3));
Q_OR03 U11 ( .A0(cceip_encrypt_mbe), .A1(cddip3_ism_mbe), .A2(cddip2_ism_mbe), .Z(n4));
Q_OR03 U12 ( .A0(kim_mbe), .A1(cddip_decrypt_mbe), .A2(cceip_validate_mbe), .Z(n5));
Q_OR03 U13 ( .A0(set_tlv_bip2_error_int), .A1(axi_mbe), .A2(ckv_mbe), .Z(n6));
Q_INV U14 ( .A(reg_addr[0]), .Z(n7));
Q_INV U15 ( .A(reg_addr[1]), .Z(n8));
Q_INV U16 ( .A(reg_addr[7]), .Z(n9));
Q_INV U17 ( .A(reg_addr[10]), .Z(n10));
Q_AN03 U18 ( .A0(n10), .A1(reg_addr[9]), .A2(reg_addr[8]), .Z(n11));
Q_AN03 U19 ( .A0(n9), .A1(reg_addr[6]), .A2(reg_addr[5]), .Z(n12));
Q_AN03 U20 ( .A0(reg_addr[4]), .A1(reg_addr[3]), .A2(reg_addr[2]), .Z(n13));
Q_AN03 U21 ( .A0(n8), .A1(n7), .A2(n11), .Z(n14));
Q_AN03 U22 ( .A0(n12), .A1(n13), .A2(n14), .Z(n15));
Q_AN02 U23 ( .A0(wr_stb), .A1(n15), .Z(n16));
Q_AN02 U24 ( .A0(n16), .A1(wr_data[0]), .Z(n32));
Q_AN02 U25 ( .A0(n16), .A1(wr_data[1]), .Z(n33));
Q_AN02 U26 ( .A0(n16), .A1(wr_data[2]), .Z(n34));
Q_AN02 U27 ( .A0(n16), .A1(wr_data[3]), .Z(n35));
Q_AN02 U28 ( .A0(n16), .A1(wr_data[4]), .Z(n36));
Q_INV U29 ( .A(n17), .Z(n27));
Q_NR02 U30 ( .A0(n36), .A1(set_triggers[4]), .Z(n17));
Q_INV U31 ( .A(n36), .Z(n26));
Q_INV U32 ( .A(n18), .Z(n28));
Q_NR02 U33 ( .A0(n35), .A1(set_triggers[3]), .Z(n18));
Q_INV U34 ( .A(n35), .Z(n25));
Q_INV U35 ( .A(n19), .Z(n29));
Q_NR02 U36 ( .A0(n34), .A1(set_triggers[2]), .Z(n19));
Q_INV U37 ( .A(n34), .Z(n24));
Q_INV U38 ( .A(n20), .Z(n30));
Q_NR02 U39 ( .A0(n33), .A1(set_triggers[1]), .Z(n20));
Q_INV U40 ( .A(n33), .Z(n23));
Q_INV U41 ( .A(n21), .Z(n31));
Q_NR02 U42 ( .A0(n32), .A1(set_triggers[0]), .Z(n21));
Q_INV U43 ( .A(n32), .Z(n22));
Q_FDP1 kme_interrupt_REG  ( .CK(clk), .R(rst_n), .D(n37), .Q(kme_interrupt), .QN( ));
Q_OR02 U45 ( .A0(n38), .A1(bimc_interrupt), .Z(n37));
Q_OR03 U46 ( .A0(n43), .A1(n44), .A2(n39), .Z(n38));
Q_OR03 U47 ( .A0(n40), .A1(n41), .A2(n42), .Z(n39));
Q_AN02 U48 ( .A0(interrupt_status[4]), .A1(o_interrupt_mask[4]), .Z(n40));
Q_AN02 U49 ( .A0(interrupt_status[3]), .A1(o_interrupt_mask[3]), .Z(n41));
Q_AN02 U50 ( .A0(interrupt_status[2]), .A1(o_interrupt_mask[2]), .Z(n42));
Q_AN02 U51 ( .A0(interrupt_status[1]), .A1(o_interrupt_mask[1]), .Z(n43));
Q_AN02 U52 ( .A0(interrupt_status[0]), .A1(o_interrupt_mask[0]), .Z(n44));
Q_FDP4EP \interrupt_status_REG[0] ( .CK(clk), .CE(n31), .R(n45), .D(n22), .Q(interrupt_status[0]));
Q_INV U54 ( .A(rst_n), .Z(n45));
Q_FDP4EP \interrupt_status_REG[1] ( .CK(clk), .CE(n30), .R(n45), .D(n23), .Q(interrupt_status[1]));
Q_FDP4EP \interrupt_status_REG[2] ( .CK(clk), .CE(n29), .R(n45), .D(n24), .Q(interrupt_status[2]));
Q_FDP4EP \interrupt_status_REG[3] ( .CK(clk), .CE(n28), .R(n45), .D(n25), .Q(interrupt_status[3]));
Q_FDP4EP \interrupt_status_REG[4] ( .CK(clk), .CE(n27), .R(n45), .D(n26), .Q(interrupt_status[4]));
endmodule
