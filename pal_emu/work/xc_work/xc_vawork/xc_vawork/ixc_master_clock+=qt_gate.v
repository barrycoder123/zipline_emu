
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module ixc_master_clock ( phi1);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
output phi1;
wire _zy_simnet_clk_0_w$;
wire [10:0] _zyiscDelta1;
wire [10:0] _zyiscTdM1;
wire _zyiscVCC1;
wire _zyiscEClk1;
wire [10:0] _zyL45_iscTdG2;
wire clk;
wire [9:0] _zyL45_iscTdL2;
supply1 n1;
supply0 n53;
Q_BUF U0 ( .A(n1), .Z(_zyiscVCC1));
Q_BUF U1 ( .A(n53), .Z(n2));
Q_XNR3 U2 ( .A0(n3), .A1(_zyL45_iscTdL2[9]), .A2(_zyiscDelta1[9]), .Z(n15));
Q_AD01 U3 ( .CI(n17), .A0(_zyL45_iscTdL2[8]), .B0(n30), .S(n16), .CO(n3));
Q_FDP0 \_zyL45_iscTdL2_REG[0] ( .CK(_zyiscEClk1), .D(n14), .Q(_zyL45_iscTdL2[0]), .QN( ));
Q_FDP0 \_zyL45_iscTdL2_REG[1] ( .CK(_zyiscEClk1), .D(n13), .Q(_zyL45_iscTdL2[1]), .QN( ));
Q_FDP0 \_zyL45_iscTdL2_REG[2] ( .CK(_zyiscEClk1), .D(n12), .Q(_zyL45_iscTdL2[2]), .QN( ));
Q_FDP0 \_zyL45_iscTdL2_REG[3] ( .CK(_zyiscEClk1), .D(n11), .Q(_zyL45_iscTdL2[3]), .QN( ));
Q_FDP0 \_zyL45_iscTdL2_REG[4] ( .CK(_zyiscEClk1), .D(n10), .Q(_zyL45_iscTdL2[4]), .QN( ));
Q_FDP0 \_zyL45_iscTdL2_REG[5] ( .CK(_zyiscEClk1), .D(n9), .Q(_zyL45_iscTdL2[5]), .QN( ));
Q_FDP0 \_zyL45_iscTdL2_REG[6] ( .CK(_zyiscEClk1), .D(n8), .Q(_zyL45_iscTdL2[6]), .QN( ));
Q_FDP0 \_zyL45_iscTdL2_REG[7] ( .CK(_zyiscEClk1), .D(n7), .Q(_zyL45_iscTdL2[7]), .QN( ));
Q_FDP0 \_zyL45_iscTdL2_REG[8] ( .CK(_zyiscEClk1), .D(n6), .Q(_zyL45_iscTdL2[8]), .QN( ));
Q_FDP0 \_zyL45_iscTdL2_REG[9] ( .CK(_zyiscEClk1), .D(n5), .Q(_zyL45_iscTdL2[9]), .QN( ));
Q_OR02 U14 ( .A0(n4), .A1(n15), .Z(n5));
Q_AN02 U15 ( .A0(n39), .A1(n16), .Z(n6));
Q_AN02 U16 ( .A0(n39), .A1(n18), .Z(n7));
Q_OR02 U17 ( .A0(n4), .A1(n19), .Z(n8));
Q_OR02 U18 ( .A0(n4), .A1(n21), .Z(n9));
Q_OR02 U19 ( .A0(n4), .A1(n22), .Z(n10));
Q_AN02 U20 ( .A0(n39), .A1(n24), .Z(n11));
Q_AN02 U21 ( .A0(n39), .A1(n25), .Z(n12));
Q_AN02 U22 ( .A0(n39), .A1(n27), .Z(n13));
Q_OR02 U23 ( .A0(n4), .A1(n29), .Z(n14));
Q_AD02 U24 ( .CI(n20), .A0(_zyL45_iscTdL2[6]), .A1(_zyL45_iscTdL2[7]), .B0(n32), .B1(n31), .S0(n19), .S1(n18), .CO(n17));
Q_AD02 U25 ( .CI(n23), .A0(_zyL45_iscTdL2[4]), .A1(_zyL45_iscTdL2[5]), .B0(n34), .B1(n33), .S0(n22), .S1(n21), .CO(n20));
Q_AD02 U26 ( .CI(n26), .A0(_zyL45_iscTdL2[2]), .A1(_zyL45_iscTdL2[3]), .B0(n36), .B1(n35), .S0(n25), .S1(n24), .CO(n23));
Q_AD01 U27 ( .CI(n28), .A0(_zyL45_iscTdL2[1]), .B0(n37), .S(n27), .CO(n26));
Q_OR02 U28 ( .A0(_zyL45_iscTdL2[0]), .A1(n38), .Z(n28));
Q_XNR2 U29 ( .A0(_zyL45_iscTdL2[0]), .A1(n38), .Z(n29));
Q_INV U30 ( .A(_zyiscDelta1[8]), .Z(n30));
Q_INV U31 ( .A(_zyiscDelta1[7]), .Z(n31));
Q_INV U32 ( .A(_zyiscDelta1[6]), .Z(n32));
Q_INV U33 ( .A(_zyiscDelta1[5]), .Z(n33));
Q_INV U34 ( .A(_zyiscDelta1[4]), .Z(n34));
Q_INV U35 ( .A(_zyiscDelta1[3]), .Z(n35));
Q_INV U36 ( .A(_zyiscDelta1[2]), .Z(n36));
Q_INV U37 ( .A(_zyiscDelta1[1]), .Z(n37));
Q_INV U38 ( .A(_zyiscDelta1[0]), .Z(n38));
Q_INV U39 ( .A(n39), .Z(n4));
Q_OR03 U40 ( .A0(n42), .A1(n41), .A2(n40), .Z(n39));
Q_OR03 U41 ( .A0(n52), .A1(n29), .A2(n43), .Z(n40));
Q_OR03 U42 ( .A0(n49), .A1(n50), .A2(n51), .Z(n41));
Q_OR03 U43 ( .A0(n46), .A1(n47), .A2(n48), .Z(n42));
Q_OR03 U44 ( .A0(_zyiscDelta1[10]), .A1(n44), .A2(n45), .Z(n43));
Q_XOR2 U45 ( .A0(_zyL45_iscTdL2[9]), .A1(_zyiscDelta1[9]), .Z(n44));
Q_XOR2 U46 ( .A0(_zyL45_iscTdL2[8]), .A1(_zyiscDelta1[8]), .Z(n45));
Q_XOR2 U47 ( .A0(_zyL45_iscTdL2[7]), .A1(_zyiscDelta1[7]), .Z(n46));
Q_XOR2 U48 ( .A0(_zyL45_iscTdL2[6]), .A1(_zyiscDelta1[6]), .Z(n47));
Q_XOR2 U49 ( .A0(_zyL45_iscTdL2[5]), .A1(_zyiscDelta1[5]), .Z(n48));
Q_XOR2 U50 ( .A0(_zyL45_iscTdL2[4]), .A1(_zyiscDelta1[4]), .Z(n49));
Q_XOR2 U51 ( .A0(_zyL45_iscTdL2[3]), .A1(_zyiscDelta1[3]), .Z(n50));
Q_XOR2 U52 ( .A0(_zyL45_iscTdL2[2]), .A1(_zyiscDelta1[2]), .Z(n51));
Q_XOR2 U53 ( .A0(_zyL45_iscTdL2[1]), .A1(_zyiscDelta1[1]), .Z(n52));
Q_CLKSRC _zy_inst_0 ( .clk(clk));
ixc_assign _zz_strnp_0 ( _zy_simnet_clk_0_w$, clk);
axis_eclk _zziscEClk1_pu ( _zyiscEClk1, _zyiscVCC1);
ixc_assign_11 _zz_strnp_1 ( _zyiscDelta1[10:0], 
	xcva_top.ixc_time.delta[10:0]);
ixc_assign_11 _zz_strnp_2 ( _zyL45_iscTdG2[10:0], { n2, _zyL45_iscTdL2[9], 
	_zyL45_iscTdL2[8], _zyL45_iscTdL2[7], _zyL45_iscTdL2[6], 
	_zyL45_iscTdL2[5], _zyL45_iscTdL2[4], _zyL45_iscTdL2[3], 
	_zyL45_iscTdL2[2], _zyL45_iscTdL2[1], _zyL45_iscTdL2[0]});
ixc_assign_11 _zz_strnp_3 ( _zyiscTdM1[10:0], _zyL45_iscTdG2[10:0]);
ixc_1xbufsrc m1 ( phi1, _zy_simnet_clk_0_w$);
Q_INV U61 ( .A(clk), .Z(n54));
Q_FDP4EP clk_REG  ( .CK(_zyiscEClk1), .CE(n4), .R(n53), .D(n54), .Q(clk));
// pragma CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
endmodule
