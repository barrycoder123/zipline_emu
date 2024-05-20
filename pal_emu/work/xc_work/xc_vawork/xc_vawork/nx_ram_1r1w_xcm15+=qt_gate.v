
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_ram_1r1w_xcm15 ( rst_n, clk, lvm, mlvm, mrdten, bimc_rst_n, 
	bimc_isync, bimc_idat, bimc_odat, bimc_osync, 
	ro_uncorrectable_ecc_error, reb, ra, dout, web, wa, din, bwe);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input rst_n;
input clk;
input lvm;
input mlvm;
input mrdten;
input bimc_rst_n;
input bimc_isync;
input bimc_idat;
output bimc_odat;
output bimc_osync;
output ro_uncorrectable_ecc_error;
input reb;
input [10:0] ra;
output [70:0] dout;
input web;
input [10:0] wa;
input [70:0] din;
input [70:0] bwe;
wire _zy_simnet_bimc_odat_0_w$;
wire _zy_simnet_bimc_osync_1_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_2_w$;
wire [0:70] _zy_simnet_dout_3_w$;
wire [70:0] ldout;
wire [70:0] ldin;
wire bimc_iclk;
wire bimc_irstn;
wire p_mode_disable_ecc_mem;
wire se;
wire rds;
wire [1:0] ecc_corrupt;
wire rst_rclk_n;
wire rst_wclk_n;
wire rclk;
wire wclk;
wire \_1r1wramDxWb.writethrough ;
wire [70:0] \_1r1wramDxWb.dout_i ;
wire \_1r1wramDxWb._web ;
wire [10:0] \_1r1wramDxWb._wa ;
wire [70:0] \_1r1wramDxWb._din ;
wire [70:0] \_1r1wramDxWb._bwe ;
wire [70:0] \_1r1wramDxWb.din_i ;
wire [70:0] \_1r1wramDxWb.genblk3.dout_rr ;
wire [70:0] \_1r1wramDxWb.genblk1.bwe_r ;
wire [70:0] \_1r1wramDxWb.genblk1.din_r ;
wire [10:0] \_1r1wramDxWb.genblk1.wa_r ;
wire \_1r1wramDxWb.genblk1.web_r ;
wire [31:0] \_1r1wramDxWb._zyictd_sysfunc_11_L258_7 ;
wire [70:0] \_1r1wramDxWb._dout ;
supply0 n2;
Q_BUF U0 ( .A(n2), .Z(p_mode_disable_ecc_mem));
Q_BUF U1 ( .A(n2), .Z(se));
Q_BUF U2 ( .A(n2), .Z(rds));
Q_BUF U3 ( .A(n2), .Z(ecc_corrupt[1]));
Q_BUF U4 ( .A(n2), .Z(ecc_corrupt[0]));
Q_BUF U5 ( .A(n2), .Z(\_1r1wramDxWb.writethrough ));
Q_BUF U6 ( .A(n2), .Z(ro_uncorrectable_ecc_error));
ixc_assign_71 _zz_strnp_18 ( _zy_simnet_dout_3_w$[0:70], dout[70:0]);
ixc_assign _zz_strnp_17 ( _zy_simnet_ro_uncorrectable_ecc_error_2_w$, n2);
ixc_assign _zz_strnp_16 ( _zy_simnet_bimc_osync_1_w$, bimc_osync);
ixc_assign _zz_strnp_15 ( _zy_simnet_bimc_odat_0_w$, bimc_odat);
ixc_assign_71 _zz_strnp_14 ( dout[70:0], ldout[70:0]);
ixc_assign _zz_strnp_13 ( wclk, clk);
ixc_assign _zz_strnp_12 ( rclk, clk);
ixc_assign _zz_strnp_11 ( rst_wclk_n, rst_n);
ixc_assign _zz_strnp_10 ( rst_rclk_n, rst_n);
ixc_assign _zz_strnp_9 ( bimc_irstn, bimc_rst_n);
ixc_assign _zz_strnp_8 ( bimc_iclk, clk);
ixc_assign_71 _zz_strnp_7 ( ldin[70:0], din[70:0]);
Q_FDP0 U19 ( .CK(clk), .D(\_1r1wramDxWb.din_i [70]), .Q(n163), .QN( ));
Q_FDP0 U20 ( .CK(clk), .D(\_1r1wramDxWb.din_i [69]), .Q(n162), .QN( ));
Q_FDP0 U21 ( .CK(clk), .D(\_1r1wramDxWb.din_i [68]), .Q(n161), .QN( ));
Q_FDP0 U22 ( .CK(clk), .D(\_1r1wramDxWb.din_i [67]), .Q(n160), .QN( ));
Q_FDP0 U23 ( .CK(clk), .D(\_1r1wramDxWb.din_i [66]), .Q(n159), .QN( ));
Q_FDP0 U24 ( .CK(clk), .D(\_1r1wramDxWb.din_i [65]), .Q(n158), .QN( ));
Q_FDP0 U25 ( .CK(clk), .D(\_1r1wramDxWb.din_i [64]), .Q(n157), .QN( ));
Q_FDP0 U26 ( .CK(clk), .D(\_1r1wramDxWb.din_i [63]), .Q(n156), .QN( ));
Q_FDP0 U27 ( .CK(clk), .D(\_1r1wramDxWb.din_i [62]), .Q(n155), .QN( ));
Q_FDP0 U28 ( .CK(clk), .D(\_1r1wramDxWb.din_i [61]), .Q(n154), .QN( ));
Q_FDP0 U29 ( .CK(clk), .D(\_1r1wramDxWb.din_i [60]), .Q(n153), .QN( ));
Q_FDP0 U30 ( .CK(clk), .D(\_1r1wramDxWb.din_i [59]), .Q(n152), .QN( ));
Q_FDP0 U31 ( .CK(clk), .D(\_1r1wramDxWb.din_i [58]), .Q(n151), .QN( ));
Q_FDP0 U32 ( .CK(clk), .D(\_1r1wramDxWb.din_i [57]), .Q(n150), .QN( ));
Q_FDP0 U33 ( .CK(clk), .D(\_1r1wramDxWb.din_i [56]), .Q(n149), .QN( ));
Q_FDP0 U34 ( .CK(clk), .D(\_1r1wramDxWb.din_i [55]), .Q(n148), .QN( ));
Q_FDP0 U35 ( .CK(clk), .D(\_1r1wramDxWb.din_i [54]), .Q(n147), .QN( ));
Q_FDP0 U36 ( .CK(clk), .D(\_1r1wramDxWb.din_i [53]), .Q(n146), .QN( ));
Q_FDP0 U37 ( .CK(clk), .D(\_1r1wramDxWb.din_i [52]), .Q(n145), .QN( ));
Q_FDP0 U38 ( .CK(clk), .D(\_1r1wramDxWb.din_i [51]), .Q(n144), .QN( ));
Q_FDP0 U39 ( .CK(clk), .D(\_1r1wramDxWb.din_i [50]), .Q(n143), .QN( ));
Q_FDP0 U40 ( .CK(clk), .D(\_1r1wramDxWb.din_i [49]), .Q(n142), .QN( ));
Q_FDP0 U41 ( .CK(clk), .D(\_1r1wramDxWb.din_i [48]), .Q(n141), .QN( ));
Q_FDP0 U42 ( .CK(clk), .D(\_1r1wramDxWb.din_i [47]), .Q(n140), .QN( ));
Q_FDP0 U43 ( .CK(clk), .D(\_1r1wramDxWb.din_i [46]), .Q(n139), .QN( ));
Q_FDP0 U44 ( .CK(clk), .D(\_1r1wramDxWb.din_i [45]), .Q(n138), .QN( ));
Q_FDP0 U45 ( .CK(clk), .D(\_1r1wramDxWb.din_i [44]), .Q(n137), .QN( ));
Q_FDP0 U46 ( .CK(clk), .D(\_1r1wramDxWb.din_i [43]), .Q(n136), .QN( ));
Q_FDP0 U47 ( .CK(clk), .D(\_1r1wramDxWb.din_i [42]), .Q(n135), .QN( ));
Q_FDP0 U48 ( .CK(clk), .D(\_1r1wramDxWb.din_i [41]), .Q(n134), .QN( ));
Q_FDP0 U49 ( .CK(clk), .D(\_1r1wramDxWb.din_i [40]), .Q(n133), .QN( ));
Q_FDP0 U50 ( .CK(clk), .D(\_1r1wramDxWb.din_i [39]), .Q(n132), .QN( ));
Q_FDP0 U51 ( .CK(clk), .D(\_1r1wramDxWb.din_i [38]), .Q(n131), .QN( ));
Q_FDP0 U52 ( .CK(clk), .D(\_1r1wramDxWb.din_i [37]), .Q(n130), .QN( ));
Q_FDP0 U53 ( .CK(clk), .D(\_1r1wramDxWb.din_i [36]), .Q(n129), .QN( ));
Q_FDP0 U54 ( .CK(clk), .D(\_1r1wramDxWb.din_i [35]), .Q(n128), .QN( ));
Q_FDP0 U55 ( .CK(clk), .D(\_1r1wramDxWb.din_i [34]), .Q(n127), .QN( ));
Q_FDP0 U56 ( .CK(clk), .D(\_1r1wramDxWb.din_i [33]), .Q(n126), .QN( ));
Q_FDP0 U57 ( .CK(clk), .D(\_1r1wramDxWb.din_i [32]), .Q(n125), .QN( ));
Q_FDP0 U58 ( .CK(clk), .D(\_1r1wramDxWb.din_i [31]), .Q(n124), .QN( ));
Q_FDP0 U59 ( .CK(clk), .D(\_1r1wramDxWb.din_i [30]), .Q(n123), .QN( ));
Q_FDP0 U60 ( .CK(clk), .D(\_1r1wramDxWb.din_i [29]), .Q(n122), .QN( ));
Q_FDP0 U61 ( .CK(clk), .D(\_1r1wramDxWb.din_i [28]), .Q(n121), .QN( ));
Q_FDP0 U62 ( .CK(clk), .D(\_1r1wramDxWb.din_i [27]), .Q(n120), .QN( ));
Q_FDP0 U63 ( .CK(clk), .D(\_1r1wramDxWb.din_i [26]), .Q(n119), .QN( ));
Q_FDP0 U64 ( .CK(clk), .D(\_1r1wramDxWb.din_i [25]), .Q(n118), .QN( ));
Q_FDP0 U65 ( .CK(clk), .D(\_1r1wramDxWb.din_i [24]), .Q(n117), .QN( ));
Q_FDP0 U66 ( .CK(clk), .D(\_1r1wramDxWb.din_i [23]), .Q(n116), .QN( ));
Q_FDP0 U67 ( .CK(clk), .D(\_1r1wramDxWb.din_i [22]), .Q(n115), .QN( ));
Q_FDP0 U68 ( .CK(clk), .D(\_1r1wramDxWb.din_i [21]), .Q(n114), .QN( ));
Q_FDP0 U69 ( .CK(clk), .D(\_1r1wramDxWb.din_i [20]), .Q(n113), .QN( ));
Q_FDP0 U70 ( .CK(clk), .D(\_1r1wramDxWb.din_i [19]), .Q(n112), .QN( ));
Q_FDP0 U71 ( .CK(clk), .D(\_1r1wramDxWb.din_i [18]), .Q(n111), .QN( ));
Q_FDP0 U72 ( .CK(clk), .D(\_1r1wramDxWb.din_i [17]), .Q(n110), .QN( ));
Q_FDP0 U73 ( .CK(clk), .D(\_1r1wramDxWb.din_i [16]), .Q(n109), .QN( ));
Q_FDP0 U74 ( .CK(clk), .D(\_1r1wramDxWb.din_i [15]), .Q(n108), .QN( ));
Q_FDP0 U75 ( .CK(clk), .D(\_1r1wramDxWb.din_i [14]), .Q(n107), .QN( ));
Q_FDP0 U76 ( .CK(clk), .D(\_1r1wramDxWb.din_i [13]), .Q(n106), .QN( ));
Q_FDP0 U77 ( .CK(clk), .D(\_1r1wramDxWb.din_i [12]), .Q(n105), .QN( ));
Q_FDP0 U78 ( .CK(clk), .D(\_1r1wramDxWb.din_i [11]), .Q(n104), .QN( ));
Q_FDP0 U79 ( .CK(clk), .D(\_1r1wramDxWb.din_i [10]), .Q(n103), .QN( ));
Q_FDP0 U80 ( .CK(clk), .D(\_1r1wramDxWb.din_i [9]), .Q(n102), .QN( ));
Q_FDP0 U81 ( .CK(clk), .D(\_1r1wramDxWb.din_i [8]), .Q(n101), .QN( ));
Q_FDP0 U82 ( .CK(clk), .D(\_1r1wramDxWb.din_i [7]), .Q(n100), .QN( ));
Q_FDP0 U83 ( .CK(clk), .D(\_1r1wramDxWb.din_i [6]), .Q(n99), .QN( ));
Q_FDP0 U84 ( .CK(clk), .D(\_1r1wramDxWb.din_i [5]), .Q(n98), .QN( ));
Q_FDP0 U85 ( .CK(clk), .D(\_1r1wramDxWb.din_i [4]), .Q(n97), .QN( ));
Q_FDP0 U86 ( .CK(clk), .D(\_1r1wramDxWb.din_i [3]), .Q(n96), .QN( ));
Q_FDP0 U87 ( .CK(clk), .D(\_1r1wramDxWb.din_i [2]), .Q(n95), .QN( ));
Q_FDP0 U88 ( .CK(clk), .D(\_1r1wramDxWb.din_i [1]), .Q(n94), .QN( ));
Q_FDP0 U89 ( .CK(clk), .D(\_1r1wramDxWb.din_i [0]), .Q(n93), .QN( ));
Q_FDP0 U90 ( .CK(clk), .D(\_1r1wramDxWb._wa [10]), .Q(n92), .QN( ));
Q_FDP0 U91 ( .CK(clk), .D(\_1r1wramDxWb._wa [9]), .Q(n91), .QN( ));
Q_FDP0 U92 ( .CK(clk), .D(\_1r1wramDxWb._wa [8]), .Q(n90), .QN( ));
Q_FDP0 U93 ( .CK(clk), .D(\_1r1wramDxWb._wa [7]), .Q(n89), .QN( ));
Q_FDP0 U94 ( .CK(clk), .D(\_1r1wramDxWb._wa [6]), .Q(n88), .QN( ));
Q_FDP0 U95 ( .CK(clk), .D(\_1r1wramDxWb._wa [5]), .Q(n87), .QN( ));
Q_FDP0 U96 ( .CK(clk), .D(\_1r1wramDxWb._wa [4]), .Q(n86), .QN( ));
Q_FDP0 U97 ( .CK(clk), .D(\_1r1wramDxWb._wa [3]), .Q(n85), .QN( ));
Q_FDP0 U98 ( .CK(clk), .D(\_1r1wramDxWb._wa [2]), .Q(n84), .QN( ));
Q_FDP0 U99 ( .CK(clk), .D(\_1r1wramDxWb._wa [1]), .Q(n83), .QN( ));
Q_FDP0 U100 ( .CK(clk), .D(\_1r1wramDxWb._wa [0]), .Q(n82), .QN( ));
Q_AN02 U101 ( .A0(n77), .A1(n80), .Z(n81));
Q_XOR2 U102 ( .A0(n76), .A1(n79), .Z(n80));
// pragma CVAINTPROP NET n76 _2_state_ 1
// pragma CVAINTPROP INSTANCE U102 NOBREAKS 1
Q_FDP0B U103 ( .D(n76), .QTFCLK( ), .Q(n79));
Q_FDP0 U104 ( .CK(clk), .D(n75), .Q(n77), .QN( ));
Q_FDP0 U105 ( .CK(clk), .D(n78), .Q(n76), .QN(n78));
ixc_assign \_1r1wramDxWb.genblk1._zz_strnp_2 ( \_1r1wramDxWb._web , 
	\_1r1wramDxWb.genblk1.web_r );
ixc_assign_11 \_1r1wramDxWb.genblk1._zz_strnp_3 ( \_1r1wramDxWb._wa [10:0], 
	\_1r1wramDxWb.genblk1.wa_r [10:0]);
ixc_assign_71 \_1r1wramDxWb.genblk1._zz_strnp_4 ( \_1r1wramDxWb._din [70:0], 
	\_1r1wramDxWb.genblk1.din_r [70:0]);
ixc_assign_71 \_1r1wramDxWb.genblk1._zz_strnp_5 ( \_1r1wramDxWb._bwe [70:0], 
	\_1r1wramDxWb.genblk1.bwe_r [70:0]);
Q_FDP0 \_1r1wramDxWb.genblk1.wa_r_REG[0] ( .CK(clk), .D(wa[0]), .Q(\_1r1wramDxWb.genblk1.wa_r [0]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.wa_r_REG[1] ( .CK(clk), .D(wa[1]), .Q(\_1r1wramDxWb.genblk1.wa_r [1]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.wa_r_REG[2] ( .CK(clk), .D(wa[2]), .Q(\_1r1wramDxWb.genblk1.wa_r [2]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.wa_r_REG[3] ( .CK(clk), .D(wa[3]), .Q(\_1r1wramDxWb.genblk1.wa_r [3]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.wa_r_REG[4] ( .CK(clk), .D(wa[4]), .Q(\_1r1wramDxWb.genblk1.wa_r [4]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.wa_r_REG[5] ( .CK(clk), .D(wa[5]), .Q(\_1r1wramDxWb.genblk1.wa_r [5]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.wa_r_REG[6] ( .CK(clk), .D(wa[6]), .Q(\_1r1wramDxWb.genblk1.wa_r [6]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.wa_r_REG[7] ( .CK(clk), .D(wa[7]), .Q(\_1r1wramDxWb.genblk1.wa_r [7]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.wa_r_REG[8] ( .CK(clk), .D(wa[8]), .Q(\_1r1wramDxWb.genblk1.wa_r [8]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.wa_r_REG[9] ( .CK(clk), .D(wa[9]), .Q(\_1r1wramDxWb.genblk1.wa_r [9]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.wa_r_REG[10] ( .CK(clk), .D(wa[10]), .Q(\_1r1wramDxWb.genblk1.wa_r [10]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[0] ( .CK(clk), .D(bwe[0]), .Q(\_1r1wramDxWb.genblk1.bwe_r [0]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[1] ( .CK(clk), .D(bwe[1]), .Q(\_1r1wramDxWb.genblk1.bwe_r [1]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[2] ( .CK(clk), .D(bwe[2]), .Q(\_1r1wramDxWb.genblk1.bwe_r [2]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[3] ( .CK(clk), .D(bwe[3]), .Q(\_1r1wramDxWb.genblk1.bwe_r [3]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[4] ( .CK(clk), .D(bwe[4]), .Q(\_1r1wramDxWb.genblk1.bwe_r [4]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[5] ( .CK(clk), .D(bwe[5]), .Q(\_1r1wramDxWb.genblk1.bwe_r [5]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[6] ( .CK(clk), .D(bwe[6]), .Q(\_1r1wramDxWb.genblk1.bwe_r [6]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[7] ( .CK(clk), .D(bwe[7]), .Q(\_1r1wramDxWb.genblk1.bwe_r [7]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[8] ( .CK(clk), .D(bwe[8]), .Q(\_1r1wramDxWb.genblk1.bwe_r [8]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[9] ( .CK(clk), .D(bwe[9]), .Q(\_1r1wramDxWb.genblk1.bwe_r [9]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[10] ( .CK(clk), .D(bwe[10]), .Q(\_1r1wramDxWb.genblk1.bwe_r [10]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[11] ( .CK(clk), .D(bwe[11]), .Q(\_1r1wramDxWb.genblk1.bwe_r [11]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[12] ( .CK(clk), .D(bwe[12]), .Q(\_1r1wramDxWb.genblk1.bwe_r [12]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[13] ( .CK(clk), .D(bwe[13]), .Q(\_1r1wramDxWb.genblk1.bwe_r [13]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[14] ( .CK(clk), .D(bwe[14]), .Q(\_1r1wramDxWb.genblk1.bwe_r [14]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[15] ( .CK(clk), .D(bwe[15]), .Q(\_1r1wramDxWb.genblk1.bwe_r [15]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[16] ( .CK(clk), .D(bwe[16]), .Q(\_1r1wramDxWb.genblk1.bwe_r [16]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[17] ( .CK(clk), .D(bwe[17]), .Q(\_1r1wramDxWb.genblk1.bwe_r [17]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[18] ( .CK(clk), .D(bwe[18]), .Q(\_1r1wramDxWb.genblk1.bwe_r [18]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[19] ( .CK(clk), .D(bwe[19]), .Q(\_1r1wramDxWb.genblk1.bwe_r [19]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[20] ( .CK(clk), .D(bwe[20]), .Q(\_1r1wramDxWb.genblk1.bwe_r [20]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[21] ( .CK(clk), .D(bwe[21]), .Q(\_1r1wramDxWb.genblk1.bwe_r [21]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[22] ( .CK(clk), .D(bwe[22]), .Q(\_1r1wramDxWb.genblk1.bwe_r [22]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[23] ( .CK(clk), .D(bwe[23]), .Q(\_1r1wramDxWb.genblk1.bwe_r [23]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[24] ( .CK(clk), .D(bwe[24]), .Q(\_1r1wramDxWb.genblk1.bwe_r [24]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[25] ( .CK(clk), .D(bwe[25]), .Q(\_1r1wramDxWb.genblk1.bwe_r [25]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[26] ( .CK(clk), .D(bwe[26]), .Q(\_1r1wramDxWb.genblk1.bwe_r [26]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[27] ( .CK(clk), .D(bwe[27]), .Q(\_1r1wramDxWb.genblk1.bwe_r [27]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[28] ( .CK(clk), .D(bwe[28]), .Q(\_1r1wramDxWb.genblk1.bwe_r [28]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[29] ( .CK(clk), .D(bwe[29]), .Q(\_1r1wramDxWb.genblk1.bwe_r [29]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[30] ( .CK(clk), .D(bwe[30]), .Q(\_1r1wramDxWb.genblk1.bwe_r [30]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[31] ( .CK(clk), .D(bwe[31]), .Q(\_1r1wramDxWb.genblk1.bwe_r [31]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[32] ( .CK(clk), .D(bwe[32]), .Q(\_1r1wramDxWb.genblk1.bwe_r [32]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[33] ( .CK(clk), .D(bwe[33]), .Q(\_1r1wramDxWb.genblk1.bwe_r [33]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[34] ( .CK(clk), .D(bwe[34]), .Q(\_1r1wramDxWb.genblk1.bwe_r [34]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[35] ( .CK(clk), .D(bwe[35]), .Q(\_1r1wramDxWb.genblk1.bwe_r [35]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[36] ( .CK(clk), .D(bwe[36]), .Q(\_1r1wramDxWb.genblk1.bwe_r [36]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[37] ( .CK(clk), .D(bwe[37]), .Q(\_1r1wramDxWb.genblk1.bwe_r [37]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[38] ( .CK(clk), .D(bwe[38]), .Q(\_1r1wramDxWb.genblk1.bwe_r [38]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[39] ( .CK(clk), .D(bwe[39]), .Q(\_1r1wramDxWb.genblk1.bwe_r [39]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[40] ( .CK(clk), .D(bwe[40]), .Q(\_1r1wramDxWb.genblk1.bwe_r [40]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[41] ( .CK(clk), .D(bwe[41]), .Q(\_1r1wramDxWb.genblk1.bwe_r [41]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[42] ( .CK(clk), .D(bwe[42]), .Q(\_1r1wramDxWb.genblk1.bwe_r [42]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[43] ( .CK(clk), .D(bwe[43]), .Q(\_1r1wramDxWb.genblk1.bwe_r [43]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[44] ( .CK(clk), .D(bwe[44]), .Q(\_1r1wramDxWb.genblk1.bwe_r [44]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[45] ( .CK(clk), .D(bwe[45]), .Q(\_1r1wramDxWb.genblk1.bwe_r [45]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[46] ( .CK(clk), .D(bwe[46]), .Q(\_1r1wramDxWb.genblk1.bwe_r [46]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[47] ( .CK(clk), .D(bwe[47]), .Q(\_1r1wramDxWb.genblk1.bwe_r [47]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[48] ( .CK(clk), .D(bwe[48]), .Q(\_1r1wramDxWb.genblk1.bwe_r [48]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[49] ( .CK(clk), .D(bwe[49]), .Q(\_1r1wramDxWb.genblk1.bwe_r [49]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[50] ( .CK(clk), .D(bwe[50]), .Q(\_1r1wramDxWb.genblk1.bwe_r [50]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[51] ( .CK(clk), .D(bwe[51]), .Q(\_1r1wramDxWb.genblk1.bwe_r [51]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[52] ( .CK(clk), .D(bwe[52]), .Q(\_1r1wramDxWb.genblk1.bwe_r [52]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[53] ( .CK(clk), .D(bwe[53]), .Q(\_1r1wramDxWb.genblk1.bwe_r [53]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[54] ( .CK(clk), .D(bwe[54]), .Q(\_1r1wramDxWb.genblk1.bwe_r [54]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[55] ( .CK(clk), .D(bwe[55]), .Q(\_1r1wramDxWb.genblk1.bwe_r [55]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[56] ( .CK(clk), .D(bwe[56]), .Q(\_1r1wramDxWb.genblk1.bwe_r [56]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[57] ( .CK(clk), .D(bwe[57]), .Q(\_1r1wramDxWb.genblk1.bwe_r [57]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[58] ( .CK(clk), .D(bwe[58]), .Q(\_1r1wramDxWb.genblk1.bwe_r [58]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[59] ( .CK(clk), .D(bwe[59]), .Q(\_1r1wramDxWb.genblk1.bwe_r [59]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[60] ( .CK(clk), .D(bwe[60]), .Q(\_1r1wramDxWb.genblk1.bwe_r [60]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[61] ( .CK(clk), .D(bwe[61]), .Q(\_1r1wramDxWb.genblk1.bwe_r [61]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[62] ( .CK(clk), .D(bwe[62]), .Q(\_1r1wramDxWb.genblk1.bwe_r [62]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[63] ( .CK(clk), .D(bwe[63]), .Q(\_1r1wramDxWb.genblk1.bwe_r [63]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[64] ( .CK(clk), .D(bwe[64]), .Q(\_1r1wramDxWb.genblk1.bwe_r [64]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[65] ( .CK(clk), .D(bwe[65]), .Q(\_1r1wramDxWb.genblk1.bwe_r [65]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[66] ( .CK(clk), .D(bwe[66]), .Q(\_1r1wramDxWb.genblk1.bwe_r [66]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[67] ( .CK(clk), .D(bwe[67]), .Q(\_1r1wramDxWb.genblk1.bwe_r [67]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[68] ( .CK(clk), .D(bwe[68]), .Q(\_1r1wramDxWb.genblk1.bwe_r [68]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[69] ( .CK(clk), .D(bwe[69]), .Q(\_1r1wramDxWb.genblk1.bwe_r [69]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.bwe_r_REG[70] ( .CK(clk), .D(bwe[70]), .Q(\_1r1wramDxWb.genblk1.bwe_r [70]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[0] ( .CK(clk), .D(ldin[0]), .Q(\_1r1wramDxWb.genblk1.din_r [0]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[1] ( .CK(clk), .D(ldin[1]), .Q(\_1r1wramDxWb.genblk1.din_r [1]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[2] ( .CK(clk), .D(ldin[2]), .Q(\_1r1wramDxWb.genblk1.din_r [2]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[3] ( .CK(clk), .D(ldin[3]), .Q(\_1r1wramDxWb.genblk1.din_r [3]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[4] ( .CK(clk), .D(ldin[4]), .Q(\_1r1wramDxWb.genblk1.din_r [4]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[5] ( .CK(clk), .D(ldin[5]), .Q(\_1r1wramDxWb.genblk1.din_r [5]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[6] ( .CK(clk), .D(ldin[6]), .Q(\_1r1wramDxWb.genblk1.din_r [6]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[7] ( .CK(clk), .D(ldin[7]), .Q(\_1r1wramDxWb.genblk1.din_r [7]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[8] ( .CK(clk), .D(ldin[8]), .Q(\_1r1wramDxWb.genblk1.din_r [8]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[9] ( .CK(clk), .D(ldin[9]), .Q(\_1r1wramDxWb.genblk1.din_r [9]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[10] ( .CK(clk), .D(ldin[10]), .Q(\_1r1wramDxWb.genblk1.din_r [10]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[11] ( .CK(clk), .D(ldin[11]), .Q(\_1r1wramDxWb.genblk1.din_r [11]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[12] ( .CK(clk), .D(ldin[12]), .Q(\_1r1wramDxWb.genblk1.din_r [12]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[13] ( .CK(clk), .D(ldin[13]), .Q(\_1r1wramDxWb.genblk1.din_r [13]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[14] ( .CK(clk), .D(ldin[14]), .Q(\_1r1wramDxWb.genblk1.din_r [14]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[15] ( .CK(clk), .D(ldin[15]), .Q(\_1r1wramDxWb.genblk1.din_r [15]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[16] ( .CK(clk), .D(ldin[16]), .Q(\_1r1wramDxWb.genblk1.din_r [16]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[17] ( .CK(clk), .D(ldin[17]), .Q(\_1r1wramDxWb.genblk1.din_r [17]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[18] ( .CK(clk), .D(ldin[18]), .Q(\_1r1wramDxWb.genblk1.din_r [18]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[19] ( .CK(clk), .D(ldin[19]), .Q(\_1r1wramDxWb.genblk1.din_r [19]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[20] ( .CK(clk), .D(ldin[20]), .Q(\_1r1wramDxWb.genblk1.din_r [20]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[21] ( .CK(clk), .D(ldin[21]), .Q(\_1r1wramDxWb.genblk1.din_r [21]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[22] ( .CK(clk), .D(ldin[22]), .Q(\_1r1wramDxWb.genblk1.din_r [22]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[23] ( .CK(clk), .D(ldin[23]), .Q(\_1r1wramDxWb.genblk1.din_r [23]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[24] ( .CK(clk), .D(ldin[24]), .Q(\_1r1wramDxWb.genblk1.din_r [24]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[25] ( .CK(clk), .D(ldin[25]), .Q(\_1r1wramDxWb.genblk1.din_r [25]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[26] ( .CK(clk), .D(ldin[26]), .Q(\_1r1wramDxWb.genblk1.din_r [26]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[27] ( .CK(clk), .D(ldin[27]), .Q(\_1r1wramDxWb.genblk1.din_r [27]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[28] ( .CK(clk), .D(ldin[28]), .Q(\_1r1wramDxWb.genblk1.din_r [28]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[29] ( .CK(clk), .D(ldin[29]), .Q(\_1r1wramDxWb.genblk1.din_r [29]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[30] ( .CK(clk), .D(ldin[30]), .Q(\_1r1wramDxWb.genblk1.din_r [30]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[31] ( .CK(clk), .D(ldin[31]), .Q(\_1r1wramDxWb.genblk1.din_r [31]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[32] ( .CK(clk), .D(ldin[32]), .Q(\_1r1wramDxWb.genblk1.din_r [32]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[33] ( .CK(clk), .D(ldin[33]), .Q(\_1r1wramDxWb.genblk1.din_r [33]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[34] ( .CK(clk), .D(ldin[34]), .Q(\_1r1wramDxWb.genblk1.din_r [34]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[35] ( .CK(clk), .D(ldin[35]), .Q(\_1r1wramDxWb.genblk1.din_r [35]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[36] ( .CK(clk), .D(ldin[36]), .Q(\_1r1wramDxWb.genblk1.din_r [36]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[37] ( .CK(clk), .D(ldin[37]), .Q(\_1r1wramDxWb.genblk1.din_r [37]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[38] ( .CK(clk), .D(ldin[38]), .Q(\_1r1wramDxWb.genblk1.din_r [38]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[39] ( .CK(clk), .D(ldin[39]), .Q(\_1r1wramDxWb.genblk1.din_r [39]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[40] ( .CK(clk), .D(ldin[40]), .Q(\_1r1wramDxWb.genblk1.din_r [40]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[41] ( .CK(clk), .D(ldin[41]), .Q(\_1r1wramDxWb.genblk1.din_r [41]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[42] ( .CK(clk), .D(ldin[42]), .Q(\_1r1wramDxWb.genblk1.din_r [42]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[43] ( .CK(clk), .D(ldin[43]), .Q(\_1r1wramDxWb.genblk1.din_r [43]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[44] ( .CK(clk), .D(ldin[44]), .Q(\_1r1wramDxWb.genblk1.din_r [44]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[45] ( .CK(clk), .D(ldin[45]), .Q(\_1r1wramDxWb.genblk1.din_r [45]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[46] ( .CK(clk), .D(ldin[46]), .Q(\_1r1wramDxWb.genblk1.din_r [46]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[47] ( .CK(clk), .D(ldin[47]), .Q(\_1r1wramDxWb.genblk1.din_r [47]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[48] ( .CK(clk), .D(ldin[48]), .Q(\_1r1wramDxWb.genblk1.din_r [48]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[49] ( .CK(clk), .D(ldin[49]), .Q(\_1r1wramDxWb.genblk1.din_r [49]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[50] ( .CK(clk), .D(ldin[50]), .Q(\_1r1wramDxWb.genblk1.din_r [50]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[51] ( .CK(clk), .D(ldin[51]), .Q(\_1r1wramDxWb.genblk1.din_r [51]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[52] ( .CK(clk), .D(ldin[52]), .Q(\_1r1wramDxWb.genblk1.din_r [52]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[53] ( .CK(clk), .D(ldin[53]), .Q(\_1r1wramDxWb.genblk1.din_r [53]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[54] ( .CK(clk), .D(ldin[54]), .Q(\_1r1wramDxWb.genblk1.din_r [54]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[55] ( .CK(clk), .D(ldin[55]), .Q(\_1r1wramDxWb.genblk1.din_r [55]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[56] ( .CK(clk), .D(ldin[56]), .Q(\_1r1wramDxWb.genblk1.din_r [56]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[57] ( .CK(clk), .D(ldin[57]), .Q(\_1r1wramDxWb.genblk1.din_r [57]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[58] ( .CK(clk), .D(ldin[58]), .Q(\_1r1wramDxWb.genblk1.din_r [58]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[59] ( .CK(clk), .D(ldin[59]), .Q(\_1r1wramDxWb.genblk1.din_r [59]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[60] ( .CK(clk), .D(ldin[60]), .Q(\_1r1wramDxWb.genblk1.din_r [60]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[61] ( .CK(clk), .D(ldin[61]), .Q(\_1r1wramDxWb.genblk1.din_r [61]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[62] ( .CK(clk), .D(ldin[62]), .Q(\_1r1wramDxWb.genblk1.din_r [62]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[63] ( .CK(clk), .D(ldin[63]), .Q(\_1r1wramDxWb.genblk1.din_r [63]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[64] ( .CK(clk), .D(ldin[64]), .Q(\_1r1wramDxWb.genblk1.din_r [64]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[65] ( .CK(clk), .D(ldin[65]), .Q(\_1r1wramDxWb.genblk1.din_r [65]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[66] ( .CK(clk), .D(ldin[66]), .Q(\_1r1wramDxWb.genblk1.din_r [66]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[67] ( .CK(clk), .D(ldin[67]), .Q(\_1r1wramDxWb.genblk1.din_r [67]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[68] ( .CK(clk), .D(ldin[68]), .Q(\_1r1wramDxWb.genblk1.din_r [68]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[69] ( .CK(clk), .D(ldin[69]), .Q(\_1r1wramDxWb.genblk1.din_r [69]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk1.din_r_REG[70] ( .CK(clk), .D(ldin[70]), .Q(\_1r1wramDxWb.genblk1.din_r [70]), .QN( ));
Q_FDP1 \_1r1wramDxWb.genblk1.web_r_REG ( .CK(clk), .R(rst_n), .D(web), .Q(\_1r1wramDxWb.genblk1.web_r ), .QN( ));
ixc_assign_71 \_1r1wramDxWb.genblk3._zz_strnp_6 ( ldout[70:0], 
	\_1r1wramDxWb.genblk3.dout_rr [70:0]);
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[0] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][0] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [0]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[1] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][1] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [1]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[2] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][2] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [2]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[3] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][3] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [3]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[4] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][4] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [4]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[5] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][5] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [5]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[6] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][6] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [6]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[7] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][7] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [7]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[8] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][8] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [8]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[9] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][9] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [9]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[10] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][10] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [10]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[11] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][11] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [11]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[12] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][12] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [12]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[13] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][13] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [13]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[14] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][14] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [14]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[15] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][15] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [15]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[16] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][16] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [16]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[17] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][17] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [17]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[18] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][18] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [18]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[19] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][19] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [19]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[20] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][20] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [20]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[21] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][21] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [21]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[22] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][22] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [22]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[23] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][23] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [23]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[24] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][24] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [24]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[25] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][25] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [25]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[26] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][26] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [26]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[27] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][27] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [27]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[28] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][28] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [28]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[29] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][29] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [29]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[30] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][30] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [30]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[31] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][31] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [31]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[32] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][32] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [32]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[33] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][33] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [33]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[34] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][34] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [34]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[35] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][35] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [35]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[36] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][36] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [36]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[37] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][37] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [37]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[38] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][38] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [38]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[39] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][39] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [39]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[40] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][40] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [40]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[41] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][41] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [41]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[42] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][42] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [42]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[43] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][43] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [43]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[44] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][44] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [44]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[45] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][45] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [45]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[46] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][46] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [46]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[47] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][47] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [47]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[48] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][48] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [48]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[49] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][49] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [49]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[50] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][50] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [50]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[51] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][51] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [51]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[52] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][52] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [52]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[53] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][53] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [53]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[54] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][54] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [54]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[55] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][55] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [55]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[56] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][56] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [56]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[57] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][57] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [57]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[58] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][58] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [58]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[59] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][59] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [59]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[60] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][60] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [60]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[61] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][61] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [61]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[62] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][62] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [62]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[63] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][63] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [63]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[64] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][64] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [64]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[65] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][65] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [65]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[66] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][66] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [66]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[67] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][67] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [67]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[68] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][68] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [68]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[69] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][69] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [69]), .QN( ));
Q_FDP0 \_1r1wramDxWb.genblk3.dout_rr_REG[70] ( .CK(clk), .D(\_1r1wramDxWb.dout_r[0][70] ), .Q(\_1r1wramDxWb.genblk3.dout_rr [70]), .QN( ));
Q_INV U336 ( .A(\_1r1wramDxWb._web ), .Z(n75));
ixc_assign \_1r1wramDxWb._zz_strnp_1 ( bimc_osync, bimc_isync);
ixc_assign \_1r1wramDxWb._zz_strnp_0 ( bimc_odat, bimc_idat);
Q_MX02 U339 ( .S(\_1r1wramDxWb._bwe [70]), .A0(n74), .A1(\_1r1wramDxWb._din [70]), .Z(\_1r1wramDxWb.din_i [70]));
Q_MX02 U340 ( .S(\_1r1wramDxWb._bwe [69]), .A0(n73), .A1(\_1r1wramDxWb._din [69]), .Z(\_1r1wramDxWb.din_i [69]));
Q_MX02 U341 ( .S(\_1r1wramDxWb._bwe [68]), .A0(n72), .A1(\_1r1wramDxWb._din [68]), .Z(\_1r1wramDxWb.din_i [68]));
Q_MX02 U342 ( .S(\_1r1wramDxWb._bwe [67]), .A0(n71), .A1(\_1r1wramDxWb._din [67]), .Z(\_1r1wramDxWb.din_i [67]));
Q_MX02 U343 ( .S(\_1r1wramDxWb._bwe [66]), .A0(n70), .A1(\_1r1wramDxWb._din [66]), .Z(\_1r1wramDxWb.din_i [66]));
Q_MX02 U344 ( .S(\_1r1wramDxWb._bwe [65]), .A0(n69), .A1(\_1r1wramDxWb._din [65]), .Z(\_1r1wramDxWb.din_i [65]));
Q_MX02 U345 ( .S(\_1r1wramDxWb._bwe [64]), .A0(n68), .A1(\_1r1wramDxWb._din [64]), .Z(\_1r1wramDxWb.din_i [64]));
Q_MX02 U346 ( .S(\_1r1wramDxWb._bwe [63]), .A0(n67), .A1(\_1r1wramDxWb._din [63]), .Z(\_1r1wramDxWb.din_i [63]));
Q_MX02 U347 ( .S(\_1r1wramDxWb._bwe [62]), .A0(n66), .A1(\_1r1wramDxWb._din [62]), .Z(\_1r1wramDxWb.din_i [62]));
Q_MX02 U348 ( .S(\_1r1wramDxWb._bwe [61]), .A0(n65), .A1(\_1r1wramDxWb._din [61]), .Z(\_1r1wramDxWb.din_i [61]));
Q_MX02 U349 ( .S(\_1r1wramDxWb._bwe [60]), .A0(n64), .A1(\_1r1wramDxWb._din [60]), .Z(\_1r1wramDxWb.din_i [60]));
Q_MX02 U350 ( .S(\_1r1wramDxWb._bwe [59]), .A0(n63), .A1(\_1r1wramDxWb._din [59]), .Z(\_1r1wramDxWb.din_i [59]));
Q_MX02 U351 ( .S(\_1r1wramDxWb._bwe [58]), .A0(n62), .A1(\_1r1wramDxWb._din [58]), .Z(\_1r1wramDxWb.din_i [58]));
Q_MX02 U352 ( .S(\_1r1wramDxWb._bwe [57]), .A0(n61), .A1(\_1r1wramDxWb._din [57]), .Z(\_1r1wramDxWb.din_i [57]));
Q_MX02 U353 ( .S(\_1r1wramDxWb._bwe [56]), .A0(n60), .A1(\_1r1wramDxWb._din [56]), .Z(\_1r1wramDxWb.din_i [56]));
Q_MX02 U354 ( .S(\_1r1wramDxWb._bwe [55]), .A0(n59), .A1(\_1r1wramDxWb._din [55]), .Z(\_1r1wramDxWb.din_i [55]));
Q_MX02 U355 ( .S(\_1r1wramDxWb._bwe [54]), .A0(n58), .A1(\_1r1wramDxWb._din [54]), .Z(\_1r1wramDxWb.din_i [54]));
Q_MX02 U356 ( .S(\_1r1wramDxWb._bwe [53]), .A0(n57), .A1(\_1r1wramDxWb._din [53]), .Z(\_1r1wramDxWb.din_i [53]));
Q_MX02 U357 ( .S(\_1r1wramDxWb._bwe [52]), .A0(n56), .A1(\_1r1wramDxWb._din [52]), .Z(\_1r1wramDxWb.din_i [52]));
Q_MX02 U358 ( .S(\_1r1wramDxWb._bwe [51]), .A0(n55), .A1(\_1r1wramDxWb._din [51]), .Z(\_1r1wramDxWb.din_i [51]));
Q_MX02 U359 ( .S(\_1r1wramDxWb._bwe [50]), .A0(n54), .A1(\_1r1wramDxWb._din [50]), .Z(\_1r1wramDxWb.din_i [50]));
Q_MX02 U360 ( .S(\_1r1wramDxWb._bwe [49]), .A0(n53), .A1(\_1r1wramDxWb._din [49]), .Z(\_1r1wramDxWb.din_i [49]));
Q_MX02 U361 ( .S(\_1r1wramDxWb._bwe [48]), .A0(n52), .A1(\_1r1wramDxWb._din [48]), .Z(\_1r1wramDxWb.din_i [48]));
Q_MX02 U362 ( .S(\_1r1wramDxWb._bwe [47]), .A0(n51), .A1(\_1r1wramDxWb._din [47]), .Z(\_1r1wramDxWb.din_i [47]));
Q_MX02 U363 ( .S(\_1r1wramDxWb._bwe [46]), .A0(n50), .A1(\_1r1wramDxWb._din [46]), .Z(\_1r1wramDxWb.din_i [46]));
Q_MX02 U364 ( .S(\_1r1wramDxWb._bwe [45]), .A0(n49), .A1(\_1r1wramDxWb._din [45]), .Z(\_1r1wramDxWb.din_i [45]));
Q_MX02 U365 ( .S(\_1r1wramDxWb._bwe [44]), .A0(n48), .A1(\_1r1wramDxWb._din [44]), .Z(\_1r1wramDxWb.din_i [44]));
Q_MX02 U366 ( .S(\_1r1wramDxWb._bwe [43]), .A0(n47), .A1(\_1r1wramDxWb._din [43]), .Z(\_1r1wramDxWb.din_i [43]));
Q_MX02 U367 ( .S(\_1r1wramDxWb._bwe [42]), .A0(n46), .A1(\_1r1wramDxWb._din [42]), .Z(\_1r1wramDxWb.din_i [42]));
Q_MX02 U368 ( .S(\_1r1wramDxWb._bwe [41]), .A0(n45), .A1(\_1r1wramDxWb._din [41]), .Z(\_1r1wramDxWb.din_i [41]));
Q_MX02 U369 ( .S(\_1r1wramDxWb._bwe [40]), .A0(n44), .A1(\_1r1wramDxWb._din [40]), .Z(\_1r1wramDxWb.din_i [40]));
Q_MX02 U370 ( .S(\_1r1wramDxWb._bwe [39]), .A0(n43), .A1(\_1r1wramDxWb._din [39]), .Z(\_1r1wramDxWb.din_i [39]));
Q_MX02 U371 ( .S(\_1r1wramDxWb._bwe [38]), .A0(n42), .A1(\_1r1wramDxWb._din [38]), .Z(\_1r1wramDxWb.din_i [38]));
Q_MX02 U372 ( .S(\_1r1wramDxWb._bwe [37]), .A0(n41), .A1(\_1r1wramDxWb._din [37]), .Z(\_1r1wramDxWb.din_i [37]));
Q_MX02 U373 ( .S(\_1r1wramDxWb._bwe [36]), .A0(n40), .A1(\_1r1wramDxWb._din [36]), .Z(\_1r1wramDxWb.din_i [36]));
Q_MX02 U374 ( .S(\_1r1wramDxWb._bwe [35]), .A0(n39), .A1(\_1r1wramDxWb._din [35]), .Z(\_1r1wramDxWb.din_i [35]));
Q_MX02 U375 ( .S(\_1r1wramDxWb._bwe [34]), .A0(n38), .A1(\_1r1wramDxWb._din [34]), .Z(\_1r1wramDxWb.din_i [34]));
Q_MX02 U376 ( .S(\_1r1wramDxWb._bwe [33]), .A0(n37), .A1(\_1r1wramDxWb._din [33]), .Z(\_1r1wramDxWb.din_i [33]));
Q_MX02 U377 ( .S(\_1r1wramDxWb._bwe [32]), .A0(n36), .A1(\_1r1wramDxWb._din [32]), .Z(\_1r1wramDxWb.din_i [32]));
Q_MX02 U378 ( .S(\_1r1wramDxWb._bwe [31]), .A0(n35), .A1(\_1r1wramDxWb._din [31]), .Z(\_1r1wramDxWb.din_i [31]));
Q_MX02 U379 ( .S(\_1r1wramDxWb._bwe [30]), .A0(n34), .A1(\_1r1wramDxWb._din [30]), .Z(\_1r1wramDxWb.din_i [30]));
Q_MX02 U380 ( .S(\_1r1wramDxWb._bwe [29]), .A0(n33), .A1(\_1r1wramDxWb._din [29]), .Z(\_1r1wramDxWb.din_i [29]));
Q_MX02 U381 ( .S(\_1r1wramDxWb._bwe [28]), .A0(n32), .A1(\_1r1wramDxWb._din [28]), .Z(\_1r1wramDxWb.din_i [28]));
Q_MX02 U382 ( .S(\_1r1wramDxWb._bwe [27]), .A0(n31), .A1(\_1r1wramDxWb._din [27]), .Z(\_1r1wramDxWb.din_i [27]));
Q_MX02 U383 ( .S(\_1r1wramDxWb._bwe [26]), .A0(n30), .A1(\_1r1wramDxWb._din [26]), .Z(\_1r1wramDxWb.din_i [26]));
Q_MX02 U384 ( .S(\_1r1wramDxWb._bwe [25]), .A0(n29), .A1(\_1r1wramDxWb._din [25]), .Z(\_1r1wramDxWb.din_i [25]));
Q_MX02 U385 ( .S(\_1r1wramDxWb._bwe [24]), .A0(n28), .A1(\_1r1wramDxWb._din [24]), .Z(\_1r1wramDxWb.din_i [24]));
Q_MX02 U386 ( .S(\_1r1wramDxWb._bwe [23]), .A0(n27), .A1(\_1r1wramDxWb._din [23]), .Z(\_1r1wramDxWb.din_i [23]));
Q_MX02 U387 ( .S(\_1r1wramDxWb._bwe [22]), .A0(n26), .A1(\_1r1wramDxWb._din [22]), .Z(\_1r1wramDxWb.din_i [22]));
Q_MX02 U388 ( .S(\_1r1wramDxWb._bwe [21]), .A0(n25), .A1(\_1r1wramDxWb._din [21]), .Z(\_1r1wramDxWb.din_i [21]));
Q_MX02 U389 ( .S(\_1r1wramDxWb._bwe [20]), .A0(n24), .A1(\_1r1wramDxWb._din [20]), .Z(\_1r1wramDxWb.din_i [20]));
Q_MX02 U390 ( .S(\_1r1wramDxWb._bwe [19]), .A0(n23), .A1(\_1r1wramDxWb._din [19]), .Z(\_1r1wramDxWb.din_i [19]));
Q_MX02 U391 ( .S(\_1r1wramDxWb._bwe [18]), .A0(n22), .A1(\_1r1wramDxWb._din [18]), .Z(\_1r1wramDxWb.din_i [18]));
Q_MX02 U392 ( .S(\_1r1wramDxWb._bwe [17]), .A0(n21), .A1(\_1r1wramDxWb._din [17]), .Z(\_1r1wramDxWb.din_i [17]));
Q_MX02 U393 ( .S(\_1r1wramDxWb._bwe [16]), .A0(n20), .A1(\_1r1wramDxWb._din [16]), .Z(\_1r1wramDxWb.din_i [16]));
Q_MX02 U394 ( .S(\_1r1wramDxWb._bwe [15]), .A0(n19), .A1(\_1r1wramDxWb._din [15]), .Z(\_1r1wramDxWb.din_i [15]));
Q_MX02 U395 ( .S(\_1r1wramDxWb._bwe [14]), .A0(n18), .A1(\_1r1wramDxWb._din [14]), .Z(\_1r1wramDxWb.din_i [14]));
Q_MX02 U396 ( .S(\_1r1wramDxWb._bwe [13]), .A0(n17), .A1(\_1r1wramDxWb._din [13]), .Z(\_1r1wramDxWb.din_i [13]));
Q_MX02 U397 ( .S(\_1r1wramDxWb._bwe [12]), .A0(n16), .A1(\_1r1wramDxWb._din [12]), .Z(\_1r1wramDxWb.din_i [12]));
Q_MX02 U398 ( .S(\_1r1wramDxWb._bwe [11]), .A0(n15), .A1(\_1r1wramDxWb._din [11]), .Z(\_1r1wramDxWb.din_i [11]));
Q_MX02 U399 ( .S(\_1r1wramDxWb._bwe [10]), .A0(n14), .A1(\_1r1wramDxWb._din [10]), .Z(\_1r1wramDxWb.din_i [10]));
Q_MX02 U400 ( .S(\_1r1wramDxWb._bwe [9]), .A0(n13), .A1(\_1r1wramDxWb._din [9]), .Z(\_1r1wramDxWb.din_i [9]));
Q_MX02 U401 ( .S(\_1r1wramDxWb._bwe [8]), .A0(n12), .A1(\_1r1wramDxWb._din [8]), .Z(\_1r1wramDxWb.din_i [8]));
Q_MX02 U402 ( .S(\_1r1wramDxWb._bwe [7]), .A0(n11), .A1(\_1r1wramDxWb._din [7]), .Z(\_1r1wramDxWb.din_i [7]));
Q_MX02 U403 ( .S(\_1r1wramDxWb._bwe [6]), .A0(n10), .A1(\_1r1wramDxWb._din [6]), .Z(\_1r1wramDxWb.din_i [6]));
Q_MX02 U404 ( .S(\_1r1wramDxWb._bwe [5]), .A0(n9), .A1(\_1r1wramDxWb._din [5]), .Z(\_1r1wramDxWb.din_i [5]));
Q_MX02 U405 ( .S(\_1r1wramDxWb._bwe [4]), .A0(n8), .A1(\_1r1wramDxWb._din [4]), .Z(\_1r1wramDxWb.din_i [4]));
Q_MX02 U406 ( .S(\_1r1wramDxWb._bwe [3]), .A0(n7), .A1(\_1r1wramDxWb._din [3]), .Z(\_1r1wramDxWb.din_i [3]));
Q_MX02 U407 ( .S(\_1r1wramDxWb._bwe [2]), .A0(n6), .A1(\_1r1wramDxWb._din [2]), .Z(\_1r1wramDxWb.din_i [2]));
Q_MX02 U408 ( .S(\_1r1wramDxWb._bwe [1]), .A0(n5), .A1(\_1r1wramDxWb._din [1]), .Z(\_1r1wramDxWb.din_i [1]));
Q_MX02 U409 ( .S(\_1r1wramDxWb._bwe [0]), .A0(n4), .A1(\_1r1wramDxWb._din [0]), .Z(\_1r1wramDxWb.din_i [0]));
Q_INV U410 ( .A(reb), .Z(n1));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][0] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [0]), .Q(\_1r1wramDxWb.dout_r[0][0] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][1] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [1]), .Q(\_1r1wramDxWb.dout_r[0][1] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][2] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [2]), .Q(\_1r1wramDxWb.dout_r[0][2] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][3] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [3]), .Q(\_1r1wramDxWb.dout_r[0][3] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][4] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [4]), .Q(\_1r1wramDxWb.dout_r[0][4] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][5] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [5]), .Q(\_1r1wramDxWb.dout_r[0][5] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][6] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [6]), .Q(\_1r1wramDxWb.dout_r[0][6] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][7] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [7]), .Q(\_1r1wramDxWb.dout_r[0][7] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][8] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [8]), .Q(\_1r1wramDxWb.dout_r[0][8] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][9] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [9]), .Q(\_1r1wramDxWb.dout_r[0][9] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][10] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [10]), .Q(\_1r1wramDxWb.dout_r[0][10] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][11] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [11]), .Q(\_1r1wramDxWb.dout_r[0][11] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][12] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [12]), .Q(\_1r1wramDxWb.dout_r[0][12] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][13] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [13]), .Q(\_1r1wramDxWb.dout_r[0][13] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][14] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [14]), .Q(\_1r1wramDxWb.dout_r[0][14] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][15] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [15]), .Q(\_1r1wramDxWb.dout_r[0][15] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][16] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [16]), .Q(\_1r1wramDxWb.dout_r[0][16] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][17] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [17]), .Q(\_1r1wramDxWb.dout_r[0][17] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][18] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [18]), .Q(\_1r1wramDxWb.dout_r[0][18] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][19] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [19]), .Q(\_1r1wramDxWb.dout_r[0][19] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][20] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [20]), .Q(\_1r1wramDxWb.dout_r[0][20] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][21] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [21]), .Q(\_1r1wramDxWb.dout_r[0][21] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][22] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [22]), .Q(\_1r1wramDxWb.dout_r[0][22] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][23] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [23]), .Q(\_1r1wramDxWb.dout_r[0][23] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][24] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [24]), .Q(\_1r1wramDxWb.dout_r[0][24] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][25] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [25]), .Q(\_1r1wramDxWb.dout_r[0][25] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][26] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [26]), .Q(\_1r1wramDxWb.dout_r[0][26] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][27] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [27]), .Q(\_1r1wramDxWb.dout_r[0][27] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][28] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [28]), .Q(\_1r1wramDxWb.dout_r[0][28] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][29] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [29]), .Q(\_1r1wramDxWb.dout_r[0][29] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][30] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [30]), .Q(\_1r1wramDxWb.dout_r[0][30] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][31] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [31]), .Q(\_1r1wramDxWb.dout_r[0][31] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][32] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [32]), .Q(\_1r1wramDxWb.dout_r[0][32] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][33] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [33]), .Q(\_1r1wramDxWb.dout_r[0][33] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][34] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [34]), .Q(\_1r1wramDxWb.dout_r[0][34] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][35] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [35]), .Q(\_1r1wramDxWb.dout_r[0][35] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][36] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [36]), .Q(\_1r1wramDxWb.dout_r[0][36] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][37] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [37]), .Q(\_1r1wramDxWb.dout_r[0][37] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][38] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [38]), .Q(\_1r1wramDxWb.dout_r[0][38] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][39] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [39]), .Q(\_1r1wramDxWb.dout_r[0][39] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][40] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [40]), .Q(\_1r1wramDxWb.dout_r[0][40] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][41] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [41]), .Q(\_1r1wramDxWb.dout_r[0][41] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][42] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [42]), .Q(\_1r1wramDxWb.dout_r[0][42] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][43] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [43]), .Q(\_1r1wramDxWb.dout_r[0][43] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][44] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [44]), .Q(\_1r1wramDxWb.dout_r[0][44] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][45] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [45]), .Q(\_1r1wramDxWb.dout_r[0][45] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][46] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [46]), .Q(\_1r1wramDxWb.dout_r[0][46] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][47] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [47]), .Q(\_1r1wramDxWb.dout_r[0][47] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][48] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [48]), .Q(\_1r1wramDxWb.dout_r[0][48] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][49] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [49]), .Q(\_1r1wramDxWb.dout_r[0][49] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][50] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [50]), .Q(\_1r1wramDxWb.dout_r[0][50] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][51] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [51]), .Q(\_1r1wramDxWb.dout_r[0][51] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][52] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [52]), .Q(\_1r1wramDxWb.dout_r[0][52] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][53] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [53]), .Q(\_1r1wramDxWb.dout_r[0][53] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][54] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [54]), .Q(\_1r1wramDxWb.dout_r[0][54] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][55] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [55]), .Q(\_1r1wramDxWb.dout_r[0][55] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][56] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [56]), .Q(\_1r1wramDxWb.dout_r[0][56] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][57] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [57]), .Q(\_1r1wramDxWb.dout_r[0][57] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][58] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [58]), .Q(\_1r1wramDxWb.dout_r[0][58] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][59] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [59]), .Q(\_1r1wramDxWb.dout_r[0][59] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][60] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [60]), .Q(\_1r1wramDxWb.dout_r[0][60] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][61] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [61]), .Q(\_1r1wramDxWb.dout_r[0][61] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][62] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [62]), .Q(\_1r1wramDxWb.dout_r[0][62] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][63] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [63]), .Q(\_1r1wramDxWb.dout_r[0][63] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][64] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [64]), .Q(\_1r1wramDxWb.dout_r[0][64] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][65] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [65]), .Q(\_1r1wramDxWb.dout_r[0][65] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][66] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [66]), .Q(\_1r1wramDxWb.dout_r[0][66] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][67] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [67]), .Q(\_1r1wramDxWb.dout_r[0][67] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][68] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [68]), .Q(\_1r1wramDxWb.dout_r[0][68] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][69] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [69]), .Q(\_1r1wramDxWb.dout_r[0][69] ));
Q_FDP4EP \_1r1wramDxWb.dout_r_REG[0][70] ( .CK(clk), .CE(n1), .R(n2), .D(\_1r1wramDxWb.dout_i [70]), .Q(\_1r1wramDxWb.dout_r[0][70] ));
`ifdef CBV

reg [70:0] \_1r1wramDxWb.mem  [0:2047];
initial begin: U482
  integer i;
  for (i=0; i<=2047; i=i+1) \_1r1wramDxWb.mem [i] =
`ifdef CBV_MEM_INIT1
  {71{1'b1}};
`else
  71'b0;
`endif
end
reg [70:0] n164;
assign {\_1r1wramDxWb.dout_i [70], \_1r1wramDxWb.dout_i [69], \_1r1wramDxWb.dout_i [68], \_1r1wramDxWb.dout_i [67], \_1r1wramDxWb.dout_i [66], \_1r1wramDxWb.dout_i [65], \_1r1wramDxWb.dout_i [64],
\_1r1wramDxWb.dout_i [63], \_1r1wramDxWb.dout_i [62], \_1r1wramDxWb.dout_i [61], \_1r1wramDxWb.dout_i [60], \_1r1wramDxWb.dout_i [59], \_1r1wramDxWb.dout_i [58], \_1r1wramDxWb.dout_i [57], \_1r1wramDxWb.dout_i [56],
\_1r1wramDxWb.dout_i [55], \_1r1wramDxWb.dout_i [54], \_1r1wramDxWb.dout_i [53], \_1r1wramDxWb.dout_i [52], \_1r1wramDxWb.dout_i [51], \_1r1wramDxWb.dout_i [50], \_1r1wramDxWb.dout_i [49], \_1r1wramDxWb.dout_i [48],
\_1r1wramDxWb.dout_i [47], \_1r1wramDxWb.dout_i [46], \_1r1wramDxWb.dout_i [45], \_1r1wramDxWb.dout_i [44], \_1r1wramDxWb.dout_i [43], \_1r1wramDxWb.dout_i [42], \_1r1wramDxWb.dout_i [41], \_1r1wramDxWb.dout_i [40],
\_1r1wramDxWb.dout_i [39], \_1r1wramDxWb.dout_i [38], \_1r1wramDxWb.dout_i [37], \_1r1wramDxWb.dout_i [36], \_1r1wramDxWb.dout_i [35], \_1r1wramDxWb.dout_i [34], \_1r1wramDxWb.dout_i [33], \_1r1wramDxWb.dout_i [32],
\_1r1wramDxWb.dout_i [31], \_1r1wramDxWb.dout_i [30], \_1r1wramDxWb.dout_i [29], \_1r1wramDxWb.dout_i [28], \_1r1wramDxWb.dout_i [27], \_1r1wramDxWb.dout_i [26], \_1r1wramDxWb.dout_i [25], \_1r1wramDxWb.dout_i [24],
\_1r1wramDxWb.dout_i [23], \_1r1wramDxWb.dout_i [22], \_1r1wramDxWb.dout_i [21], \_1r1wramDxWb.dout_i [20], \_1r1wramDxWb.dout_i [19], \_1r1wramDxWb.dout_i [18], \_1r1wramDxWb.dout_i [17], \_1r1wramDxWb.dout_i [16],
\_1r1wramDxWb.dout_i [15], \_1r1wramDxWb.dout_i [14], \_1r1wramDxWb.dout_i [13], \_1r1wramDxWb.dout_i [12], \_1r1wramDxWb.dout_i [11], \_1r1wramDxWb.dout_i [10], \_1r1wramDxWb.dout_i [9], \_1r1wramDxWb.dout_i [8],
\_1r1wramDxWb.dout_i [7], \_1r1wramDxWb.dout_i [6], \_1r1wramDxWb.dout_i [5], \_1r1wramDxWb.dout_i [4], \_1r1wramDxWb.dout_i [3], \_1r1wramDxWb.dout_i [2], \_1r1wramDxWb.dout_i [1], \_1r1wramDxWb.dout_i [0]} = n164; 
reg [70:0] n165;
assign {n74, n73, n72, n71, n70, n69, n68,
n67, n66, n65, n64, n63, n62, n61, n60,
n59, n58, n57, n56, n55, n54, n53, n52,
n51, n50, n49, n48, n47, n46, n45, n44,
n43, n42, n41, n40, n39, n38, n37, n36,
n35, n34, n33, n32, n31, n30, n29, n28,
n27, n26, n25, n24, n23, n22, n21, n20,
n19, n18, n17, n16, n15, n14, n13, n12,
n11, n10, n9, n8, n7, n6, n5, n4} = n165; 
always @(n92 or n91 or n90 or n89 or n88
 or n87 or n86 or n85 or n84 or n83 or n82 or n163 or n162
 or n161 or n160 or n159 or n158 or n157 or n156 or n155 or n154
 or n153 or n152 or n151 or n150 or n149 or n148 or n147 or n146
 or n145 or n144 or n143 or n142 or n141 or n140 or n139 or n138
 or n137 or n136 or n135 or n134 or n133 or n132 or n131 or n130
 or n129 or n128 or n127 or n126 or n125 or n124 or n123 or n122
 or n121 or n120 or n119 or n118 or n117 or n116 or n115 or n114
 or n113 or n112 or n111 or n110 or n109 or n108 or n107 or n106
 or n105 or n104 or n103 or n102 or n101 or n100 or n99 or n98
 or n97 or n96 or n95 or n94 or n93 or n81 or ra[10] or ra[9]
 or ra[8] or ra[7] or ra[6] or ra[5] or ra[4] or ra[3] or ra[2] or ra[1]
 or ra[0] or \_1r1wramDxWb._wa [10] or \_1r1wramDxWb._wa [9] or \_1r1wramDxWb._wa [8] or \_1r1wramDxWb._wa [7] or \_1r1wramDxWb._wa [6] or \_1r1wramDxWb._wa [5] or \_1r1wramDxWb._wa [4]
 or \_1r1wramDxWb._wa [3] or \_1r1wramDxWb._wa [2] or \_1r1wramDxWb._wa [1] or \_1r1wramDxWb._wa [0])
#0 begin
if (n81)
\_1r1wramDxWb.mem [{n92, n91, n90, n89, n88,
 n87, n86, n85, n84, n83, n82}] =
{n163, n162, n161, n160, n159,
 n158, n157, n156, n155, n154, n153, n152, n151,
 n150, n149, n148, n147, n146, n145, n144, n143,
 n142, n141, n140, n139, n138, n137, n136, n135,
 n134, n133, n132, n131, n130, n129, n128, n127,
 n126, n125, n124, n123, n122, n121, n120, n119,
 n118, n117, n116, n115, n114, n113, n112, n111,
 n110, n109, n108, n107, n106, n105, n104, n103,
 n102, n101, n100, n99, n98, n97, n96, n95,
 n94, n93};
n164 = \_1r1wramDxWb.mem [{ra[10], ra[9], ra[8], ra[7], ra[6],
 ra[5], ra[4], ra[3], ra[2], ra[1], ra[0]}];
n165 = \_1r1wramDxWb.mem [{\_1r1wramDxWb._wa [10], \_1r1wramDxWb._wa [9], \_1r1wramDxWb._wa [8], \_1r1wramDxWb._wa [7], \_1r1wramDxWb._wa [6],
 \_1r1wramDxWb._wa [5], \_1r1wramDxWb._wa [4], \_1r1wramDxWb._wa [3], \_1r1wramDxWb._wa [2], \_1r1wramDxWb._wa [1], \_1r1wramDxWb._wa [0]}];
end
`else

MPW2KX71 \_1r1wramDxWb.mem  ( .A10(n92), .A9(n91), .A8(n90), .A7(n89), .A6(n88), .A5(n87),
 .A4(n86), .A3(n85), .A2(n84), .A1(n83), .A0(n82), .DI70(n163), .DI69(n162), .DI68(n161),
 .DI67(n160), .DI66(n159), .DI65(n158), .DI64(n157), .DI63(n156), .DI62(n155), .DI61(n154), .DI60(n153),
 .DI59(n152), .DI58(n151), .DI57(n150), .DI56(n149), .DI55(n148), .DI54(n147), .DI53(n146), .DI52(n145),
 .DI51(n144), .DI50(n143), .DI49(n142), .DI48(n141), .DI47(n140), .DI46(n139), .DI45(n138), .DI44(n137),
 .DI43(n136), .DI42(n135), .DI41(n134), .DI40(n133), .DI39(n132), .DI38(n131), .DI37(n130), .DI36(n129),
 .DI35(n128), .DI34(n127), .DI33(n126), .DI32(n125), .DI31(n124), .DI30(n123), .DI29(n122), .DI28(n121),
 .DI27(n120), .DI26(n119), .DI25(n118), .DI24(n117), .DI23(n116), .DI22(n115), .DI21(n114), .DI20(n113),
 .DI19(n112), .DI18(n111), .DI17(n110), .DI16(n109), .DI15(n108), .DI14(n107), .DI13(n106), .DI12(n105),
 .DI11(n104), .DI10(n103), .DI9(n102), .DI8(n101), .DI7(n100), .DI6(n99), .DI5(n98), .DI4(n97),
 .DI3(n96), .DI2(n95), .DI1(n94), .DI0(n93), .WE(n81), .SYNC_IN(n2), .SYNC_OUT(n164));
// pragma CVASTRPROP INSTANCE "\_1r1wramDxWb.mem " HDL_MEMORY_DECL "1 70 0 0 2047"
MPR2KX71 U483 ( .A10(ra[10]), .A9(ra[9]), .A8(ra[8]), .A7(ra[7]), .A6(ra[6]), .A5(ra[5]),
 .A4(ra[4]), .A3(ra[3]), .A2(ra[2]), .A1(ra[1]), .A0(ra[0]), .SYNC_IN(n164), .DO70(\_1r1wramDxWb.dout_i [70]), .DO69(\_1r1wramDxWb.dout_i [69]),
 .DO68(\_1r1wramDxWb.dout_i [68]), .DO67(\_1r1wramDxWb.dout_i [67]), .DO66(\_1r1wramDxWb.dout_i [66]), .DO65(\_1r1wramDxWb.dout_i [65]), .DO64(\_1r1wramDxWb.dout_i [64]), .DO63(\_1r1wramDxWb.dout_i [63]), .DO62(\_1r1wramDxWb.dout_i [62]), .DO61(\_1r1wramDxWb.dout_i [61]),
 .DO60(\_1r1wramDxWb.dout_i [60]), .DO59(\_1r1wramDxWb.dout_i [59]), .DO58(\_1r1wramDxWb.dout_i [58]), .DO57(\_1r1wramDxWb.dout_i [57]), .DO56(\_1r1wramDxWb.dout_i [56]), .DO55(\_1r1wramDxWb.dout_i [55]), .DO54(\_1r1wramDxWb.dout_i [54]), .DO53(\_1r1wramDxWb.dout_i [53]),
 .DO52(\_1r1wramDxWb.dout_i [52]), .DO51(\_1r1wramDxWb.dout_i [51]), .DO50(\_1r1wramDxWb.dout_i [50]), .DO49(\_1r1wramDxWb.dout_i [49]), .DO48(\_1r1wramDxWb.dout_i [48]), .DO47(\_1r1wramDxWb.dout_i [47]), .DO46(\_1r1wramDxWb.dout_i [46]), .DO45(\_1r1wramDxWb.dout_i [45]),
 .DO44(\_1r1wramDxWb.dout_i [44]), .DO43(\_1r1wramDxWb.dout_i [43]), .DO42(\_1r1wramDxWb.dout_i [42]), .DO41(\_1r1wramDxWb.dout_i [41]), .DO40(\_1r1wramDxWb.dout_i [40]), .DO39(\_1r1wramDxWb.dout_i [39]), .DO38(\_1r1wramDxWb.dout_i [38]), .DO37(\_1r1wramDxWb.dout_i [37]),
 .DO36(\_1r1wramDxWb.dout_i [36]), .DO35(\_1r1wramDxWb.dout_i [35]), .DO34(\_1r1wramDxWb.dout_i [34]), .DO33(\_1r1wramDxWb.dout_i [33]), .DO32(\_1r1wramDxWb.dout_i [32]), .DO31(\_1r1wramDxWb.dout_i [31]), .DO30(\_1r1wramDxWb.dout_i [30]), .DO29(\_1r1wramDxWb.dout_i [29]),
 .DO28(\_1r1wramDxWb.dout_i [28]), .DO27(\_1r1wramDxWb.dout_i [27]), .DO26(\_1r1wramDxWb.dout_i [26]), .DO25(\_1r1wramDxWb.dout_i [25]), .DO24(\_1r1wramDxWb.dout_i [24]), .DO23(\_1r1wramDxWb.dout_i [23]), .DO22(\_1r1wramDxWb.dout_i [22]), .DO21(\_1r1wramDxWb.dout_i [21]),
 .DO20(\_1r1wramDxWb.dout_i [20]), .DO19(\_1r1wramDxWb.dout_i [19]), .DO18(\_1r1wramDxWb.dout_i [18]), .DO17(\_1r1wramDxWb.dout_i [17]), .DO16(\_1r1wramDxWb.dout_i [16]), .DO15(\_1r1wramDxWb.dout_i [15]), .DO14(\_1r1wramDxWb.dout_i [14]), .DO13(\_1r1wramDxWb.dout_i [13]),
 .DO12(\_1r1wramDxWb.dout_i [12]), .DO11(\_1r1wramDxWb.dout_i [11]), .DO10(\_1r1wramDxWb.dout_i [10]), .DO9(\_1r1wramDxWb.dout_i [9]), .DO8(\_1r1wramDxWb.dout_i [8]), .DO7(\_1r1wramDxWb.dout_i [7]), .DO6(\_1r1wramDxWb.dout_i [6]), .DO5(\_1r1wramDxWb.dout_i [5]),
 .DO4(\_1r1wramDxWb.dout_i [4]), .DO3(\_1r1wramDxWb.dout_i [3]), .DO2(\_1r1wramDxWb.dout_i [2]), .DO1(\_1r1wramDxWb.dout_i [1]), .DO0(\_1r1wramDxWb.dout_i [0]), .SYNC_OUT(n165));
MPR2KX71 U484 ( .A10(\_1r1wramDxWb._wa [10]), .A9(\_1r1wramDxWb._wa [9]), .A8(\_1r1wramDxWb._wa [8]), .A7(\_1r1wramDxWb._wa [7]), .A6(\_1r1wramDxWb._wa [6]), .A5(\_1r1wramDxWb._wa [5]),
 .A4(\_1r1wramDxWb._wa [4]), .A3(\_1r1wramDxWb._wa [3]), .A2(\_1r1wramDxWb._wa [2]), .A1(\_1r1wramDxWb._wa [1]), .A0(\_1r1wramDxWb._wa [0]), .SYNC_IN(n165), .DO70(n74), .DO69(n73),
 .DO68(n72), .DO67(n71), .DO66(n70), .DO65(n69), .DO64(n68), .DO63(n67), .DO62(n66), .DO61(n65),
 .DO60(n64), .DO59(n63), .DO58(n62), .DO57(n61), .DO56(n60), .DO55(n59), .DO54(n58), .DO53(n57),
 .DO52(n56), .DO51(n55), .DO50(n54), .DO49(n53), .DO48(n52), .DO47(n51), .DO46(n50), .DO45(n49),
 .DO44(n48), .DO43(n47), .DO42(n46), .DO41(n45), .DO40(n44), .DO39(n43), .DO38(n42), .DO37(n41),
 .DO36(n40), .DO35(n39), .DO34(n38), .DO33(n37), .DO32(n36), .DO31(n35), .DO30(n34), .DO29(n33),
 .DO28(n32), .DO27(n31), .DO26(n30), .DO25(n29), .DO24(n28), .DO23(n27), .DO22(n26), .DO21(n25),
 .DO20(n24), .DO19(n23), .DO18(n22), .DO17(n21), .DO16(n20), .DO15(n19), .DO14(n18), .DO13(n17),
 .DO12(n16), .DO11(n15), .DO10(n14), .DO9(n13), .DO8(n12), .DO7(n11), .DO6(n10), .DO5(n9),
 .DO4(n8), .DO3(n7), .DO2(n6), .DO1(n5), .DO0(n4), .SYNC_OUT( ));
`endif
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_DECL_m1 "\_1r1wramDxWb.dout_r  1 70 0 0 0"
// pragma CVASTRPROP MODULE HDLICE HDL_MEMORY_NON_CMM "1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_3 "0 genblk3  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_2 "0 genblk2  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 _1r1wramDxWb  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb.genblk3"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb.genblk2"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb.genblk1"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "_1r1wramDxWb"
endmodule
`ifdef CBV
`else
`ifdef MPW2KX71_MPR2KX71
`else
module MPW2KX71( A10, A9, A8, A7, A6, A5, A4,
 A3, A2, A1, A0, DI70, DI69, DI68, DI67,
 DI66, DI65, DI64, DI63, DI62, DI61, DI60, DI59,
 DI58, DI57, DI56, DI55, DI54, DI53, DI52, DI51,
 DI50, DI49, DI48, DI47, DI46, DI45, DI44, DI43,
 DI42, DI41, DI40, DI39, DI38, DI37, DI36, DI35,
 DI34, DI33, DI32, DI31, DI30, DI29, DI28, DI27,
 DI26, DI25, DI24, DI23, DI22, DI21, DI20, DI19,
 DI18, DI17, DI16, DI15, DI14, DI13, DI12, DI11,
 DI10, DI9, DI8, DI7, DI6, DI5, DI4, DI3,
 DI2, DI1, DI0, WE, SYNC_IN, SYNC_OUT);
input  A10, A9, A8, A7, A6, A5, A4, A3,
 A2, A1, A0, DI70, DI69, DI68, DI67, DI66, DI65, DI64,
 DI63, DI62, DI61, DI60, DI59, DI58, DI57, DI56, DI55, DI54,
 DI53, DI52, DI51, DI50, DI49, DI48, DI47, DI46, DI45, DI44,
 DI43, DI42, DI41, DI40, DI39, DI38, DI37, DI36, DI35, DI34,
 DI33, DI32, DI31, DI30, DI29, DI28, DI27, DI26, DI25, DI24,
 DI23, DI22, DI21, DI20, DI19, DI18, DI17, DI16, DI15, DI14,
 DI13, DI12, DI11, DI10, DI9, DI8, DI7, DI6, DI5, DI4,
 DI3, DI2, DI1, DI0, WE, SYNC_IN;
output  SYNC_OUT;
endmodule
`ifdef _MPR2KX71_
`else
module MPR2KX71( A10, A9, A8, A7, A6, A5, A4,
 A3, A2, A1, A0, SYNC_IN, DO70, DO69, DO68,
 DO67, DO66, DO65, DO64, DO63, DO62, DO61, DO60,
 DO59, DO58, DO57, DO56, DO55, DO54, DO53, DO52,
 DO51, DO50, DO49, DO48, DO47, DO46, DO45, DO44,
 DO43, DO42, DO41, DO40, DO39, DO38, DO37, DO36,
 DO35, DO34, DO33, DO32, DO31, DO30, DO29, DO28,
 DO27, DO26, DO25, DO24, DO23, DO22, DO21, DO20,
 DO19, DO18, DO17, DO16, DO15, DO14, DO13, DO12,
 DO11, DO10, DO9, DO8, DO7, DO6, DO5, DO4,
 DO3, DO2, DO1, DO0, SYNC_OUT);
input  A10, A9, A8, A7, A6, A5, A4, A3,
 A2, A1, A0, SYNC_IN;
output  DO70, DO69, DO68, DO67, DO66, DO65, DO64, DO63,
 DO62, DO61, DO60, DO59, DO58, DO57, DO56, DO55, DO54, DO53,
 DO52, DO51, DO50, DO49, DO48, DO47, DO46, DO45, DO44, DO43,
 DO42, DO41, DO40, DO39, DO38, DO37, DO36, DO35, DO34, DO33,
 DO32, DO31, DO30, DO29, DO28, DO27, DO26, DO25, DO24, DO23,
 DO22, DO21, DO20, DO19, DO18, DO17, DO16, DO15, DO14, DO13,
 DO12, DO11, DO10, DO9, DO8, DO7, DO6, DO5, DO4, DO3,
 DO2, DO1, DO0, SYNC_OUT;
endmodule
`define _MPR2KX71_
`endif
`define MPW2KX71_MPR2KX71
`endif
`endif
