
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_mem_call_96_8 ( s2h_notify, s2h_data, from_isf, h2s_notify, h2s_data, 
	to_osf, maid, ltid);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output s2h_notify;
`_2_ output [95:0] s2h_data;
input from_isf;
input h2s_notify;
`_2_ input [7:0] h2s_data;
output to_osf;
`_2_ input [0:0] maid;
`_2_ input [0:0] ltid;
wire callEvent;
`_2_ wire osfBusy;
`_2_ wire isfBusy;
`_2_ wire [255:0] s2hmport;
`_2_ wire [255:0] s2hxtail;
`_2_ wire s2hmark;
`_2_ wire s2hmarkN;
`_2_ wire ns2hd;
`_2_ wire [31:0] h2smport;
`_2_ wire nh2sd;
`_2_ wire h2s_notifyOv;
`_2_ wire [0:0] wptr;
`_2_ wire [0:0] rptr;
`_2_ wire [1:0] h2sstate;
`_2_ wire [1:0] s2hstate;
supply0 n1;
supply1 n2;
Q_ASSIGN U0 ( .B(from_isf), .A(s2h_notify));
Q_NOT_TOUCH _zzqnthw ( .sig());
Q_CCLKCHK cchk ( .sig(h2s_notify));
ixc_osf_evcap \genblk1.osfevcap ( h2s_notify, to_osf);
`ifdef CBV

reg [31:0] _zyh2smem [0:0];
always @(n1 or h2s_data[7] or h2s_data[6] or h2s_data[5] or h2s_data[4]
 or h2s_data[3] or h2s_data[2] or h2s_data[1] or h2s_data[0] or n2)
#0 begin
if (n2)
_zyh2smem[{n1}] =
{n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, n1, n1, n1, n1, n1,
 n1, n1, n1, h2s_data[7], h2s_data[6], h2s_data[5], h2s_data[4], h2s_data[3],
 h2s_data[2], h2s_data[1], h2s_data[0]};
end
`else

MPW2X32 _zyh2smem ( .A0(n1), .DI31(n1), .DI30(n1), .DI29(n1), .DI28(n1), .DI27(n1),
 .DI26(n1), .DI25(n1), .DI24(n1), .DI23(n1), .DI22(n1), .DI21(n1), .DI20(n1), .DI19(n1),
 .DI18(n1), .DI17(n1), .DI16(n1), .DI15(n1), .DI14(n1), .DI13(n1), .DI12(n1), .DI11(n1),
 .DI10(n1), .DI9(n1), .DI8(n1), .DI7(h2s_data[7]), .DI6(h2s_data[6]), .DI5(h2s_data[5]), .DI4(h2s_data[4]), .DI3(h2s_data[3]),
 .DI2(h2s_data[2]), .DI1(h2s_data[1]), .DI0(h2s_data[0]), .WE(n2), .SYNC_IN(n1), .SYNC_OUT( ));
// pragma CVASTRPROP INSTANCE "_zyh2smem" HDL_MEMORY_DECL "1 31 0 0 0"
`endif
`ifdef CBV

reg [255:0] _zys2hmem [0:0];
initial begin: U5
  integer i;
  for (i=0; i<=0; i=i+1) _zys2hmem[i] =
`ifdef CBV_MEM_INIT1
  {256{1'b1}};
`else
  256'b0;
`endif
end
reg [255:0] n4;
buf(s2h_data[95], n4[95]);
buf(s2h_data[94], n4[94]);
buf(s2h_data[93], n4[93]);
buf(s2h_data[92], n4[92]);
buf(s2h_data[91], n4[91]);
buf(s2h_data[90], n4[90]);
buf(s2h_data[89], n4[89]);
buf(s2h_data[88], n4[88]);
buf(s2h_data[87], n4[87]);
buf(s2h_data[86], n4[86]);
buf(s2h_data[85], n4[85]);
buf(s2h_data[84], n4[84]);
buf(s2h_data[83], n4[83]);
buf(s2h_data[82], n4[82]);
buf(s2h_data[81], n4[81]);
buf(s2h_data[80], n4[80]);
buf(s2h_data[79], n4[79]);
buf(s2h_data[78], n4[78]);
buf(s2h_data[77], n4[77]);
buf(s2h_data[76], n4[76]);
buf(s2h_data[75], n4[75]);
buf(s2h_data[74], n4[74]);
buf(s2h_data[73], n4[73]);
buf(s2h_data[72], n4[72]);
buf(s2h_data[71], n4[71]);
buf(s2h_data[70], n4[70]);
buf(s2h_data[69], n4[69]);
buf(s2h_data[68], n4[68]);
buf(s2h_data[67], n4[67]);
buf(s2h_data[66], n4[66]);
buf(s2h_data[65], n4[65]);
buf(s2h_data[64], n4[64]);
buf(s2h_data[63], n4[63]);
buf(s2h_data[62], n4[62]);
buf(s2h_data[61], n4[61]);
buf(s2h_data[60], n4[60]);
buf(s2h_data[59], n4[59]);
buf(s2h_data[58], n4[58]);
buf(s2h_data[57], n4[57]);
buf(s2h_data[56], n4[56]);
buf(s2h_data[55], n4[55]);
buf(s2h_data[54], n4[54]);
buf(s2h_data[53], n4[53]);
buf(s2h_data[52], n4[52]);
buf(s2h_data[51], n4[51]);
buf(s2h_data[50], n4[50]);
buf(s2h_data[49], n4[49]);
buf(s2h_data[48], n4[48]);
buf(s2h_data[47], n4[47]);
buf(s2h_data[46], n4[46]);
buf(s2h_data[45], n4[45]);
buf(s2h_data[44], n4[44]);
buf(s2h_data[43], n4[43]);
buf(s2h_data[42], n4[42]);
buf(s2h_data[41], n4[41]);
buf(s2h_data[40], n4[40]);
buf(s2h_data[39], n4[39]);
buf(s2h_data[38], n4[38]);
buf(s2h_data[37], n4[37]);
buf(s2h_data[36], n4[36]);
buf(s2h_data[35], n4[35]);
buf(s2h_data[34], n4[34]);
buf(s2h_data[33], n4[33]);
buf(s2h_data[32], n4[32]);
buf(s2h_data[31], n4[31]);
buf(s2h_data[30], n4[30]);
buf(s2h_data[29], n4[29]);
buf(s2h_data[28], n4[28]);
buf(s2h_data[27], n4[27]);
buf(s2h_data[26], n4[26]);
buf(s2h_data[25], n4[25]);
buf(s2h_data[24], n4[24]);
buf(s2h_data[23], n4[23]);
buf(s2h_data[22], n4[22]);
buf(s2h_data[21], n4[21]);
buf(s2h_data[20], n4[20]);
buf(s2h_data[19], n4[19]);
buf(s2h_data[18], n4[18]);
buf(s2h_data[17], n4[17]);
buf(s2h_data[16], n4[16]);
buf(s2h_data[15], n4[15]);
buf(s2h_data[14], n4[14]);
buf(s2h_data[13], n4[13]);
buf(s2h_data[12], n4[12]);
buf(s2h_data[11], n4[11]);
buf(s2h_data[10], n4[10]);
buf(s2h_data[9], n4[9]);
buf(s2h_data[8], n4[8]);
buf(s2h_data[7], n4[7]);
buf(s2h_data[6], n4[6]);
buf(s2h_data[5], n4[5]);
buf(s2h_data[4], n4[4]);
buf(s2h_data[3], n4[3]);
buf(s2h_data[2], n4[2]);
buf(s2h_data[1], n4[1]);
buf(s2h_data[0], n4[0]);
always @(n1)
#0 begin
n4 = _zys2hmem[{n1}];
end
`else

MPR2X256 _zys2hmem ( .A0(n1), .SYNC_IN(n1), .DO255( ), .DO254( ), .DO253( ), .DO252( ),
 .DO251( ), .DO250( ), .DO249( ), .DO248( ), .DO247( ), .DO246( ), .DO245( ), .DO244( ),
 .DO243( ), .DO242( ), .DO241( ), .DO240( ), .DO239( ), .DO238( ), .DO237( ), .DO236( ),
 .DO235( ), .DO234( ), .DO233( ), .DO232( ), .DO231( ), .DO230( ), .DO229( ), .DO228( ),
 .DO227( ), .DO226( ), .DO225( ), .DO224( ), .DO223( ), .DO222( ), .DO221( ), .DO220( ),
 .DO219( ), .DO218( ), .DO217( ), .DO216( ), .DO215( ), .DO214( ), .DO213( ), .DO212( ),
 .DO211( ), .DO210( ), .DO209( ), .DO208( ), .DO207( ), .DO206( ), .DO205( ), .DO204( ),
 .DO203( ), .DO202( ), .DO201( ), .DO200( ), .DO199( ), .DO198( ), .DO197( ), .DO196( ),
 .DO195( ), .DO194( ), .DO193( ), .DO192( ), .DO191( ), .DO190( ), .DO189( ), .DO188( ),
 .DO187( ), .DO186( ), .DO185( ), .DO184( ), .DO183( ), .DO182( ), .DO181( ), .DO180( ),
 .DO179( ), .DO178( ), .DO177( ), .DO176( ), .DO175( ), .DO174( ), .DO173( ), .DO172( ),
 .DO171( ), .DO170( ), .DO169( ), .DO168( ), .DO167( ), .DO166( ), .DO165( ), .DO164( ),
 .DO163( ), .DO162( ), .DO161( ), .DO160( ), .DO159( ), .DO158( ), .DO157( ), .DO156( ),
 .DO155( ), .DO154( ), .DO153( ), .DO152( ), .DO151( ), .DO150( ), .DO149( ), .DO148( ),
 .DO147( ), .DO146( ), .DO145( ), .DO144( ), .DO143( ), .DO142( ), .DO141( ), .DO140( ),
 .DO139( ), .DO138( ), .DO137( ), .DO136( ), .DO135( ), .DO134( ), .DO133( ), .DO132( ),
 .DO131( ), .DO130( ), .DO129( ), .DO128( ), .DO127( ), .DO126( ), .DO125( ), .DO124( ),
 .DO123( ), .DO122( ), .DO121( ), .DO120( ), .DO119( ), .DO118( ), .DO117( ), .DO116( ),
 .DO115( ), .DO114( ), .DO113( ), .DO112( ), .DO111( ), .DO110( ), .DO109( ), .DO108( ),
 .DO107( ), .DO106( ), .DO105( ), .DO104( ), .DO103( ), .DO102( ), .DO101( ), .DO100( ),
 .DO99( ), .DO98( ), .DO97( ), .DO96( ), .DO95(s2h_data[95]), .DO94(s2h_data[94]), .DO93(s2h_data[93]), .DO92(s2h_data[92]),
 .DO91(s2h_data[91]), .DO90(s2h_data[90]), .DO89(s2h_data[89]), .DO88(s2h_data[88]), .DO87(s2h_data[87]), .DO86(s2h_data[86]), .DO85(s2h_data[85]), .DO84(s2h_data[84]),
 .DO83(s2h_data[83]), .DO82(s2h_data[82]), .DO81(s2h_data[81]), .DO80(s2h_data[80]), .DO79(s2h_data[79]), .DO78(s2h_data[78]), .DO77(s2h_data[77]), .DO76(s2h_data[76]),
 .DO75(s2h_data[75]), .DO74(s2h_data[74]), .DO73(s2h_data[73]), .DO72(s2h_data[72]), .DO71(s2h_data[71]), .DO70(s2h_data[70]), .DO69(s2h_data[69]), .DO68(s2h_data[68]),
 .DO67(s2h_data[67]), .DO66(s2h_data[66]), .DO65(s2h_data[65]), .DO64(s2h_data[64]), .DO63(s2h_data[63]), .DO62(s2h_data[62]), .DO61(s2h_data[61]), .DO60(s2h_data[60]),
 .DO59(s2h_data[59]), .DO58(s2h_data[58]), .DO57(s2h_data[57]), .DO56(s2h_data[56]), .DO55(s2h_data[55]), .DO54(s2h_data[54]), .DO53(s2h_data[53]), .DO52(s2h_data[52]),
 .DO51(s2h_data[51]), .DO50(s2h_data[50]), .DO49(s2h_data[49]), .DO48(s2h_data[48]), .DO47(s2h_data[47]), .DO46(s2h_data[46]), .DO45(s2h_data[45]), .DO44(s2h_data[44]),
 .DO43(s2h_data[43]), .DO42(s2h_data[42]), .DO41(s2h_data[41]), .DO40(s2h_data[40]), .DO39(s2h_data[39]), .DO38(s2h_data[38]), .DO37(s2h_data[37]), .DO36(s2h_data[36]),
 .DO35(s2h_data[35]), .DO34(s2h_data[34]), .DO33(s2h_data[33]), .DO32(s2h_data[32]), .DO31(s2h_data[31]), .DO30(s2h_data[30]), .DO29(s2h_data[29]), .DO28(s2h_data[28]),
 .DO27(s2h_data[27]), .DO26(s2h_data[26]), .DO25(s2h_data[25]), .DO24(s2h_data[24]), .DO23(s2h_data[23]), .DO22(s2h_data[22]), .DO21(s2h_data[21]), .DO20(s2h_data[20]),
 .DO19(s2h_data[19]), .DO18(s2h_data[18]), .DO17(s2h_data[17]), .DO16(s2h_data[16]), .DO15(s2h_data[15]), .DO14(s2h_data[14]), .DO13(s2h_data[13]), .DO12(s2h_data[12]),
 .DO11(s2h_data[11]), .DO10(s2h_data[10]), .DO9(s2h_data[9]), .DO8(s2h_data[8]), .DO7(s2h_data[7]), .DO6(s2h_data[6]), .DO5(s2h_data[5]), .DO4(s2h_data[4]),
 .DO3(s2h_data[3]), .DO2(s2h_data[2]), .DO1(s2h_data[1]), .DO0(s2h_data[0]), .SYNC_OUT( ));
// pragma CVASTRPROP INSTANCE "_zys2hmem" HDL_MEMORY_DECL "1 255 0 0 0"
`endif
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m1 "_zys2hmem 1 255 0 0 0"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_m2 "_zyh2smem 1 31 0 0 0"
// pragma CVASTRPROP MODULE HDLICE HDL_UCDB_MDARRAY_DECL_NUM "2"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_mem_call"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
`ifdef CBV
`else
`ifdef MPW2X256_MPR2X256
`else
module MPW2X256( A0, DI255, DI254, DI253, DI252, DI251, DI250,
 DI249, DI248, DI247, DI246, DI245, DI244, DI243, DI242,
 DI241, DI240, DI239, DI238, DI237, DI236, DI235, DI234,
 DI233, DI232, DI231, DI230, DI229, DI228, DI227, DI226,
 DI225, DI224, DI223, DI222, DI221, DI220, DI219, DI218,
 DI217, DI216, DI215, DI214, DI213, DI212, DI211, DI210,
 DI209, DI208, DI207, DI206, DI205, DI204, DI203, DI202,
 DI201, DI200, DI199, DI198, DI197, DI196, DI195, DI194,
 DI193, DI192, DI191, DI190, DI189, DI188, DI187, DI186,
 DI185, DI184, DI183, DI182, DI181, DI180, DI179, DI178,
 DI177, DI176, DI175, DI174, DI173, DI172, DI171, DI170,
 DI169, DI168, DI167, DI166, DI165, DI164, DI163, DI162,
 DI161, DI160, DI159, DI158, DI157, DI156, DI155, DI154,
 DI153, DI152, DI151, DI150, DI149, DI148, DI147, DI146,
 DI145, DI144, DI143, DI142, DI141, DI140, DI139, DI138,
 DI137, DI136, DI135, DI134, DI133, DI132, DI131, DI130,
 DI129, DI128, DI127, DI126, DI125, DI124, DI123, DI122,
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
input  A0, DI255, DI254, DI253, DI252, DI251, DI250, DI249,
 DI248, DI247, DI246, DI245, DI244, DI243, DI242, DI241, DI240, DI239,
 DI238, DI237, DI236, DI235, DI234, DI233, DI232, DI231, DI230, DI229,
 DI228, DI227, DI226, DI225, DI224, DI223, DI222, DI221, DI220, DI219,
 DI218, DI217, DI216, DI215, DI214, DI213, DI212, DI211, DI210, DI209,
 DI208, DI207, DI206, DI205, DI204, DI203, DI202, DI201, DI200, DI199,
 DI198, DI197, DI196, DI195, DI194, DI193, DI192, DI191, DI190, DI189,
 DI188, DI187, DI186, DI185, DI184, DI183, DI182, DI181, DI180, DI179,
 DI178, DI177, DI176, DI175, DI174, DI173, DI172, DI171, DI170, DI169,
 DI168, DI167, DI166, DI165, DI164, DI163, DI162, DI161, DI160, DI159,
 DI158, DI157, DI156, DI155, DI154, DI153, DI152, DI151, DI150, DI149,
 DI148, DI147, DI146, DI145, DI144, DI143, DI142, DI141, DI140, DI139,
 DI138, DI137, DI136, DI135, DI134, DI133, DI132, DI131, DI130, DI129,
 DI128, DI127, DI126, DI125, DI124, DI123, DI122, DI121, DI120, DI119,
 DI118, DI117, DI116, DI115, DI114, DI113, DI112, DI111, DI110, DI109,
 DI108, DI107, DI106, DI105, DI104, DI103, DI102, DI101, DI100, DI99,
 DI98, DI97, DI96, DI95, DI94, DI93, DI92, DI91, DI90, DI89,
 DI88, DI87, DI86, DI85, DI84, DI83, DI82, DI81, DI80, DI79,
 DI78, DI77, DI76, DI75, DI74, DI73, DI72, DI71, DI70, DI69,
 DI68, DI67, DI66, DI65, DI64, DI63, DI62, DI61, DI60, DI59,
 DI58, DI57, DI56, DI55, DI54, DI53, DI52, DI51, DI50, DI49,
 DI48, DI47, DI46, DI45, DI44, DI43, DI42, DI41, DI40, DI39,
 DI38, DI37, DI36, DI35, DI34, DI33, DI32, DI31, DI30, DI29,
 DI28, DI27, DI26, DI25, DI24, DI23, DI22, DI21, DI20, DI19,
 DI18, DI17, DI16, DI15, DI14, DI13, DI12, DI11, DI10, DI9,
 DI8, DI7, DI6, DI5, DI4, DI3, DI2, DI1, DI0, WE,
 SYNC_IN;
output  SYNC_OUT;
endmodule
`ifdef _MPR2X256_
`else
module MPR2X256( A0, SYNC_IN, DO255, DO254, DO253, DO252, DO251,
 DO250, DO249, DO248, DO247, DO246, DO245, DO244, DO243,
 DO242, DO241, DO240, DO239, DO238, DO237, DO236, DO235,
 DO234, DO233, DO232, DO231, DO230, DO229, DO228, DO227,
 DO226, DO225, DO224, DO223, DO222, DO221, DO220, DO219,
 DO218, DO217, DO216, DO215, DO214, DO213, DO212, DO211,
 DO210, DO209, DO208, DO207, DO206, DO205, DO204, DO203,
 DO202, DO201, DO200, DO199, DO198, DO197, DO196, DO195,
 DO194, DO193, DO192, DO191, DO190, DO189, DO188, DO187,
 DO186, DO185, DO184, DO183, DO182, DO181, DO180, DO179,
 DO178, DO177, DO176, DO175, DO174, DO173, DO172, DO171,
 DO170, DO169, DO168, DO167, DO166, DO165, DO164, DO163,
 DO162, DO161, DO160, DO159, DO158, DO157, DO156, DO155,
 DO154, DO153, DO152, DO151, DO150, DO149, DO148, DO147,
 DO146, DO145, DO144, DO143, DO142, DO141, DO140, DO139,
 DO138, DO137, DO136, DO135, DO134, DO133, DO132, DO131,
 DO130, DO129, DO128, DO127, DO126, DO125, DO124, DO123,
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
output  DO255, DO254, DO253, DO252, DO251, DO250, DO249, DO248,
 DO247, DO246, DO245, DO244, DO243, DO242, DO241, DO240, DO239, DO238,
 DO237, DO236, DO235, DO234, DO233, DO232, DO231, DO230, DO229, DO228,
 DO227, DO226, DO225, DO224, DO223, DO222, DO221, DO220, DO219, DO218,
 DO217, DO216, DO215, DO214, DO213, DO212, DO211, DO210, DO209, DO208,
 DO207, DO206, DO205, DO204, DO203, DO202, DO201, DO200, DO199, DO198,
 DO197, DO196, DO195, DO194, DO193, DO192, DO191, DO190, DO189, DO188,
 DO187, DO186, DO185, DO184, DO183, DO182, DO181, DO180, DO179, DO178,
 DO177, DO176, DO175, DO174, DO173, DO172, DO171, DO170, DO169, DO168,
 DO167, DO166, DO165, DO164, DO163, DO162, DO161, DO160, DO159, DO158,
 DO157, DO156, DO155, DO154, DO153, DO152, DO151, DO150, DO149, DO148,
 DO147, DO146, DO145, DO144, DO143, DO142, DO141, DO140, DO139, DO138,
 DO137, DO136, DO135, DO134, DO133, DO132, DO131, DO130, DO129, DO128,
 DO127, DO126, DO125, DO124, DO123, DO122, DO121, DO120, DO119, DO118,
 DO117, DO116, DO115, DO114, DO113, DO112, DO111, DO110, DO109, DO108,
 DO107, DO106, DO105, DO104, DO103, DO102, DO101, DO100, DO99, DO98,
 DO97, DO96, DO95, DO94, DO93, DO92, DO91, DO90, DO89, DO88,
 DO87, DO86, DO85, DO84, DO83, DO82, DO81, DO80, DO79, DO78,
 DO77, DO76, DO75, DO74, DO73, DO72, DO71, DO70, DO69, DO68,
 DO67, DO66, DO65, DO64, DO63, DO62, DO61, DO60, DO59, DO58,
 DO57, DO56, DO55, DO54, DO53, DO52, DO51, DO50, DO49, DO48,
 DO47, DO46, DO45, DO44, DO43, DO42, DO41, DO40, DO39, DO38,
 DO37, DO36, DO35, DO34, DO33, DO32, DO31, DO30, DO29, DO28,
 DO27, DO26, DO25, DO24, DO23, DO22, DO21, DO20, DO19, DO18,
 DO17, DO16, DO15, DO14, DO13, DO12, DO11, DO10, DO9, DO8,
 DO7, DO6, DO5, DO4, DO3, DO2, DO1, DO0, SYNC_OUT;
endmodule
`define _MPR2X256_
`endif
`define MPW2X256_MPR2X256
`endif
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
