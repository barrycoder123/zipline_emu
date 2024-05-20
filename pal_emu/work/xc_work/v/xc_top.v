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

const int xcinit = xcInit(1716230220);

function void xcvtf_bufDispFlush;
 fork
 join_none
endfunction

final begin
end

// { input section

always@(posedge cpi_capture_enable) begin
end

// } input section

// { deposit section

// deposit event capture is replaced by marg_deposit

// } deposit section

// { output section

// { scalar POs
// } scalar POs
// { vector POs
// } vector POs

always@(hwOutInit) hwOutInit1 <= hwOutInit;

always@(hwOutEvent) tkOutEvent();

task tkOutEvent;
begin
 GFIFO_flush(0, 0);
 po_id = xcOutEvent(po_b);
 while(po_id >= 0) begin
  case(po_id)
    default:;
  endcase
  po_id = xcOutEvent(po_b);
 end
 po_id = xcOutEventVec(po_v);
 while(po_id >= 0) begin
  case(po_id)
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
  3: 
    IXC_GFIFO.OSF.OSF_flushAll;
  6: 
    IXC_GFIFO.O.O.dummy_gfifo_flush_x$t;
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
  5: 
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
  0: 
   fork
    tb_top.kme_tb_dut._zzictd_finishT_L10_0;
   join_none
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
 void'(xcOutMatch(1, IXC_GFIFO.OSF._zyevPio[0]));
 void'(xcOutMatch(2, IXC_GFIFO.OSF._zyPOEv));
 void'(xcOutMatch(4, IXC_GFIFO.OSF1._zyMBEv[0]));
 void'(xcOutMatchVec(7, ixc_time.nextClkTimePO));
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


