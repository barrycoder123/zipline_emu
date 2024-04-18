`timescale 1ps/1ps
`include "uxe_axis_smem.v"
`include "uxe_axis_prim.v"
`include "axBMod.v"
`include "axEMod.v"
`include "ixc_prims.v"
`include "ixc_prims.sv"
module xc_top;

bit evdOn;
bit hwOutInit;
bit hwOutInit1;
bit cpi_capture_enable;
bit assertion_coverage_reset_t;
int xsiid;
event hwMatchEvent;
event hwOutEvent;
event evalAxisMem;
event stop1event;
`define MARG_VMEM_WIDTH 611
`define MARG_VMEM_BLOCK 1048576
`define MARG_DEPOSIT_WIDTH 32
`define MARG_DPI_WIDTH 64
`define MARG_DEPOSIT_UA_WIDTH 1
`define MARG_MEM_FILENAME_WIDTH 8
`define MARG_MEM_FILEFORMAT_WIDTH 8
bit extend_behp_cyc;
int po_id;
reg [63:0] po_v;
reg po_b;
int po_int;

bit evalSch = 0;
bit evalStart;
event doEvalSch;
bit doSwapIn;
bit doCompTbx;
bit evalDone;
bit dpiTrace;
bit dpiProf;
bit dp_capture_enable = 0;

wire nullClk;
import "DPI-C" function int xcDesSig();
import "DPI-C" function int xcInit(input int version);
// pragma dpiopt noncontext
import "DPI-C" pure function int xcInEvent(input int i, input logic v);
// pragma dpiopt noncontext
import "DPI-C" pure function int xcOutMatch(input int i, input logic v);
// pragma dpiopt noncontext
import "DPI-C" pure function int xcOutMatchVec(input int i, input logic [63:0] v);
import "DPI-C" function int xcOutEvent(output logic v);
import "DPI-C" function int xcOutEventInt(output int v);
import "DPI-C" function int xcOutEventVec(output logic [63:0] v);
// pragma dpiopt noncontext
import "DPI-C" function int xcOutUpdate(input int i, output bit [63:0] v);
import "DPI-C" context function int xcEvalAutorun(input int extPending);
import "DPI-C" context function int xcEvalExtend();
import "DPI-C" context function int xcEvalTurbo();
import "DPI-C" context function int xcEvalTurboNoStop();
import "DPI-C" context function void xcStartNbrun();
import "DPI-C" context function int xcCheckNbrun(output longint delay);
import "DPI-C" context function int xcCheckNbrunEv(output longint delay);
import "DPI-C" context function void GFIFO_flush(input int flushSFIFO, input int finalCall);
import "DPI-C" context function int xcNextEvent(output longint delay, input int extPending);
import "DPI-C" context function int xcNextTbEvent(output longint delay);
// pragma dpiopt noncontext
import "DPI-C" pure function int xcTbcEvent();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcTbc2Event();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcTbc4Event();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcSchOutEvent();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcSchOutEvent1stPhase();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcSchOutEvent2ndPhase();
import "DPI-C" context function int xcTurboOff();
import "DPI-C" context function int xcEmuOff();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcSwapIn();
// pragma dpiopt noncontext
import "DPI-C" pure function int xcCompTbx();
import "DPI-C" context function int xcPropStopEnd();
// pragma dpiopt noncontext
import "DPI-C" function int xcAxisMread(input int memid, input logic [31:0] addr, output logic [31:0] data);
import "DPI-C" function int xcAxisMwrite(input int memid, input logic [31:0] addr, input logic [31:0] data);
import "DPI-C" function void ixc_time_init(input int unit, input int b);
import "DPI-C" function int xcNextEclk(output longint delay, input int flags);
`include "xc_top_incl.v"

always@(posedge nullClk) void'(xcDesSig());

const int xcinit = xcInit(1713384390);

function void xcvtf_bufDispFlush;
 fork
 join_none
endfunction

final begin
end

// { input section

always@(posedge cpi_capture_enable) begin
 void'(xcInEvent(0, kme_tb._zy_simnet_clk_5_w$));
 void'(xcInEvent(1, kme_tb._zy_simnet_rst_n_6_w$));
 void'(xcInEvent(2, kme_tb._zy_simnet_kme_apb_prdata_7_w$[31]));
 void'(xcInEvent(3, kme_tb._zy_simnet_kme_apb_prdata_7_w$[30]));
 void'(xcInEvent(4, kme_tb._zy_simnet_kme_apb_prdata_7_w$[29]));
 void'(xcInEvent(5, kme_tb._zy_simnet_kme_apb_prdata_7_w$[28]));
 void'(xcInEvent(6, kme_tb._zy_simnet_kme_apb_prdata_7_w$[27]));
 void'(xcInEvent(7, kme_tb._zy_simnet_kme_apb_prdata_7_w$[26]));
 void'(xcInEvent(8, kme_tb._zy_simnet_kme_apb_prdata_7_w$[25]));
 void'(xcInEvent(9, kme_tb._zy_simnet_kme_apb_prdata_7_w$[24]));
 void'(xcInEvent(10, kme_tb._zy_simnet_kme_apb_prdata_7_w$[23]));
 void'(xcInEvent(11, kme_tb._zy_simnet_kme_apb_prdata_7_w$[22]));
 void'(xcInEvent(12, kme_tb._zy_simnet_kme_apb_prdata_7_w$[21]));
 void'(xcInEvent(13, kme_tb._zy_simnet_kme_apb_prdata_7_w$[20]));
 void'(xcInEvent(14, kme_tb._zy_simnet_kme_apb_prdata_7_w$[19]));
 void'(xcInEvent(15, kme_tb._zy_simnet_kme_apb_prdata_7_w$[18]));
 void'(xcInEvent(16, kme_tb._zy_simnet_kme_apb_prdata_7_w$[17]));
 void'(xcInEvent(17, kme_tb._zy_simnet_kme_apb_prdata_7_w$[16]));
 void'(xcInEvent(18, kme_tb._zy_simnet_kme_apb_prdata_7_w$[15]));
 void'(xcInEvent(19, kme_tb._zy_simnet_kme_apb_prdata_7_w$[14]));
 void'(xcInEvent(20, kme_tb._zy_simnet_kme_apb_prdata_7_w$[13]));
 void'(xcInEvent(21, kme_tb._zy_simnet_kme_apb_prdata_7_w$[12]));
 void'(xcInEvent(22, kme_tb._zy_simnet_kme_apb_prdata_7_w$[11]));
 void'(xcInEvent(23, kme_tb._zy_simnet_kme_apb_prdata_7_w$[10]));
 void'(xcInEvent(24, kme_tb._zy_simnet_kme_apb_prdata_7_w$[9]));
 void'(xcInEvent(25, kme_tb._zy_simnet_kme_apb_prdata_7_w$[8]));
 void'(xcInEvent(26, kme_tb._zy_simnet_kme_apb_prdata_7_w$[7]));
 void'(xcInEvent(27, kme_tb._zy_simnet_kme_apb_prdata_7_w$[6]));
 void'(xcInEvent(28, kme_tb._zy_simnet_kme_apb_prdata_7_w$[5]));
 void'(xcInEvent(29, kme_tb._zy_simnet_kme_apb_prdata_7_w$[4]));
 void'(xcInEvent(30, kme_tb._zy_simnet_kme_apb_prdata_7_w$[3]));
 void'(xcInEvent(31, kme_tb._zy_simnet_kme_apb_prdata_7_w$[2]));
 void'(xcInEvent(32, kme_tb._zy_simnet_kme_apb_prdata_7_w$[1]));
 void'(xcInEvent(33, kme_tb._zy_simnet_kme_apb_prdata_7_w$[0]));
 void'(xcInEvent(34, kme_tb._zy_simnet_kme_apb_pready_8_w$));
 void'(xcInEvent(35, kme_tb._zy_simnet_kme_apb_pslverr_9_w$));
 void'(xcInEvent(36, kme_tb._zy_simnet_rst_n_23_w$));
 void'(xcInEvent(37, kme_tb._zy_simnet_cio_25));
 void'(xcInEvent(38, kme_tb._zy_simnet_cio_26));
 void'(xcInEvent(39, kme_tb._zy_simnet_cio_30));
 void'(xcInEvent(40, kme_tb._zy_simnet_cio_31));
 void'(xcInEvent(41, kme_tb._zy_simnet_kme_ib_tvalid_32_w$));
 void'(xcInEvent(42, kme_tb._zy_simnet_kme_ib_tlast_33_w$));
 void'(xcInEvent(43, kme_tb._zy_simnet_kme_ib_tid_34_w$));
 void'(xcInEvent(44, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[7]));
 void'(xcInEvent(45, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[6]));
 void'(xcInEvent(46, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[5]));
 void'(xcInEvent(47, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[4]));
 void'(xcInEvent(48, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[3]));
 void'(xcInEvent(49, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[2]));
 void'(xcInEvent(50, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[1]));
 void'(xcInEvent(51, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[0]));
 void'(xcInEvent(52, kme_tb._zy_simnet_kme_ib_tuser_36_w$[7]));
 void'(xcInEvent(53, kme_tb._zy_simnet_kme_ib_tuser_36_w$[6]));
 void'(xcInEvent(54, kme_tb._zy_simnet_kme_ib_tuser_36_w$[5]));
 void'(xcInEvent(55, kme_tb._zy_simnet_kme_ib_tuser_36_w$[4]));
 void'(xcInEvent(56, kme_tb._zy_simnet_kme_ib_tuser_36_w$[3]));
 void'(xcInEvent(57, kme_tb._zy_simnet_kme_ib_tuser_36_w$[2]));
 void'(xcInEvent(58, kme_tb._zy_simnet_kme_ib_tuser_36_w$[1]));
 void'(xcInEvent(59, kme_tb._zy_simnet_kme_ib_tuser_36_w$[0]));
 void'(xcInEvent(60, kme_tb._zy_simnet_kme_ib_tdata_37_w$[63]));
 void'(xcInEvent(61, kme_tb._zy_simnet_kme_ib_tdata_37_w$[62]));
 void'(xcInEvent(62, kme_tb._zy_simnet_kme_ib_tdata_37_w$[61]));
 void'(xcInEvent(63, kme_tb._zy_simnet_kme_ib_tdata_37_w$[60]));
 void'(xcInEvent(64, kme_tb._zy_simnet_kme_ib_tdata_37_w$[59]));
 void'(xcInEvent(65, kme_tb._zy_simnet_kme_ib_tdata_37_w$[58]));
 void'(xcInEvent(66, kme_tb._zy_simnet_kme_ib_tdata_37_w$[57]));
 void'(xcInEvent(67, kme_tb._zy_simnet_kme_ib_tdata_37_w$[56]));
 void'(xcInEvent(68, kme_tb._zy_simnet_kme_ib_tdata_37_w$[55]));
 void'(xcInEvent(69, kme_tb._zy_simnet_kme_ib_tdata_37_w$[54]));
 void'(xcInEvent(70, kme_tb._zy_simnet_kme_ib_tdata_37_w$[53]));
 void'(xcInEvent(71, kme_tb._zy_simnet_kme_ib_tdata_37_w$[52]));
 void'(xcInEvent(72, kme_tb._zy_simnet_kme_ib_tdata_37_w$[51]));
 void'(xcInEvent(73, kme_tb._zy_simnet_kme_ib_tdata_37_w$[50]));
 void'(xcInEvent(74, kme_tb._zy_simnet_kme_ib_tdata_37_w$[49]));
 void'(xcInEvent(75, kme_tb._zy_simnet_kme_ib_tdata_37_w$[48]));
 void'(xcInEvent(76, kme_tb._zy_simnet_kme_ib_tdata_37_w$[47]));
 void'(xcInEvent(77, kme_tb._zy_simnet_kme_ib_tdata_37_w$[46]));
 void'(xcInEvent(78, kme_tb._zy_simnet_kme_ib_tdata_37_w$[45]));
 void'(xcInEvent(79, kme_tb._zy_simnet_kme_ib_tdata_37_w$[44]));
 void'(xcInEvent(80, kme_tb._zy_simnet_kme_ib_tdata_37_w$[43]));
 void'(xcInEvent(81, kme_tb._zy_simnet_kme_ib_tdata_37_w$[42]));
 void'(xcInEvent(82, kme_tb._zy_simnet_kme_ib_tdata_37_w$[41]));
 void'(xcInEvent(83, kme_tb._zy_simnet_kme_ib_tdata_37_w$[40]));
 void'(xcInEvent(84, kme_tb._zy_simnet_kme_ib_tdata_37_w$[39]));
 void'(xcInEvent(85, kme_tb._zy_simnet_kme_ib_tdata_37_w$[38]));
 void'(xcInEvent(86, kme_tb._zy_simnet_kme_ib_tdata_37_w$[37]));
 void'(xcInEvent(87, kme_tb._zy_simnet_kme_ib_tdata_37_w$[36]));
 void'(xcInEvent(88, kme_tb._zy_simnet_kme_ib_tdata_37_w$[35]));
 void'(xcInEvent(89, kme_tb._zy_simnet_kme_ib_tdata_37_w$[34]));
 void'(xcInEvent(90, kme_tb._zy_simnet_kme_ib_tdata_37_w$[33]));
 void'(xcInEvent(91, kme_tb._zy_simnet_kme_ib_tdata_37_w$[32]));
 void'(xcInEvent(92, kme_tb._zy_simnet_kme_ib_tdata_37_w$[31]));
 void'(xcInEvent(93, kme_tb._zy_simnet_kme_ib_tdata_37_w$[30]));
 void'(xcInEvent(94, kme_tb._zy_simnet_kme_ib_tdata_37_w$[29]));
 void'(xcInEvent(95, kme_tb._zy_simnet_kme_ib_tdata_37_w$[28]));
 void'(xcInEvent(96, kme_tb._zy_simnet_kme_ib_tdata_37_w$[27]));
 void'(xcInEvent(97, kme_tb._zy_simnet_kme_ib_tdata_37_w$[26]));
 void'(xcInEvent(98, kme_tb._zy_simnet_kme_ib_tdata_37_w$[25]));
 void'(xcInEvent(99, kme_tb._zy_simnet_kme_ib_tdata_37_w$[24]));
 void'(xcInEvent(100, kme_tb._zy_simnet_kme_ib_tdata_37_w$[23]));
 void'(xcInEvent(101, kme_tb._zy_simnet_kme_ib_tdata_37_w$[22]));
 void'(xcInEvent(102, kme_tb._zy_simnet_kme_ib_tdata_37_w$[21]));
 void'(xcInEvent(103, kme_tb._zy_simnet_kme_ib_tdata_37_w$[20]));
 void'(xcInEvent(104, kme_tb._zy_simnet_kme_ib_tdata_37_w$[19]));
 void'(xcInEvent(105, kme_tb._zy_simnet_kme_ib_tdata_37_w$[18]));
 void'(xcInEvent(106, kme_tb._zy_simnet_kme_ib_tdata_37_w$[17]));
 void'(xcInEvent(107, kme_tb._zy_simnet_kme_ib_tdata_37_w$[16]));
 void'(xcInEvent(108, kme_tb._zy_simnet_kme_ib_tdata_37_w$[15]));
 void'(xcInEvent(109, kme_tb._zy_simnet_kme_ib_tdata_37_w$[14]));
 void'(xcInEvent(110, kme_tb._zy_simnet_kme_ib_tdata_37_w$[13]));
 void'(xcInEvent(111, kme_tb._zy_simnet_kme_ib_tdata_37_w$[12]));
 void'(xcInEvent(112, kme_tb._zy_simnet_kme_ib_tdata_37_w$[11]));
 void'(xcInEvent(113, kme_tb._zy_simnet_kme_ib_tdata_37_w$[10]));
 void'(xcInEvent(114, kme_tb._zy_simnet_kme_ib_tdata_37_w$[9]));
 void'(xcInEvent(115, kme_tb._zy_simnet_kme_ib_tdata_37_w$[8]));
 void'(xcInEvent(116, kme_tb._zy_simnet_kme_ib_tdata_37_w$[7]));
 void'(xcInEvent(117, kme_tb._zy_simnet_kme_ib_tdata_37_w$[6]));
 void'(xcInEvent(118, kme_tb._zy_simnet_kme_ib_tdata_37_w$[5]));
 void'(xcInEvent(119, kme_tb._zy_simnet_kme_ib_tdata_37_w$[4]));
 void'(xcInEvent(120, kme_tb._zy_simnet_kme_ib_tdata_37_w$[3]));
 void'(xcInEvent(121, kme_tb._zy_simnet_kme_ib_tdata_37_w$[2]));
 void'(xcInEvent(122, kme_tb._zy_simnet_kme_ib_tdata_37_w$[1]));
 void'(xcInEvent(123, kme_tb._zy_simnet_kme_ib_tdata_37_w$[0]));
 void'(xcInEvent(124, kme_tb._zy_simnet_kme_ob_tready_38_w$));
 void'(xcInEvent(125, kme_tb._zy_simnet_kme_apb_paddr_39_w$[15]));
 void'(xcInEvent(126, kme_tb._zy_simnet_kme_apb_paddr_39_w$[14]));
 void'(xcInEvent(127, kme_tb._zy_simnet_kme_apb_paddr_39_w$[13]));
 void'(xcInEvent(128, kme_tb._zy_simnet_kme_apb_paddr_39_w$[12]));
 void'(xcInEvent(129, kme_tb._zy_simnet_kme_apb_paddr_39_w$[11]));
 void'(xcInEvent(130, kme_tb._zy_simnet_kme_apb_paddr_39_w$[10]));
 void'(xcInEvent(131, kme_tb._zy_simnet_kme_apb_paddr_39_w$[9]));
 void'(xcInEvent(132, kme_tb._zy_simnet_kme_apb_paddr_39_w$[8]));
 void'(xcInEvent(133, kme_tb._zy_simnet_kme_apb_paddr_39_w$[7]));
 void'(xcInEvent(134, kme_tb._zy_simnet_kme_apb_paddr_39_w$[6]));
 void'(xcInEvent(135, kme_tb._zy_simnet_kme_apb_paddr_39_w$[5]));
 void'(xcInEvent(136, kme_tb._zy_simnet_kme_apb_paddr_39_w$[4]));
 void'(xcInEvent(137, kme_tb._zy_simnet_kme_apb_paddr_39_w$[3]));
 void'(xcInEvent(138, kme_tb._zy_simnet_kme_apb_paddr_39_w$[2]));
 void'(xcInEvent(139, kme_tb._zy_simnet_kme_apb_paddr_39_w$[1]));
 void'(xcInEvent(140, kme_tb._zy_simnet_kme_apb_paddr_39_w$[0]));
 void'(xcInEvent(141, kme_tb._zy_simnet_kme_apb_psel_40_w$));
 void'(xcInEvent(142, kme_tb._zy_simnet_kme_apb_penable_41_w$));
 void'(xcInEvent(143, kme_tb._zy_simnet_kme_apb_pwrite_42_w$));
 void'(xcInEvent(144, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[31]));
 void'(xcInEvent(145, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[30]));
 void'(xcInEvent(146, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[29]));
 void'(xcInEvent(147, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[28]));
 void'(xcInEvent(148, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[27]));
 void'(xcInEvent(149, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[26]));
 void'(xcInEvent(150, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[25]));
 void'(xcInEvent(151, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[24]));
 void'(xcInEvent(152, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[23]));
 void'(xcInEvent(153, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[22]));
 void'(xcInEvent(154, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[21]));
 void'(xcInEvent(155, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[20]));
 void'(xcInEvent(156, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[19]));
 void'(xcInEvent(157, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[18]));
 void'(xcInEvent(158, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[17]));
 void'(xcInEvent(159, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[16]));
 void'(xcInEvent(160, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[15]));
 void'(xcInEvent(161, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[14]));
 void'(xcInEvent(162, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[13]));
 void'(xcInEvent(163, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[12]));
 void'(xcInEvent(164, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[11]));
 void'(xcInEvent(165, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[10]));
 void'(xcInEvent(166, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[9]));
 void'(xcInEvent(167, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[8]));
 void'(xcInEvent(168, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[7]));
 void'(xcInEvent(169, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[6]));
 void'(xcInEvent(170, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[5]));
 void'(xcInEvent(171, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[4]));
 void'(xcInEvent(172, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[3]));
 void'(xcInEvent(173, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[2]));
 void'(xcInEvent(174, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[1]));
 void'(xcInEvent(175, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[0]));
end
always@(kme_tb._zy_simnet_clk_5_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(0, kme_tb._zy_simnet_clk_5_w$));
  end
always@(kme_tb._zy_simnet_rst_n_6_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(1, kme_tb._zy_simnet_rst_n_6_w$));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[31])
  if(cpi_capture_enable) begin
    void'(xcInEvent(2, kme_tb._zy_simnet_kme_apb_prdata_7_w$[31]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[30])
  if(cpi_capture_enable) begin
    void'(xcInEvent(3, kme_tb._zy_simnet_kme_apb_prdata_7_w$[30]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[29])
  if(cpi_capture_enable) begin
    void'(xcInEvent(4, kme_tb._zy_simnet_kme_apb_prdata_7_w$[29]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[28])
  if(cpi_capture_enable) begin
    void'(xcInEvent(5, kme_tb._zy_simnet_kme_apb_prdata_7_w$[28]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[27])
  if(cpi_capture_enable) begin
    void'(xcInEvent(6, kme_tb._zy_simnet_kme_apb_prdata_7_w$[27]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[26])
  if(cpi_capture_enable) begin
    void'(xcInEvent(7, kme_tb._zy_simnet_kme_apb_prdata_7_w$[26]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[25])
  if(cpi_capture_enable) begin
    void'(xcInEvent(8, kme_tb._zy_simnet_kme_apb_prdata_7_w$[25]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[24])
  if(cpi_capture_enable) begin
    void'(xcInEvent(9, kme_tb._zy_simnet_kme_apb_prdata_7_w$[24]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[23])
  if(cpi_capture_enable) begin
    void'(xcInEvent(10, kme_tb._zy_simnet_kme_apb_prdata_7_w$[23]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[22])
  if(cpi_capture_enable) begin
    void'(xcInEvent(11, kme_tb._zy_simnet_kme_apb_prdata_7_w$[22]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[21])
  if(cpi_capture_enable) begin
    void'(xcInEvent(12, kme_tb._zy_simnet_kme_apb_prdata_7_w$[21]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[20])
  if(cpi_capture_enable) begin
    void'(xcInEvent(13, kme_tb._zy_simnet_kme_apb_prdata_7_w$[20]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[19])
  if(cpi_capture_enable) begin
    void'(xcInEvent(14, kme_tb._zy_simnet_kme_apb_prdata_7_w$[19]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[18])
  if(cpi_capture_enable) begin
    void'(xcInEvent(15, kme_tb._zy_simnet_kme_apb_prdata_7_w$[18]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[17])
  if(cpi_capture_enable) begin
    void'(xcInEvent(16, kme_tb._zy_simnet_kme_apb_prdata_7_w$[17]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[16])
  if(cpi_capture_enable) begin
    void'(xcInEvent(17, kme_tb._zy_simnet_kme_apb_prdata_7_w$[16]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[15])
  if(cpi_capture_enable) begin
    void'(xcInEvent(18, kme_tb._zy_simnet_kme_apb_prdata_7_w$[15]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[14])
  if(cpi_capture_enable) begin
    void'(xcInEvent(19, kme_tb._zy_simnet_kme_apb_prdata_7_w$[14]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[13])
  if(cpi_capture_enable) begin
    void'(xcInEvent(20, kme_tb._zy_simnet_kme_apb_prdata_7_w$[13]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[12])
  if(cpi_capture_enable) begin
    void'(xcInEvent(21, kme_tb._zy_simnet_kme_apb_prdata_7_w$[12]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[11])
  if(cpi_capture_enable) begin
    void'(xcInEvent(22, kme_tb._zy_simnet_kme_apb_prdata_7_w$[11]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[10])
  if(cpi_capture_enable) begin
    void'(xcInEvent(23, kme_tb._zy_simnet_kme_apb_prdata_7_w$[10]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[9])
  if(cpi_capture_enable) begin
    void'(xcInEvent(24, kme_tb._zy_simnet_kme_apb_prdata_7_w$[9]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[8])
  if(cpi_capture_enable) begin
    void'(xcInEvent(25, kme_tb._zy_simnet_kme_apb_prdata_7_w$[8]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[7])
  if(cpi_capture_enable) begin
    void'(xcInEvent(26, kme_tb._zy_simnet_kme_apb_prdata_7_w$[7]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[6])
  if(cpi_capture_enable) begin
    void'(xcInEvent(27, kme_tb._zy_simnet_kme_apb_prdata_7_w$[6]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[5])
  if(cpi_capture_enable) begin
    void'(xcInEvent(28, kme_tb._zy_simnet_kme_apb_prdata_7_w$[5]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[4])
  if(cpi_capture_enable) begin
    void'(xcInEvent(29, kme_tb._zy_simnet_kme_apb_prdata_7_w$[4]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[3])
  if(cpi_capture_enable) begin
    void'(xcInEvent(30, kme_tb._zy_simnet_kme_apb_prdata_7_w$[3]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[2])
  if(cpi_capture_enable) begin
    void'(xcInEvent(31, kme_tb._zy_simnet_kme_apb_prdata_7_w$[2]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[1])
  if(cpi_capture_enable) begin
    void'(xcInEvent(32, kme_tb._zy_simnet_kme_apb_prdata_7_w$[1]));
  end
always@(kme_tb._zy_simnet_kme_apb_prdata_7_w$[0])
  if(cpi_capture_enable) begin
    void'(xcInEvent(33, kme_tb._zy_simnet_kme_apb_prdata_7_w$[0]));
  end
always@(kme_tb._zy_simnet_kme_apb_pready_8_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(34, kme_tb._zy_simnet_kme_apb_pready_8_w$));
  end
always@(kme_tb._zy_simnet_kme_apb_pslverr_9_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(35, kme_tb._zy_simnet_kme_apb_pslverr_9_w$));
  end
always@(kme_tb._zy_simnet_rst_n_23_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(36, kme_tb._zy_simnet_rst_n_23_w$));
  end
always@(kme_tb._zy_simnet_cio_25)
  if(cpi_capture_enable) begin
    void'(xcInEvent(37, kme_tb._zy_simnet_cio_25));
  end
always@(kme_tb._zy_simnet_cio_26)
  if(cpi_capture_enable) begin
    void'(xcInEvent(38, kme_tb._zy_simnet_cio_26));
  end
always@(kme_tb._zy_simnet_cio_30)
  if(cpi_capture_enable) begin
    void'(xcInEvent(39, kme_tb._zy_simnet_cio_30));
  end
always@(kme_tb._zy_simnet_cio_31)
  if(cpi_capture_enable) begin
    void'(xcInEvent(40, kme_tb._zy_simnet_cio_31));
  end
always@(kme_tb._zy_simnet_kme_ib_tvalid_32_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(41, kme_tb._zy_simnet_kme_ib_tvalid_32_w$));
  end
always@(kme_tb._zy_simnet_kme_ib_tlast_33_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(42, kme_tb._zy_simnet_kme_ib_tlast_33_w$));
  end
always@(kme_tb._zy_simnet_kme_ib_tid_34_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(43, kme_tb._zy_simnet_kme_ib_tid_34_w$));
  end
always@(kme_tb._zy_simnet_kme_ib_tstrb_35_w$[7])
  if(cpi_capture_enable) begin
    void'(xcInEvent(44, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[7]));
  end
always@(kme_tb._zy_simnet_kme_ib_tstrb_35_w$[6])
  if(cpi_capture_enable) begin
    void'(xcInEvent(45, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[6]));
  end
always@(kme_tb._zy_simnet_kme_ib_tstrb_35_w$[5])
  if(cpi_capture_enable) begin
    void'(xcInEvent(46, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[5]));
  end
always@(kme_tb._zy_simnet_kme_ib_tstrb_35_w$[4])
  if(cpi_capture_enable) begin
    void'(xcInEvent(47, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[4]));
  end
always@(kme_tb._zy_simnet_kme_ib_tstrb_35_w$[3])
  if(cpi_capture_enable) begin
    void'(xcInEvent(48, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[3]));
  end
always@(kme_tb._zy_simnet_kme_ib_tstrb_35_w$[2])
  if(cpi_capture_enable) begin
    void'(xcInEvent(49, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[2]));
  end
always@(kme_tb._zy_simnet_kme_ib_tstrb_35_w$[1])
  if(cpi_capture_enable) begin
    void'(xcInEvent(50, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[1]));
  end
always@(kme_tb._zy_simnet_kme_ib_tstrb_35_w$[0])
  if(cpi_capture_enable) begin
    void'(xcInEvent(51, kme_tb._zy_simnet_kme_ib_tstrb_35_w$[0]));
  end
always@(kme_tb._zy_simnet_kme_ib_tuser_36_w$[7])
  if(cpi_capture_enable) begin
    void'(xcInEvent(52, kme_tb._zy_simnet_kme_ib_tuser_36_w$[7]));
  end
always@(kme_tb._zy_simnet_kme_ib_tuser_36_w$[6])
  if(cpi_capture_enable) begin
    void'(xcInEvent(53, kme_tb._zy_simnet_kme_ib_tuser_36_w$[6]));
  end
always@(kme_tb._zy_simnet_kme_ib_tuser_36_w$[5])
  if(cpi_capture_enable) begin
    void'(xcInEvent(54, kme_tb._zy_simnet_kme_ib_tuser_36_w$[5]));
  end
always@(kme_tb._zy_simnet_kme_ib_tuser_36_w$[4])
  if(cpi_capture_enable) begin
    void'(xcInEvent(55, kme_tb._zy_simnet_kme_ib_tuser_36_w$[4]));
  end
always@(kme_tb._zy_simnet_kme_ib_tuser_36_w$[3])
  if(cpi_capture_enable) begin
    void'(xcInEvent(56, kme_tb._zy_simnet_kme_ib_tuser_36_w$[3]));
  end
always@(kme_tb._zy_simnet_kme_ib_tuser_36_w$[2])
  if(cpi_capture_enable) begin
    void'(xcInEvent(57, kme_tb._zy_simnet_kme_ib_tuser_36_w$[2]));
  end
always@(kme_tb._zy_simnet_kme_ib_tuser_36_w$[1])
  if(cpi_capture_enable) begin
    void'(xcInEvent(58, kme_tb._zy_simnet_kme_ib_tuser_36_w$[1]));
  end
always@(kme_tb._zy_simnet_kme_ib_tuser_36_w$[0])
  if(cpi_capture_enable) begin
    void'(xcInEvent(59, kme_tb._zy_simnet_kme_ib_tuser_36_w$[0]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[63])
  if(cpi_capture_enable) begin
    void'(xcInEvent(60, kme_tb._zy_simnet_kme_ib_tdata_37_w$[63]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[62])
  if(cpi_capture_enable) begin
    void'(xcInEvent(61, kme_tb._zy_simnet_kme_ib_tdata_37_w$[62]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[61])
  if(cpi_capture_enable) begin
    void'(xcInEvent(62, kme_tb._zy_simnet_kme_ib_tdata_37_w$[61]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[60])
  if(cpi_capture_enable) begin
    void'(xcInEvent(63, kme_tb._zy_simnet_kme_ib_tdata_37_w$[60]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[59])
  if(cpi_capture_enable) begin
    void'(xcInEvent(64, kme_tb._zy_simnet_kme_ib_tdata_37_w$[59]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[58])
  if(cpi_capture_enable) begin
    void'(xcInEvent(65, kme_tb._zy_simnet_kme_ib_tdata_37_w$[58]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[57])
  if(cpi_capture_enable) begin
    void'(xcInEvent(66, kme_tb._zy_simnet_kme_ib_tdata_37_w$[57]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[56])
  if(cpi_capture_enable) begin
    void'(xcInEvent(67, kme_tb._zy_simnet_kme_ib_tdata_37_w$[56]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[55])
  if(cpi_capture_enable) begin
    void'(xcInEvent(68, kme_tb._zy_simnet_kme_ib_tdata_37_w$[55]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[54])
  if(cpi_capture_enable) begin
    void'(xcInEvent(69, kme_tb._zy_simnet_kme_ib_tdata_37_w$[54]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[53])
  if(cpi_capture_enable) begin
    void'(xcInEvent(70, kme_tb._zy_simnet_kme_ib_tdata_37_w$[53]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[52])
  if(cpi_capture_enable) begin
    void'(xcInEvent(71, kme_tb._zy_simnet_kme_ib_tdata_37_w$[52]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[51])
  if(cpi_capture_enable) begin
    void'(xcInEvent(72, kme_tb._zy_simnet_kme_ib_tdata_37_w$[51]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[50])
  if(cpi_capture_enable) begin
    void'(xcInEvent(73, kme_tb._zy_simnet_kme_ib_tdata_37_w$[50]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[49])
  if(cpi_capture_enable) begin
    void'(xcInEvent(74, kme_tb._zy_simnet_kme_ib_tdata_37_w$[49]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[48])
  if(cpi_capture_enable) begin
    void'(xcInEvent(75, kme_tb._zy_simnet_kme_ib_tdata_37_w$[48]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[47])
  if(cpi_capture_enable) begin
    void'(xcInEvent(76, kme_tb._zy_simnet_kme_ib_tdata_37_w$[47]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[46])
  if(cpi_capture_enable) begin
    void'(xcInEvent(77, kme_tb._zy_simnet_kme_ib_tdata_37_w$[46]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[45])
  if(cpi_capture_enable) begin
    void'(xcInEvent(78, kme_tb._zy_simnet_kme_ib_tdata_37_w$[45]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[44])
  if(cpi_capture_enable) begin
    void'(xcInEvent(79, kme_tb._zy_simnet_kme_ib_tdata_37_w$[44]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[43])
  if(cpi_capture_enable) begin
    void'(xcInEvent(80, kme_tb._zy_simnet_kme_ib_tdata_37_w$[43]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[42])
  if(cpi_capture_enable) begin
    void'(xcInEvent(81, kme_tb._zy_simnet_kme_ib_tdata_37_w$[42]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[41])
  if(cpi_capture_enable) begin
    void'(xcInEvent(82, kme_tb._zy_simnet_kme_ib_tdata_37_w$[41]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[40])
  if(cpi_capture_enable) begin
    void'(xcInEvent(83, kme_tb._zy_simnet_kme_ib_tdata_37_w$[40]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[39])
  if(cpi_capture_enable) begin
    void'(xcInEvent(84, kme_tb._zy_simnet_kme_ib_tdata_37_w$[39]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[38])
  if(cpi_capture_enable) begin
    void'(xcInEvent(85, kme_tb._zy_simnet_kme_ib_tdata_37_w$[38]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[37])
  if(cpi_capture_enable) begin
    void'(xcInEvent(86, kme_tb._zy_simnet_kme_ib_tdata_37_w$[37]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[36])
  if(cpi_capture_enable) begin
    void'(xcInEvent(87, kme_tb._zy_simnet_kme_ib_tdata_37_w$[36]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[35])
  if(cpi_capture_enable) begin
    void'(xcInEvent(88, kme_tb._zy_simnet_kme_ib_tdata_37_w$[35]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[34])
  if(cpi_capture_enable) begin
    void'(xcInEvent(89, kme_tb._zy_simnet_kme_ib_tdata_37_w$[34]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[33])
  if(cpi_capture_enable) begin
    void'(xcInEvent(90, kme_tb._zy_simnet_kme_ib_tdata_37_w$[33]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[32])
  if(cpi_capture_enable) begin
    void'(xcInEvent(91, kme_tb._zy_simnet_kme_ib_tdata_37_w$[32]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[31])
  if(cpi_capture_enable) begin
    void'(xcInEvent(92, kme_tb._zy_simnet_kme_ib_tdata_37_w$[31]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[30])
  if(cpi_capture_enable) begin
    void'(xcInEvent(93, kme_tb._zy_simnet_kme_ib_tdata_37_w$[30]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[29])
  if(cpi_capture_enable) begin
    void'(xcInEvent(94, kme_tb._zy_simnet_kme_ib_tdata_37_w$[29]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[28])
  if(cpi_capture_enable) begin
    void'(xcInEvent(95, kme_tb._zy_simnet_kme_ib_tdata_37_w$[28]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[27])
  if(cpi_capture_enable) begin
    void'(xcInEvent(96, kme_tb._zy_simnet_kme_ib_tdata_37_w$[27]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[26])
  if(cpi_capture_enable) begin
    void'(xcInEvent(97, kme_tb._zy_simnet_kme_ib_tdata_37_w$[26]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[25])
  if(cpi_capture_enable) begin
    void'(xcInEvent(98, kme_tb._zy_simnet_kme_ib_tdata_37_w$[25]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[24])
  if(cpi_capture_enable) begin
    void'(xcInEvent(99, kme_tb._zy_simnet_kme_ib_tdata_37_w$[24]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[23])
  if(cpi_capture_enable) begin
    void'(xcInEvent(100, kme_tb._zy_simnet_kme_ib_tdata_37_w$[23]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[22])
  if(cpi_capture_enable) begin
    void'(xcInEvent(101, kme_tb._zy_simnet_kme_ib_tdata_37_w$[22]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[21])
  if(cpi_capture_enable) begin
    void'(xcInEvent(102, kme_tb._zy_simnet_kme_ib_tdata_37_w$[21]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[20])
  if(cpi_capture_enable) begin
    void'(xcInEvent(103, kme_tb._zy_simnet_kme_ib_tdata_37_w$[20]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[19])
  if(cpi_capture_enable) begin
    void'(xcInEvent(104, kme_tb._zy_simnet_kme_ib_tdata_37_w$[19]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[18])
  if(cpi_capture_enable) begin
    void'(xcInEvent(105, kme_tb._zy_simnet_kme_ib_tdata_37_w$[18]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[17])
  if(cpi_capture_enable) begin
    void'(xcInEvent(106, kme_tb._zy_simnet_kme_ib_tdata_37_w$[17]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[16])
  if(cpi_capture_enable) begin
    void'(xcInEvent(107, kme_tb._zy_simnet_kme_ib_tdata_37_w$[16]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[15])
  if(cpi_capture_enable) begin
    void'(xcInEvent(108, kme_tb._zy_simnet_kme_ib_tdata_37_w$[15]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[14])
  if(cpi_capture_enable) begin
    void'(xcInEvent(109, kme_tb._zy_simnet_kme_ib_tdata_37_w$[14]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[13])
  if(cpi_capture_enable) begin
    void'(xcInEvent(110, kme_tb._zy_simnet_kme_ib_tdata_37_w$[13]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[12])
  if(cpi_capture_enable) begin
    void'(xcInEvent(111, kme_tb._zy_simnet_kme_ib_tdata_37_w$[12]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[11])
  if(cpi_capture_enable) begin
    void'(xcInEvent(112, kme_tb._zy_simnet_kme_ib_tdata_37_w$[11]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[10])
  if(cpi_capture_enable) begin
    void'(xcInEvent(113, kme_tb._zy_simnet_kme_ib_tdata_37_w$[10]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[9])
  if(cpi_capture_enable) begin
    void'(xcInEvent(114, kme_tb._zy_simnet_kme_ib_tdata_37_w$[9]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[8])
  if(cpi_capture_enable) begin
    void'(xcInEvent(115, kme_tb._zy_simnet_kme_ib_tdata_37_w$[8]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[7])
  if(cpi_capture_enable) begin
    void'(xcInEvent(116, kme_tb._zy_simnet_kme_ib_tdata_37_w$[7]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[6])
  if(cpi_capture_enable) begin
    void'(xcInEvent(117, kme_tb._zy_simnet_kme_ib_tdata_37_w$[6]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[5])
  if(cpi_capture_enable) begin
    void'(xcInEvent(118, kme_tb._zy_simnet_kme_ib_tdata_37_w$[5]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[4])
  if(cpi_capture_enable) begin
    void'(xcInEvent(119, kme_tb._zy_simnet_kme_ib_tdata_37_w$[4]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[3])
  if(cpi_capture_enable) begin
    void'(xcInEvent(120, kme_tb._zy_simnet_kme_ib_tdata_37_w$[3]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[2])
  if(cpi_capture_enable) begin
    void'(xcInEvent(121, kme_tb._zy_simnet_kme_ib_tdata_37_w$[2]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[1])
  if(cpi_capture_enable) begin
    void'(xcInEvent(122, kme_tb._zy_simnet_kme_ib_tdata_37_w$[1]));
  end
always@(kme_tb._zy_simnet_kme_ib_tdata_37_w$[0])
  if(cpi_capture_enable) begin
    void'(xcInEvent(123, kme_tb._zy_simnet_kme_ib_tdata_37_w$[0]));
  end
always@(kme_tb._zy_simnet_kme_ob_tready_38_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(124, kme_tb._zy_simnet_kme_ob_tready_38_w$));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[15])
  if(cpi_capture_enable) begin
    void'(xcInEvent(125, kme_tb._zy_simnet_kme_apb_paddr_39_w$[15]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[14])
  if(cpi_capture_enable) begin
    void'(xcInEvent(126, kme_tb._zy_simnet_kme_apb_paddr_39_w$[14]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[13])
  if(cpi_capture_enable) begin
    void'(xcInEvent(127, kme_tb._zy_simnet_kme_apb_paddr_39_w$[13]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[12])
  if(cpi_capture_enable) begin
    void'(xcInEvent(128, kme_tb._zy_simnet_kme_apb_paddr_39_w$[12]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[11])
  if(cpi_capture_enable) begin
    void'(xcInEvent(129, kme_tb._zy_simnet_kme_apb_paddr_39_w$[11]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[10])
  if(cpi_capture_enable) begin
    void'(xcInEvent(130, kme_tb._zy_simnet_kme_apb_paddr_39_w$[10]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[9])
  if(cpi_capture_enable) begin
    void'(xcInEvent(131, kme_tb._zy_simnet_kme_apb_paddr_39_w$[9]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[8])
  if(cpi_capture_enable) begin
    void'(xcInEvent(132, kme_tb._zy_simnet_kme_apb_paddr_39_w$[8]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[7])
  if(cpi_capture_enable) begin
    void'(xcInEvent(133, kme_tb._zy_simnet_kme_apb_paddr_39_w$[7]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[6])
  if(cpi_capture_enable) begin
    void'(xcInEvent(134, kme_tb._zy_simnet_kme_apb_paddr_39_w$[6]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[5])
  if(cpi_capture_enable) begin
    void'(xcInEvent(135, kme_tb._zy_simnet_kme_apb_paddr_39_w$[5]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[4])
  if(cpi_capture_enable) begin
    void'(xcInEvent(136, kme_tb._zy_simnet_kme_apb_paddr_39_w$[4]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[3])
  if(cpi_capture_enable) begin
    void'(xcInEvent(137, kme_tb._zy_simnet_kme_apb_paddr_39_w$[3]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[2])
  if(cpi_capture_enable) begin
    void'(xcInEvent(138, kme_tb._zy_simnet_kme_apb_paddr_39_w$[2]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[1])
  if(cpi_capture_enable) begin
    void'(xcInEvent(139, kme_tb._zy_simnet_kme_apb_paddr_39_w$[1]));
  end
always@(kme_tb._zy_simnet_kme_apb_paddr_39_w$[0])
  if(cpi_capture_enable) begin
    void'(xcInEvent(140, kme_tb._zy_simnet_kme_apb_paddr_39_w$[0]));
  end
always@(kme_tb._zy_simnet_kme_apb_psel_40_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(141, kme_tb._zy_simnet_kme_apb_psel_40_w$));
  end
always@(kme_tb._zy_simnet_kme_apb_penable_41_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(142, kme_tb._zy_simnet_kme_apb_penable_41_w$));
  end
always@(kme_tb._zy_simnet_kme_apb_pwrite_42_w$)
  if(cpi_capture_enable) begin
    void'(xcInEvent(143, kme_tb._zy_simnet_kme_apb_pwrite_42_w$));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[31])
  if(cpi_capture_enable) begin
    void'(xcInEvent(144, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[31]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[30])
  if(cpi_capture_enable) begin
    void'(xcInEvent(145, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[30]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[29])
  if(cpi_capture_enable) begin
    void'(xcInEvent(146, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[29]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[28])
  if(cpi_capture_enable) begin
    void'(xcInEvent(147, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[28]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[27])
  if(cpi_capture_enable) begin
    void'(xcInEvent(148, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[27]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[26])
  if(cpi_capture_enable) begin
    void'(xcInEvent(149, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[26]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[25])
  if(cpi_capture_enable) begin
    void'(xcInEvent(150, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[25]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[24])
  if(cpi_capture_enable) begin
    void'(xcInEvent(151, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[24]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[23])
  if(cpi_capture_enable) begin
    void'(xcInEvent(152, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[23]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[22])
  if(cpi_capture_enable) begin
    void'(xcInEvent(153, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[22]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[21])
  if(cpi_capture_enable) begin
    void'(xcInEvent(154, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[21]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[20])
  if(cpi_capture_enable) begin
    void'(xcInEvent(155, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[20]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[19])
  if(cpi_capture_enable) begin
    void'(xcInEvent(156, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[19]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[18])
  if(cpi_capture_enable) begin
    void'(xcInEvent(157, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[18]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[17])
  if(cpi_capture_enable) begin
    void'(xcInEvent(158, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[17]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[16])
  if(cpi_capture_enable) begin
    void'(xcInEvent(159, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[16]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[15])
  if(cpi_capture_enable) begin
    void'(xcInEvent(160, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[15]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[14])
  if(cpi_capture_enable) begin
    void'(xcInEvent(161, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[14]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[13])
  if(cpi_capture_enable) begin
    void'(xcInEvent(162, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[13]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[12])
  if(cpi_capture_enable) begin
    void'(xcInEvent(163, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[12]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[11])
  if(cpi_capture_enable) begin
    void'(xcInEvent(164, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[11]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[10])
  if(cpi_capture_enable) begin
    void'(xcInEvent(165, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[10]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[9])
  if(cpi_capture_enable) begin
    void'(xcInEvent(166, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[9]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[8])
  if(cpi_capture_enable) begin
    void'(xcInEvent(167, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[8]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[7])
  if(cpi_capture_enable) begin
    void'(xcInEvent(168, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[7]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[6])
  if(cpi_capture_enable) begin
    void'(xcInEvent(169, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[6]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[5])
  if(cpi_capture_enable) begin
    void'(xcInEvent(170, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[5]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[4])
  if(cpi_capture_enable) begin
    void'(xcInEvent(171, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[4]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[3])
  if(cpi_capture_enable) begin
    void'(xcInEvent(172, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[3]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[2])
  if(cpi_capture_enable) begin
    void'(xcInEvent(173, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[2]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[1])
  if(cpi_capture_enable) begin
    void'(xcInEvent(174, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[1]));
  end
always@(kme_tb._zy_simnet_kme_apb_pwdata_43_w$[0])
  if(cpi_capture_enable) begin
    void'(xcInEvent(175, kme_tb._zy_simnet_kme_apb_pwdata_43_w$[0]));
  end

// } input section

// { deposit section

// deposit event capture is replaced by marg_deposit

// } deposit section

// { output section

// { scalar POs
reg po_55;
always @(hwOutInit)
  if (hwOutInit)  po_55 = kme_tb._zy_simnet_dio_10;
axPOBMod pomod_55(kme_tb._zy_simnet_dio_10, po_55, hwOutInit1);
reg po_56;
always @(hwOutInit)
  if (hwOutInit)  po_56 = kme_tb._zy_simnet_kme_ib_tready_11_w$;
axPOBMod pomod_56(kme_tb._zy_simnet_kme_ib_tready_11_w$, po_56, hwOutInit1);
reg po_57;
always @(hwOutInit)
  if (hwOutInit)  po_57 = kme_tb._zy_simnet_kme_ob_tvalid_12_w$;
axPOBMod pomod_57(kme_tb._zy_simnet_kme_ob_tvalid_12_w$, po_57, hwOutInit1);
reg po_58;
always @(hwOutInit)
  if (hwOutInit)  po_58 = kme_tb._zy_simnet_kme_ob_tlast_13_w$;
axPOBMod pomod_58(kme_tb._zy_simnet_kme_ob_tlast_13_w$, po_58, hwOutInit1);
reg po_59;
always @(hwOutInit)
  if (hwOutInit)  po_59 = kme_tb._zy_simnet_kme_ob_tid_14_w$;
axPOBMod pomod_59(kme_tb._zy_simnet_kme_ob_tid_14_w$, po_59, hwOutInit1);
reg po_172;
always @(hwOutInit)
  if (hwOutInit)  po_172 = kme_tb._zy_simnet_kme_apb_pready_19_w$;
axPOBMod pomod_172(kme_tb._zy_simnet_kme_apb_pready_19_w$, po_172, hwOutInit1);
reg po_173;
always @(hwOutInit)
  if (hwOutInit)  po_173 = kme_tb._zy_simnet_kme_apb_pslverr_20_w$;
axPOBMod pomod_173(kme_tb._zy_simnet_kme_apb_pslverr_20_w$, po_173, hwOutInit1);
reg po_174;
always @(hwOutInit)
  if (hwOutInit)  po_174 = kme_tb._zy_simnet_dio_21;
axPOBMod pomod_174(kme_tb._zy_simnet_dio_21, po_174, hwOutInit1);
reg po_175;
always @(hwOutInit)
  if (hwOutInit)  po_175 = kme_tb.kme_dut.clock_1;
axPOBMod pomod_175(kme_tb.kme_dut.clock_1, po_175, hwOutInit1);
// } scalar POs
// { vector POs
reg [7:0] po_60;
always @(hwOutInit)
if(hwOutInit) begin
  po_60 = kme_tb._zy_simnet_kme_ob_tstrb_15_w$;
end
axPOBModvec #(8) pomod_60(kme_tb._zy_simnet_kme_ob_tstrb_15_w$, po_60, hwOutInit1);
reg [7:0] po_68;
always @(hwOutInit)
if(hwOutInit) begin
  po_68 = kme_tb._zy_simnet_kme_ob_tuser_16_w$;
end
axPOBModvec #(8) pomod_68(kme_tb._zy_simnet_kme_ob_tuser_16_w$, po_68, hwOutInit1);
reg [63:0] po_76;
always @(hwOutInit)
if(hwOutInit) begin
  po_76 = kme_tb._zy_simnet_kme_ob_tdata_17_w$;
end
axPOBModvec #(64) pomod_76(kme_tb._zy_simnet_kme_ob_tdata_17_w$, po_76, hwOutInit1);
reg [31:0] po_140;
always @(hwOutInit)
if(hwOutInit) begin
  po_140 = kme_tb._zy_simnet_kme_apb_prdata_18_w$;
end
axPOBModvec #(32) pomod_140(kme_tb._zy_simnet_kme_apb_prdata_18_w$, po_140, hwOutInit1);
// } vector POs

always@(hwOutInit) hwOutInit1 <= hwOutInit;

always@(hwOutEvent) tkOutEvent();

task tkOutEvent;
begin
 po_id = xcOutEvent(po_b);
 while(po_id >= 0) begin
  case(po_id)
  0: kme_tb.apb_xactor.psel = po_b;
  1: kme_tb.apb_xactor.penable = po_b;
  54: kme_tb.apb_xactor.pwrite = po_b;
  55: po_55 = po_b;
  56: po_56 = po_b;
  57: po_57 = po_b;
  58: po_58 = po_b;
  59: po_59 = po_b;
  172: po_172 = po_b;
  173: po_173 = po_b;
  174: po_174 = po_b;
  175: po_175 = po_b;
    default:;
  endcase
  po_id = xcOutEvent(po_b);
 end
 po_id = xcOutEventVec(po_v);
 while(po_id >= 0) begin
  case(po_id)
  2: kme_tb.apb_xactor.paddr = po_v;
  22: kme_tb.apb_xactor.pwdata = po_v;
  60: po_60 = po_v;
  68: po_68 = po_v;
  76: po_76 = po_v;
  140: po_140 = po_v;
    default:;
  endcase
  po_id = xcOutEventVec(po_v);
 end
 po_id = xcOutEventInt(po_int);
end
endtask

task tkTbcEvent;
 int tbc_id;
begin
 ->stop1event;
 tbc_id = xcTbcEvent();
 while(tbc_id >= 0) begin
  case(tbc_id)
  179: 
    IXC_GFIFO.OSF.OSF_flushAll;
  endcase
  tbc_id = xcTbcEvent();
 end
end
endtask

task tkTbc2Event;
 int tbc_id;
begin
 tbc_id = xcTbc2Event();
 while(tbc_id >= 0) begin
  case(tbc_id)
  181: 
    IXC_GFIFO.OSF1.OSF1_flushAll;
  endcase
  tbc_id = xcTbc2Event();
 end
end
endtask

task tkTbc4Event;
 int tbc_id;
begin
 tbc_id = xcTbc4Event();
 while(tbc_id >= 0) begin
  case(tbc_id)
  default:;
  endcase
  tbc_id = xcTbc4Event();
 end
end
endtask

event outEventStart;
bit outEventDone = 0;
always@(outEventStart)
 outEventDone <= ~outEventDone;

task tkPropStop;
 input int stops;
begin
 if(stops) begin
   if(stops & 1) tkTbcEvent;
   if(stops & 2) tkTbc2Event;
   if(stops & 4) tkTbc4Event;
   ->outEventStart;
   @outEventDone;
 end
 extend_behp_cyc = xcPropStopEnd();
end
endtask

always@(hwMatchEvent) begin
 void'(xcOutMatch(0, kme_tb._zy_simnet_kme_apb_psel_0_w$));
 void'(xcOutMatch(1, kme_tb._zy_simnet_kme_apb_penable_1_w$));
 void'(xcOutMatch(54, kme_tb._zy_simnet_kme_apb_pwrite_4_w$));
 void'(xcOutMatch(55, kme_tb._zy_simnet_dio_10));
 void'(xcOutMatch(56, kme_tb._zy_simnet_kme_ib_tready_11_w$));
 void'(xcOutMatch(57, kme_tb._zy_simnet_kme_ob_tvalid_12_w$));
 void'(xcOutMatch(58, kme_tb._zy_simnet_kme_ob_tlast_13_w$));
 void'(xcOutMatch(59, kme_tb._zy_simnet_kme_ob_tid_14_w$));
 void'(xcOutMatch(172, kme_tb._zy_simnet_kme_apb_pready_19_w$));
 void'(xcOutMatch(173, kme_tb._zy_simnet_kme_apb_pslverr_20_w$));
 void'(xcOutMatch(174, kme_tb._zy_simnet_dio_21));
 void'(xcOutMatch(175, kme_tb.kme_dut.clock_1));
 void'(xcOutMatch(178, IXC_GFIFO.OSF._zyPOEv));
 void'(xcOutMatch(180, IXC_GFIFO.OSF1._zyMBEv[0]));
 void'(xcOutMatchVec(2, kme_tb._zy_simnet_kme_apb_paddr_2_w$));
 void'(xcOutMatchVec(22, kme_tb._zy_simnet_kme_apb_pwdata_3_w$));
 void'(xcOutMatchVec(60, kme_tb._zy_simnet_kme_ob_tstrb_15_w$));
 void'(xcOutMatchVec(68, kme_tb._zy_simnet_kme_ob_tuser_16_w$));
 void'(xcOutMatchVec(76, kme_tb._zy_simnet_kme_ob_tdata_17_w$));
 void'(xcOutMatchVec(140, kme_tb._zy_simnet_kme_apb_prdata_18_w$));
 void'(xcOutMatchVec(176, IXC_GFIFO.OSF._zyevPio));
 void'(xcOutMatchVec(182, ixc_time.nextClkTimePO));
end

// } output section

always @(doEvalSch) begin
 evalSch = ~evalSch;
 @evalStart;
end

longint delay;
int stops;
int poClkEvent;

bit hwrun = 0;
task tkHwRun;
 int ret;
 while(hwrun || extend_behp_cyc) begin
    ret = xcNextEvent(delay, extend_behp_cyc);
    case(ret & 'h300)
    'h000:
      begin
        #(delay);
        evalSch = ~evalSch;
        @evalStart;
        ret = xcEvalTurbo();
        if(ret == 0) begin
          continue;
        end
        stops = ret & 'hff;
        poClkEvent = xcSchOutEvent1stPhase();
        if (poClkEvent)
          tkOutEvent;
        if(poClkEvent[1] && xcSchOutEvent2ndPhase()) begin
          ->outEventStart;
          @outEventDone;
          tkOutEvent;
        end
      end
    'h100:
      begin
        #(delay);
        stops = ret & 'hff;
        if(xcSchOutEvent())
          tkOutEvent;
      end
    'h200: return;
    'h300:
      begin
        stops = ret & 'hff;
        if(xcSchOutEvent())
          tkOutEvent;
      end
    endcase
    extend_behp_cyc = 0;
    if(stops) begin
      ->outEventStart;
      @outEventDone;
      if(stops & 1)
        tkTbcEvent;
      if(stops & 2)
        tkTbc2Event;
      if(stops & 4)
        tkTbc4Event;
      evalSch = ~evalSch;
      @evalStart;
    end else begin
      evalSch = ~evalSch;
      @evalStart;
    end
    extend_behp_cyc = xcPropStopEnd();
 end
 void'(xcTurboOff());
endtask
always@(posedge hwrun) begin
  evalSch = ~evalSch;
  @evalStart;
  extend_behp_cyc = 0;
  tkHwRun;
end

bit tbrun = 0;
always@(posedge tbrun) begin
 extend_behp_cyc = 0;
 evalSch = ~evalSch;
 @evalStart;
 while(tbrun || extend_behp_cyc) begin
    stops = xcNextTbEvent(delay);
    case(stops & 'h300)
    'h000:
      begin
        #(delay);
      end
    'h100:
      begin
        #(delay);
        stops = stops & 'hff;
        poClkEvent = xcSchOutEvent1stPhase();
        if (poClkEvent)
          tkOutEvent;
        if(poClkEvent[1] && xcSchOutEvent2ndPhase()) begin
          ->outEventStart;
          @outEventDone;
          tkOutEvent;
        end
      end
    'h200: break;
    'h300:
      begin
        stops = stops & 'hff;
        if(xcSchOutEvent())
          tkOutEvent;
      end
    endcase
    extend_behp_cyc = 0;
    if(stops) begin
      ->outEventStart;
      @outEventDone;
      if(stops & 1)
        tkTbcEvent;
      if(stops & 2)
        tkTbc2Event;
      if(stops & 4)
        tkTbc4Event;
      evalSch = ~evalSch;
      @evalStart;
    end else begin
      evalSch = ~evalSch;
      @evalStart;
    end
    extend_behp_cyc = xcPropStopEnd();
 end
 void'(xcTurboOff());
end

bit autorun = 0;
always@(posedge autorun) begin
 extend_behp_cyc = 0;
 evalSch = ~evalSch;
 @evalStart;
 while(autorun || extend_behp_cyc) begin
  stops = xcEvalAutorun(extend_behp_cyc);
  if(xcSchOutEvent())
    tkOutEvent;
    extend_behp_cyc = 0;
    if(stops) begin
      ->outEventStart;
      @outEventDone;
      if(stops & 1)
        tkTbcEvent;
      if(stops & 2)
        tkTbc2Event;
      if(stops & 4)
        tkTbc4Event;
      evalSch = ~evalSch;
      @evalStart;
    end else begin
      evalSch = ~evalSch;
      @evalStart;
    end
    extend_behp_cyc = xcPropStopEnd();
 end
 void'(xcEmuOff());
end

bit nbrunEvDone = 0;
bit nbrun = 0;
always@(posedge nbrun) begin
 extend_behp_cyc = 0;
 evalSch = ~evalSch;
 @evalStart;
 while(nbrun) begin
    xcStartNbrun();
    stops = 0;
    while(stops == 0) begin
      stops = xcCheckNbrun(delay);
      fork
        #(delay);
        begin nbrunEvDone = 0; @nbrunEvDone; end
      join_any
      if(nbrunEvDone) begin stops = xcCheckNbrunEv(delay); #(delay); end
      else nbrunEvDone = 1;
      evalSch = ~evalSch;
      @evalStart;
    end
    if(xcSchOutEvent())
      tkOutEvent;
    extend_behp_cyc = 0;
    if(stops & 'hff) begin
      ->outEventStart;
      @outEventDone;
      if(stops & 1)
        tkTbcEvent;
      if(stops & 2)
        tkTbc2Event;
      if(stops & 4)
        tkTbc4Event;
      evalSch = ~evalSch;
      @evalStart;
    end else begin
      evalSch = ~evalSch;
      @evalStart;
    end
    extend_behp_cyc = xcPropStopEnd();
 end
 evalSch = ~evalSch;
 @evalStart;
 void'(xcTurboOff());
end

task tkSwapIn;
begin
 void'(xcSwapIn());
end
endtask

task tkCompTbx;
begin
 void'(xcCompTbx());
end
endtask

xc_sch_eval xc_sch_eval(evalStart,evalSch);
xc_swapin xc_swapin(doSwapIn);
xc_comptbx xc_comptbx(doCompTbx);

export "DPI-C" function xc_stop;
function void xc_stop();
  $stop;
endfunction
export "DPI-C" function xctop_stop;
function void xctop_stop(int lev);
  $stop(lev);
endfunction
export "DPI-C" function xctop_finish;
function void xctop_finish(int lev);
  $finish(lev);
endfunction
export "DPI-C" function xc_fflush;
function void xc_fflush(int fd);
  $fflush(fd);
endfunction
export "DPI-C" function xc_fflush_all;
function void xc_fflush_all();
  $fflush();
endfunction
parameter hasSWeclk = 1;
endmodule

program xc_sch_eval(evalStart,evalSch);
output bit evalStart;
input bit evalSch;
 initial begin
  evalStart = ~evalStart;
  while(1) begin
   @(evalSch)
    evalStart = ~evalStart;
  end
 end
endprogram

program xc_sch_on_tog(evalStart,evalSch);
parameter sz = 1;
output reg evalStart;
input reg [sz-1:0] evalSch;
 initial begin
  while(1) begin
   @(evalSch)
    evalStart = (evalStart === 0);
  end
 end
endprogram

program xc_swapin(doSwapIn);
input bit doSwapIn;
 initial begin
  if (doSwapIn)
    xc_top.tkSwapIn;
  while(1) begin
   @(posedge doSwapIn)
    xc_top.tkSwapIn;
  end
 end
endprogram

program xc_comptbx(doCompTbx);
input bit doCompTbx;
 initial begin
  while(1) begin
   @(posedge doCompTbx)
    xc_top.tkCompTbx;
  end
 end
endprogram


