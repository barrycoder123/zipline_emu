
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module ifsyn_conns ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
ixc_assign isfasgn_0_0_0 ( kme_tb.apb_xactor._zyixc_port_0_0_isf, 
	xcva_top.IXC_GFIFO.ISF.pvec[0]);
ixc_assign osfasgn_0_0_0 ( xcva_top.IXC_GFIFO.OSF.pvecEv[0], 
	kme_tb.apb_xactor._zyixc_port_0_0_osf);
ixc_assign isfasgn_0_1_1 ( kme_tb.apb_xactor._zyixc_port_0_1_isf, 
	xcva_top.IXC_GFIFO.ISF.pvec[1]);
ixc_assign osfasgn_0_1_1 ( xcva_top.IXC_GFIFO.OSF.pvecEv[1], 
	kme_tb.apb_xactor._zyixc_port_0_1_osf);
ixc_assign osfasgn_1_0_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[0], 
	kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.txc_axi_intf .u_cr_fifo_wrap2.\ram_fifo.u_nx_fifo_ram_1r1w .fifo_ctrl._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_1_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[1], 
	kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_encrypt_kop_fifo .ram_fifo.\ram_fifo.u_nx_fifo_ram_1r1w .fifo_ctrl._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_2_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[2], 
	kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip_validate_kop_fifo .ram_fifo.\ram_fifo.u_nx_fifo_ram_1r1w .fifo_ctrl._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_3_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[3], 
	kme_tb.kme_dut.u_cr_kme_core.\kme_is_core.cceip0_key_tlv_rsm .u_cr_tlvp2_rsm.u_cr_fifo_wrap2_tob.\ram_fifo.u_nx_fifo_ram_1r1w .fifo_ctrl._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_4_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[4], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_nx_credit_manager._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_5_1 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[5], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_nx_credit_manager._zyixc_port_1_1_osf);
ixc_assign osfasgn_1_6_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[6], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_nx_credit_manager._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_7_1 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[7], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_nx_credit_manager._zyixc_port_1_1_osf);
ixc_assign osfasgn_1_8_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[8], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_nx_credit_manager._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_9_1 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[9], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_nx_credit_manager._zyixc_port_1_1_osf);
ixc_assign osfasgn_1_10_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[10], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_nx_credit_manager._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_11_1 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[11], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_nx_credit_manager._zyixc_port_1_1_osf);
ixc_assign osfasgn_1_12_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[12], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_nx_credit_manager._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_13_1 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[13], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_nx_credit_manager._zyixc_port_1_1_osf);
ixc_assign osfasgn_1_14_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[14], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_nx_credit_manager._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_15_1 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[15], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_nx_credit_manager._zyixc_port_1_1_osf);
ixc_assign osfasgn_1_16_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[16], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_nx_credit_manager._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_17_1 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[17], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_nx_credit_manager._zyixc_port_1_1_osf);
ixc_assign osfasgn_1_18_0 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[18], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_nx_credit_manager._zyixc_port_1_0_osf);
ixc_assign osfasgn_1_19_1 ( xcva_top.IXC_GFIFO.OSF1.pvecEv[19], 
	kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_nx_credit_manager._zyixc_port_1_1_osf);
endmodule
