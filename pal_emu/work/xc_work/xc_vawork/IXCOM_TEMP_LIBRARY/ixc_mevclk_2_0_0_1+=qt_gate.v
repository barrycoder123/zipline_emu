
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_mevClk_2_0_0_1 ( xclk, clks, ens, loop, hold, active, busy, bwOn);
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
supply1 n5;
assign busy = loopOn;
Q_BUF U0 ( .A(n1), .Z(wEvOn));
Q_BUF U1 ( .A(n1), .Z(loopOn));
Q_BUF U2 ( .A(n1), .Z(bEvOn));
Q_BUF U3 ( .A(n1), .Z(bEvWait));
Q_BUF U4 ( .A(n1), .Z(mixOn));
Q_BUF U5 ( .A(n1), .Z(wEvWait));
Q_BUF U6 ( .A(n1), .Z(bwOn));
Q_BUF U7 ( .A(n1), .Z(bwEn));
Q_BUF U8 ( .A(bClkHoldD), .Z(holdF));
Q_BUF U9 ( .A(evOn), .Z(clkOnI));
Q_FDP0UA U10 ( .D(holdF), .QTFCLK( ), .Q(holdFD));
Q_FDP0UA U11 ( .D(xc_top.bClkHold), .QTFCLK( ), .Q(bClkHoldD));
Q_FDP0UA U12 ( .D(ens[1]), .QTFCLK( ), .Q(ensD[1]));
Q_FDP0UA U13 ( .D(ens[0]), .QTFCLK( ), .Q(ensD[0]));
Q_FDP0UA U14 ( .D(n2), .QTFCLK( ), .Q(_zzev[1]));
Q_MX02 U15 ( .S(xc_top.eventOn), .A0(_zzev[1]), .A1(clks[1]), .Z(n2));
Q_FDP0UA U16 ( .D(n4), .QTFCLK( ), .Q(_zzevp[0]));
Q_MX02 U17 ( .S(xc_top.eventOn), .A0(_zzevp[0]), .A1(_zzev[0]), .Z(n4));
Q_BUFZP U18 ( .OE(bwEn), .A(n5), .Z(xc_top.bpWait));
Q_INV U19 ( .A(clkOnI), .Z(n7));
Q_ND02 U20 ( .A0(n7), .A1(holdFD), .Z(n6));
Q_LDP0 _zzClkOn_REG  ( .G(n6), .D(clkOnI), .Q(_zzClkOn), .QN( ));
Q_FDP0 \_zzev_REG[0] ( .CK(clks[0]), .D(n8), .Q(_zzev[0]), .QN(n8));
Q_XOR2 U23 ( .A0(_zzev[0]), .A1(_zzevp[0]), .Z(n12));
Q_AN02 U24 ( .A0(xc_top.eventOn), .A1(n12), .Z(evs[0]));
Q_XOR2 U25 ( .A0(_zzev[1]), .A1(clks[1]), .Z(n11));
Q_AN02 U26 ( .A0(xc_top.eventOn), .A1(n11), .Z(evs[1]));
Q_AN02 U27 ( .A0(evs[0]), .A1(ensD[0]), .Z(n10));
Q_AO21 U28 ( .A0(evs[1]), .A1(ensD[1]), .B0(n10), .Z(evOn));
Q_INV U29 ( .A(holdF), .Z(n9));
Q_AN02 U30 ( .A0(n9), .A1(_zzClkOn), .Z(clkOn));
Q_OR02 U31 ( .A0(clkOnI), .A1(_zzClkOn), .Z(active));
Q_LPULSE p0 ( .A(clkOn), .Z(xclk), .S(n14));
Q_NOT_TOUCH _zzqnthw ( .sig());
// pragma CVASTRPROP MODULE HDLICE CVAIUSNAMES_FORGEN_LABEL "genblk1"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_mevClk"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
