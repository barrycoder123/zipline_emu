
`ifndef _2_                      
`ifdef CBV                      
`define _2_                      
`else                      
`define _2_ (* _2_state_ *)                      
`endif                      
`endif
(* celldefine = 1 *) 
module nx_ram_1rw_xcm109 ( clk, rst_n, ovstb, lvm, mlvm, mrdten, bimc_rst_n, 
	bimc_isync, bimc_idat, bimc_odat, bimc_osync, 
	ro_uncorrectable_ecc_error, bwe, din, add, cs, we, dout);
// pragma CVASTRPROP MODULE HDLICE HDL_MODULE_ATTRIBUTE "0 vlog"
input clk;
input rst_n;
input ovstb;
input lvm;
input mlvm;
input mrdten;
input bimc_rst_n;
input bimc_isync;
input bimc_idat;
output bimc_odat;
output bimc_osync;
output ro_uncorrectable_ecc_error;
input [95:0] bwe;
input [95:0] din;
input [8:0] add;
input cs;
input we;
output [95:0] dout;
wire _zy_simnet_bimc_odat_0_w$;
wire _zy_simnet_bimc_osync_1_w$;
wire _zy_simnet_ro_uncorrectable_ecc_error_2_w$;
wire bimc_iclk;
wire bimc_irstn;
wire rst_clk_n;
wire p_mode_disable_ecc_mem;
wire byp;
wire se;
wire rds;
wire [1:0] ecc_corrupt;
wire rst_rclk_n;
wire sew;
wire web;
wire ro_mem_ecc_error_ev;
wire ro_mem_ecc_corrected;
wire [8:0] ro_mem_ecc_error_addr;
wire [95:0] \g.dout_i ;
wire [95:0] \g.dat_r ;
wire [95:0] \g.din_i ;
wire [511:0] \g.we_clk ;
wire [31:0] \g.u_ram._zyictd_sysfunc_11_L263_2 ;
wire [511:0] \g.we_gate ;
wire [8:0] \g.add_r ;
supply0 n307;
Q_BUF U0 ( .A(n307), .Z(p_mode_disable_ecc_mem));
Q_BUF U1 ( .A(n307), .Z(byp));
Q_BUF U2 ( .A(n307), .Z(se));
Q_BUF U3 ( .A(n307), .Z(rds));
Q_BUF U4 ( .A(n307), .Z(ecc_corrupt[1]));
Q_BUF U5 ( .A(n307), .Z(ecc_corrupt[0]));
Q_BUF U6 ( .A(n307), .Z(sew));
Q_ASSIGN U7 ( .B(clk), .A(\g.we_clk [511]));
Q_ASSIGN U8 ( .B(clk), .A(\g.we_clk [510]));
Q_ASSIGN U9 ( .B(clk), .A(\g.we_clk [509]));
Q_ASSIGN U10 ( .B(clk), .A(\g.we_clk [508]));
Q_ASSIGN U11 ( .B(clk), .A(\g.we_clk [507]));
Q_ASSIGN U12 ( .B(clk), .A(\g.we_clk [506]));
Q_ASSIGN U13 ( .B(clk), .A(\g.we_clk [505]));
Q_ASSIGN U14 ( .B(clk), .A(\g.we_clk [504]));
Q_ASSIGN U15 ( .B(clk), .A(\g.we_clk [503]));
Q_ASSIGN U16 ( .B(clk), .A(\g.we_clk [502]));
Q_ASSIGN U17 ( .B(clk), .A(\g.we_clk [501]));
Q_ASSIGN U18 ( .B(clk), .A(\g.we_clk [500]));
Q_ASSIGN U19 ( .B(clk), .A(\g.we_clk [499]));
Q_ASSIGN U20 ( .B(clk), .A(\g.we_clk [498]));
Q_ASSIGN U21 ( .B(clk), .A(\g.we_clk [497]));
Q_ASSIGN U22 ( .B(clk), .A(\g.we_clk [496]));
Q_ASSIGN U23 ( .B(clk), .A(\g.we_clk [495]));
Q_ASSIGN U24 ( .B(clk), .A(\g.we_clk [494]));
Q_ASSIGN U25 ( .B(clk), .A(\g.we_clk [493]));
Q_ASSIGN U26 ( .B(clk), .A(\g.we_clk [492]));
Q_ASSIGN U27 ( .B(clk), .A(\g.we_clk [491]));
Q_ASSIGN U28 ( .B(clk), .A(\g.we_clk [490]));
Q_ASSIGN U29 ( .B(clk), .A(\g.we_clk [489]));
Q_ASSIGN U30 ( .B(clk), .A(\g.we_clk [488]));
Q_ASSIGN U31 ( .B(clk), .A(\g.we_clk [487]));
Q_ASSIGN U32 ( .B(clk), .A(\g.we_clk [486]));
Q_ASSIGN U33 ( .B(clk), .A(\g.we_clk [485]));
Q_ASSIGN U34 ( .B(clk), .A(\g.we_clk [484]));
Q_ASSIGN U35 ( .B(clk), .A(\g.we_clk [483]));
Q_ASSIGN U36 ( .B(clk), .A(\g.we_clk [482]));
Q_ASSIGN U37 ( .B(clk), .A(\g.we_clk [481]));
Q_ASSIGN U38 ( .B(clk), .A(\g.we_clk [480]));
Q_ASSIGN U39 ( .B(clk), .A(\g.we_clk [479]));
Q_ASSIGN U40 ( .B(clk), .A(\g.we_clk [478]));
Q_ASSIGN U41 ( .B(clk), .A(\g.we_clk [477]));
Q_ASSIGN U42 ( .B(clk), .A(\g.we_clk [476]));
Q_ASSIGN U43 ( .B(clk), .A(\g.we_clk [475]));
Q_ASSIGN U44 ( .B(clk), .A(\g.we_clk [474]));
Q_ASSIGN U45 ( .B(clk), .A(\g.we_clk [473]));
Q_ASSIGN U46 ( .B(clk), .A(\g.we_clk [472]));
Q_ASSIGN U47 ( .B(clk), .A(\g.we_clk [471]));
Q_ASSIGN U48 ( .B(clk), .A(\g.we_clk [470]));
Q_ASSIGN U49 ( .B(clk), .A(\g.we_clk [469]));
Q_ASSIGN U50 ( .B(clk), .A(\g.we_clk [468]));
Q_ASSIGN U51 ( .B(clk), .A(\g.we_clk [467]));
Q_ASSIGN U52 ( .B(clk), .A(\g.we_clk [466]));
Q_ASSIGN U53 ( .B(clk), .A(\g.we_clk [465]));
Q_ASSIGN U54 ( .B(clk), .A(\g.we_clk [464]));
Q_ASSIGN U55 ( .B(clk), .A(\g.we_clk [463]));
Q_ASSIGN U56 ( .B(clk), .A(\g.we_clk [462]));
Q_ASSIGN U57 ( .B(clk), .A(\g.we_clk [461]));
Q_ASSIGN U58 ( .B(clk), .A(\g.we_clk [460]));
Q_ASSIGN U59 ( .B(clk), .A(\g.we_clk [459]));
Q_ASSIGN U60 ( .B(clk), .A(\g.we_clk [458]));
Q_ASSIGN U61 ( .B(clk), .A(\g.we_clk [457]));
Q_ASSIGN U62 ( .B(clk), .A(\g.we_clk [456]));
Q_ASSIGN U63 ( .B(clk), .A(\g.we_clk [455]));
Q_ASSIGN U64 ( .B(clk), .A(\g.we_clk [454]));
Q_ASSIGN U65 ( .B(clk), .A(\g.we_clk [453]));
Q_ASSIGN U66 ( .B(clk), .A(\g.we_clk [452]));
Q_ASSIGN U67 ( .B(clk), .A(\g.we_clk [451]));
Q_ASSIGN U68 ( .B(clk), .A(\g.we_clk [450]));
Q_ASSIGN U69 ( .B(clk), .A(\g.we_clk [449]));
Q_ASSIGN U70 ( .B(clk), .A(\g.we_clk [448]));
Q_ASSIGN U71 ( .B(clk), .A(\g.we_clk [447]));
Q_ASSIGN U72 ( .B(clk), .A(\g.we_clk [446]));
Q_ASSIGN U73 ( .B(clk), .A(\g.we_clk [445]));
Q_ASSIGN U74 ( .B(clk), .A(\g.we_clk [444]));
Q_ASSIGN U75 ( .B(clk), .A(\g.we_clk [443]));
Q_ASSIGN U76 ( .B(clk), .A(\g.we_clk [442]));
Q_ASSIGN U77 ( .B(clk), .A(\g.we_clk [441]));
Q_ASSIGN U78 ( .B(clk), .A(\g.we_clk [440]));
Q_ASSIGN U79 ( .B(clk), .A(\g.we_clk [439]));
Q_ASSIGN U80 ( .B(clk), .A(\g.we_clk [438]));
Q_ASSIGN U81 ( .B(clk), .A(\g.we_clk [437]));
Q_ASSIGN U82 ( .B(clk), .A(\g.we_clk [436]));
Q_ASSIGN U83 ( .B(clk), .A(\g.we_clk [435]));
Q_ASSIGN U84 ( .B(clk), .A(\g.we_clk [434]));
Q_ASSIGN U85 ( .B(clk), .A(\g.we_clk [433]));
Q_ASSIGN U86 ( .B(clk), .A(\g.we_clk [432]));
Q_ASSIGN U87 ( .B(clk), .A(\g.we_clk [431]));
Q_ASSIGN U88 ( .B(clk), .A(\g.we_clk [430]));
Q_ASSIGN U89 ( .B(clk), .A(\g.we_clk [429]));
Q_ASSIGN U90 ( .B(clk), .A(\g.we_clk [428]));
Q_ASSIGN U91 ( .B(clk), .A(\g.we_clk [427]));
Q_ASSIGN U92 ( .B(clk), .A(\g.we_clk [426]));
Q_ASSIGN U93 ( .B(clk), .A(\g.we_clk [425]));
Q_ASSIGN U94 ( .B(clk), .A(\g.we_clk [424]));
Q_ASSIGN U95 ( .B(clk), .A(\g.we_clk [423]));
Q_ASSIGN U96 ( .B(clk), .A(\g.we_clk [422]));
Q_ASSIGN U97 ( .B(clk), .A(\g.we_clk [421]));
Q_ASSIGN U98 ( .B(clk), .A(\g.we_clk [420]));
Q_ASSIGN U99 ( .B(clk), .A(\g.we_clk [419]));
Q_ASSIGN U100 ( .B(clk), .A(\g.we_clk [418]));
Q_ASSIGN U101 ( .B(clk), .A(\g.we_clk [417]));
Q_ASSIGN U102 ( .B(clk), .A(\g.we_clk [416]));
Q_ASSIGN U103 ( .B(clk), .A(\g.we_clk [415]));
Q_ASSIGN U104 ( .B(clk), .A(\g.we_clk [414]));
Q_ASSIGN U105 ( .B(clk), .A(\g.we_clk [413]));
Q_ASSIGN U106 ( .B(clk), .A(\g.we_clk [412]));
Q_ASSIGN U107 ( .B(clk), .A(\g.we_clk [411]));
Q_ASSIGN U108 ( .B(clk), .A(\g.we_clk [410]));
Q_ASSIGN U109 ( .B(clk), .A(\g.we_clk [409]));
Q_ASSIGN U110 ( .B(clk), .A(\g.we_clk [408]));
Q_ASSIGN U111 ( .B(clk), .A(\g.we_clk [407]));
Q_ASSIGN U112 ( .B(clk), .A(\g.we_clk [406]));
Q_ASSIGN U113 ( .B(clk), .A(\g.we_clk [405]));
Q_ASSIGN U114 ( .B(clk), .A(\g.we_clk [404]));
Q_ASSIGN U115 ( .B(clk), .A(\g.we_clk [403]));
Q_ASSIGN U116 ( .B(clk), .A(\g.we_clk [402]));
Q_ASSIGN U117 ( .B(clk), .A(\g.we_clk [401]));
Q_ASSIGN U118 ( .B(clk), .A(\g.we_clk [400]));
Q_ASSIGN U119 ( .B(clk), .A(\g.we_clk [399]));
Q_ASSIGN U120 ( .B(clk), .A(\g.we_clk [398]));
Q_ASSIGN U121 ( .B(clk), .A(\g.we_clk [397]));
Q_ASSIGN U122 ( .B(clk), .A(\g.we_clk [396]));
Q_ASSIGN U123 ( .B(clk), .A(\g.we_clk [395]));
Q_ASSIGN U124 ( .B(clk), .A(\g.we_clk [394]));
Q_ASSIGN U125 ( .B(clk), .A(\g.we_clk [393]));
Q_ASSIGN U126 ( .B(clk), .A(\g.we_clk [392]));
Q_ASSIGN U127 ( .B(clk), .A(\g.we_clk [391]));
Q_ASSIGN U128 ( .B(clk), .A(\g.we_clk [390]));
Q_ASSIGN U129 ( .B(clk), .A(\g.we_clk [389]));
Q_ASSIGN U130 ( .B(clk), .A(\g.we_clk [388]));
Q_ASSIGN U131 ( .B(clk), .A(\g.we_clk [387]));
Q_ASSIGN U132 ( .B(clk), .A(\g.we_clk [386]));
Q_ASSIGN U133 ( .B(clk), .A(\g.we_clk [385]));
Q_ASSIGN U134 ( .B(clk), .A(\g.we_clk [384]));
Q_ASSIGN U135 ( .B(clk), .A(\g.we_clk [383]));
Q_ASSIGN U136 ( .B(clk), .A(\g.we_clk [382]));
Q_ASSIGN U137 ( .B(clk), .A(\g.we_clk [381]));
Q_ASSIGN U138 ( .B(clk), .A(\g.we_clk [380]));
Q_ASSIGN U139 ( .B(clk), .A(\g.we_clk [379]));
Q_ASSIGN U140 ( .B(clk), .A(\g.we_clk [378]));
Q_ASSIGN U141 ( .B(clk), .A(\g.we_clk [377]));
Q_ASSIGN U142 ( .B(clk), .A(\g.we_clk [376]));
Q_ASSIGN U143 ( .B(clk), .A(\g.we_clk [375]));
Q_ASSIGN U144 ( .B(clk), .A(\g.we_clk [374]));
Q_ASSIGN U145 ( .B(clk), .A(\g.we_clk [373]));
Q_ASSIGN U146 ( .B(clk), .A(\g.we_clk [372]));
Q_ASSIGN U147 ( .B(clk), .A(\g.we_clk [371]));
Q_ASSIGN U148 ( .B(clk), .A(\g.we_clk [370]));
Q_ASSIGN U149 ( .B(clk), .A(\g.we_clk [369]));
Q_ASSIGN U150 ( .B(clk), .A(\g.we_clk [368]));
Q_ASSIGN U151 ( .B(clk), .A(\g.we_clk [367]));
Q_ASSIGN U152 ( .B(clk), .A(\g.we_clk [366]));
Q_ASSIGN U153 ( .B(clk), .A(\g.we_clk [365]));
Q_ASSIGN U154 ( .B(clk), .A(\g.we_clk [364]));
Q_ASSIGN U155 ( .B(clk), .A(\g.we_clk [363]));
Q_ASSIGN U156 ( .B(clk), .A(\g.we_clk [362]));
Q_ASSIGN U157 ( .B(clk), .A(\g.we_clk [361]));
Q_ASSIGN U158 ( .B(clk), .A(\g.we_clk [360]));
Q_ASSIGN U159 ( .B(clk), .A(\g.we_clk [359]));
Q_ASSIGN U160 ( .B(clk), .A(\g.we_clk [358]));
Q_ASSIGN U161 ( .B(clk), .A(\g.we_clk [357]));
Q_ASSIGN U162 ( .B(clk), .A(\g.we_clk [356]));
Q_ASSIGN U163 ( .B(clk), .A(\g.we_clk [355]));
Q_ASSIGN U164 ( .B(clk), .A(\g.we_clk [354]));
Q_ASSIGN U165 ( .B(clk), .A(\g.we_clk [353]));
Q_ASSIGN U166 ( .B(clk), .A(\g.we_clk [352]));
Q_ASSIGN U167 ( .B(clk), .A(\g.we_clk [351]));
Q_ASSIGN U168 ( .B(clk), .A(\g.we_clk [350]));
Q_ASSIGN U169 ( .B(clk), .A(\g.we_clk [349]));
Q_ASSIGN U170 ( .B(clk), .A(\g.we_clk [348]));
Q_ASSIGN U171 ( .B(clk), .A(\g.we_clk [347]));
Q_ASSIGN U172 ( .B(clk), .A(\g.we_clk [346]));
Q_ASSIGN U173 ( .B(clk), .A(\g.we_clk [345]));
Q_ASSIGN U174 ( .B(clk), .A(\g.we_clk [344]));
Q_ASSIGN U175 ( .B(clk), .A(\g.we_clk [343]));
Q_ASSIGN U176 ( .B(clk), .A(\g.we_clk [342]));
Q_ASSIGN U177 ( .B(clk), .A(\g.we_clk [341]));
Q_ASSIGN U178 ( .B(clk), .A(\g.we_clk [340]));
Q_ASSIGN U179 ( .B(clk), .A(\g.we_clk [339]));
Q_ASSIGN U180 ( .B(clk), .A(\g.we_clk [338]));
Q_ASSIGN U181 ( .B(clk), .A(\g.we_clk [337]));
Q_ASSIGN U182 ( .B(clk), .A(\g.we_clk [336]));
Q_ASSIGN U183 ( .B(clk), .A(\g.we_clk [335]));
Q_ASSIGN U184 ( .B(clk), .A(\g.we_clk [334]));
Q_ASSIGN U185 ( .B(clk), .A(\g.we_clk [333]));
Q_ASSIGN U186 ( .B(clk), .A(\g.we_clk [332]));
Q_ASSIGN U187 ( .B(clk), .A(\g.we_clk [331]));
Q_ASSIGN U188 ( .B(clk), .A(\g.we_clk [330]));
Q_ASSIGN U189 ( .B(clk), .A(\g.we_clk [329]));
Q_ASSIGN U190 ( .B(clk), .A(\g.we_clk [328]));
Q_ASSIGN U191 ( .B(clk), .A(\g.we_clk [327]));
Q_ASSIGN U192 ( .B(clk), .A(\g.we_clk [326]));
Q_ASSIGN U193 ( .B(clk), .A(\g.we_clk [325]));
Q_ASSIGN U194 ( .B(clk), .A(\g.we_clk [324]));
Q_ASSIGN U195 ( .B(clk), .A(\g.we_clk [323]));
Q_ASSIGN U196 ( .B(clk), .A(\g.we_clk [322]));
Q_ASSIGN U197 ( .B(clk), .A(\g.we_clk [321]));
Q_ASSIGN U198 ( .B(clk), .A(\g.we_clk [320]));
Q_ASSIGN U199 ( .B(clk), .A(\g.we_clk [319]));
Q_ASSIGN U200 ( .B(clk), .A(\g.we_clk [318]));
Q_ASSIGN U201 ( .B(clk), .A(\g.we_clk [317]));
Q_ASSIGN U202 ( .B(clk), .A(\g.we_clk [316]));
Q_ASSIGN U203 ( .B(clk), .A(\g.we_clk [315]));
Q_ASSIGN U204 ( .B(clk), .A(\g.we_clk [314]));
Q_ASSIGN U205 ( .B(clk), .A(\g.we_clk [313]));
Q_ASSIGN U206 ( .B(clk), .A(\g.we_clk [312]));
Q_ASSIGN U207 ( .B(clk), .A(\g.we_clk [311]));
Q_ASSIGN U208 ( .B(clk), .A(\g.we_clk [310]));
Q_ASSIGN U209 ( .B(clk), .A(\g.we_clk [309]));
Q_ASSIGN U210 ( .B(clk), .A(\g.we_clk [308]));
Q_ASSIGN U211 ( .B(clk), .A(\g.we_clk [307]));
Q_ASSIGN U212 ( .B(clk), .A(\g.we_clk [306]));
Q_ASSIGN U213 ( .B(clk), .A(\g.we_clk [305]));
Q_ASSIGN U214 ( .B(clk), .A(\g.we_clk [304]));
Q_ASSIGN U215 ( .B(clk), .A(\g.we_clk [303]));
Q_ASSIGN U216 ( .B(clk), .A(\g.we_clk [302]));
Q_ASSIGN U217 ( .B(clk), .A(\g.we_clk [301]));
Q_ASSIGN U218 ( .B(clk), .A(\g.we_clk [300]));
Q_ASSIGN U219 ( .B(clk), .A(\g.we_clk [299]));
Q_ASSIGN U220 ( .B(clk), .A(\g.we_clk [298]));
Q_ASSIGN U221 ( .B(clk), .A(\g.we_clk [297]));
Q_ASSIGN U222 ( .B(clk), .A(\g.we_clk [296]));
Q_ASSIGN U223 ( .B(clk), .A(\g.we_clk [295]));
Q_ASSIGN U224 ( .B(clk), .A(\g.we_clk [294]));
Q_ASSIGN U225 ( .B(clk), .A(\g.we_clk [293]));
Q_ASSIGN U226 ( .B(clk), .A(\g.we_clk [292]));
Q_ASSIGN U227 ( .B(clk), .A(\g.we_clk [291]));
Q_ASSIGN U228 ( .B(clk), .A(\g.we_clk [290]));
Q_ASSIGN U229 ( .B(clk), .A(\g.we_clk [289]));
Q_ASSIGN U230 ( .B(clk), .A(\g.we_clk [288]));
Q_ASSIGN U231 ( .B(clk), .A(\g.we_clk [287]));
Q_ASSIGN U232 ( .B(clk), .A(\g.we_clk [286]));
Q_ASSIGN U233 ( .B(clk), .A(\g.we_clk [285]));
Q_ASSIGN U234 ( .B(clk), .A(\g.we_clk [284]));
Q_ASSIGN U235 ( .B(clk), .A(\g.we_clk [283]));
Q_ASSIGN U236 ( .B(clk), .A(\g.we_clk [282]));
Q_ASSIGN U237 ( .B(clk), .A(\g.we_clk [281]));
Q_ASSIGN U238 ( .B(clk), .A(\g.we_clk [280]));
Q_ASSIGN U239 ( .B(clk), .A(\g.we_clk [279]));
Q_ASSIGN U240 ( .B(clk), .A(\g.we_clk [278]));
Q_ASSIGN U241 ( .B(clk), .A(\g.we_clk [277]));
Q_ASSIGN U242 ( .B(clk), .A(\g.we_clk [276]));
Q_ASSIGN U243 ( .B(clk), .A(\g.we_clk [275]));
Q_ASSIGN U244 ( .B(clk), .A(\g.we_clk [274]));
Q_ASSIGN U245 ( .B(clk), .A(\g.we_clk [273]));
Q_ASSIGN U246 ( .B(clk), .A(\g.we_clk [272]));
Q_ASSIGN U247 ( .B(clk), .A(\g.we_clk [271]));
Q_ASSIGN U248 ( .B(clk), .A(\g.we_clk [270]));
Q_ASSIGN U249 ( .B(clk), .A(\g.we_clk [269]));
Q_ASSIGN U250 ( .B(clk), .A(\g.we_clk [268]));
Q_ASSIGN U251 ( .B(clk), .A(\g.we_clk [267]));
Q_ASSIGN U252 ( .B(clk), .A(\g.we_clk [266]));
Q_ASSIGN U253 ( .B(clk), .A(\g.we_clk [265]));
Q_ASSIGN U254 ( .B(clk), .A(\g.we_clk [264]));
Q_ASSIGN U255 ( .B(clk), .A(\g.we_clk [263]));
Q_ASSIGN U256 ( .B(clk), .A(\g.we_clk [262]));
Q_ASSIGN U257 ( .B(clk), .A(\g.we_clk [261]));
Q_ASSIGN U258 ( .B(clk), .A(\g.we_clk [260]));
Q_ASSIGN U259 ( .B(clk), .A(\g.we_clk [259]));
Q_ASSIGN U260 ( .B(clk), .A(\g.we_clk [258]));
Q_ASSIGN U261 ( .B(clk), .A(\g.we_clk [257]));
Q_ASSIGN U262 ( .B(clk), .A(\g.we_clk [256]));
Q_ASSIGN U263 ( .B(clk), .A(\g.we_clk [255]));
Q_ASSIGN U264 ( .B(clk), .A(\g.we_clk [254]));
Q_ASSIGN U265 ( .B(clk), .A(\g.we_clk [253]));
Q_ASSIGN U266 ( .B(clk), .A(\g.we_clk [252]));
Q_ASSIGN U267 ( .B(clk), .A(\g.we_clk [251]));
Q_ASSIGN U268 ( .B(clk), .A(\g.we_clk [250]));
Q_ASSIGN U269 ( .B(clk), .A(\g.we_clk [249]));
Q_ASSIGN U270 ( .B(clk), .A(\g.we_clk [248]));
Q_ASSIGN U271 ( .B(clk), .A(\g.we_clk [247]));
Q_ASSIGN U272 ( .B(clk), .A(\g.we_clk [246]));
Q_ASSIGN U273 ( .B(clk), .A(\g.we_clk [245]));
Q_ASSIGN U274 ( .B(clk), .A(\g.we_clk [244]));
Q_ASSIGN U275 ( .B(clk), .A(\g.we_clk [243]));
Q_ASSIGN U276 ( .B(clk), .A(\g.we_clk [242]));
Q_ASSIGN U277 ( .B(clk), .A(\g.we_clk [241]));
Q_ASSIGN U278 ( .B(clk), .A(\g.we_clk [240]));
Q_ASSIGN U279 ( .B(clk), .A(\g.we_clk [239]));
Q_ASSIGN U280 ( .B(clk), .A(\g.we_clk [238]));
Q_ASSIGN U281 ( .B(clk), .A(\g.we_clk [237]));
Q_ASSIGN U282 ( .B(clk), .A(\g.we_clk [236]));
Q_ASSIGN U283 ( .B(clk), .A(\g.we_clk [235]));
Q_ASSIGN U284 ( .B(clk), .A(\g.we_clk [234]));
Q_ASSIGN U285 ( .B(clk), .A(\g.we_clk [233]));
Q_ASSIGN U286 ( .B(clk), .A(\g.we_clk [232]));
Q_ASSIGN U287 ( .B(clk), .A(\g.we_clk [231]));
Q_ASSIGN U288 ( .B(clk), .A(\g.we_clk [230]));
Q_ASSIGN U289 ( .B(clk), .A(\g.we_clk [229]));
Q_ASSIGN U290 ( .B(clk), .A(\g.we_clk [228]));
Q_ASSIGN U291 ( .B(clk), .A(\g.we_clk [227]));
Q_ASSIGN U292 ( .B(clk), .A(\g.we_clk [226]));
Q_ASSIGN U293 ( .B(clk), .A(\g.we_clk [225]));
Q_ASSIGN U294 ( .B(clk), .A(\g.we_clk [224]));
Q_ASSIGN U295 ( .B(clk), .A(\g.we_clk [223]));
Q_ASSIGN U296 ( .B(clk), .A(\g.we_clk [222]));
Q_ASSIGN U297 ( .B(clk), .A(\g.we_clk [221]));
Q_ASSIGN U298 ( .B(clk), .A(\g.we_clk [220]));
Q_ASSIGN U299 ( .B(clk), .A(\g.we_clk [219]));
Q_ASSIGN U300 ( .B(clk), .A(\g.we_clk [218]));
Q_ASSIGN U301 ( .B(clk), .A(\g.we_clk [217]));
Q_ASSIGN U302 ( .B(clk), .A(\g.we_clk [216]));
Q_ASSIGN U303 ( .B(clk), .A(\g.we_clk [215]));
Q_ASSIGN U304 ( .B(clk), .A(\g.we_clk [214]));
Q_ASSIGN U305 ( .B(clk), .A(\g.we_clk [213]));
Q_ASSIGN U306 ( .B(clk), .A(\g.we_clk [212]));
Q_ASSIGN U307 ( .B(clk), .A(\g.we_clk [211]));
Q_ASSIGN U308 ( .B(clk), .A(\g.we_clk [210]));
Q_ASSIGN U309 ( .B(clk), .A(\g.we_clk [209]));
Q_ASSIGN U310 ( .B(clk), .A(\g.we_clk [208]));
Q_ASSIGN U311 ( .B(clk), .A(\g.we_clk [207]));
Q_ASSIGN U312 ( .B(clk), .A(\g.we_clk [206]));
Q_ASSIGN U313 ( .B(clk), .A(\g.we_clk [205]));
Q_ASSIGN U314 ( .B(clk), .A(\g.we_clk [204]));
Q_ASSIGN U315 ( .B(clk), .A(\g.we_clk [203]));
Q_ASSIGN U316 ( .B(clk), .A(\g.we_clk [202]));
Q_ASSIGN U317 ( .B(clk), .A(\g.we_clk [201]));
Q_ASSIGN U318 ( .B(clk), .A(\g.we_clk [200]));
Q_ASSIGN U319 ( .B(clk), .A(\g.we_clk [199]));
Q_ASSIGN U320 ( .B(clk), .A(\g.we_clk [198]));
Q_ASSIGN U321 ( .B(clk), .A(\g.we_clk [197]));
Q_ASSIGN U322 ( .B(clk), .A(\g.we_clk [196]));
Q_ASSIGN U323 ( .B(clk), .A(\g.we_clk [195]));
Q_ASSIGN U324 ( .B(clk), .A(\g.we_clk [194]));
Q_ASSIGN U325 ( .B(clk), .A(\g.we_clk [193]));
Q_ASSIGN U326 ( .B(clk), .A(\g.we_clk [192]));
Q_ASSIGN U327 ( .B(clk), .A(\g.we_clk [191]));
Q_ASSIGN U328 ( .B(clk), .A(\g.we_clk [190]));
Q_ASSIGN U329 ( .B(clk), .A(\g.we_clk [189]));
Q_ASSIGN U330 ( .B(clk), .A(\g.we_clk [188]));
Q_ASSIGN U331 ( .B(clk), .A(\g.we_clk [187]));
Q_ASSIGN U332 ( .B(clk), .A(\g.we_clk [186]));
Q_ASSIGN U333 ( .B(clk), .A(\g.we_clk [185]));
Q_ASSIGN U334 ( .B(clk), .A(\g.we_clk [184]));
Q_ASSIGN U335 ( .B(clk), .A(\g.we_clk [183]));
Q_ASSIGN U336 ( .B(clk), .A(\g.we_clk [182]));
Q_ASSIGN U337 ( .B(clk), .A(\g.we_clk [181]));
Q_ASSIGN U338 ( .B(clk), .A(\g.we_clk [180]));
Q_ASSIGN U339 ( .B(clk), .A(\g.we_clk [179]));
Q_ASSIGN U340 ( .B(clk), .A(\g.we_clk [178]));
Q_ASSIGN U341 ( .B(clk), .A(\g.we_clk [177]));
Q_ASSIGN U342 ( .B(clk), .A(\g.we_clk [176]));
Q_ASSIGN U343 ( .B(clk), .A(\g.we_clk [175]));
Q_ASSIGN U344 ( .B(clk), .A(\g.we_clk [174]));
Q_ASSIGN U345 ( .B(clk), .A(\g.we_clk [173]));
Q_ASSIGN U346 ( .B(clk), .A(\g.we_clk [172]));
Q_ASSIGN U347 ( .B(clk), .A(\g.we_clk [171]));
Q_ASSIGN U348 ( .B(clk), .A(\g.we_clk [170]));
Q_ASSIGN U349 ( .B(clk), .A(\g.we_clk [169]));
Q_ASSIGN U350 ( .B(clk), .A(\g.we_clk [168]));
Q_ASSIGN U351 ( .B(clk), .A(\g.we_clk [167]));
Q_ASSIGN U352 ( .B(clk), .A(\g.we_clk [166]));
Q_ASSIGN U353 ( .B(clk), .A(\g.we_clk [165]));
Q_ASSIGN U354 ( .B(clk), .A(\g.we_clk [164]));
Q_ASSIGN U355 ( .B(clk), .A(\g.we_clk [163]));
Q_ASSIGN U356 ( .B(clk), .A(\g.we_clk [162]));
Q_ASSIGN U357 ( .B(clk), .A(\g.we_clk [161]));
Q_ASSIGN U358 ( .B(clk), .A(\g.we_clk [160]));
Q_ASSIGN U359 ( .B(clk), .A(\g.we_clk [159]));
Q_ASSIGN U360 ( .B(clk), .A(\g.we_clk [158]));
Q_ASSIGN U361 ( .B(clk), .A(\g.we_clk [157]));
Q_ASSIGN U362 ( .B(clk), .A(\g.we_clk [156]));
Q_ASSIGN U363 ( .B(clk), .A(\g.we_clk [155]));
Q_ASSIGN U364 ( .B(clk), .A(\g.we_clk [154]));
Q_ASSIGN U365 ( .B(clk), .A(\g.we_clk [153]));
Q_ASSIGN U366 ( .B(clk), .A(\g.we_clk [152]));
Q_ASSIGN U367 ( .B(clk), .A(\g.we_clk [151]));
Q_ASSIGN U368 ( .B(clk), .A(\g.we_clk [150]));
Q_ASSIGN U369 ( .B(clk), .A(\g.we_clk [149]));
Q_ASSIGN U370 ( .B(clk), .A(\g.we_clk [148]));
Q_ASSIGN U371 ( .B(clk), .A(\g.we_clk [147]));
Q_ASSIGN U372 ( .B(clk), .A(\g.we_clk [146]));
Q_ASSIGN U373 ( .B(clk), .A(\g.we_clk [145]));
Q_ASSIGN U374 ( .B(clk), .A(\g.we_clk [144]));
Q_ASSIGN U375 ( .B(clk), .A(\g.we_clk [143]));
Q_ASSIGN U376 ( .B(clk), .A(\g.we_clk [142]));
Q_ASSIGN U377 ( .B(clk), .A(\g.we_clk [141]));
Q_ASSIGN U378 ( .B(clk), .A(\g.we_clk [140]));
Q_ASSIGN U379 ( .B(clk), .A(\g.we_clk [139]));
Q_ASSIGN U380 ( .B(clk), .A(\g.we_clk [138]));
Q_ASSIGN U381 ( .B(clk), .A(\g.we_clk [137]));
Q_ASSIGN U382 ( .B(clk), .A(\g.we_clk [136]));
Q_ASSIGN U383 ( .B(clk), .A(\g.we_clk [135]));
Q_ASSIGN U384 ( .B(clk), .A(\g.we_clk [134]));
Q_ASSIGN U385 ( .B(clk), .A(\g.we_clk [133]));
Q_ASSIGN U386 ( .B(clk), .A(\g.we_clk [132]));
Q_ASSIGN U387 ( .B(clk), .A(\g.we_clk [131]));
Q_ASSIGN U388 ( .B(clk), .A(\g.we_clk [130]));
Q_ASSIGN U389 ( .B(clk), .A(\g.we_clk [129]));
Q_ASSIGN U390 ( .B(clk), .A(\g.we_clk [128]));
Q_ASSIGN U391 ( .B(clk), .A(\g.we_clk [127]));
Q_ASSIGN U392 ( .B(clk), .A(\g.we_clk [126]));
Q_ASSIGN U393 ( .B(clk), .A(\g.we_clk [125]));
Q_ASSIGN U394 ( .B(clk), .A(\g.we_clk [124]));
Q_ASSIGN U395 ( .B(clk), .A(\g.we_clk [123]));
Q_ASSIGN U396 ( .B(clk), .A(\g.we_clk [122]));
Q_ASSIGN U397 ( .B(clk), .A(\g.we_clk [121]));
Q_ASSIGN U398 ( .B(clk), .A(\g.we_clk [120]));
Q_ASSIGN U399 ( .B(clk), .A(\g.we_clk [119]));
Q_ASSIGN U400 ( .B(clk), .A(\g.we_clk [118]));
Q_ASSIGN U401 ( .B(clk), .A(\g.we_clk [117]));
Q_ASSIGN U402 ( .B(clk), .A(\g.we_clk [116]));
Q_ASSIGN U403 ( .B(clk), .A(\g.we_clk [115]));
Q_ASSIGN U404 ( .B(clk), .A(\g.we_clk [114]));
Q_ASSIGN U405 ( .B(clk), .A(\g.we_clk [113]));
Q_ASSIGN U406 ( .B(clk), .A(\g.we_clk [112]));
Q_ASSIGN U407 ( .B(clk), .A(\g.we_clk [111]));
Q_ASSIGN U408 ( .B(clk), .A(\g.we_clk [110]));
Q_ASSIGN U409 ( .B(clk), .A(\g.we_clk [109]));
Q_ASSIGN U410 ( .B(clk), .A(\g.we_clk [108]));
Q_ASSIGN U411 ( .B(clk), .A(\g.we_clk [107]));
Q_ASSIGN U412 ( .B(clk), .A(\g.we_clk [106]));
Q_ASSIGN U413 ( .B(clk), .A(\g.we_clk [105]));
Q_ASSIGN U414 ( .B(clk), .A(\g.we_clk [104]));
Q_ASSIGN U415 ( .B(clk), .A(\g.we_clk [103]));
Q_ASSIGN U416 ( .B(clk), .A(\g.we_clk [102]));
Q_ASSIGN U417 ( .B(clk), .A(\g.we_clk [101]));
Q_ASSIGN U418 ( .B(clk), .A(\g.we_clk [100]));
Q_ASSIGN U419 ( .B(clk), .A(\g.we_clk [99]));
Q_ASSIGN U420 ( .B(clk), .A(\g.we_clk [98]));
Q_ASSIGN U421 ( .B(clk), .A(\g.we_clk [97]));
Q_ASSIGN U422 ( .B(clk), .A(\g.we_clk [96]));
Q_ASSIGN U423 ( .B(clk), .A(\g.we_clk [95]));
Q_ASSIGN U424 ( .B(clk), .A(\g.we_clk [94]));
Q_ASSIGN U425 ( .B(clk), .A(\g.we_clk [93]));
Q_ASSIGN U426 ( .B(clk), .A(\g.we_clk [92]));
Q_ASSIGN U427 ( .B(clk), .A(\g.we_clk [91]));
Q_ASSIGN U428 ( .B(clk), .A(\g.we_clk [90]));
Q_ASSIGN U429 ( .B(clk), .A(\g.we_clk [89]));
Q_ASSIGN U430 ( .B(clk), .A(\g.we_clk [88]));
Q_ASSIGN U431 ( .B(clk), .A(\g.we_clk [87]));
Q_ASSIGN U432 ( .B(clk), .A(\g.we_clk [86]));
Q_ASSIGN U433 ( .B(clk), .A(\g.we_clk [85]));
Q_ASSIGN U434 ( .B(clk), .A(\g.we_clk [84]));
Q_ASSIGN U435 ( .B(clk), .A(\g.we_clk [83]));
Q_ASSIGN U436 ( .B(clk), .A(\g.we_clk [82]));
Q_ASSIGN U437 ( .B(clk), .A(\g.we_clk [81]));
Q_ASSIGN U438 ( .B(clk), .A(\g.we_clk [80]));
Q_ASSIGN U439 ( .B(clk), .A(\g.we_clk [79]));
Q_ASSIGN U440 ( .B(clk), .A(\g.we_clk [78]));
Q_ASSIGN U441 ( .B(clk), .A(\g.we_clk [77]));
Q_ASSIGN U442 ( .B(clk), .A(\g.we_clk [76]));
Q_ASSIGN U443 ( .B(clk), .A(\g.we_clk [75]));
Q_ASSIGN U444 ( .B(clk), .A(\g.we_clk [74]));
Q_ASSIGN U445 ( .B(clk), .A(\g.we_clk [73]));
Q_ASSIGN U446 ( .B(clk), .A(\g.we_clk [72]));
Q_ASSIGN U447 ( .B(clk), .A(\g.we_clk [71]));
Q_ASSIGN U448 ( .B(clk), .A(\g.we_clk [70]));
Q_ASSIGN U449 ( .B(clk), .A(\g.we_clk [69]));
Q_ASSIGN U450 ( .B(clk), .A(\g.we_clk [68]));
Q_ASSIGN U451 ( .B(clk), .A(\g.we_clk [67]));
Q_ASSIGN U452 ( .B(clk), .A(\g.we_clk [66]));
Q_ASSIGN U453 ( .B(clk), .A(\g.we_clk [65]));
Q_ASSIGN U454 ( .B(clk), .A(\g.we_clk [64]));
Q_ASSIGN U455 ( .B(clk), .A(\g.we_clk [63]));
Q_ASSIGN U456 ( .B(clk), .A(\g.we_clk [62]));
Q_ASSIGN U457 ( .B(clk), .A(\g.we_clk [61]));
Q_ASSIGN U458 ( .B(clk), .A(\g.we_clk [60]));
Q_ASSIGN U459 ( .B(clk), .A(\g.we_clk [59]));
Q_ASSIGN U460 ( .B(clk), .A(\g.we_clk [58]));
Q_ASSIGN U461 ( .B(clk), .A(\g.we_clk [57]));
Q_ASSIGN U462 ( .B(clk), .A(\g.we_clk [56]));
Q_ASSIGN U463 ( .B(clk), .A(\g.we_clk [55]));
Q_ASSIGN U464 ( .B(clk), .A(\g.we_clk [54]));
Q_ASSIGN U465 ( .B(clk), .A(\g.we_clk [53]));
Q_ASSIGN U466 ( .B(clk), .A(\g.we_clk [52]));
Q_ASSIGN U467 ( .B(clk), .A(\g.we_clk [51]));
Q_ASSIGN U468 ( .B(clk), .A(\g.we_clk [50]));
Q_ASSIGN U469 ( .B(clk), .A(\g.we_clk [49]));
Q_ASSIGN U470 ( .B(clk), .A(\g.we_clk [48]));
Q_ASSIGN U471 ( .B(clk), .A(\g.we_clk [47]));
Q_ASSIGN U472 ( .B(clk), .A(\g.we_clk [46]));
Q_ASSIGN U473 ( .B(clk), .A(\g.we_clk [45]));
Q_ASSIGN U474 ( .B(clk), .A(\g.we_clk [44]));
Q_ASSIGN U475 ( .B(clk), .A(\g.we_clk [43]));
Q_ASSIGN U476 ( .B(clk), .A(\g.we_clk [42]));
Q_ASSIGN U477 ( .B(clk), .A(\g.we_clk [41]));
Q_ASSIGN U478 ( .B(clk), .A(\g.we_clk [40]));
Q_ASSIGN U479 ( .B(clk), .A(\g.we_clk [39]));
Q_ASSIGN U480 ( .B(clk), .A(\g.we_clk [38]));
Q_ASSIGN U481 ( .B(clk), .A(\g.we_clk [37]));
Q_ASSIGN U482 ( .B(clk), .A(\g.we_clk [36]));
Q_ASSIGN U483 ( .B(clk), .A(\g.we_clk [35]));
Q_ASSIGN U484 ( .B(clk), .A(\g.we_clk [34]));
Q_ASSIGN U485 ( .B(clk), .A(\g.we_clk [33]));
Q_ASSIGN U486 ( .B(clk), .A(\g.we_clk [32]));
Q_ASSIGN U487 ( .B(clk), .A(\g.we_clk [31]));
Q_ASSIGN U488 ( .B(clk), .A(\g.we_clk [30]));
Q_ASSIGN U489 ( .B(clk), .A(\g.we_clk [29]));
Q_ASSIGN U490 ( .B(clk), .A(\g.we_clk [28]));
Q_ASSIGN U491 ( .B(clk), .A(\g.we_clk [27]));
Q_ASSIGN U492 ( .B(clk), .A(\g.we_clk [26]));
Q_ASSIGN U493 ( .B(clk), .A(\g.we_clk [25]));
Q_ASSIGN U494 ( .B(clk), .A(\g.we_clk [24]));
Q_ASSIGN U495 ( .B(clk), .A(\g.we_clk [23]));
Q_ASSIGN U496 ( .B(clk), .A(\g.we_clk [22]));
Q_ASSIGN U497 ( .B(clk), .A(\g.we_clk [21]));
Q_ASSIGN U498 ( .B(clk), .A(\g.we_clk [20]));
Q_ASSIGN U499 ( .B(clk), .A(\g.we_clk [19]));
Q_ASSIGN U500 ( .B(clk), .A(\g.we_clk [18]));
Q_ASSIGN U501 ( .B(clk), .A(\g.we_clk [17]));
Q_ASSIGN U502 ( .B(clk), .A(\g.we_clk [16]));
Q_ASSIGN U503 ( .B(clk), .A(\g.we_clk [15]));
Q_ASSIGN U504 ( .B(clk), .A(\g.we_clk [14]));
Q_ASSIGN U505 ( .B(clk), .A(\g.we_clk [13]));
Q_ASSIGN U506 ( .B(clk), .A(\g.we_clk [12]));
Q_ASSIGN U507 ( .B(clk), .A(\g.we_clk [11]));
Q_ASSIGN U508 ( .B(clk), .A(\g.we_clk [10]));
Q_ASSIGN U509 ( .B(clk), .A(\g.we_clk [9]));
Q_ASSIGN U510 ( .B(clk), .A(\g.we_clk [8]));
Q_ASSIGN U511 ( .B(clk), .A(\g.we_clk [7]));
Q_ASSIGN U512 ( .B(clk), .A(\g.we_clk [6]));
Q_ASSIGN U513 ( .B(clk), .A(\g.we_clk [5]));
Q_ASSIGN U514 ( .B(clk), .A(\g.we_clk [4]));
Q_ASSIGN U515 ( .B(clk), .A(\g.we_clk [3]));
Q_ASSIGN U516 ( .B(clk), .A(\g.we_clk [2]));
Q_ASSIGN U517 ( .B(clk), .A(\g.we_clk [1]));
Q_ASSIGN U518 ( .B(clk), .A(\g.we_clk [0]));
Q_BUF U519 ( .A(n307), .Z(ro_uncorrectable_ecc_error));
ixc_assign _zz_strnp_10 ( _zy_simnet_ro_uncorrectable_ecc_error_2_w$, n307);
ixc_assign _zz_strnp_9 ( _zy_simnet_bimc_osync_1_w$, bimc_osync);
ixc_assign _zz_strnp_8 ( _zy_simnet_bimc_odat_0_w$, bimc_odat);
Q_INV U523 ( .A(n306), .Z(web));
Q_AN02 U524 ( .A0(cs), .A1(we), .Z(n306));
ixc_assign _zz_strnp_7 ( rst_rclk_n, rst_n);
ixc_assign _zz_strnp_6 ( rst_clk_n, rst_n);
ixc_assign _zz_strnp_5 ( bimc_irstn, bimc_rst_n);
ixc_assign _zz_strnp_4 ( bimc_iclk, clk);
Q_FDP0 U529 ( .CK(clk), .D(\g.din_i [95]), .Q(n305), .QN( ));
Q_FDP0 U530 ( .CK(clk), .D(\g.din_i [94]), .Q(n304), .QN( ));
Q_FDP0 U531 ( .CK(clk), .D(\g.din_i [93]), .Q(n303), .QN( ));
Q_FDP0 U532 ( .CK(clk), .D(\g.din_i [92]), .Q(n302), .QN( ));
Q_FDP0 U533 ( .CK(clk), .D(\g.din_i [91]), .Q(n301), .QN( ));
Q_FDP0 U534 ( .CK(clk), .D(\g.din_i [90]), .Q(n300), .QN( ));
Q_FDP0 U535 ( .CK(clk), .D(\g.din_i [89]), .Q(n299), .QN( ));
Q_FDP0 U536 ( .CK(clk), .D(\g.din_i [88]), .Q(n298), .QN( ));
Q_FDP0 U537 ( .CK(clk), .D(\g.din_i [87]), .Q(n297), .QN( ));
Q_FDP0 U538 ( .CK(clk), .D(\g.din_i [86]), .Q(n296), .QN( ));
Q_FDP0 U539 ( .CK(clk), .D(\g.din_i [85]), .Q(n295), .QN( ));
Q_FDP0 U540 ( .CK(clk), .D(\g.din_i [84]), .Q(n294), .QN( ));
Q_FDP0 U541 ( .CK(clk), .D(\g.din_i [83]), .Q(n293), .QN( ));
Q_FDP0 U542 ( .CK(clk), .D(\g.din_i [82]), .Q(n292), .QN( ));
Q_FDP0 U543 ( .CK(clk), .D(\g.din_i [81]), .Q(n291), .QN( ));
Q_FDP0 U544 ( .CK(clk), .D(\g.din_i [80]), .Q(n290), .QN( ));
Q_FDP0 U545 ( .CK(clk), .D(\g.din_i [79]), .Q(n289), .QN( ));
Q_FDP0 U546 ( .CK(clk), .D(\g.din_i [78]), .Q(n288), .QN( ));
Q_FDP0 U547 ( .CK(clk), .D(\g.din_i [77]), .Q(n287), .QN( ));
Q_FDP0 U548 ( .CK(clk), .D(\g.din_i [76]), .Q(n286), .QN( ));
Q_FDP0 U549 ( .CK(clk), .D(\g.din_i [75]), .Q(n285), .QN( ));
Q_FDP0 U550 ( .CK(clk), .D(\g.din_i [74]), .Q(n284), .QN( ));
Q_FDP0 U551 ( .CK(clk), .D(\g.din_i [73]), .Q(n283), .QN( ));
Q_FDP0 U552 ( .CK(clk), .D(\g.din_i [72]), .Q(n282), .QN( ));
Q_FDP0 U553 ( .CK(clk), .D(\g.din_i [71]), .Q(n281), .QN( ));
Q_FDP0 U554 ( .CK(clk), .D(\g.din_i [70]), .Q(n280), .QN( ));
Q_FDP0 U555 ( .CK(clk), .D(\g.din_i [69]), .Q(n279), .QN( ));
Q_FDP0 U556 ( .CK(clk), .D(\g.din_i [68]), .Q(n278), .QN( ));
Q_FDP0 U557 ( .CK(clk), .D(\g.din_i [67]), .Q(n277), .QN( ));
Q_FDP0 U558 ( .CK(clk), .D(\g.din_i [66]), .Q(n276), .QN( ));
Q_FDP0 U559 ( .CK(clk), .D(\g.din_i [65]), .Q(n275), .QN( ));
Q_FDP0 U560 ( .CK(clk), .D(\g.din_i [64]), .Q(n274), .QN( ));
Q_FDP0 U561 ( .CK(clk), .D(\g.din_i [63]), .Q(n273), .QN( ));
Q_FDP0 U562 ( .CK(clk), .D(\g.din_i [62]), .Q(n272), .QN( ));
Q_FDP0 U563 ( .CK(clk), .D(\g.din_i [61]), .Q(n271), .QN( ));
Q_FDP0 U564 ( .CK(clk), .D(\g.din_i [60]), .Q(n270), .QN( ));
Q_FDP0 U565 ( .CK(clk), .D(\g.din_i [59]), .Q(n269), .QN( ));
Q_FDP0 U566 ( .CK(clk), .D(\g.din_i [58]), .Q(n268), .QN( ));
Q_FDP0 U567 ( .CK(clk), .D(\g.din_i [57]), .Q(n267), .QN( ));
Q_FDP0 U568 ( .CK(clk), .D(\g.din_i [56]), .Q(n266), .QN( ));
Q_FDP0 U569 ( .CK(clk), .D(\g.din_i [55]), .Q(n265), .QN( ));
Q_FDP0 U570 ( .CK(clk), .D(\g.din_i [54]), .Q(n264), .QN( ));
Q_FDP0 U571 ( .CK(clk), .D(\g.din_i [53]), .Q(n263), .QN( ));
Q_FDP0 U572 ( .CK(clk), .D(\g.din_i [52]), .Q(n262), .QN( ));
Q_FDP0 U573 ( .CK(clk), .D(\g.din_i [51]), .Q(n261), .QN( ));
Q_FDP0 U574 ( .CK(clk), .D(\g.din_i [50]), .Q(n260), .QN( ));
Q_FDP0 U575 ( .CK(clk), .D(\g.din_i [49]), .Q(n259), .QN( ));
Q_FDP0 U576 ( .CK(clk), .D(\g.din_i [48]), .Q(n258), .QN( ));
Q_FDP0 U577 ( .CK(clk), .D(\g.din_i [47]), .Q(n257), .QN( ));
Q_FDP0 U578 ( .CK(clk), .D(\g.din_i [46]), .Q(n256), .QN( ));
Q_FDP0 U579 ( .CK(clk), .D(\g.din_i [45]), .Q(n255), .QN( ));
Q_FDP0 U580 ( .CK(clk), .D(\g.din_i [44]), .Q(n254), .QN( ));
Q_FDP0 U581 ( .CK(clk), .D(\g.din_i [43]), .Q(n253), .QN( ));
Q_FDP0 U582 ( .CK(clk), .D(\g.din_i [42]), .Q(n252), .QN( ));
Q_FDP0 U583 ( .CK(clk), .D(\g.din_i [41]), .Q(n251), .QN( ));
Q_FDP0 U584 ( .CK(clk), .D(\g.din_i [40]), .Q(n250), .QN( ));
Q_FDP0 U585 ( .CK(clk), .D(\g.din_i [39]), .Q(n249), .QN( ));
Q_FDP0 U586 ( .CK(clk), .D(\g.din_i [38]), .Q(n248), .QN( ));
Q_FDP0 U587 ( .CK(clk), .D(\g.din_i [37]), .Q(n247), .QN( ));
Q_FDP0 U588 ( .CK(clk), .D(\g.din_i [36]), .Q(n246), .QN( ));
Q_FDP0 U589 ( .CK(clk), .D(\g.din_i [35]), .Q(n245), .QN( ));
Q_FDP0 U590 ( .CK(clk), .D(\g.din_i [34]), .Q(n244), .QN( ));
Q_FDP0 U591 ( .CK(clk), .D(\g.din_i [33]), .Q(n243), .QN( ));
Q_FDP0 U592 ( .CK(clk), .D(\g.din_i [32]), .Q(n242), .QN( ));
Q_FDP0 U593 ( .CK(clk), .D(\g.din_i [31]), .Q(n241), .QN( ));
Q_FDP0 U594 ( .CK(clk), .D(\g.din_i [30]), .Q(n240), .QN( ));
Q_FDP0 U595 ( .CK(clk), .D(\g.din_i [29]), .Q(n239), .QN( ));
Q_FDP0 U596 ( .CK(clk), .D(\g.din_i [28]), .Q(n238), .QN( ));
Q_FDP0 U597 ( .CK(clk), .D(\g.din_i [27]), .Q(n237), .QN( ));
Q_FDP0 U598 ( .CK(clk), .D(\g.din_i [26]), .Q(n236), .QN( ));
Q_FDP0 U599 ( .CK(clk), .D(\g.din_i [25]), .Q(n235), .QN( ));
Q_FDP0 U600 ( .CK(clk), .D(\g.din_i [24]), .Q(n234), .QN( ));
Q_FDP0 U601 ( .CK(clk), .D(\g.din_i [23]), .Q(n233), .QN( ));
Q_FDP0 U602 ( .CK(clk), .D(\g.din_i [22]), .Q(n232), .QN( ));
Q_FDP0 U603 ( .CK(clk), .D(\g.din_i [21]), .Q(n231), .QN( ));
Q_FDP0 U604 ( .CK(clk), .D(\g.din_i [20]), .Q(n230), .QN( ));
Q_FDP0 U605 ( .CK(clk), .D(\g.din_i [19]), .Q(n229), .QN( ));
Q_FDP0 U606 ( .CK(clk), .D(\g.din_i [18]), .Q(n228), .QN( ));
Q_FDP0 U607 ( .CK(clk), .D(\g.din_i [17]), .Q(n227), .QN( ));
Q_FDP0 U608 ( .CK(clk), .D(\g.din_i [16]), .Q(n226), .QN( ));
Q_FDP0 U609 ( .CK(clk), .D(\g.din_i [15]), .Q(n225), .QN( ));
Q_FDP0 U610 ( .CK(clk), .D(\g.din_i [14]), .Q(n224), .QN( ));
Q_FDP0 U611 ( .CK(clk), .D(\g.din_i [13]), .Q(n223), .QN( ));
Q_FDP0 U612 ( .CK(clk), .D(\g.din_i [12]), .Q(n222), .QN( ));
Q_FDP0 U613 ( .CK(clk), .D(\g.din_i [11]), .Q(n221), .QN( ));
Q_FDP0 U614 ( .CK(clk), .D(\g.din_i [10]), .Q(n220), .QN( ));
Q_FDP0 U615 ( .CK(clk), .D(\g.din_i [9]), .Q(n219), .QN( ));
Q_FDP0 U616 ( .CK(clk), .D(\g.din_i [8]), .Q(n218), .QN( ));
Q_FDP0 U617 ( .CK(clk), .D(\g.din_i [7]), .Q(n217), .QN( ));
Q_FDP0 U618 ( .CK(clk), .D(\g.din_i [6]), .Q(n216), .QN( ));
Q_FDP0 U619 ( .CK(clk), .D(\g.din_i [5]), .Q(n215), .QN( ));
Q_FDP0 U620 ( .CK(clk), .D(\g.din_i [4]), .Q(n214), .QN( ));
Q_FDP0 U621 ( .CK(clk), .D(\g.din_i [3]), .Q(n213), .QN( ));
Q_FDP0 U622 ( .CK(clk), .D(\g.din_i [2]), .Q(n212), .QN( ));
Q_FDP0 U623 ( .CK(clk), .D(\g.din_i [1]), .Q(n211), .QN( ));
Q_FDP0 U624 ( .CK(clk), .D(\g.din_i [0]), .Q(n210), .QN( ));
Q_FDP0 U625 ( .CK(clk), .D(add[8]), .Q(n209), .QN( ));
Q_FDP0 U626 ( .CK(clk), .D(add[7]), .Q(n208), .QN( ));
Q_FDP0 U627 ( .CK(clk), .D(add[6]), .Q(n207), .QN( ));
Q_FDP0 U628 ( .CK(clk), .D(add[5]), .Q(n206), .QN( ));
Q_FDP0 U629 ( .CK(clk), .D(add[4]), .Q(n205), .QN( ));
Q_FDP0 U630 ( .CK(clk), .D(add[3]), .Q(n204), .QN( ));
Q_FDP0 U631 ( .CK(clk), .D(add[2]), .Q(n203), .QN( ));
Q_FDP0 U632 ( .CK(clk), .D(add[1]), .Q(n202), .QN( ));
Q_FDP0 U633 ( .CK(clk), .D(add[0]), .Q(n201), .QN( ));
Q_AN02 U634 ( .A0(n196), .A1(n199), .Z(n200));
Q_XOR2 U635 ( .A0(n195), .A1(n198), .Z(n199));
// pragma CVAINTPROP NET n195 _2_state_ 1
// pragma CVAINTPROP INSTANCE U635 NOBREAKS 1
Q_FDP0B U636 ( .D(n195), .QTFCLK( ), .Q(n198));
Q_FDP0 U637 ( .CK(clk), .D(n306), .Q(n196), .QN( ));
Q_FDP0 U638 ( .CK(clk), .D(n197), .Q(n195), .QN(n197));
Q_MX02 U639 ( .S(we), .A0(\g.dout_i [95]), .A1(\g.din_i [95]), .Z(n194));
Q_MX02 U640 ( .S(we), .A0(\g.dout_i [94]), .A1(\g.din_i [94]), .Z(n193));
Q_MX02 U641 ( .S(we), .A0(\g.dout_i [93]), .A1(\g.din_i [93]), .Z(n192));
Q_MX02 U642 ( .S(we), .A0(\g.dout_i [92]), .A1(\g.din_i [92]), .Z(n191));
Q_MX02 U643 ( .S(we), .A0(\g.dout_i [91]), .A1(\g.din_i [91]), .Z(n190));
Q_MX02 U644 ( .S(we), .A0(\g.dout_i [90]), .A1(\g.din_i [90]), .Z(n189));
Q_MX02 U645 ( .S(we), .A0(\g.dout_i [89]), .A1(\g.din_i [89]), .Z(n188));
Q_MX02 U646 ( .S(we), .A0(\g.dout_i [88]), .A1(\g.din_i [88]), .Z(n187));
Q_MX02 U647 ( .S(we), .A0(\g.dout_i [87]), .A1(\g.din_i [87]), .Z(n186));
Q_MX02 U648 ( .S(we), .A0(\g.dout_i [86]), .A1(\g.din_i [86]), .Z(n185));
Q_MX02 U649 ( .S(we), .A0(\g.dout_i [85]), .A1(\g.din_i [85]), .Z(n184));
Q_MX02 U650 ( .S(we), .A0(\g.dout_i [84]), .A1(\g.din_i [84]), .Z(n183));
Q_MX02 U651 ( .S(we), .A0(\g.dout_i [83]), .A1(\g.din_i [83]), .Z(n182));
Q_MX02 U652 ( .S(we), .A0(\g.dout_i [82]), .A1(\g.din_i [82]), .Z(n181));
Q_MX02 U653 ( .S(we), .A0(\g.dout_i [81]), .A1(\g.din_i [81]), .Z(n180));
Q_MX02 U654 ( .S(we), .A0(\g.dout_i [80]), .A1(\g.din_i [80]), .Z(n179));
Q_MX02 U655 ( .S(we), .A0(\g.dout_i [79]), .A1(\g.din_i [79]), .Z(n178));
Q_MX02 U656 ( .S(we), .A0(\g.dout_i [78]), .A1(\g.din_i [78]), .Z(n177));
Q_MX02 U657 ( .S(we), .A0(\g.dout_i [77]), .A1(\g.din_i [77]), .Z(n176));
Q_MX02 U658 ( .S(we), .A0(\g.dout_i [76]), .A1(\g.din_i [76]), .Z(n175));
Q_MX02 U659 ( .S(we), .A0(\g.dout_i [75]), .A1(\g.din_i [75]), .Z(n174));
Q_MX02 U660 ( .S(we), .A0(\g.dout_i [74]), .A1(\g.din_i [74]), .Z(n173));
Q_MX02 U661 ( .S(we), .A0(\g.dout_i [73]), .A1(\g.din_i [73]), .Z(n172));
Q_MX02 U662 ( .S(we), .A0(\g.dout_i [72]), .A1(\g.din_i [72]), .Z(n171));
Q_MX02 U663 ( .S(we), .A0(\g.dout_i [71]), .A1(\g.din_i [71]), .Z(n170));
Q_MX02 U664 ( .S(we), .A0(\g.dout_i [70]), .A1(\g.din_i [70]), .Z(n169));
Q_MX02 U665 ( .S(we), .A0(\g.dout_i [69]), .A1(\g.din_i [69]), .Z(n168));
Q_MX02 U666 ( .S(we), .A0(\g.dout_i [68]), .A1(\g.din_i [68]), .Z(n167));
Q_MX02 U667 ( .S(we), .A0(\g.dout_i [67]), .A1(\g.din_i [67]), .Z(n166));
Q_MX02 U668 ( .S(we), .A0(\g.dout_i [66]), .A1(\g.din_i [66]), .Z(n165));
Q_MX02 U669 ( .S(we), .A0(\g.dout_i [65]), .A1(\g.din_i [65]), .Z(n164));
Q_MX02 U670 ( .S(we), .A0(\g.dout_i [64]), .A1(\g.din_i [64]), .Z(n163));
Q_MX02 U671 ( .S(we), .A0(\g.dout_i [63]), .A1(\g.din_i [63]), .Z(n162));
Q_MX02 U672 ( .S(we), .A0(\g.dout_i [62]), .A1(\g.din_i [62]), .Z(n161));
Q_MX02 U673 ( .S(we), .A0(\g.dout_i [61]), .A1(\g.din_i [61]), .Z(n160));
Q_MX02 U674 ( .S(we), .A0(\g.dout_i [60]), .A1(\g.din_i [60]), .Z(n159));
Q_MX02 U675 ( .S(we), .A0(\g.dout_i [59]), .A1(\g.din_i [59]), .Z(n158));
Q_MX02 U676 ( .S(we), .A0(\g.dout_i [58]), .A1(\g.din_i [58]), .Z(n157));
Q_MX02 U677 ( .S(we), .A0(\g.dout_i [57]), .A1(\g.din_i [57]), .Z(n156));
Q_MX02 U678 ( .S(we), .A0(\g.dout_i [56]), .A1(\g.din_i [56]), .Z(n155));
Q_MX02 U679 ( .S(we), .A0(\g.dout_i [55]), .A1(\g.din_i [55]), .Z(n154));
Q_MX02 U680 ( .S(we), .A0(\g.dout_i [54]), .A1(\g.din_i [54]), .Z(n153));
Q_MX02 U681 ( .S(we), .A0(\g.dout_i [53]), .A1(\g.din_i [53]), .Z(n152));
Q_MX02 U682 ( .S(we), .A0(\g.dout_i [52]), .A1(\g.din_i [52]), .Z(n151));
Q_MX02 U683 ( .S(we), .A0(\g.dout_i [51]), .A1(\g.din_i [51]), .Z(n150));
Q_MX02 U684 ( .S(we), .A0(\g.dout_i [50]), .A1(\g.din_i [50]), .Z(n149));
Q_MX02 U685 ( .S(we), .A0(\g.dout_i [49]), .A1(\g.din_i [49]), .Z(n148));
Q_MX02 U686 ( .S(we), .A0(\g.dout_i [48]), .A1(\g.din_i [48]), .Z(n147));
Q_MX02 U687 ( .S(we), .A0(\g.dout_i [47]), .A1(\g.din_i [47]), .Z(n146));
Q_MX02 U688 ( .S(we), .A0(\g.dout_i [46]), .A1(\g.din_i [46]), .Z(n145));
Q_MX02 U689 ( .S(we), .A0(\g.dout_i [45]), .A1(\g.din_i [45]), .Z(n144));
Q_MX02 U690 ( .S(we), .A0(\g.dout_i [44]), .A1(\g.din_i [44]), .Z(n143));
Q_MX02 U691 ( .S(we), .A0(\g.dout_i [43]), .A1(\g.din_i [43]), .Z(n142));
Q_MX02 U692 ( .S(we), .A0(\g.dout_i [42]), .A1(\g.din_i [42]), .Z(n141));
Q_MX02 U693 ( .S(we), .A0(\g.dout_i [41]), .A1(\g.din_i [41]), .Z(n140));
Q_MX02 U694 ( .S(we), .A0(\g.dout_i [40]), .A1(\g.din_i [40]), .Z(n139));
Q_MX02 U695 ( .S(we), .A0(\g.dout_i [39]), .A1(\g.din_i [39]), .Z(n138));
Q_MX02 U696 ( .S(we), .A0(\g.dout_i [38]), .A1(\g.din_i [38]), .Z(n137));
Q_MX02 U697 ( .S(we), .A0(\g.dout_i [37]), .A1(\g.din_i [37]), .Z(n136));
Q_MX02 U698 ( .S(we), .A0(\g.dout_i [36]), .A1(\g.din_i [36]), .Z(n135));
Q_MX02 U699 ( .S(we), .A0(\g.dout_i [35]), .A1(\g.din_i [35]), .Z(n134));
Q_MX02 U700 ( .S(we), .A0(\g.dout_i [34]), .A1(\g.din_i [34]), .Z(n133));
Q_MX02 U701 ( .S(we), .A0(\g.dout_i [33]), .A1(\g.din_i [33]), .Z(n132));
Q_MX02 U702 ( .S(we), .A0(\g.dout_i [32]), .A1(\g.din_i [32]), .Z(n131));
Q_MX02 U703 ( .S(we), .A0(\g.dout_i [31]), .A1(\g.din_i [31]), .Z(n130));
Q_MX02 U704 ( .S(we), .A0(\g.dout_i [30]), .A1(\g.din_i [30]), .Z(n129));
Q_MX02 U705 ( .S(we), .A0(\g.dout_i [29]), .A1(\g.din_i [29]), .Z(n128));
Q_MX02 U706 ( .S(we), .A0(\g.dout_i [28]), .A1(\g.din_i [28]), .Z(n127));
Q_MX02 U707 ( .S(we), .A0(\g.dout_i [27]), .A1(\g.din_i [27]), .Z(n126));
Q_MX02 U708 ( .S(we), .A0(\g.dout_i [26]), .A1(\g.din_i [26]), .Z(n125));
Q_MX02 U709 ( .S(we), .A0(\g.dout_i [25]), .A1(\g.din_i [25]), .Z(n124));
Q_MX02 U710 ( .S(we), .A0(\g.dout_i [24]), .A1(\g.din_i [24]), .Z(n123));
Q_MX02 U711 ( .S(we), .A0(\g.dout_i [23]), .A1(\g.din_i [23]), .Z(n122));
Q_MX02 U712 ( .S(we), .A0(\g.dout_i [22]), .A1(\g.din_i [22]), .Z(n121));
Q_MX02 U713 ( .S(we), .A0(\g.dout_i [21]), .A1(\g.din_i [21]), .Z(n120));
Q_MX02 U714 ( .S(we), .A0(\g.dout_i [20]), .A1(\g.din_i [20]), .Z(n119));
Q_MX02 U715 ( .S(we), .A0(\g.dout_i [19]), .A1(\g.din_i [19]), .Z(n118));
Q_MX02 U716 ( .S(we), .A0(\g.dout_i [18]), .A1(\g.din_i [18]), .Z(n117));
Q_MX02 U717 ( .S(we), .A0(\g.dout_i [17]), .A1(\g.din_i [17]), .Z(n116));
Q_MX02 U718 ( .S(we), .A0(\g.dout_i [16]), .A1(\g.din_i [16]), .Z(n115));
Q_MX02 U719 ( .S(we), .A0(\g.dout_i [15]), .A1(\g.din_i [15]), .Z(n114));
Q_MX02 U720 ( .S(we), .A0(\g.dout_i [14]), .A1(\g.din_i [14]), .Z(n113));
Q_MX02 U721 ( .S(we), .A0(\g.dout_i [13]), .A1(\g.din_i [13]), .Z(n112));
Q_MX02 U722 ( .S(we), .A0(\g.dout_i [12]), .A1(\g.din_i [12]), .Z(n111));
Q_MX02 U723 ( .S(we), .A0(\g.dout_i [11]), .A1(\g.din_i [11]), .Z(n110));
Q_MX02 U724 ( .S(we), .A0(\g.dout_i [10]), .A1(\g.din_i [10]), .Z(n109));
Q_MX02 U725 ( .S(we), .A0(\g.dout_i [9]), .A1(\g.din_i [9]), .Z(n108));
Q_MX02 U726 ( .S(we), .A0(\g.dout_i [8]), .A1(\g.din_i [8]), .Z(n107));
Q_MX02 U727 ( .S(we), .A0(\g.dout_i [7]), .A1(\g.din_i [7]), .Z(n106));
Q_MX02 U728 ( .S(we), .A0(\g.dout_i [6]), .A1(\g.din_i [6]), .Z(n105));
Q_MX02 U729 ( .S(we), .A0(\g.dout_i [5]), .A1(\g.din_i [5]), .Z(n104));
Q_MX02 U730 ( .S(we), .A0(\g.dout_i [4]), .A1(\g.din_i [4]), .Z(n103));
Q_MX02 U731 ( .S(we), .A0(\g.dout_i [3]), .A1(\g.din_i [3]), .Z(n102));
Q_MX02 U732 ( .S(we), .A0(\g.dout_i [2]), .A1(\g.din_i [2]), .Z(n101));
Q_MX02 U733 ( .S(we), .A0(\g.dout_i [1]), .A1(\g.din_i [1]), .Z(n100));
Q_MX02 U734 ( .S(we), .A0(\g.dout_i [0]), .A1(\g.din_i [0]), .Z(n99));
ixc_assign_96 \g._zz_strnp_0 ( \g.dout_i [95:0], { n98, n97, n96, n95, n94, 
	n93, n92, n91, n90, n89, n88, n87, n86, n85, n84, n83, n82, n81, n80, 
	n79, n78, n77, n76, n75, n74, n73, n72, n71, n70, n69, n68, n67, n66, 
	n65, n64, n63, n62, n61, n60, n59, n58, n57, n56, n55, n54, n53, n52, 
	n51, n50, n49, n48, n47, n46, n45, n44, n43, n42, n41, n40, n39, n38, 
	n37, n36, n35, n34, n33, n32, n31, n30, n29, n28, n27, n26, n25, n24, 
	n23, n22, n21, n20, n19, n18, n17, n16, n15, n14, n13, n12, n11, n10, 
	n9, n8, n7, n6, n5, n4, n3});
ixc_assign \g._zz_strnp_3 ( bimc_osync, bimc_isync);
ixc_assign \g._zz_strnp_2 ( bimc_odat, bimc_idat);
ixc_assign_96 \g._zz_strnp_1 ( dout[95:0], \g.dat_r [95:0]);
Q_MX02 U739 ( .S(bwe[95]), .A0(\g.dout_i [95]), .A1(din[95]), .Z(\g.din_i [95]));
Q_MX02 U740 ( .S(bwe[94]), .A0(\g.dout_i [94]), .A1(din[94]), .Z(\g.din_i [94]));
Q_MX02 U741 ( .S(bwe[93]), .A0(\g.dout_i [93]), .A1(din[93]), .Z(\g.din_i [93]));
Q_MX02 U742 ( .S(bwe[92]), .A0(\g.dout_i [92]), .A1(din[92]), .Z(\g.din_i [92]));
Q_MX02 U743 ( .S(bwe[91]), .A0(\g.dout_i [91]), .A1(din[91]), .Z(\g.din_i [91]));
Q_MX02 U744 ( .S(bwe[90]), .A0(\g.dout_i [90]), .A1(din[90]), .Z(\g.din_i [90]));
Q_MX02 U745 ( .S(bwe[89]), .A0(\g.dout_i [89]), .A1(din[89]), .Z(\g.din_i [89]));
Q_MX02 U746 ( .S(bwe[88]), .A0(\g.dout_i [88]), .A1(din[88]), .Z(\g.din_i [88]));
Q_MX02 U747 ( .S(bwe[87]), .A0(\g.dout_i [87]), .A1(din[87]), .Z(\g.din_i [87]));
Q_MX02 U748 ( .S(bwe[86]), .A0(\g.dout_i [86]), .A1(din[86]), .Z(\g.din_i [86]));
Q_MX02 U749 ( .S(bwe[85]), .A0(\g.dout_i [85]), .A1(din[85]), .Z(\g.din_i [85]));
Q_MX02 U750 ( .S(bwe[84]), .A0(\g.dout_i [84]), .A1(din[84]), .Z(\g.din_i [84]));
Q_MX02 U751 ( .S(bwe[83]), .A0(\g.dout_i [83]), .A1(din[83]), .Z(\g.din_i [83]));
Q_MX02 U752 ( .S(bwe[82]), .A0(\g.dout_i [82]), .A1(din[82]), .Z(\g.din_i [82]));
Q_MX02 U753 ( .S(bwe[81]), .A0(\g.dout_i [81]), .A1(din[81]), .Z(\g.din_i [81]));
Q_MX02 U754 ( .S(bwe[80]), .A0(\g.dout_i [80]), .A1(din[80]), .Z(\g.din_i [80]));
Q_MX02 U755 ( .S(bwe[79]), .A0(\g.dout_i [79]), .A1(din[79]), .Z(\g.din_i [79]));
Q_MX02 U756 ( .S(bwe[78]), .A0(\g.dout_i [78]), .A1(din[78]), .Z(\g.din_i [78]));
Q_MX02 U757 ( .S(bwe[77]), .A0(\g.dout_i [77]), .A1(din[77]), .Z(\g.din_i [77]));
Q_MX02 U758 ( .S(bwe[76]), .A0(\g.dout_i [76]), .A1(din[76]), .Z(\g.din_i [76]));
Q_MX02 U759 ( .S(bwe[75]), .A0(\g.dout_i [75]), .A1(din[75]), .Z(\g.din_i [75]));
Q_MX02 U760 ( .S(bwe[74]), .A0(\g.dout_i [74]), .A1(din[74]), .Z(\g.din_i [74]));
Q_MX02 U761 ( .S(bwe[73]), .A0(\g.dout_i [73]), .A1(din[73]), .Z(\g.din_i [73]));
Q_MX02 U762 ( .S(bwe[72]), .A0(\g.dout_i [72]), .A1(din[72]), .Z(\g.din_i [72]));
Q_MX02 U763 ( .S(bwe[71]), .A0(\g.dout_i [71]), .A1(din[71]), .Z(\g.din_i [71]));
Q_MX02 U764 ( .S(bwe[70]), .A0(\g.dout_i [70]), .A1(din[70]), .Z(\g.din_i [70]));
Q_MX02 U765 ( .S(bwe[69]), .A0(\g.dout_i [69]), .A1(din[69]), .Z(\g.din_i [69]));
Q_MX02 U766 ( .S(bwe[68]), .A0(\g.dout_i [68]), .A1(din[68]), .Z(\g.din_i [68]));
Q_MX02 U767 ( .S(bwe[67]), .A0(\g.dout_i [67]), .A1(din[67]), .Z(\g.din_i [67]));
Q_MX02 U768 ( .S(bwe[66]), .A0(\g.dout_i [66]), .A1(din[66]), .Z(\g.din_i [66]));
Q_MX02 U769 ( .S(bwe[65]), .A0(\g.dout_i [65]), .A1(din[65]), .Z(\g.din_i [65]));
Q_MX02 U770 ( .S(bwe[64]), .A0(\g.dout_i [64]), .A1(din[64]), .Z(\g.din_i [64]));
Q_MX02 U771 ( .S(bwe[63]), .A0(\g.dout_i [63]), .A1(din[63]), .Z(\g.din_i [63]));
Q_MX02 U772 ( .S(bwe[62]), .A0(\g.dout_i [62]), .A1(din[62]), .Z(\g.din_i [62]));
Q_MX02 U773 ( .S(bwe[61]), .A0(\g.dout_i [61]), .A1(din[61]), .Z(\g.din_i [61]));
Q_MX02 U774 ( .S(bwe[60]), .A0(\g.dout_i [60]), .A1(din[60]), .Z(\g.din_i [60]));
Q_MX02 U775 ( .S(bwe[59]), .A0(\g.dout_i [59]), .A1(din[59]), .Z(\g.din_i [59]));
Q_MX02 U776 ( .S(bwe[58]), .A0(\g.dout_i [58]), .A1(din[58]), .Z(\g.din_i [58]));
Q_MX02 U777 ( .S(bwe[57]), .A0(\g.dout_i [57]), .A1(din[57]), .Z(\g.din_i [57]));
Q_MX02 U778 ( .S(bwe[56]), .A0(\g.dout_i [56]), .A1(din[56]), .Z(\g.din_i [56]));
Q_MX02 U779 ( .S(bwe[55]), .A0(\g.dout_i [55]), .A1(din[55]), .Z(\g.din_i [55]));
Q_MX02 U780 ( .S(bwe[54]), .A0(\g.dout_i [54]), .A1(din[54]), .Z(\g.din_i [54]));
Q_MX02 U781 ( .S(bwe[53]), .A0(\g.dout_i [53]), .A1(din[53]), .Z(\g.din_i [53]));
Q_MX02 U782 ( .S(bwe[52]), .A0(\g.dout_i [52]), .A1(din[52]), .Z(\g.din_i [52]));
Q_MX02 U783 ( .S(bwe[51]), .A0(\g.dout_i [51]), .A1(din[51]), .Z(\g.din_i [51]));
Q_MX02 U784 ( .S(bwe[50]), .A0(\g.dout_i [50]), .A1(din[50]), .Z(\g.din_i [50]));
Q_MX02 U785 ( .S(bwe[49]), .A0(\g.dout_i [49]), .A1(din[49]), .Z(\g.din_i [49]));
Q_MX02 U786 ( .S(bwe[48]), .A0(\g.dout_i [48]), .A1(din[48]), .Z(\g.din_i [48]));
Q_MX02 U787 ( .S(bwe[47]), .A0(\g.dout_i [47]), .A1(din[47]), .Z(\g.din_i [47]));
Q_MX02 U788 ( .S(bwe[46]), .A0(\g.dout_i [46]), .A1(din[46]), .Z(\g.din_i [46]));
Q_MX02 U789 ( .S(bwe[45]), .A0(\g.dout_i [45]), .A1(din[45]), .Z(\g.din_i [45]));
Q_MX02 U790 ( .S(bwe[44]), .A0(\g.dout_i [44]), .A1(din[44]), .Z(\g.din_i [44]));
Q_MX02 U791 ( .S(bwe[43]), .A0(\g.dout_i [43]), .A1(din[43]), .Z(\g.din_i [43]));
Q_MX02 U792 ( .S(bwe[42]), .A0(\g.dout_i [42]), .A1(din[42]), .Z(\g.din_i [42]));
Q_MX02 U793 ( .S(bwe[41]), .A0(\g.dout_i [41]), .A1(din[41]), .Z(\g.din_i [41]));
Q_MX02 U794 ( .S(bwe[40]), .A0(\g.dout_i [40]), .A1(din[40]), .Z(\g.din_i [40]));
Q_MX02 U795 ( .S(bwe[39]), .A0(\g.dout_i [39]), .A1(din[39]), .Z(\g.din_i [39]));
Q_MX02 U796 ( .S(bwe[38]), .A0(\g.dout_i [38]), .A1(din[38]), .Z(\g.din_i [38]));
Q_MX02 U797 ( .S(bwe[37]), .A0(\g.dout_i [37]), .A1(din[37]), .Z(\g.din_i [37]));
Q_MX02 U798 ( .S(bwe[36]), .A0(\g.dout_i [36]), .A1(din[36]), .Z(\g.din_i [36]));
Q_MX02 U799 ( .S(bwe[35]), .A0(\g.dout_i [35]), .A1(din[35]), .Z(\g.din_i [35]));
Q_MX02 U800 ( .S(bwe[34]), .A0(\g.dout_i [34]), .A1(din[34]), .Z(\g.din_i [34]));
Q_MX02 U801 ( .S(bwe[33]), .A0(\g.dout_i [33]), .A1(din[33]), .Z(\g.din_i [33]));
Q_MX02 U802 ( .S(bwe[32]), .A0(\g.dout_i [32]), .A1(din[32]), .Z(\g.din_i [32]));
Q_MX02 U803 ( .S(bwe[31]), .A0(\g.dout_i [31]), .A1(din[31]), .Z(\g.din_i [31]));
Q_MX02 U804 ( .S(bwe[30]), .A0(\g.dout_i [30]), .A1(din[30]), .Z(\g.din_i [30]));
Q_MX02 U805 ( .S(bwe[29]), .A0(\g.dout_i [29]), .A1(din[29]), .Z(\g.din_i [29]));
Q_MX02 U806 ( .S(bwe[28]), .A0(\g.dout_i [28]), .A1(din[28]), .Z(\g.din_i [28]));
Q_MX02 U807 ( .S(bwe[27]), .A0(\g.dout_i [27]), .A1(din[27]), .Z(\g.din_i [27]));
Q_MX02 U808 ( .S(bwe[26]), .A0(\g.dout_i [26]), .A1(din[26]), .Z(\g.din_i [26]));
Q_MX02 U809 ( .S(bwe[25]), .A0(\g.dout_i [25]), .A1(din[25]), .Z(\g.din_i [25]));
Q_MX02 U810 ( .S(bwe[24]), .A0(\g.dout_i [24]), .A1(din[24]), .Z(\g.din_i [24]));
Q_MX02 U811 ( .S(bwe[23]), .A0(\g.dout_i [23]), .A1(din[23]), .Z(\g.din_i [23]));
Q_MX02 U812 ( .S(bwe[22]), .A0(\g.dout_i [22]), .A1(din[22]), .Z(\g.din_i [22]));
Q_MX02 U813 ( .S(bwe[21]), .A0(\g.dout_i [21]), .A1(din[21]), .Z(\g.din_i [21]));
Q_MX02 U814 ( .S(bwe[20]), .A0(\g.dout_i [20]), .A1(din[20]), .Z(\g.din_i [20]));
Q_MX02 U815 ( .S(bwe[19]), .A0(\g.dout_i [19]), .A1(din[19]), .Z(\g.din_i [19]));
Q_MX02 U816 ( .S(bwe[18]), .A0(\g.dout_i [18]), .A1(din[18]), .Z(\g.din_i [18]));
Q_MX02 U817 ( .S(bwe[17]), .A0(\g.dout_i [17]), .A1(din[17]), .Z(\g.din_i [17]));
Q_MX02 U818 ( .S(bwe[16]), .A0(\g.dout_i [16]), .A1(din[16]), .Z(\g.din_i [16]));
Q_MX02 U819 ( .S(bwe[15]), .A0(\g.dout_i [15]), .A1(din[15]), .Z(\g.din_i [15]));
Q_MX02 U820 ( .S(bwe[14]), .A0(\g.dout_i [14]), .A1(din[14]), .Z(\g.din_i [14]));
Q_MX02 U821 ( .S(bwe[13]), .A0(\g.dout_i [13]), .A1(din[13]), .Z(\g.din_i [13]));
Q_MX02 U822 ( .S(bwe[12]), .A0(\g.dout_i [12]), .A1(din[12]), .Z(\g.din_i [12]));
Q_MX02 U823 ( .S(bwe[11]), .A0(\g.dout_i [11]), .A1(din[11]), .Z(\g.din_i [11]));
Q_MX02 U824 ( .S(bwe[10]), .A0(\g.dout_i [10]), .A1(din[10]), .Z(\g.din_i [10]));
Q_MX02 U825 ( .S(bwe[9]), .A0(\g.dout_i [9]), .A1(din[9]), .Z(\g.din_i [9]));
Q_MX02 U826 ( .S(bwe[8]), .A0(\g.dout_i [8]), .A1(din[8]), .Z(\g.din_i [8]));
Q_MX02 U827 ( .S(bwe[7]), .A0(\g.dout_i [7]), .A1(din[7]), .Z(\g.din_i [7]));
Q_MX02 U828 ( .S(bwe[6]), .A0(\g.dout_i [6]), .A1(din[6]), .Z(\g.din_i [6]));
Q_MX02 U829 ( .S(bwe[5]), .A0(\g.dout_i [5]), .A1(din[5]), .Z(\g.din_i [5]));
Q_MX02 U830 ( .S(bwe[4]), .A0(\g.dout_i [4]), .A1(din[4]), .Z(\g.din_i [4]));
Q_MX02 U831 ( .S(bwe[3]), .A0(\g.dout_i [3]), .A1(din[3]), .Z(\g.din_i [3]));
Q_MX02 U832 ( .S(bwe[2]), .A0(\g.dout_i [2]), .A1(din[2]), .Z(\g.din_i [2]));
Q_MX02 U833 ( .S(bwe[1]), .A0(\g.dout_i [1]), .A1(din[1]), .Z(\g.din_i [1]));
Q_MX02 U834 ( .S(bwe[0]), .A0(\g.dout_i [0]), .A1(din[0]), .Z(\g.din_i [0]));
Q_FDP4EP \g.dat_r_REG[95] ( .CK(clk), .CE(cs), .R(n1), .D(n194), .Q(\g.dat_r [95]));
Q_INV U836 ( .A(rst_n), .Z(n1));
Q_FDP4EP \g.dat_r_REG[94] ( .CK(clk), .CE(cs), .R(n1), .D(n193), .Q(\g.dat_r [94]));
Q_FDP4EP \g.dat_r_REG[93] ( .CK(clk), .CE(cs), .R(n1), .D(n192), .Q(\g.dat_r [93]));
Q_FDP4EP \g.dat_r_REG[92] ( .CK(clk), .CE(cs), .R(n1), .D(n191), .Q(\g.dat_r [92]));
Q_FDP4EP \g.dat_r_REG[91] ( .CK(clk), .CE(cs), .R(n1), .D(n190), .Q(\g.dat_r [91]));
Q_FDP4EP \g.dat_r_REG[90] ( .CK(clk), .CE(cs), .R(n1), .D(n189), .Q(\g.dat_r [90]));
Q_FDP4EP \g.dat_r_REG[89] ( .CK(clk), .CE(cs), .R(n1), .D(n188), .Q(\g.dat_r [89]));
Q_FDP4EP \g.dat_r_REG[88] ( .CK(clk), .CE(cs), .R(n1), .D(n187), .Q(\g.dat_r [88]));
Q_FDP4EP \g.dat_r_REG[87] ( .CK(clk), .CE(cs), .R(n1), .D(n186), .Q(\g.dat_r [87]));
Q_FDP4EP \g.dat_r_REG[86] ( .CK(clk), .CE(cs), .R(n1), .D(n185), .Q(\g.dat_r [86]));
Q_FDP4EP \g.dat_r_REG[85] ( .CK(clk), .CE(cs), .R(n1), .D(n184), .Q(\g.dat_r [85]));
Q_FDP4EP \g.dat_r_REG[84] ( .CK(clk), .CE(cs), .R(n1), .D(n183), .Q(\g.dat_r [84]));
Q_FDP4EP \g.dat_r_REG[83] ( .CK(clk), .CE(cs), .R(n1), .D(n182), .Q(\g.dat_r [83]));
Q_FDP4EP \g.dat_r_REG[82] ( .CK(clk), .CE(cs), .R(n1), .D(n181), .Q(\g.dat_r [82]));
Q_FDP4EP \g.dat_r_REG[81] ( .CK(clk), .CE(cs), .R(n1), .D(n180), .Q(\g.dat_r [81]));
Q_FDP4EP \g.dat_r_REG[80] ( .CK(clk), .CE(cs), .R(n1), .D(n179), .Q(\g.dat_r [80]));
Q_FDP4EP \g.dat_r_REG[79] ( .CK(clk), .CE(cs), .R(n1), .D(n178), .Q(\g.dat_r [79]));
Q_FDP4EP \g.dat_r_REG[78] ( .CK(clk), .CE(cs), .R(n1), .D(n177), .Q(\g.dat_r [78]));
Q_FDP4EP \g.dat_r_REG[77] ( .CK(clk), .CE(cs), .R(n1), .D(n176), .Q(\g.dat_r [77]));
Q_FDP4EP \g.dat_r_REG[76] ( .CK(clk), .CE(cs), .R(n1), .D(n175), .Q(\g.dat_r [76]));
Q_FDP4EP \g.dat_r_REG[75] ( .CK(clk), .CE(cs), .R(n1), .D(n174), .Q(\g.dat_r [75]));
Q_FDP4EP \g.dat_r_REG[74] ( .CK(clk), .CE(cs), .R(n1), .D(n173), .Q(\g.dat_r [74]));
Q_FDP4EP \g.dat_r_REG[73] ( .CK(clk), .CE(cs), .R(n1), .D(n172), .Q(\g.dat_r [73]));
Q_FDP4EP \g.dat_r_REG[72] ( .CK(clk), .CE(cs), .R(n1), .D(n171), .Q(\g.dat_r [72]));
Q_FDP4EP \g.dat_r_REG[71] ( .CK(clk), .CE(cs), .R(n1), .D(n170), .Q(\g.dat_r [71]));
Q_FDP4EP \g.dat_r_REG[70] ( .CK(clk), .CE(cs), .R(n1), .D(n169), .Q(\g.dat_r [70]));
Q_FDP4EP \g.dat_r_REG[69] ( .CK(clk), .CE(cs), .R(n1), .D(n168), .Q(\g.dat_r [69]));
Q_FDP4EP \g.dat_r_REG[68] ( .CK(clk), .CE(cs), .R(n1), .D(n167), .Q(\g.dat_r [68]));
Q_FDP4EP \g.dat_r_REG[67] ( .CK(clk), .CE(cs), .R(n1), .D(n166), .Q(\g.dat_r [67]));
Q_FDP4EP \g.dat_r_REG[66] ( .CK(clk), .CE(cs), .R(n1), .D(n165), .Q(\g.dat_r [66]));
Q_FDP4EP \g.dat_r_REG[65] ( .CK(clk), .CE(cs), .R(n1), .D(n164), .Q(\g.dat_r [65]));
Q_FDP4EP \g.dat_r_REG[64] ( .CK(clk), .CE(cs), .R(n1), .D(n163), .Q(\g.dat_r [64]));
Q_FDP4EP \g.dat_r_REG[63] ( .CK(clk), .CE(cs), .R(n1), .D(n162), .Q(\g.dat_r [63]));
Q_FDP4EP \g.dat_r_REG[62] ( .CK(clk), .CE(cs), .R(n1), .D(n161), .Q(\g.dat_r [62]));
Q_FDP4EP \g.dat_r_REG[61] ( .CK(clk), .CE(cs), .R(n1), .D(n160), .Q(\g.dat_r [61]));
Q_FDP4EP \g.dat_r_REG[60] ( .CK(clk), .CE(cs), .R(n1), .D(n159), .Q(\g.dat_r [60]));
Q_FDP4EP \g.dat_r_REG[59] ( .CK(clk), .CE(cs), .R(n1), .D(n158), .Q(\g.dat_r [59]));
Q_FDP4EP \g.dat_r_REG[58] ( .CK(clk), .CE(cs), .R(n1), .D(n157), .Q(\g.dat_r [58]));
Q_FDP4EP \g.dat_r_REG[57] ( .CK(clk), .CE(cs), .R(n1), .D(n156), .Q(\g.dat_r [57]));
Q_FDP4EP \g.dat_r_REG[56] ( .CK(clk), .CE(cs), .R(n1), .D(n155), .Q(\g.dat_r [56]));
Q_FDP4EP \g.dat_r_REG[55] ( .CK(clk), .CE(cs), .R(n1), .D(n154), .Q(\g.dat_r [55]));
Q_FDP4EP \g.dat_r_REG[54] ( .CK(clk), .CE(cs), .R(n1), .D(n153), .Q(\g.dat_r [54]));
Q_FDP4EP \g.dat_r_REG[53] ( .CK(clk), .CE(cs), .R(n1), .D(n152), .Q(\g.dat_r [53]));
Q_FDP4EP \g.dat_r_REG[52] ( .CK(clk), .CE(cs), .R(n1), .D(n151), .Q(\g.dat_r [52]));
Q_FDP4EP \g.dat_r_REG[51] ( .CK(clk), .CE(cs), .R(n1), .D(n150), .Q(\g.dat_r [51]));
Q_FDP4EP \g.dat_r_REG[50] ( .CK(clk), .CE(cs), .R(n1), .D(n149), .Q(\g.dat_r [50]));
Q_FDP4EP \g.dat_r_REG[49] ( .CK(clk), .CE(cs), .R(n1), .D(n148), .Q(\g.dat_r [49]));
Q_FDP4EP \g.dat_r_REG[48] ( .CK(clk), .CE(cs), .R(n1), .D(n147), .Q(\g.dat_r [48]));
Q_FDP4EP \g.dat_r_REG[47] ( .CK(clk), .CE(cs), .R(n1), .D(n146), .Q(\g.dat_r [47]));
Q_FDP4EP \g.dat_r_REG[46] ( .CK(clk), .CE(cs), .R(n1), .D(n145), .Q(\g.dat_r [46]));
Q_FDP4EP \g.dat_r_REG[45] ( .CK(clk), .CE(cs), .R(n1), .D(n144), .Q(\g.dat_r [45]));
Q_FDP4EP \g.dat_r_REG[44] ( .CK(clk), .CE(cs), .R(n1), .D(n143), .Q(\g.dat_r [44]));
Q_FDP4EP \g.dat_r_REG[43] ( .CK(clk), .CE(cs), .R(n1), .D(n142), .Q(\g.dat_r [43]));
Q_FDP4EP \g.dat_r_REG[42] ( .CK(clk), .CE(cs), .R(n1), .D(n141), .Q(\g.dat_r [42]));
Q_FDP4EP \g.dat_r_REG[41] ( .CK(clk), .CE(cs), .R(n1), .D(n140), .Q(\g.dat_r [41]));
Q_FDP4EP \g.dat_r_REG[40] ( .CK(clk), .CE(cs), .R(n1), .D(n139), .Q(\g.dat_r [40]));
Q_FDP4EP \g.dat_r_REG[39] ( .CK(clk), .CE(cs), .R(n1), .D(n138), .Q(\g.dat_r [39]));
Q_FDP4EP \g.dat_r_REG[38] ( .CK(clk), .CE(cs), .R(n1), .D(n137), .Q(\g.dat_r [38]));
Q_FDP4EP \g.dat_r_REG[37] ( .CK(clk), .CE(cs), .R(n1), .D(n136), .Q(\g.dat_r [37]));
Q_FDP4EP \g.dat_r_REG[36] ( .CK(clk), .CE(cs), .R(n1), .D(n135), .Q(\g.dat_r [36]));
Q_FDP4EP \g.dat_r_REG[35] ( .CK(clk), .CE(cs), .R(n1), .D(n134), .Q(\g.dat_r [35]));
Q_FDP4EP \g.dat_r_REG[34] ( .CK(clk), .CE(cs), .R(n1), .D(n133), .Q(\g.dat_r [34]));
Q_FDP4EP \g.dat_r_REG[33] ( .CK(clk), .CE(cs), .R(n1), .D(n132), .Q(\g.dat_r [33]));
Q_FDP4EP \g.dat_r_REG[32] ( .CK(clk), .CE(cs), .R(n1), .D(n131), .Q(\g.dat_r [32]));
Q_FDP4EP \g.dat_r_REG[31] ( .CK(clk), .CE(cs), .R(n1), .D(n130), .Q(\g.dat_r [31]));
Q_FDP4EP \g.dat_r_REG[30] ( .CK(clk), .CE(cs), .R(n1), .D(n129), .Q(\g.dat_r [30]));
Q_FDP4EP \g.dat_r_REG[29] ( .CK(clk), .CE(cs), .R(n1), .D(n128), .Q(\g.dat_r [29]));
Q_FDP4EP \g.dat_r_REG[28] ( .CK(clk), .CE(cs), .R(n1), .D(n127), .Q(\g.dat_r [28]));
Q_FDP4EP \g.dat_r_REG[27] ( .CK(clk), .CE(cs), .R(n1), .D(n126), .Q(\g.dat_r [27]));
Q_FDP4EP \g.dat_r_REG[26] ( .CK(clk), .CE(cs), .R(n1), .D(n125), .Q(\g.dat_r [26]));
Q_FDP4EP \g.dat_r_REG[25] ( .CK(clk), .CE(cs), .R(n1), .D(n124), .Q(\g.dat_r [25]));
Q_FDP4EP \g.dat_r_REG[24] ( .CK(clk), .CE(cs), .R(n1), .D(n123), .Q(\g.dat_r [24]));
Q_FDP4EP \g.dat_r_REG[23] ( .CK(clk), .CE(cs), .R(n1), .D(n122), .Q(\g.dat_r [23]));
Q_FDP4EP \g.dat_r_REG[22] ( .CK(clk), .CE(cs), .R(n1), .D(n121), .Q(\g.dat_r [22]));
Q_FDP4EP \g.dat_r_REG[21] ( .CK(clk), .CE(cs), .R(n1), .D(n120), .Q(\g.dat_r [21]));
Q_FDP4EP \g.dat_r_REG[20] ( .CK(clk), .CE(cs), .R(n1), .D(n119), .Q(\g.dat_r [20]));
Q_FDP4EP \g.dat_r_REG[19] ( .CK(clk), .CE(cs), .R(n1), .D(n118), .Q(\g.dat_r [19]));
Q_FDP4EP \g.dat_r_REG[18] ( .CK(clk), .CE(cs), .R(n1), .D(n117), .Q(\g.dat_r [18]));
Q_FDP4EP \g.dat_r_REG[17] ( .CK(clk), .CE(cs), .R(n1), .D(n116), .Q(\g.dat_r [17]));
Q_FDP4EP \g.dat_r_REG[16] ( .CK(clk), .CE(cs), .R(n1), .D(n115), .Q(\g.dat_r [16]));
Q_FDP4EP \g.dat_r_REG[15] ( .CK(clk), .CE(cs), .R(n1), .D(n114), .Q(\g.dat_r [15]));
Q_FDP4EP \g.dat_r_REG[14] ( .CK(clk), .CE(cs), .R(n1), .D(n113), .Q(\g.dat_r [14]));
Q_FDP4EP \g.dat_r_REG[13] ( .CK(clk), .CE(cs), .R(n1), .D(n112), .Q(\g.dat_r [13]));
Q_FDP4EP \g.dat_r_REG[12] ( .CK(clk), .CE(cs), .R(n1), .D(n111), .Q(\g.dat_r [12]));
Q_FDP4EP \g.dat_r_REG[11] ( .CK(clk), .CE(cs), .R(n1), .D(n110), .Q(\g.dat_r [11]));
Q_FDP4EP \g.dat_r_REG[10] ( .CK(clk), .CE(cs), .R(n1), .D(n109), .Q(\g.dat_r [10]));
Q_FDP4EP \g.dat_r_REG[9] ( .CK(clk), .CE(cs), .R(n1), .D(n108), .Q(\g.dat_r [9]));
Q_FDP4EP \g.dat_r_REG[8] ( .CK(clk), .CE(cs), .R(n1), .D(n107), .Q(\g.dat_r [8]));
Q_FDP4EP \g.dat_r_REG[7] ( .CK(clk), .CE(cs), .R(n1), .D(n106), .Q(\g.dat_r [7]));
Q_FDP4EP \g.dat_r_REG[6] ( .CK(clk), .CE(cs), .R(n1), .D(n105), .Q(\g.dat_r [6]));
Q_FDP4EP \g.dat_r_REG[5] ( .CK(clk), .CE(cs), .R(n1), .D(n104), .Q(\g.dat_r [5]));
Q_FDP4EP \g.dat_r_REG[4] ( .CK(clk), .CE(cs), .R(n1), .D(n103), .Q(\g.dat_r [4]));
Q_FDP4EP \g.dat_r_REG[3] ( .CK(clk), .CE(cs), .R(n1), .D(n102), .Q(\g.dat_r [3]));
Q_FDP4EP \g.dat_r_REG[2] ( .CK(clk), .CE(cs), .R(n1), .D(n101), .Q(\g.dat_r [2]));
Q_FDP4EP \g.dat_r_REG[1] ( .CK(clk), .CE(cs), .R(n1), .D(n100), .Q(\g.dat_r [1]));
Q_FDP4EP \g.dat_r_REG[0] ( .CK(clk), .CE(cs), .R(n1), .D(n99), .Q(\g.dat_r [0]));
`ifdef CBV

reg [95:0] \g.mem  [0:511];
initial begin: U932
  integer i;
  for (i=0; i<=511; i=i+1) \g.mem [i] =
`ifdef CBV_MEM_INIT1
  {96{1'b1}};
`else
  96'b0;
`endif
end
reg [95:0] n308;
assign {n98, n97, n96, n95, n94, n93, n92,
n91, n90, n89, n88, n87, n86, n85, n84,
n83, n82, n81, n80, n79, n78, n77, n76,
n75, n74, n73, n72, n71, n70, n69, n68,
n67, n66, n65, n64, n63, n62, n61, n60,
n59, n58, n57, n56, n55, n54, n53, n52,
n51, n50, n49, n48, n47, n46, n45, n44,
n43, n42, n41, n40, n39, n38, n37, n36,
n35, n34, n33, n32, n31, n30, n29, n28,
n27, n26, n25, n24, n23, n22, n21, n20,
n19, n18, n17, n16, n15, n14, n13, n12,
n11, n10, n9, n8, n7, n6, n5, n4,
n3} = n308; 
always @(n209 or n208 or n207 or n206 or n205
 or n204 or n203 or n202 or n201 or n305 or n304 or n303 or n302
 or n301 or n300 or n299 or n298 or n297 or n296 or n295 or n294
 or n293 or n292 or n291 or n290 or n289 or n288 or n287 or n286
 or n285 or n284 or n283 or n282 or n281 or n280 or n279 or n278
 or n277 or n276 or n275 or n274 or n273 or n272 or n271 or n270
 or n269 or n268 or n267 or n266 or n265 or n264 or n263 or n262
 or n261 or n260 or n259 or n258 or n257 or n256 or n255 or n254
 or n253 or n252 or n251 or n250 or n249 or n248 or n247 or n246
 or n245 or n244 or n243 or n242 or n241 or n240 or n239 or n238
 or n237 or n236 or n235 or n234 or n233 or n232 or n231 or n230
 or n229 or n228 or n227 or n226 or n225 or n224 or n223 or n222
 or n221 or n220 or n219 or n218 or n217 or n216 or n215 or n214
 or n213 or n212 or n211 or n210 or n200 or add[8] or add[7] or add[6]
 or add[5] or add[4] or add[3] or add[2] or add[1] or add[0])
#0 begin
if (n200)
\g.mem [{n209, n208, n207, n206, n205,
 n204, n203, n202, n201}] =
{n305, n304, n303, n302, n301,
 n300, n299, n298, n297, n296, n295, n294, n293,
 n292, n291, n290, n289, n288, n287, n286, n285,
 n284, n283, n282, n281, n280, n279, n278, n277,
 n276, n275, n274, n273, n272, n271, n270, n269,
 n268, n267, n266, n265, n264, n263, n262, n261,
 n260, n259, n258, n257, n256, n255, n254, n253,
 n252, n251, n250, n249, n248, n247, n246, n245,
 n244, n243, n242, n241, n240, n239, n238, n237,
 n236, n235, n234, n233, n232, n231, n230, n229,
 n228, n227, n226, n225, n224, n223, n222, n221,
 n220, n219, n218, n217, n216, n215, n214, n213,
 n212, n211, n210};
n308 = \g.mem [{add[8], add[7], add[6], add[5], add[4],
 add[3], add[2], add[1], add[0]}];
end
`else

MPW512X96 \g.mem  ( .A8(n209), .A7(n208), .A6(n207), .A5(n206), .A4(n205), .A3(n204),
 .A2(n203), .A1(n202), .A0(n201), .DI95(n305), .DI94(n304), .DI93(n303), .DI92(n302), .DI91(n301),
 .DI90(n300), .DI89(n299), .DI88(n298), .DI87(n297), .DI86(n296), .DI85(n295), .DI84(n294), .DI83(n293),
 .DI82(n292), .DI81(n291), .DI80(n290), .DI79(n289), .DI78(n288), .DI77(n287), .DI76(n286), .DI75(n285),
 .DI74(n284), .DI73(n283), .DI72(n282), .DI71(n281), .DI70(n280), .DI69(n279), .DI68(n278), .DI67(n277),
 .DI66(n276), .DI65(n275), .DI64(n274), .DI63(n273), .DI62(n272), .DI61(n271), .DI60(n270), .DI59(n269),
 .DI58(n268), .DI57(n267), .DI56(n266), .DI55(n265), .DI54(n264), .DI53(n263), .DI52(n262), .DI51(n261),
 .DI50(n260), .DI49(n259), .DI48(n258), .DI47(n257), .DI46(n256), .DI45(n255), .DI44(n254), .DI43(n253),
 .DI42(n252), .DI41(n251), .DI40(n250), .DI39(n249), .DI38(n248), .DI37(n247), .DI36(n246), .DI35(n245),
 .DI34(n244), .DI33(n243), .DI32(n242), .DI31(n241), .DI30(n240), .DI29(n239), .DI28(n238), .DI27(n237),
 .DI26(n236), .DI25(n235), .DI24(n234), .DI23(n233), .DI22(n232), .DI21(n231), .DI20(n230), .DI19(n229),
 .DI18(n228), .DI17(n227), .DI16(n226), .DI15(n225), .DI14(n224), .DI13(n223), .DI12(n222), .DI11(n221),
 .DI10(n220), .DI9(n219), .DI8(n218), .DI7(n217), .DI6(n216), .DI5(n215), .DI4(n214), .DI3(n213),
 .DI2(n212), .DI1(n211), .DI0(n210), .WE(n200), .SYNC_IN(n307), .SYNC_OUT(n308));
// pragma CVASTRPROP INSTANCE "\g.mem " HDL_MEMORY_DECL "1 95 0 0 511"
MPR512X96 U933 ( .A8(add[8]), .A7(add[7]), .A6(add[6]), .A5(add[5]), .A4(add[4]), .A3(add[3]),
 .A2(add[2]), .A1(add[1]), .A0(add[0]), .SYNC_IN(n308), .DO95(n98), .DO94(n97), .DO93(n96), .DO92(n95),
 .DO91(n94), .DO90(n93), .DO89(n92), .DO88(n91), .DO87(n90), .DO86(n89), .DO85(n88), .DO84(n87),
 .DO83(n86), .DO82(n85), .DO81(n84), .DO80(n83), .DO79(n82), .DO78(n81), .DO77(n80), .DO76(n79),
 .DO75(n78), .DO74(n77), .DO73(n76), .DO72(n75), .DO71(n74), .DO70(n73), .DO69(n72), .DO68(n71),
 .DO67(n70), .DO66(n69), .DO65(n68), .DO64(n67), .DO63(n66), .DO62(n65), .DO61(n64), .DO60(n63),
 .DO59(n62), .DO58(n61), .DO57(n60), .DO56(n59), .DO55(n58), .DO54(n57), .DO53(n56), .DO52(n55),
 .DO51(n54), .DO50(n53), .DO49(n52), .DO48(n51), .DO47(n50), .DO46(n49), .DO45(n48), .DO44(n47),
 .DO43(n46), .DO42(n45), .DO41(n44), .DO40(n43), .DO39(n42), .DO38(n41), .DO37(n40), .DO36(n39),
 .DO35(n38), .DO34(n37), .DO33(n36), .DO32(n35), .DO31(n34), .DO30(n33), .DO29(n32), .DO28(n31),
 .DO27(n30), .DO26(n29), .DO25(n28), .DO24(n27), .DO23(n26), .DO22(n25), .DO21(n24), .DO20(n23),
 .DO19(n22), .DO18(n21), .DO17(n20), .DO16(n19), .DO15(n18), .DO14(n17), .DO13(n16), .DO12(n15),
 .DO11(n14), .DO10(n13), .DO9(n12), .DO8(n11), .DO7(n10), .DO6(n9), .DO5(n8), .DO4(n7),
 .DO3(n6), .DO2(n5), .DO1(n4), .DO0(n3), .SYNC_OUT( ));
`endif
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 u_ram  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 g  "
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "g.u_ram"
// pragma CVASTRPROP MODULE HDLICE cva_for_generate "g"
endmodule
`ifdef CBV
`else
`ifdef MPW512X96_MPR512X96
`else
module MPW512X96( A8, A7, A6, A5, A4, A3, A2,
 A1, A0, DI95, DI94, DI93, DI92, DI91, DI90,
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
input  A8, A7, A6, A5, A4, A3, A2, A1,
 A0, DI95, DI94, DI93, DI92, DI91, DI90, DI89, DI88, DI87,
 DI86, DI85, DI84, DI83, DI82, DI81, DI80, DI79, DI78, DI77,
 DI76, DI75, DI74, DI73, DI72, DI71, DI70, DI69, DI68, DI67,
 DI66, DI65, DI64, DI63, DI62, DI61, DI60, DI59, DI58, DI57,
 DI56, DI55, DI54, DI53, DI52, DI51, DI50, DI49, DI48, DI47,
 DI46, DI45, DI44, DI43, DI42, DI41, DI40, DI39, DI38, DI37,
 DI36, DI35, DI34, DI33, DI32, DI31, DI30, DI29, DI28, DI27,
 DI26, DI25, DI24, DI23, DI22, DI21, DI20, DI19, DI18, DI17,
 DI16, DI15, DI14, DI13, DI12, DI11, DI10, DI9, DI8, DI7,
 DI6, DI5, DI4, DI3, DI2, DI1, DI0, WE, SYNC_IN;
output  SYNC_OUT;
endmodule
`ifdef _MPR512X96_
`else
module MPR512X96( A8, A7, A6, A5, A4, A3, A2,
 A1, A0, SYNC_IN, DO95, DO94, DO93, DO92, DO91,
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
input  A8, A7, A6, A5, A4, A3, A2, A1,
 A0, SYNC_IN;
output  DO95, DO94, DO93, DO92, DO91, DO90, DO89, DO88,
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
`define _MPR512X96_
`endif
`define MPW512X96_MPR512X96
`endif
`endif
