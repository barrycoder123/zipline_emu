
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module gfifo_conns_0 ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
assign xcva_top.IXC_GFIFO.O.O.hasMultiLevelGFIFO = 1'b0;
ixc_gfifo_cico_1 _zyGfifo_cico_0 ( tb_top.kme_tb_dut._zyGfifo_mod2_dflt_ci, 
	tb_top.kme_tb_dut._zyGfifo_mod2_dflt_co, xc_top.GFLock2, 
	xcva_top.IXC_GFIFO.O.O.GFreq);
ixc_gfifo_bind_20_2 _zyGfifo_bind_5 ( 
	tb_top.kme_tb_dut._zyGfifo_SGFcbid[19:0], 
	xcva_top.IXC_GFIFO.O.O.GFcbid[19:0]);
ixc_gfifo_bind_12_2 _zyGfifo_bind_6 ( 
	tb_top.kme_tb_dut._zyGfifo_SGFlen[11:0], 
	xcva_top.IXC_GFIFO.O.O.GFlen[11:0]);
ixc_gfifo_bind_512_2 _zyGfifo_bind_7 ( 
	tb_top.kme_tb_dut._zyGfifo_SGFidata[511:0], 
	xcva_top.IXC_GFIFO.O.O.GFidata[511:0]);
endmodule
