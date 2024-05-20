
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_mevClk_2_0_0_1_0_2 ( xclk, clks, ens, loop, hold, active, busy, bwOn);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output xclk;
input [1:0] clks;
input [1:0] ens;
input loop;
input hold;
output active;
output busy;
output bwOn;
wire [1:0] evs;
wire evOn;
wire bEvOn;
wire clkOnI;
wire clkOn;
wire mixOn;
wire bEvWait;
wire wEvWait;
wire fclk;
wire holdF;
wire bwEn;
`_2_ wire [1:0] ensD;
`_2_ wire wEvOn;
`_2_ wire loopOn;
`_2_ wire bEvOnD;
`_2_ wire [1:0] _zzev;
`_2_ wire [1:0] _zzevp;
`_2_ wire bClkHoldD;
`_2_ wire holdFD;
`_2_ wire _zzClkOn;
supply0 n1;
supply1 n6;
assign busy = loopOn;
Q_BUF U0 ( .A(n1), .Z(wEvOn));
Q_BUF U1 ( .A(n1), .Z(loopOn));
Q_BUF U2 ( .A(n1), .Z(mixOn));
Q_BUF U3 ( .A(n1), .Z(wEvWait));
Q_BUF U4 ( .A(bClkHoldD), .Z(holdF));
Q_BUF U5 ( .A(bwEn), .Z(bEvWait));
Q_BUF U6 ( .A(bEvOn), .Z(bwEn));
Q_BUF U7 ( .A(bEvWait), .Z(bwOn));
Q_OR02 U8 ( .A0(evOn), .A1(bEvOnD), .Z(clkOnI));
Q_FDP0UA U9 ( .D(holdF), .QTFCLK( ), .Q(holdFD));
Q_FDP0UA U10 ( .D(xc_top.bClkHold), .QTFCLK( ), .Q(bClkHoldD));
Q_AN02 U11 ( .A0(xc_top.eventOn), .A1(bEvWait), .Z(n2));
Q_FDP0UA U12 ( .D(n2), .QTFCLK( ), .Q(bEvOnD));
Q_FDP0UA U13 ( .D(ens[1]), .QTFCLK( ), .Q(ensD[1]));
Q_FDP0UA U14 ( .D(ens[0]), .QTFCLK( ), .Q(ensD[0]));
Q_FDP0UA U15 ( .D(n3), .QTFCLK( ), .Q(_zzev[1]));
Q_MX02 U16 ( .S(xc_top.eventOn), .A0(_zzev[1]), .A1(clks[1]), .Z(n3));
Q_FDP0UA U17 ( .D(n5), .QTFCLK( ), .Q(_zzevp[0]));
Q_MX02 U18 ( .S(xc_top.eventOn), .A0(_zzevp[0]), .A1(_zzev[0]), .Z(n5));
Q_BUFZP U19 ( .OE(bEvWait), .A(n6), .Z(xc_top.bpWait));
Q_INV U20 ( .A(clkOnI), .Z(n8));
Q_ND02 U21 ( .A0(n8), .A1(holdFD), .Z(n7));
Q_LDP0 _zzClkOn_REG  ( .G(n7), .D(clkOnI), .Q(_zzClkOn), .QN( ));
Q_FDP0 \_zzev_REG[0] ( .CK(clks[0]), .D(n9), .Q(_zzev[0]), .QN(n9));
Q_XOR2 U24 ( .A0(_zzev[0]), .A1(_zzevp[0]), .Z(n12));
Q_AN02 U25 ( .A0(xc_top.eventOn), .A1(n12), .Z(evs[0]));
Q_XOR2 U26 ( .A0(_zzev[1]), .A1(clks[1]), .Z(n11));
Q_AN02 U27 ( .A0(xc_top.eventOn), .A1(n11), .Z(evs[1]));
Q_AN02 U28 ( .A0(evs[0]), .A1(ensD[0]), .Z(evOn));
Q_AN03 U29 ( .A0(evs[1]), .A1(ens[1]), .A2(ensD[1]), .Z(bEvOn));
Q_INV U30 ( .A(holdF), .Z(n10));
Q_AN02 U31 ( .A0(n10), .A1(_zzClkOn), .Z(clkOn));
Q_OR02 U32 ( .A0(clkOnI), .A1(_zzClkOn), .Z(active));
Q_EV_WOR_START \genblk5.qi1 ( .A(bEvWait));
Q_LPULSE p0 ( .A(clkOn), .Z(xclk), .S(n14));
Q_NOT_TOUCH _zzqnthw ( .sig());
// pragma CVASTRPROP MODULE HDLICE CVAIUSNAMES_FORGEN_LABEL "genblk1"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_mevClk"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
