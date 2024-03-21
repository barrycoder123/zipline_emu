
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_context_read_105 ( rdata);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input [104:0] rdata;
supply1 n1;
supply0 n2;
Q_NOT_TOUCH _zzqnthw ( .sig());
`ifdef CBV

reg [127:0] _zymem [0:0];
always @(n2 or rdata[104] or rdata[103] or rdata[102] or rdata[101]
 or rdata[100] or rdata[99] or rdata[98] or rdata[97] or rdata[96] or rdata[95] or rdata[94] or rdata[93]
 or rdata[92] or rdata[91] or rdata[90] or rdata[89] or rdata[88] or rdata[87] or rdata[86] or rdata[85]
 or rdata[84] or rdata[83] or rdata[82] or rdata[81] or rdata[80] or rdata[79] or rdata[78] or rdata[77]
 or rdata[76] or rdata[75] or rdata[74] or rdata[73] or rdata[72] or rdata[71] or rdata[70] or rdata[69]
 or rdata[68] or rdata[67] or rdata[66] or rdata[65] or rdata[64] or rdata[63] or rdata[62] or rdata[61]
 or rdata[60] or rdata[59] or rdata[58] or rdata[57] or rdata[56] or rdata[55] or rdata[54] or rdata[53]
 or rdata[52] or rdata[51] or rdata[50] or rdata[49] or rdata[48] or rdata[47] or rdata[46] or rdata[45]
 or rdata[44] or rdata[43] or rdata[42] or rdata[41] or rdata[40] or rdata[39] or rdata[38] or rdata[37]
 or rdata[36] or rdata[35] or rdata[34] or rdata[33] or rdata[32] or rdata[31] or rdata[30] or rdata[29]
 or rdata[28] or rdata[27] or rdata[26] or rdata[25] or rdata[24] or rdata[23] or rdata[22] or rdata[21]
 or rdata[20] or rdata[19] or rdata[18] or rdata[17] or rdata[16] or rdata[15] or rdata[14] or rdata[13]
 or rdata[12] or rdata[11] or rdata[10] or rdata[9] or rdata[8] or rdata[7] or rdata[6] or rdata[5]
 or rdata[4] or rdata[3] or rdata[2] or rdata[1] or rdata[0] or n1)
#0 begin
if (n1)
_zymem[{n2}] =
{n2, n2, n2, n2, n2,
 n2, n2, n2, n2, n2, n2, n2, n2,
 n2, n2, n2, n2, n2, n2, n2, n2,
 n2, n2, rdata[104], rdata[103], rdata[102], rdata[101], rdata[100], rdata[99],
 rdata[98], rdata[97], rdata[96], rdata[95], rdata[94], rdata[93], rdata[92], rdata[91],
 rdata[90], rdata[89], rdata[88], rdata[87], rdata[86], rdata[85], rdata[84], rdata[83],
 rdata[82], rdata[81], rdata[80], rdata[79], rdata[78], rdata[77], rdata[76], rdata[75],
 rdata[74], rdata[73], rdata[72], rdata[71], rdata[70], rdata[69], rdata[68], rdata[67],
 rdata[66], rdata[65], rdata[64], rdata[63], rdata[62], rdata[61], rdata[60], rdata[59],
 rdata[58], rdata[57], rdata[56], rdata[55], rdata[54], rdata[53], rdata[52], rdata[51],
 rdata[50], rdata[49], rdata[48], rdata[47], rdata[46], rdata[45], rdata[44], rdata[43],
 rdata[42], rdata[41], rdata[40], rdata[39], rdata[38], rdata[37], rdata[36], rdata[35],
 rdata[34], rdata[33], rdata[32], rdata[31], rdata[30], rdata[29], rdata[28], rdata[27],
 rdata[26], rdata[25], rdata[24], rdata[23], rdata[22], rdata[21], rdata[20], rdata[19],
 rdata[18], rdata[17], rdata[16], rdata[15], rdata[14], rdata[13], rdata[12], rdata[11],
 rdata[10], rdata[9], rdata[8], rdata[7], rdata[6], rdata[5], rdata[4], rdata[3],
 rdata[2], rdata[1], rdata[0]};
end
`else

MPW2X128 _zymem ( .A0(n2), .DI127(n2), .DI126(n2), .DI125(n2), .DI124(n2), .DI123(n2),
 .DI122(n2), .DI121(n2), .DI120(n2), .DI119(n2), .DI118(n2), .DI117(n2), .DI116(n2), .DI115(n2),
 .DI114(n2), .DI113(n2), .DI112(n2), .DI111(n2), .DI110(n2), .DI109(n2), .DI108(n2), .DI107(n2),
 .DI106(n2), .DI105(n2), .DI104(rdata[104]), .DI103(rdata[103]), .DI102(rdata[102]), .DI101(rdata[101]), .DI100(rdata[100]), .DI99(rdata[99]),
 .DI98(rdata[98]), .DI97(rdata[97]), .DI96(rdata[96]), .DI95(rdata[95]), .DI94(rdata[94]), .DI93(rdata[93]), .DI92(rdata[92]), .DI91(rdata[91]),
 .DI90(rdata[90]), .DI89(rdata[89]), .DI88(rdata[88]), .DI87(rdata[87]), .DI86(rdata[86]), .DI85(rdata[85]), .DI84(rdata[84]), .DI83(rdata[83]),
 .DI82(rdata[82]), .DI81(rdata[81]), .DI80(rdata[80]), .DI79(rdata[79]), .DI78(rdata[78]), .DI77(rdata[77]), .DI76(rdata[76]), .DI75(rdata[75]),
 .DI74(rdata[74]), .DI73(rdata[73]), .DI72(rdata[72]), .DI71(rdata[71]), .DI70(rdata[70]), .DI69(rdata[69]), .DI68(rdata[68]), .DI67(rdata[67]),
 .DI66(rdata[66]), .DI65(rdata[65]), .DI64(rdata[64]), .DI63(rdata[63]), .DI62(rdata[62]), .DI61(rdata[61]), .DI60(rdata[60]), .DI59(rdata[59]),
 .DI58(rdata[58]), .DI57(rdata[57]), .DI56(rdata[56]), .DI55(rdata[55]), .DI54(rdata[54]), .DI53(rdata[53]), .DI52(rdata[52]), .DI51(rdata[51]),
 .DI50(rdata[50]), .DI49(rdata[49]), .DI48(rdata[48]), .DI47(rdata[47]), .DI46(rdata[46]), .DI45(rdata[45]), .DI44(rdata[44]), .DI43(rdata[43]),
 .DI42(rdata[42]), .DI41(rdata[41]), .DI40(rdata[40]), .DI39(rdata[39]), .DI38(rdata[38]), .DI37(rdata[37]), .DI36(rdata[36]), .DI35(rdata[35]),
 .DI34(rdata[34]), .DI33(rdata[33]), .DI32(rdata[32]), .DI31(rdata[31]), .DI30(rdata[30]), .DI29(rdata[29]), .DI28(rdata[28]), .DI27(rdata[27]),
 .DI26(rdata[26]), .DI25(rdata[25]), .DI24(rdata[24]), .DI23(rdata[23]), .DI22(rdata[22]), .DI21(rdata[21]), .DI20(rdata[20]), .DI19(rdata[19]),
 .DI18(rdata[18]), .DI17(rdata[17]), .DI16(rdata[16]), .DI15(rdata[15]), .DI14(rdata[14]), .DI13(rdata[13]), .DI12(rdata[12]), .DI11(rdata[11]),
 .DI10(rdata[10]), .DI9(rdata[9]), .DI8(rdata[8]), .DI7(rdata[7]), .DI6(rdata[6]), .DI5(rdata[5]), .DI4(rdata[4]), .DI3(rdata[3]),
 .DI2(rdata[2]), .DI1(rdata[1]), .DI0(rdata[0]), .WE(n1), .SYNC_IN(n2), .SYNC_OUT( ));
// pragma CVASTRPROP INSTANCE "_zymem" HDL_MEMORY_DECL "1 127 0 0 0"
`endif
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "_zymem 1 127 0 0 0"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "1"
// pragma CVASTRPROP MODULE HDLICE CVAIUSNAMES_FORGEN_LABEL "genblk1"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_context_read"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
`ifdef CBV
`else
`ifdef MPW2X128_MPR2X128
`else
module MPW2X128( A0, DI127, DI126, DI125, DI124, DI123, DI122,
 DI121, DI120, DI119, DI118, DI117, DI116, DI115, DI114,
 DI113, DI112, DI111, DI110, DI109, DI108, DI107, DI106,
 DI105, DI104, DI103, DI102, DI101, DI100, DI99, DI98,
 DI97, DI96, DI95, DI94, DI93, DI92, DI91, DI90,
 DI89, DI88, DI87, DI86, DI85, DI84, DI83, DI82,
 DI81, DI80, DI79, DI78, DI77, DI76, DI75, DI74,
 DI73, DI72, DI71, DI70, DI69, DI68, DI67, DI66,
 DI65, DI64, DI63, DI62, DI61, DI60, DI59, DI58,
 DI57, DI56, DI55, DI54, DI53, DI52, DI51, DI50,
 DI49, DI48, DI47, DI46, DI45, DI44, DI43, DI42,
 DI41, DI40, DI39, DI38, DI37, DI36, DI35, DI34,
 DI33, DI32, DI31, DI30, DI29, DI28, DI27, DI26,
 DI25, DI24, DI23, DI22, DI21, DI20, DI19, DI18,
 DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10,
 DI9, DI8, DI7, DI6, DI5, DI4, DI3, DI2,
 DI1, DI0, WE, SYNC_IN, SYNC_OUT);
input  A0, DI127, DI126, DI125, DI124, DI123, DI122, DI121,
 DI120, DI119, DI118, DI117, DI116, DI115, DI114, DI113, DI112, DI111,
 DI110, DI109, DI108, DI107, DI106, DI105, DI104, DI103, DI102, DI101,
 DI100, DI99, DI98, DI97, DI96, DI95, DI94, DI93, DI92, DI91,
 DI90, DI89, DI88, DI87, DI86, DI85, DI84, DI83, DI82, DI81,
 DI80, DI79, DI78, DI77, DI76, DI75, DI74, DI73, DI72, DI71,
 DI70, DI69, DI68, DI67, DI66, DI65, DI64, DI63, DI62, DI61,
 DI60, DI59, DI58, DI57, DI56, DI55, DI54, DI53, DI52, DI51,
 DI50, DI49, DI48, DI47, DI46, DI45, DI44, DI43, DI42, DI41,
 DI40, DI39, DI38, DI37, DI36, DI35, DI34, DI33, DI32, DI31,
 DI30, DI29, DI28, DI27, DI26, DI25, DI24, DI23, DI22, DI21,
 DI20, DI19, DI18, DI17, DI16, DI15, DI14, DI13, DI12, DI11,
 DI10, DI9, DI8, DI7, DI6, DI5, DI4, DI3, DI2, DI1,
 DI0, WE, SYNC_IN;
output  SYNC_OUT;
endmodule
`ifdef _MPR2X128_
`else
module MPR2X128( A0, SYNC_IN, DO127, DO126, DO125, DO124, DO123,
 DO122, DO121, DO120, DO119, DO118, DO117, DO116, DO115,
 DO114, DO113, DO112, DO111, DO110, DO109, DO108, DO107,
 DO106, DO105, DO104, DO103, DO102, DO101, DO100, DO99,
 DO98, DO97, DO96, DO95, DO94, DO93, DO92, DO91,
 DO90, DO89, DO88, DO87, DO86, DO85, DO84, DO83,
 DO82, DO81, DO80, DO79, DO78, DO77, DO76, DO75,
 DO74, DO73, DO72, DO71, DO70, DO69, DO68, DO67,
 DO66, DO65, DO64, DO63, DO62, DO61, DO60, DO59,
 DO58, DO57, DO56, DO55, DO54, DO53, DO52, DO51,
 DO50, DO49, DO48, DO47, DO46, DO45, DO44, DO43,
 DO42, DO41, DO40, DO39, DO38, DO37, DO36, DO35,
 DO34, DO33, DO32, DO31, DO30, DO29, DO28, DO27,
 DO26, DO25, DO24, DO23, DO22, DO21, DO20, DO19,
 DO18, DO17, DO16, DO15, DO14, DO13, DO12, DO11,
 DO10, DO9, DO8, DO7, DO6, DO5, DO4, DO3,
 DO2, DO1, DO0, SYNC_OUT);
input  A0, SYNC_IN;
output  DO127, DO126, DO125, DO124, DO123, DO122, DO121, DO120,
 DO119, DO118, DO117, DO116, DO115, DO114, DO113, DO112, DO111, DO110,
 DO109, DO108, DO107, DO106, DO105, DO104, DO103, DO102, DO101, DO100,
 DO99, DO98, DO97, DO96, DO95, DO94, DO93, DO92, DO91, DO90,
 DO89, DO88, DO87, DO86, DO85, DO84, DO83, DO82, DO81, DO80,
 DO79, DO78, DO77, DO76, DO75, DO74, DO73, DO72, DO71, DO70,
 DO69, DO68, DO67, DO66, DO65, DO64, DO63, DO62, DO61, DO60,
 DO59, DO58, DO57, DO56, DO55, DO54, DO53, DO52, DO51, DO50,
 DO49, DO48, DO47, DO46, DO45, DO44, DO43, DO42, DO41, DO40,
 DO39, DO38, DO37, DO36, DO35, DO34, DO33, DO32, DO31, DO30,
 DO29, DO28, DO27, DO26, DO25, DO24, DO23, DO22, DO21, DO20,
 DO19, DO18, DO17, DO16, DO15, DO14, DO13, DO12, DO11, DO10,
 DO9, DO8, DO7, DO6, DO5, DO4, DO3, DO2, DO1, DO0,
 SYNC_OUT;
endmodule
`define _MPR2X128_
`endif
`define MPW2X128_MPR2X128
`endif
`endif
