
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
`_2_ (* upf_always_on = 1 *) 
module ixc_mevClk_3_0_0_4_0_3 ( xclk, clks, ens, loop, hold, active, busy, bwOn);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output xclk;
input [2:0] clks;
input [2:0] ens;
input loop;
input hold;
output active;
output busy;
output bwOn;
wire [2:0] evs;
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
`_2_ wire [2:0] ensD;
`_2_ wire wEvOn;
`_2_ wire loopOn;
`_2_ wire bEvOnD;
`_2_ wire [2:0] _zzev;
`_2_ wire [2:0] _zzevp;
`_2_ wire bClkHoldD;
`_2_ wire holdFD;
`_2_ wire _zzClkOn;
supply0 n1;
supply1 n7;
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
Q_FDP0UA U13 ( .D(ens[2]), .QTFCLK( ), .Q(ensD[2]));
Q_FDP0UA U14 ( .D(ens[1]), .QTFCLK( ), .Q(ensD[1]));
Q_FDP0UA U15 ( .D(ens[0]), .QTFCLK( ), .Q(ensD[0]));
Q_FDP0UA U16 ( .D(n3), .QTFCLK( ), .Q(_zzevp[2]));
Q_MX02 U17 ( .S(xc_top.eventOn), .A0(_zzevp[2]), .A1(_zzev[2]), .Z(n3));
Q_FDP0UA U18 ( .D(n4), .QTFCLK( ), .Q(_zzev[1]));
Q_MX02 U19 ( .S(xc_top.eventOn), .A0(_zzev[1]), .A1(clks[1]), .Z(n4));
Q_FDP0UA U20 ( .D(n6), .QTFCLK( ), .Q(_zzev[0]));
Q_MX02 U21 ( .S(xc_top.eventOn), .A0(_zzev[0]), .A1(clks[0]), .Z(n6));
Q_BUFZP U22 ( .OE(bEvWait), .A(n7), .Z(xc_top.bpWait));
Q_INV U23 ( .A(clkOnI), .Z(n9));
Q_ND02 U24 ( .A0(n9), .A1(holdFD), .Z(n8));
Q_LDP0 _zzClkOn_REG  ( .G(n8), .D(clkOnI), .Q(_zzClkOn), .QN( ));
Q_FDP0 \_zzev_REG[2] ( .CK(clks[2]), .D(n10), .Q(_zzev[2]), .QN(n10));
Q_XOR2 U27 ( .A0(_zzev[0]), .A1(clks[0]), .Z(n16));
Q_AN02 U28 ( .A0(xc_top.eventOn), .A1(n16), .Z(evs[0]));
Q_XOR2 U29 ( .A0(_zzev[1]), .A1(clks[1]), .Z(n15));
Q_AN02 U30 ( .A0(xc_top.eventOn), .A1(n15), .Z(evs[1]));
Q_XOR2 U31 ( .A0(_zzev[2]), .A1(_zzevp[2]), .Z(n14));
Q_AN02 U32 ( .A0(xc_top.eventOn), .A1(n14), .Z(evs[2]));
Q_AN02 U33 ( .A0(evs[2]), .A1(ensD[2]), .Z(evOn));
Q_AN03 U34 ( .A0(evs[0]), .A1(ens[0]), .A2(ensD[0]), .Z(n13));
Q_AN03 U35 ( .A0(evs[1]), .A1(ens[1]), .A2(ensD[1]), .Z(n12));
Q_OR02 U36 ( .A0(n13), .A1(n12), .Z(bEvOn));
Q_INV U37 ( .A(holdF), .Z(n11));
Q_AN02 U38 ( .A0(n11), .A1(_zzClkOn), .Z(clkOn));
Q_OR02 U39 ( .A0(clkOnI), .A1(_zzClkOn), .Z(active));
Q_EV_WOR_START \genblk5.qi1 ( .A(bEvWait));
Q_LPULSE p0 ( .A(clkOn), .Z(xclk), .S(n18));
Q_NOT_TOUCH _zzqnthw ( .sig());
// pragma CVASTRPROP MODULE HDLICE CVAIUSNAMES_FORGEN_LABEL "genblk1"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE "ixc_mevClk"
// pragma CVASTRPROP MODULE HDLICE HDL_TEMPLATE_LIB "IXCOM_TEMP_LIBRARY"
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
