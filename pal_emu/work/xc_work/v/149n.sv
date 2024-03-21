// xc_work/v/149n.sv
// /home/ibarry/Project-Zipline-master/dv/KME/run/kme_tb.sv:0
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ps/1ps
module _ixc_isc;
// external : kme_tb.apb_xactor._zyixc_port_0_0_isf (resolved )  (var)  
// external : IXC_GFIFO.ISF.pvec (resolved )  (var)  
// external : kme_tb.apb_xactor._zyixc_port_0_0_osf (resolved )  (var)  
// external : IXC_GFIFO.OSF.pvecEv (resolved )  (var)  
// external : kme_tb.apb_xactor._zyixc_port_0_1_isf (resolved )  (var)  
// external : kme_tb.apb_xactor._zyixc_port_0_1_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_core.kme_is_core.txc_axi_intf.u_cr_fifo_wrap2.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf (resolved )  (var)  
// external : IXC_GFIFO.OSF1.pvecEv (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_core.kme_is_core.cceip_encrypt_kop_fifo.ram_fifo.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_core.kme_is_core.cceip_validate_kop_fifo.ram_fifo.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_core.kme_is_core.cceip0_key_tlv_rsm.u_cr_tlvp2_rsm.u_cr_fifo_wrap2_tob.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_nx_credit_manager._zyixc_port_1_0_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_nx_credit_manager._zyixc_port_1_1_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_nx_credit_manager._zyixc_port_1_0_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_nx_credit_manager._zyixc_port_1_1_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_nx_credit_manager._zyixc_port_1_0_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_nx_credit_manager._zyixc_port_1_1_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_nx_credit_manager._zyixc_port_1_0_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_nx_credit_manager._zyixc_port_1_1_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_nx_credit_manager._zyixc_port_1_0_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_nx_credit_manager._zyixc_port_1_1_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_nx_credit_manager._zyixc_port_1_0_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_nx_credit_manager._zyixc_port_1_1_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_nx_credit_manager._zyixc_port_1_0_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_nx_credit_manager._zyixc_port_1_1_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_nx_credit_manager._zyixc_port_1_0_osf (resolved )  (var)  
// external : kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_nx_credit_manager._zyixc_port_1_1_osf (resolved )  (var)  
wire  assertion_coverage_on;
reg assertion_global_off_s = 0;
reg assertion_global_on_s = 1;
reg assertion_global_off_sD = 0;
reg assertion_global_on_sD = 1;
reg assertion_global_off_ev;
reg assertion_global_on_ev;
// synopsys translate_off
wire  assertion_global_off_p;
wire  assertion_global_on_p;
reg assertion_global_deposit_on;
reg assertion_global_copy_t = 1;
reg _zy_svaTrigger;
reg _zy_svaKill;
reg _zy_svaOn;
// synopsys translate_on
wire  assertUCF;
int _zy_ixcg_mdh_L0_0;
int _zy_ixcg_mdh_L0_1;
// synopsys translate_off
/* ++ ixc_assign isfasgn_0_0_0 (kme_tb.apb_xactor._zyixc_port_0_0_isf, IXC_GFIFO.ISF.pvec[0]); */
assign kme_tb.apb_xactor._zyixc_port_0_0_isf = IXC_GFIFO.ISF.pvec[0];
// -- ixc_assign 

/* ++ ixc_assign osfasgn_0_0_0 (IXC_GFIFO.OSF.pvecEv[0], kme_tb.apb_xactor._zyixc_port_0_0_osf); */
assign IXC_GFIFO.OSF.pvecEv[0] = kme_tb.apb_xactor._zyixc_port_0_0_osf;
// -- ixc_assign 

/* ++ ixc_assign isfasgn_0_1_1 (kme_tb.apb_xactor._zyixc_port_0_1_isf, IXC_GFIFO.ISF.pvec[1]); */
assign kme_tb.apb_xactor._zyixc_port_0_1_isf = IXC_GFIFO.ISF.pvec[1];
// -- ixc_assign 

/* ++ ixc_assign osfasgn_0_1_1 (IXC_GFIFO.OSF.pvecEv[1], kme_tb.apb_xactor._zyixc_port_0_1_osf); */
assign IXC_GFIFO.OSF.pvecEv[1] = kme_tb.apb_xactor._zyixc_port_0_1_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_0_0 (IXC_GFIFO.OSF1.pvecEv[0], kme_tb.kme_dut.u_cr_kme_core.kme_is_core.txc_axi_intf.u_cr_fifo_wrap2.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[0] = kme_tb.kme_dut.u_cr_kme_core.kme_is_core.txc_axi_intf.u_cr_fifo_wrap2.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_1_0 (IXC_GFIFO.OSF1.pvecEv[1], kme_tb.kme_dut.u_cr_kme_core.kme_is_core.cceip_encrypt_kop_fifo.ram_fifo.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[1] = kme_tb.kme_dut.u_cr_kme_core.kme_is_core.cceip_encrypt_kop_fifo.ram_fifo.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_2_0 (IXC_GFIFO.OSF1.pvecEv[2], kme_tb.kme_dut.u_cr_kme_core.kme_is_core.cceip_validate_kop_fifo.ram_fifo.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[2] = kme_tb.kme_dut.u_cr_kme_core.kme_is_core.cceip_validate_kop_fifo.ram_fifo.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_3_0 (IXC_GFIFO.OSF1.pvecEv[3], kme_tb.kme_dut.u_cr_kme_core.kme_is_core.cceip0_key_tlv_rsm.u_cr_tlvp2_rsm.u_cr_fifo_wrap2_tob.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[3] = kme_tb.kme_dut.u_cr_kme_core.kme_is_core.cceip0_key_tlv_rsm.u_cr_tlvp2_rsm.u_cr_fifo_wrap2_tob.ram_fifo.u_nx_fifo_ram_1r1w.fifo_ctrl._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_4_0 (IXC_GFIFO.OSF1.pvecEv[4], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_nx_credit_manager._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[4] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_nx_credit_manager._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_5_1 (IXC_GFIFO.OSF1.pvecEv[5], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_nx_credit_manager._zyixc_port_1_1_osf); */
assign IXC_GFIFO.OSF1.pvecEv[5] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip0.u_nx_credit_manager._zyixc_port_1_1_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_6_0 (IXC_GFIFO.OSF1.pvecEv[6], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_nx_credit_manager._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[6] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_nx_credit_manager._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_7_1 (IXC_GFIFO.OSF1.pvecEv[7], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_nx_credit_manager._zyixc_port_1_1_osf); */
assign IXC_GFIFO.OSF1.pvecEv[7] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip1.u_nx_credit_manager._zyixc_port_1_1_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_8_0 (IXC_GFIFO.OSF1.pvecEv[8], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_nx_credit_manager._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[8] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_nx_credit_manager._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_9_1 (IXC_GFIFO.OSF1.pvecEv[9], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_nx_credit_manager._zyixc_port_1_1_osf); */
assign IXC_GFIFO.OSF1.pvecEv[9] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip2.u_nx_credit_manager._zyixc_port_1_1_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_10_0 (IXC_GFIFO.OSF1.pvecEv[10], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_nx_credit_manager._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[10] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_nx_credit_manager._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_11_1 (IXC_GFIFO.OSF1.pvecEv[11], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_nx_credit_manager._zyixc_port_1_1_osf); */
assign IXC_GFIFO.OSF1.pvecEv[11] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cceip3.u_nx_credit_manager._zyixc_port_1_1_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_12_0 (IXC_GFIFO.OSF1.pvecEv[12], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_nx_credit_manager._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[12] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_nx_credit_manager._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_13_1 (IXC_GFIFO.OSF1.pvecEv[13], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_nx_credit_manager._zyixc_port_1_1_osf); */
assign IXC_GFIFO.OSF1.pvecEv[13] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip0.u_nx_credit_manager._zyixc_port_1_1_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_14_0 (IXC_GFIFO.OSF1.pvecEv[14], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_nx_credit_manager._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[14] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_nx_credit_manager._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_15_1 (IXC_GFIFO.OSF1.pvecEv[15], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_nx_credit_manager._zyixc_port_1_1_osf); */
assign IXC_GFIFO.OSF1.pvecEv[15] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip1.u_nx_credit_manager._zyixc_port_1_1_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_16_0 (IXC_GFIFO.OSF1.pvecEv[16], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_nx_credit_manager._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[16] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_nx_credit_manager._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_17_1 (IXC_GFIFO.OSF1.pvecEv[17], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_nx_credit_manager._zyixc_port_1_1_osf); */
assign IXC_GFIFO.OSF1.pvecEv[17] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip2.u_nx_credit_manager._zyixc_port_1_1_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_18_0 (IXC_GFIFO.OSF1.pvecEv[18], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_nx_credit_manager._zyixc_port_1_0_osf); */
assign IXC_GFIFO.OSF1.pvecEv[18] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_nx_credit_manager._zyixc_port_1_0_osf;
// -- ixc_assign 

/* ++ ixc_assign osfasgn_1_19_1 (IXC_GFIFO.OSF1.pvecEv[19], kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_nx_credit_manager._zyixc_port_1_1_osf); */
assign IXC_GFIFO.OSF1.pvecEv[19] = kme_tb.kme_dut.u_cr_kme_regfile.u_nx_interface_monitor_cddip3.u_nx_credit_manager._zyixc_port_1_1_osf;
// -- ixc_assign 

// synopsys translate_on
initial 
 begin
// synopsys translate_off
  _zy_ixcg_mdh_L0_0 = $marg_deposit_handle(assertion_global_off_s);
  _zy_ixcg_mdh_L0_1 = $marg_deposit_handle(assertion_global_on_s);
// synopsys translate_on
 end
// synopsys translate_off
always_comb 
 begin:_rcM_1
  _zy_svaKill = 1'b1;
  _zy_svaOn = 1'b1;
  if ((_zy_svaOn ^ _zy_svaKill))
   begin
    assertion_global_deposit_on = 1'b0;
   end
  else
   begin
    assertion_global_deposit_on = 1'b1;
   end
  _zy_svaTrigger = (_zy_svaTrigger === 1'b0);
 end
always 
 @(_zy_svaTrigger)
  begin:_rcM_2
   assertion_global_off_s <= _zy_svaKill;
   assertion_global_on_s <= _zy_svaOn;
   assertion_global_copy_t = ( ~assertion_global_copy_t );
  end
initial 
 begin
 end
initial 
 begin
 end
always 
 @(assertion_global_off_s)
  xc_top.marg_deposit_ua(_zy_ixcg_mdh_L0_0,assertion_global_off_s);
always 
 @(assertion_global_on_s)
  xc_top.marg_deposit_ua(_zy_ixcg_mdh_L0_1,assertion_global_on_s);
// synopsys translate_on
endmodule

