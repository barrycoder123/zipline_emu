`timescale 1ps/1ps
module gfifo_conns;
gfifo_conns_0 gc0();
endmodule
module gfifo_conns_0;
wire ci_0_0, co_0_0;
// quickturn name_map ci_0_0 tb_top.kme_tb_dut._zyGfifo_mod2_dflt_ci
// quickturn name_map co_0_0 tb_top.kme_tb_dut._zyGfifo_mod2_dflt_co
wire GFLock_0;
// quickturn name_map GFLock_0 xc_top.GFLock2
wire GFreq_0;
// quickturn name_map GFreq_0 xcva_top.IXC_GFIFO.O.O.GFreq
ixc_gfifo_cico #(1) _zyGfifo_cico_0 (
{
ci_0_0
},
{
co_0_0
},
GFLock_0, GFreq_0);
wire hasMultiLevelGFIFO_0;
// quickturn name_map hasMultiLevelGFIFO_0 xcva_top.IXC_GFIFO.O.O.hasMultiLevelGFIFO
assign hasMultiLevelGFIFO_0 = 1'b0;
wire [19:0] _ixt_10;
// quickturn name_map _ixt_10 tb_top.kme_tb_dut._zyGfifo_SGFcbid
wire [19:0] _ixt_11;
// quickturn name_map _ixt_11 xcva_top.IXC_GFIFO.O.O.GFcbid
ixc_gfifo_bind_20_2 _zyGfifo_bind_5 (
_ixt_10[19:0],
_ixt_11[19:0]);
wire [11:0] _ixt_12;
// quickturn name_map _ixt_12 tb_top.kme_tb_dut._zyGfifo_SGFlen
wire [11:0] _ixt_13;
// quickturn name_map _ixt_13 xcva_top.IXC_GFIFO.O.O.GFlen
ixc_gfifo_bind_12_2 _zyGfifo_bind_6 (
_ixt_12[11:0],
_ixt_13[11:0]);
wire [511:0] _ixt_14;
// quickturn name_map _ixt_14 tb_top.kme_tb_dut._zyGfifo_SGFidata
wire [511:0] _ixt_15;
// quickturn name_map _ixt_15 xcva_top.IXC_GFIFO.O.O.GFidata
ixc_gfifo_bind_512_2 _zyGfifo_bind_7 (
_ixt_14[511:0],
_ixt_15[511:0]);
endmodule
module ixc_gfifo_bind_12_2(L, L);
inout [11:0] L;
endmodule
module ixc_gfifo_bind_20_2(L, L);
inout [19:0] L;
endmodule
module ixc_gfifo_bind_512_2(L, L);
inout [511:0] L;
endmodule
