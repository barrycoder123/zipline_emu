
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module sfifo_conns_0 ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
ixc_sfifo_bind_512_2 _zyGfifo_bind_0 ( 
	tb_top.kme_tb_dut._zyGfifo_SiData[511:0], 
	xcva_top.IXC_GFIFO.I.I.iData[511:0]);
ixc_sfifo_bind_22_2 _zyGfifo_bind_1 ( tb_top.kme_tb_dut._zyGfifo_StId[21:0], 
	xcva_top.IXC_GFIFO.I.I.tId[21:0]);
ixc_sfifo_bind_512_2 _zyGfifo_bind_2 ( 
	tb_top.kme_tb_dut._zyGfifo_SoData[511:0], 
	xcva_top.IXC_GFIFO.I.I.oData[511:0]);
ixc_sfifo_bind_1_2 _zyGfifo_bind_3 ( tb_top.kme_tb_dut._zyGfifo_SoDataEn, 
	xcva_top.IXC_GFIFO.I.I.oDataEn);
ixc_sfifo_bind_4_2 _zyGfifo_bind_4 ( 
	tb_top.kme_tb_dut._zyGfifo_SoDataLen[3:0], 
	xcva_top.IXC_GFIFO.I.I.oDataLen[3:0]);
endmodule
