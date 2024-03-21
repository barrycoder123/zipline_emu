
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module IXC_OSF_MB_20 ( pvecEv, dirty);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input [19:0] pvecEv;
output dirty;
wire [0:0] wsel;
supply0 n1;
supply1 n2;
Q_BUF U0 ( .A(wsel[0]), .Z(dirty));
Q_NOT_TOUCH _zzqnthw ( .sig());
Q_OR02 U2 ( .A0(n4), .A1(n3), .Z(wsel[0]));
Q_OR03 U3 ( .A0(n7), .A1(n6), .A2(n5), .Z(n3));
Q_OR03 U4 ( .A0(n10), .A1(n9), .A2(n8), .Z(n4));
Q_OR03 U5 ( .A0(pvecEv[1]), .A1(pvecEv[0]), .A2(n11), .Z(n5));
Q_OR03 U6 ( .A0(pvecEv[4]), .A1(pvecEv[3]), .A2(pvecEv[2]), .Z(n6));
Q_OR03 U7 ( .A0(pvecEv[7]), .A1(pvecEv[6]), .A2(pvecEv[5]), .Z(n7));
Q_OR03 U8 ( .A0(pvecEv[10]), .A1(pvecEv[9]), .A2(pvecEv[8]), .Z(n8));
Q_OR03 U9 ( .A0(pvecEv[13]), .A1(pvecEv[12]), .A2(pvecEv[11]), .Z(n9));
Q_OR03 U10 ( .A0(pvecEv[16]), .A1(pvecEv[15]), .A2(pvecEv[14]), .Z(n10));
Q_OR03 U11 ( .A0(pvecEv[19]), .A1(pvecEv[18]), .A2(pvecEv[17]), .Z(n11));
`ifdef CBV

reg [63:0] _zyevMem [0:1];
always @(n1 or wsel[0] or n2 or pvecEv[19] or pvecEv[18]
 or pvecEv[17] or pvecEv[16] or pvecEv[15] or pvecEv[14] or pvecEv[13] or pvecEv[12] or pvecEv[11] or pvecEv[10]
 or pvecEv[9] or pvecEv[8] or pvecEv[7] or pvecEv[6] or pvecEv[5] or pvecEv[4] or pvecEv[3] or pvecEv[2]
 or pvecEv[1] or pvecEv[0])
#0 begin
if (n2)
_zyevMem[{n1}] =
{n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, wsel[0]};
if (wsel[0])
_zyevMem[{n2}] =
{n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, pvecEv[19],
 pvecEv[18], pvecEv[17], pvecEv[16], pvecEv[15], pvecEv[14], pvecEv[13], pvecEv[12], pvecEv[11],
 pvecEv[10], pvecEv[9], pvecEv[8], pvecEv[7], pvecEv[6], pvecEv[5], pvecEv[4], pvecEv[3],
 pvecEv[2], pvecEv[1], pvecEv[0]};
end
`else

MPW2X64 _zyevMem ( .A0(n1), .DI63(n1), .DI62(n1), .DI61(n1), .DI60(n1), .DI59(n1),
 .DI58(n1), .DI57(n1), .DI56(n1), .DI55(n1), .DI54(n1), .DI53(n1), .DI52(n1), .DI51(n1),
 .DI50(n1), .DI49(n1), .DI48(n1), .DI47(n1), .DI46(n1), .DI45(n1), .DI44(n1), .DI43(n1),
 .DI42(n1), .DI41(n1), .DI40(n1), .DI39(n1), .DI38(n1), .DI37(n1), .DI36(n1), .DI35(n1),
 .DI34(n1), .DI33(n1), .DI32(n1), .DI31(n1), .DI30(n1), .DI29(n1), .DI28(n1), .DI27(n1),
 .DI26(n1), .DI25(n1), .DI24(n1), .DI23(n1), .DI22(n1), .DI21(n1), .DI20(n1), .DI19(n1),
 .DI18(n1), .DI17(n1), .DI16(n1), .DI15(n1), .DI14(n1), .DI13(n1), .DI12(n1), .DI11(n1),
 .DI10(n1), .DI9(n1), .DI8(n1), .DI7(n1), .DI6(n1), .DI5(n1), .DI4(n1), .DI3(n1),
 .DI2(n1), .DI1(n1), .DI0(wsel[0]), .WE(n2), .SYNC_IN(n1), .SYNC_OUT(n13));
// pragma CVASTRPROP INSTANCE "_zyevMem" HDL_MEMORY_DECL "1 63 0 0 1"
MPW2X64 U13 ( .A0(n2), .DI63(n1), .DI62(n1), .DI61(n1), .DI60(n1), .DI59(n1),
 .DI58(n1), .DI57(n1), .DI56(n1), .DI55(n1), .DI54(n1), .DI53(n1), .DI52(n1), .DI51(n1),
 .DI50(n1), .DI49(n1), .DI48(n1), .DI47(n1), .DI46(n1), .DI45(n1), .DI44(n1), .DI43(n1),
 .DI42(n1), .DI41(n1), .DI40(n1), .DI39(n1), .DI38(n1), .DI37(n1), .DI36(n1), .DI35(n1),
 .DI34(n1), .DI33(n1), .DI32(n1), .DI31(n1), .DI30(n1), .DI29(n1), .DI28(n1), .DI27(n1),
 .DI26(n1), .DI25(n1), .DI24(n1), .DI23(n1), .DI22(n1), .DI21(n1), .DI20(n1), .DI19(pvecEv[19]),
 .DI18(pvecEv[18]), .DI17(pvecEv[17]), .DI16(pvecEv[16]), .DI15(pvecEv[15]), .DI14(pvecEv[14]), .DI13(pvecEv[13]), .DI12(pvecEv[12]), .DI11(pvecEv[11]),
 .DI10(pvecEv[10]), .DI9(pvecEv[9]), .DI8(pvecEv[8]), .DI7(pvecEv[7]), .DI6(pvecEv[6]), .DI5(pvecEv[5]), .DI4(pvecEv[4]), .DI3(pvecEv[3]),
 .DI2(pvecEv[2]), .DI1(pvecEv[1]), .DI0(pvecEv[0]), .WE(wsel[0]), .SYNC_IN(n13), .SYNC_OUT( ));
`endif
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "_zyevMem 1 63 0 0 1"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "1"
// pragma CVASTRPROP MODULE HDLICE CVAIUSNAMES_FORGEN_LABEL "genblk1"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "IXC_OSF_MB"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "ixcom_temp_library"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
`ifdef CBV
`else
`ifdef MPW2X64_MPR2X64
`else
module MPW2X64( A0, DI63, DI62, DI61, DI60, DI59, DI58,
 DI57, DI56, DI55, DI54, DI53, DI52, DI51, DI50,
 DI49, DI48, DI47, DI46, DI45, DI44, DI43, DI42,
 DI41, DI40, DI39, DI38, DI37, DI36, DI35, DI34,
 DI33, DI32, DI31, DI30, DI29, DI28, DI27, DI26,
 DI25, DI24, DI23, DI22, DI21, DI20, DI19, DI18,
 DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10,
 DI9, DI8, DI7, DI6, DI5, DI4, DI3, DI2,
 DI1, DI0, WE, SYNC_IN, SYNC_OUT);
input  A0, DI63, DI62, DI61, DI60, DI59, DI58, DI57,
 DI56, DI55, DI54, DI53, DI52, DI51, DI50, DI49, DI48, DI47,
 DI46, DI45, DI44, DI43, DI42, DI41, DI40, DI39, DI38, DI37,
 DI36, DI35, DI34, DI33, DI32, DI31, DI30, DI29, DI28, DI27,
 DI26, DI25, DI24, DI23, DI22, DI21, DI20, DI19, DI18, DI17,
 DI16, DI15, DI14, DI13, DI12, DI11, DI10, DI9, DI8, DI7,
 DI6, DI5, DI4, DI3, DI2, DI1, DI0, WE, SYNC_IN;
output  SYNC_OUT;
endmodule
`ifdef _MPR2X64_
`else
module MPR2X64( A0, SYNC_IN, DO63, DO62, DO61, DO60, DO59,
 DO58, DO57, DO56, DO55, DO54, DO53, DO52, DO51,
 DO50, DO49, DO48, DO47, DO46, DO45, DO44, DO43,
 DO42, DO41, DO40, DO39, DO38, DO37, DO36, DO35,
 DO34, DO33, DO32, DO31, DO30, DO29, DO28, DO27,
 DO26, DO25, DO24, DO23, DO22, DO21, DO20, DO19,
 DO18, DO17, DO16, DO15, DO14, DO13, DO12, DO11,
 DO10, DO9, DO8, DO7, DO6, DO5, DO4, DO3,
 DO2, DO1, DO0, SYNC_OUT);
input  A0, SYNC_IN;
output  DO63, DO62, DO61, DO60, DO59, DO58, DO57, DO56,
 DO55, DO54, DO53, DO52, DO51, DO50, DO49, DO48, DO47, DO46,
 DO45, DO44, DO43, DO42, DO41, DO40, DO39, DO38, DO37, DO36,
 DO35, DO34, DO33, DO32, DO31, DO30, DO29, DO28, DO27, DO26,
 DO25, DO24, DO23, DO22, DO21, DO20, DO19, DO18, DO17, DO16,
 DO15, DO14, DO13, DO12, DO11, DO10, DO9, DO8, DO7, DO6,
 DO5, DO4, DO3, DO2, DO1, DO0, SYNC_OUT;
endmodule
`define _MPR2X64_
`endif
`define MPW2X64_MPR2X64
`endif
`endif
