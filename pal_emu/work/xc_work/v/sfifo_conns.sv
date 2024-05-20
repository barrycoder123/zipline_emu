`timescale 1ps/1ps
module sfifo_conns;
sfifo_conns_0 sc0();
endmodule
module sfifo_conns_0;
wire [511:0] _ixt_0;
// quickturn name_map _ixt_0 tb_top.kme_tb_dut._zyGfifo_SiData
wire [511:0] _ixt_1;
// quickturn name_map _ixt_1 xcva_top.IXC_GFIFO.I.I.iData
ixc_sfifo_bind_512_2 _zyGfifo_bind_0 (
_ixt_0[511:0],
_ixt_1[511:0]);
wire [21:0] _ixt_2;
// quickturn name_map _ixt_2 tb_top.kme_tb_dut._zyGfifo_StId
wire [21:0] _ixt_3;
// quickturn name_map _ixt_3 xcva_top.IXC_GFIFO.I.I.tId
ixc_sfifo_bind_22_2 _zyGfifo_bind_1 (
_ixt_2[21:0],
_ixt_3[21:0]);
wire [511:0] _ixt_4;
// quickturn name_map _ixt_4 tb_top.kme_tb_dut._zyGfifo_SoData
wire [511:0] _ixt_5;
// quickturn name_map _ixt_5 xcva_top.IXC_GFIFO.I.I.oData
ixc_sfifo_bind_512_2 _zyGfifo_bind_2 (
_ixt_4[511:0],
_ixt_5[511:0]);
wire _ixt_6;
// quickturn name_map _ixt_6 tb_top.kme_tb_dut._zyGfifo_SoDataEn
wire _ixt_7;
// quickturn name_map _ixt_7 xcva_top.IXC_GFIFO.I.I.oDataEn
ixc_sfifo_bind_1_2 _zyGfifo_bind_3 (
_ixt_6,
_ixt_7);
wire [3:0] _ixt_8;
// quickturn name_map _ixt_8 tb_top.kme_tb_dut._zyGfifo_SoDataLen
wire [3:0] _ixt_9;
// quickturn name_map _ixt_9 xcva_top.IXC_GFIFO.I.I.oDataLen
ixc_sfifo_bind_4_2 _zyGfifo_bind_4 (
_ixt_8[3:0],
_ixt_9[3:0]);
endmodule
module ixc_sfifo_bind_1_2(L, L);
inout [0:0] L;
endmodule
module ixc_sfifo_bind_4_2(L, L);
inout [3:0] L;
endmodule
module ixc_sfifo_bind_22_2(L, L);
inout [21:0] L;
endmodule
module ixc_sfifo_bind_512_2(L, L);
inout [511:0] L;
endmodule
