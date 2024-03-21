
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif

module _ixc_isc ;
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
wire assertion_coverage_on;
wire assertUCF;
wire fclk;
wire assertion_global_on_p;
wire assertion_global_off_p;
wire assertion_global_off_s;
wire assertion_global_on_s;
wire assertion_global_off_sD;
wire assertion_global_on_sD;
wire assertion_global_off_ev;
wire assertion_global_on_ev;
`_2_ wire [31:0] _zy_ixcg_mdh_L0_0;
`_2_ wire [31:0] _zy_ixcg_mdh_L0_1;
supply1 n3;
Q_AN03 U0 ( .A0(assertion_global_off_ev), .A1(assertion_global_off_s), .A2(n1), .Z(n2));
Q_INV U1 ( .A(assertion_global_on_s), .Z(n1));
Q_BUFZP U2 ( .OE(n2), .A(n3), .Z(assertion_global_off_p));
Q_AN03 U3 ( .A0(assertion_global_on_ev), .A1(assertion_global_on_s), .A2(n4), .Z(n5));
Q_INV U4 ( .A(assertion_global_off_s), .Z(n4));
Q_BUFZP U5 ( .OE(n5), .A(n3), .Z(assertion_global_on_p));
Q_XOR2 U6 ( .A0(assertion_global_off_s), .A1(assertion_global_off_sD), .Z(n6));
Q_AN02 U7 ( .A0(xc_top.eventOn), .A1(n6), .Z(assertion_global_off_ev));
Q_XOR2 U8 ( .A0(assertion_global_on_s), .A1(assertion_global_on_sD), .Z(n7));
Q_AN02 U9 ( .A0(xc_top.eventOn), .A1(n7), .Z(assertion_global_on_ev));
Q_MX02 U10 ( .S(xc_top.eventOn), .A0(assertion_global_on_sD), .A1(assertion_global_on_s), .Z(n8));
Q_FDP0UA U11 ( .D(n8), .QTFCLK( ), .Q(assertion_global_on_sD));
Q_MX02 U12 ( .S(xc_top.eventOn), .A0(assertion_global_off_sD), .A1(assertion_global_off_s), .Z(n9));
Q_FDP0UA U13 ( .D(n9), .QTFCLK( ), .Q(assertion_global_off_sD));
Q_RDN U14 ( .Z(assertion_global_on_p));
Q_RDN U15 ( .Z(assertion_global_off_p));
// pragma CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
endmodule
