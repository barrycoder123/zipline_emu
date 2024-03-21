module xcva_top;
 kme_tb kme_tb();
 my_clks my_clks();
 IXC_GFIFO IXC_GFIFO();
 ixc_time ixc_time();
 _ixc_isc _ixc_isc();
 xc_top #(1) xc_top();
 ASSERTION ASSERTION();
// pragma CVASTRPROP MODULE xcva_top PROP_IXCOM_MOD TRUE
// pragma user_defined_generate_suffix bxcm
endmodule

module ASSERTION;
wire FAILURE;
// quickturn keep_net FAILURE 
wire stop; // quickturn name_map stop xc_top.stop2
wire ucf;  // quickturn name_map ucf _ixc_isc.assertUCF
assign FAILURE = stop | ucf;
// pragma CVASTRPROP MODULE ASSERTION PROP_IXCOM_MOD TRUE
endmodule

