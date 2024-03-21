
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_context_read_6 ( rdata);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input [5:0] rdata;
supply1 n1;
supply0 n2;
Q_NOT_TOUCH _zzqnthw ( .sig());
`ifdef CBV

reg [31:0] _zymem [0:0];
always @(n2 or rdata[5] or rdata[4] or rdata[3] or rdata[2]
 or rdata[1] or rdata[0] or n1)
#0 begin
if (n1)
_zymem[{n2}] =
{n2, n2, n2, n2, n2,
 n2, n2, n2, n2, n2, n2, n2, n2,
 n2, n2, n2, n2, n2, n2, n2, n2,
 n2, n2, n2, n2, n2, rdata[5], rdata[4], rdata[3],
 rdata[2], rdata[1], rdata[0]};
end
`else

MPW2X32 _zymem ( .A0(n2), .DI31(n2), .DI30(n2), .DI29(n2), .DI28(n2), .DI27(n2),
 .DI26(n2), .DI25(n2), .DI24(n2), .DI23(n2), .DI22(n2), .DI21(n2), .DI20(n2), .DI19(n2),
 .DI18(n2), .DI17(n2), .DI16(n2), .DI15(n2), .DI14(n2), .DI13(n2), .DI12(n2), .DI11(n2),
 .DI10(n2), .DI9(n2), .DI8(n2), .DI7(n2), .DI6(n2), .DI5(rdata[5]), .DI4(rdata[4]), .DI3(rdata[3]),
 .DI2(rdata[2]), .DI1(rdata[1]), .DI0(rdata[0]), .WE(n1), .SYNC_IN(n2), .SYNC_OUT( ));
// pragma CVASTRPROP INSTANCE "_zymem" HDL_MEMORY_DECL "1 31 0 0 0"
`endif
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "_zymem 1 31 0 0 0"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "1"
// pragma CVASTRPROP MODULE HDLICE CVAIUSNAMES_FORGEN_LABEL "genblk1"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_context_read"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
`ifdef CBV
`else
`ifdef MPW2X32_MPR2X32
`else
module MPW2X32( A0, DI31, DI30, DI29, DI28, DI27, DI26,
 DI25, DI24, DI23, DI22, DI21, DI20, DI19, DI18,
 DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10,
 DI9, DI8, DI7, DI6, DI5, DI4, DI3, DI2,
 DI1, DI0, WE, SYNC_IN, SYNC_OUT);
input  A0, DI31, DI30, DI29, DI28, DI27, DI26, DI25,
 DI24, DI23, DI22, DI21, DI20, DI19, DI18, DI17, DI16, DI15,
 DI14, DI13, DI12, DI11, DI10, DI9, DI8, DI7, DI6, DI5,
 DI4, DI3, DI2, DI1, DI0, WE, SYNC_IN;
output  SYNC_OUT;
endmodule
`ifdef _MPR2X32_
`else
module MPR2X32( A0, SYNC_IN, DO31, DO30, DO29, DO28, DO27,
 DO26, DO25, DO24, DO23, DO22, DO21, DO20, DO19,
 DO18, DO17, DO16, DO15, DO14, DO13, DO12, DO11,
 DO10, DO9, DO8, DO7, DO6, DO5, DO4, DO3,
 DO2, DO1, DO0, SYNC_OUT);
input  A0, SYNC_IN;
output  DO31, DO30, DO29, DO28, DO27, DO26, DO25, DO24,
 DO23, DO22, DO21, DO20, DO19, DO18, DO17, DO16, DO15, DO14,
 DO13, DO12, DO11, DO10, DO9, DO8, DO7, DO6, DO5, DO4,
 DO3, DO2, DO1, DO0, SYNC_OUT;
endmodule
`define _MPR2X32_
`endif
`define MPW2X32_MPR2X32
`endif
`endif
